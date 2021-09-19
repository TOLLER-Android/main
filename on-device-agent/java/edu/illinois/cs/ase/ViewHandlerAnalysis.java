package edu.illinois.cs.ase;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.LocalServerSocket;
import android.net.LocalSocket;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.TextView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingQueue;

public class ViewHandlerAnalysis {

    private static final String TAG = "ViewHandlerAnalysis";
    private static final String PACKAGE_NAME = "edu.illinois.cs.ase";
    private static final String LOCAL_SOCKET_NAME = PACKAGE_NAME + ".uianalyzer.p" + Process.myUid();

    private static LocalServerSocket serverSocket = null;
    private static long startTime = -1L;

    private static CopyOnWriteArrayList<?> a11yStateChangeListeners = null;
    private static Field
            fListenerInfo = null, fOnClickListener = null, fOnTouchListener = null, fOnLongClickListener = null,
            fOnContextClickListener = null, fViewRootImpl = null, fRootView = null, fContext = null,
            fDexCache = null, fLocation = null, fDex = null, fDexData = null, fMemoryBlock = null,
            fChildrenVgChOrder = null;
    private static Method mtdGetSize = null, mtdPeek = null, mtdGetBoundsOnScreen = null,
            mtdObtainVgChOrder = null, mtdRecycleVgChOrder = null;

    static {
        try {
            startServer();
            prepare();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void startServer() throws IOException {
        if (serverSocket != null) return;
        startTime = System.currentTimeMillis();
        Log.d(TAG, "Starting server on " + LOCAL_SOCKET_NAME);
        serverSocket = new LocalServerSocket(LOCAL_SOCKET_NAME);
        new Thread(new Runnable() {
            @Override
            public void run() {
                while (true) {
                    try {
                        final LocalSocket socket = serverSocket.accept();
                        new Thread(new Runnable() {
                            @Override
                            public void run() {
                                try {
                                    handleConnection(socket.getInputStream(), socket.getOutputStream());
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                            }
                        }).start();
                    } catch (IOException e) {
                        e.printStackTrace();
                        break;
                    }
                }
            }
        }).start();
    }

    private static class ProcessConfig {
        boolean mExposeTollerExceptions = false;
        boolean mFocusedOnly = true;
        boolean mIncludeA11yInfo = false;
        boolean mMustBeVisible = true;
        boolean mCaptureOnMainThread = true;
        boolean mCacheResults = false;
        boolean mReportA11yStateChange = true;
        boolean mReportA11yEvent = false;

        SparseArray<WeakReference<View>> mHandlers;
        SparseArray<Pair<Integer, Integer>> mParentAvs;

        ProcessConfig(SparseArray<WeakReference<View>> mHandlers,
                      SparseArray<Pair<Integer, Integer>> mParentAvs) {
            this.mHandlers = mHandlers;
            this.mParentAvs = mParentAvs;
        }

        ProcessConfig(ProcessConfig src) {
            this.mExposeTollerExceptions = src.mExposeTollerExceptions;
            this.mFocusedOnly = src.mFocusedOnly;
            this.mIncludeA11yInfo = src.mIncludeA11yInfo;
            this.mMustBeVisible = src.mMustBeVisible;
            this.mCaptureOnMainThread = src.mCaptureOnMainThread;
            this.mCacheResults = src.mCacheResults;
            this.mReportA11yStateChange = src.mReportA11yStateChange;
            this.mReportA11yEvent = src.mReportA11yEvent;
            this.mHandlers = null;
            this.mParentAvs = null;
        }
    }

    private static Handler sUiHandler = null;
    private static long sTouchDownTime = -1;

    private static Handler getHandler() {
        Handler handler = sUiHandler;
        if (handler == null) sUiHandler = handler = new Handler(Looper.getMainLooper());
        return handler;
    }

    private static void runOnMainThreadSync(final Runnable r) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            // Called from main thread, shall not use Handler to avoid blocking.
            r.run();
            return;
        }
        synchronized (r) {
            getHandler().post(new Runnable() {
                @Override
                public void run() {
                    synchronized (r) {
                        r.run();
                        r.notify();
                    }
                }
            });
            try {
                r.wait();
            } catch (InterruptedException e) {
                Log.d(TAG, "Gave up some UI update due to interruption..");
            }
        }
    }

    @SuppressLint("PrivateApi")
    private static void handleConnection(final InputStream socketIn, final OutputStream socketOut) {
        final BufferedReader netInput = new BufferedReader(new InputStreamReader(socketIn));
        final PrintWriter netOutput = new PrintWriter(socketOut, false);
        final ProcessConfig configs = new ProcessConfig(
                new SparseArray<WeakReference<View>>(), new SparseArray<Pair<Integer, Integer>>());
        long tsA11yUpdateOfLastRun = 0L;
        JSONArray uisLastRun = null;
        Thread traceDumper = null;
        while (true) {
            String cmd;
            try {
                cmd = netInput.readLine();
            } catch (IOException e) {
                if (configs.mExposeTollerExceptions) e.printStackTrace();
                break;
            }
            if (cmd == null) break;
            cmd = cmd.trim();
            if (cmd.isEmpty()) break;
            Log.d(TAG, "[#" + Thread.currentThread().getId() + "] " + cmd);
            String response = null;
            long tsStart = System.currentTimeMillis();
            if ("run".equals(cmd)) {
                boolean shouldRun = true;
                if (configs.mCacheResults) {
                    long tsLastA11yUpdate = tsLastStateChange;
                    if (uisLastRun != null && tsLastA11yUpdate == tsA11yUpdateOfLastRun) {
                        shouldRun = false;
                        // Log.d(TAG, "Cache hit");
                    } else {
                        tsA11yUpdateOfLastRun = tsLastA11yUpdate;
                    }
                }
                if (shouldRun) {
                    configs.mHandlers.clear();
                    configs.mParentAvs.clear();
                    final JSONArray uis = new JSONArray();
                    if (configs.mCaptureOnMainThread) {
                        runOnMainThreadSync(new Runnable() {
                            @Override
                            public void run() {
                                getUIs(configs, uis);
                            }
                        });
                    } else {
                        getUIs(configs, uis);
                    }
                    uisLastRun = uis;
                    response = uis.toString();
                } else {
                    // netOutput.println(uisLastRun);
                    response = "@hit";
                }
            } else if (cmd.startsWith("act ")) {
                try {
                    String[] cmds = cmd.split(" ");
                    if (cmds.length < 3) continue;
                    int vHash = Integer.parseInt(cmds[2]);
                    WeakReference<View> ref = configs.mHandlers.get(vHash);
                    if (ref == null) continue;
                    final View v = ref.get();
                    if (v == null) continue;
                    Runnable uiTodo = null;
                    switch (cmds[1]) {
                        case "en":
                            // act en VHASH
                            uiTodo = new Runnable() {
                                @Override
                                public void run() {
                                    v.setEnabled(true);
                                }
                            };
                            break;
                        case "dis":
                            // act dis VHASH
                            uiTodo = new Runnable() {
                                @Override
                                public void run() {
                                    v.setEnabled(false);
                                }
                            };
                            break;
                        case "clk":
                            // act clk VHASH
                            final Pair<Integer, Integer> avInfo = configs.mParentAvs.get(vHash);
                            if (avInfo == null) {
                                uiTodo = new Runnable() {
                                    @Override
                                    public void run() {
                                        v.performClick();
                                    }
                                };
                            } else {
                                WeakReference<View> avParentRef = configs.mHandlers.get(avInfo.first);
                                if (avParentRef == null) break;
                                final View avParent = avParentRef.get();
                                if (!(avParent instanceof AdapterView)) break;
                                final AdapterView<?> av = (AdapterView<?>) avParent;
                                uiTodo = new Runnable() {
                                    @Override
                                    public void run() {
                                        av.performItemClick(v, avInfo.second, av.getItemIdAtPosition(avInfo.second));
                                    }
                                };
                            }
                            break;
                        case "lclk":
                            // act lclk VHASH
                            uiTodo = new Runnable() {
                                @Override
                                public void run() {
                                    v.performLongClick();
                                }
                            };
                            break;
                        case "cclk":
                            // act cclk VHASH
                            uiTodo = new Runnable() {
                                @Override
                                public void run() {
                                    v.performContextClick();
                                }
                            };
                            break;
                        case "tdown":
                            // act tdown VHASH X Y
                            if (cmds.length < 5) break;
                            sTouchDownTime = SystemClock.uptimeMillis();
                            final MotionEvent evD = MotionEvent.obtain(sTouchDownTime, sTouchDownTime, MotionEvent.ACTION_DOWN,
                                    Float.parseFloat(cmds[3]), Float.parseFloat(cmds[4]), 0);
                            uiTodo = new Runnable() {
                                @Override
                                public void run() {
                                    v.dispatchTouchEvent(evD);
                                    evD.recycle();
                                }
                            };
                            break;
                        case "tmove":
                            // act tmove VHASH X Y
                            if (cmds.length < 5 || sTouchDownTime < 0) break;
                            final MotionEvent evM = MotionEvent.obtain(sTouchDownTime, SystemClock.uptimeMillis(), MotionEvent.ACTION_MOVE,
                                    Float.parseFloat(cmds[3]), Float.parseFloat(cmds[4]), 0);
                            uiTodo = new Runnable() {
                                @Override
                                public void run() {
                                    v.dispatchTouchEvent(evM);
                                    evM.recycle();
                                }
                            };
                            break;
                        case "tup":
                            // act tup VHASH X Y
                            if (cmds.length < 5 || sTouchDownTime < 0) break;
                            final MotionEvent evU = MotionEvent.obtain(sTouchDownTime, SystemClock.uptimeMillis(), MotionEvent.ACTION_UP,
                                    Float.parseFloat(cmds[3]), Float.parseFloat(cmds[4]), 0);
                            uiTodo = new Runnable() {
                                @Override
                                public void run() {
                                    v.dispatchTouchEvent(evU);
                                    evU.recycle();
                                }
                            };
                            sTouchDownTime = -1;
                            break;
                        case "text":
                            // act text VHASH BASE64_ENCODED_TEXT
                            if (cmds.length < 4 || !(v instanceof TextView)) break;
                            final String s = new String(Base64.decode(cmds[3], Base64.DEFAULT), StandardCharsets.UTF_8);
                            uiTodo = new Runnable() {
                                @Override
                                public void run() {
                                    ((TextView) v).setText(s);
                                }
                            };
                            break;
                        case "scroll":
                            // act scroll VHASH v(erticle)|h(orizontal) b(egining)|e(nding)
                            if (cmds.length < 5) break;
                            final UIAutomatorHelper helper = new UIAutomatorHelper(v);
                            if ("h".equals(cmds[3])) helper.mIsVerticalList = false;
                            final int nMaxSwipe = 1000, nStep = 50;
                            if ("b".equals(cmds[4])) {
                                uiTodo = new Runnable() {
                                    @Override
                                    public void run() {
                                        helper.scrollToBeginning(nMaxSwipe, nStep);
                                    }
                                };
                            } else {
                                uiTodo = new Runnable() {
                                    @Override
                                    public void run() {
                                        helper.scrollToEnd(nMaxSwipe, nStep);
                                    }
                                };
                            }
                            break;
                    }
                    if (uiTodo != null) runOnMainThreadSync(uiTodo);
                } catch (Exception ex) {
                    if (configs.mExposeTollerExceptions) ex.printStackTrace();
                }
            } else if ("trace".equals(cmd)) {
                if (eventProcessConfig != null) continue; // Only allow one connection to gather traces
                // Do not cache UI element hash values for event-triggered collections
                final ProcessConfig processConfig = new ProcessConfig(configs);
                eventProcessConfig = processConfig;
                traceDumper = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        List<ActionLog> logsToProcess = new ArrayList<>();
                        while (!Thread.interrupted() && eventProcessConfig == processConfig) {
                            try {
                                logsToProcess.add(eventProcessQueue.take());
                            } catch (InterruptedException e) {
                                break;
                            }
                            eventProcessQueue.drainTo(logsToProcess);
                            // Need to put all contents together before handling them over to
                            // `netOutput` to avoid being shattered by outputs from other threads.
                            StringBuilder sb = new StringBuilder();
                            for (ActionLog log : logsToProcess) {
                                if (log.config != processConfig) continue;
                                String strTimestamp = "[" + log.time + "]";
                                sb.append(strTimestamp)
                                        .append(log.tag).append(log.viewHash)
                                        .append('/').append(log.info)
                                        .append('\n');
                                if (log.uis != null) {
                                    sb.append(strTimestamp)
                                            .append(log.uis)
                                            .append('\n');
                                }
                            }
                            netOutput.print(sb.toString());
                            if (netOutput.checkError()) {  // Flushes automatically
                                Log.d(TAG, "Trace collector seems to be dead");
                                break;
                            }
                            logsToProcess.clear();
                        }
                        if (eventProcessConfig == processConfig) eventProcessConfig = null;
                    }
                });
                traceDumper.start();
            } else if ("vis_on".equals(cmd)) {
                configs.mMustBeVisible = true;
            } else if ("vis_off".equals(cmd)) {
                configs.mMustBeVisible = false;
            } else if ("crash_expose".equals(cmd)) {
                if (crashHandlerKiller != null) continue;
                final Class<?> sysHandler;
                final Constructor<?> sysConstructor;
                try {
                    sysHandler = Class.forName("com.android.internal.os.RuntimeInit$UncaughtHandler");
                    sysConstructor = sysHandler.getDeclaredConstructor();
                    sysConstructor.setAccessible(true);
                } catch (Exception e) {
                    if (configs.mExposeTollerExceptions) e.printStackTrace();
                    continue;
                }
                Thread killer = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        while (!Thread.interrupted()) {
                            Thread.UncaughtExceptionHandler handler = Thread.getDefaultUncaughtExceptionHandler();
                            if (handler != null && handler.getClass() != sysHandler) {
                                Log.d(TAG, "Killing the app's UncaughtExceptionHandler: " + handler.getClass().getName());
                                try {
                                    Object o = sysConstructor.newInstance();
                                    if (o instanceof Thread.UncaughtExceptionHandler) {
                                        Thread.setDefaultUncaughtExceptionHandler((Thread.UncaughtExceptionHandler) o);
                                    } else {
                                        Log.wtf(TAG, "Wrong type of RuntimeInit$UncaughtHandler");
                                    }
                                } catch (Exception e) {
                                    if (configs.mExposeTollerExceptions) e.printStackTrace();
                                }
                            }
                            try {
                                //noinspection BusyWait
                                Thread.sleep(5000);
                                // There is no hook on handler registration, thus we have to poll.
                            } catch (InterruptedException e) {
                                break;
                            }
                        }
                    }
                });
                crashHandlerKiller = killer;
                killer.start();
            } else if ("crash_hide".equals(cmd)) {
                Thread killer = crashHandlerKiller;
                if (killer == null) continue;
                crashHandlerKiller = null;
                if (killer.isAlive() && !killer.isInterrupted()) killer.interrupt();
            } else if ("toller_exception_expose".equals(cmd)) {
                configs.mExposeTollerExceptions = true;
            } else if ("toller_exception_hide".equals(cmd)) {
                configs.mExposeTollerExceptions = false;
            } else if ("focused_only_on".equals(cmd)) {
                configs.mFocusedOnly = true;
            } else if ("focused_only_off".equals(cmd)) {
                configs.mFocusedOnly = false;
            } else if ("a11y_info_on".equals(cmd)) {
                configs.mIncludeA11yInfo = true;
            } else if ("a11y_info_off".equals(cmd)) {
                configs.mIncludeA11yInfo = false;
            } else if ("cap_on_main_thread_on".equals(cmd)) {
                configs.mCaptureOnMainThread = true;
            } else if ("cap_on_main_thread_off".equals(cmd)) {
                configs.mCaptureOnMainThread = false;
            } else if ("cache_result_on".equals(cmd)) {
                configs.mCacheResults = true;
            } else if ("cache_result_off".equals(cmd)) {
                configs.mCacheResults = false;
            } else if ("report_a11y_state_change_on".equals(cmd)) {
                configs.mReportA11yStateChange = true;
            } else if ("report_a11y_state_change_off".equals(cmd)) {
                configs.mReportA11yStateChange = false;
            } else if ("report_a11y_event_on".equals(cmd)) {
                configs.mReportA11yEvent = true;
            } else if ("report_a11y_event_off".equals(cmd)) {
                configs.mReportA11yEvent = false;
            } else if (cmd.startsWith("a11y_event_min_intv ")) {
                // a11y_event_min_intv MIN_INTV
                String[] cmds = cmd.split(" ");
                if (cmds.length < 2) continue;
                minLastStateChangedReportIntv = Long.parseLong(cmds[1]);
            } else if ("info".equals(cmd)) {
                try {
                    response = new JSONObject()
                            .put("st", startTime)
                            .put("vis", configs.mMustBeVisible)
                            .put("crx", crashHandlerKiller != null)
                            .put("tr", eventProcessConfig != null
                                    && traceDumper != null && traceDumper.isAlive())
                            .put("cr", configs.mCacheResults)
                            .put("a11y", tsLastStateChange)
                            .put("ct", System.currentTimeMillis())
                            .put("pid", Process.myPid())
                            .put("uid", Process.myUid())
                            .toString();
                } catch (JSONException e) {
                    if (configs.mExposeTollerExceptions) e.printStackTrace();
                }
            }
            long tsEnd = System.currentTimeMillis();
            Log.d(TAG, "Took " + (tsEnd - tsStart) + " ms");
            if (response != null) {
                netOutput.println(response);
                netOutput.flush();
            }
        }
        if (traceDumper != null) traceDumper.interrupt();
        try {
            netInput.close();
            netOutput.close();
        } catch (IOException e) {
            if (configs.mExposeTollerExceptions) e.printStackTrace();
        }
        Log.d(TAG, "#" + Thread.currentThread().getId() + " finished");
    }

    private static volatile Thread crashHandlerKiller = null;

    private static class ActionLog {
        long time = System.currentTimeMillis();

        String tag, info;
        int viewHash;
        JSONArray uis;

        // Used for checking whether the current entry corresponds to the expected config.
        ProcessConfig config;
    }

    private static final BlockingQueue<ActionLog> eventProcessQueue = new LinkedBlockingQueue<>();
    private static volatile ProcessConfig eventProcessConfig = null;

    // This function should execute in the main thread.
    private static void logViewEvent(ProcessConfig configs,
                                     String tag, View view, String info, boolean withScreen) {
        ActionLog log = new ActionLog();
        log.tag = tag;
        log.info = info;
        log.viewHash = System.identityHashCode(view);
        if (withScreen) log.uis = getUIs(configs, new JSONArray());
        log.config = configs;
        eventProcessQueue.offer(log);
    }

    private static volatile long tsLastStateChange = 0L;
    private static volatile long tsLastStateChangeThrottled = 0L;
    private static volatile long minLastStateChangedReportIntv = 100L;

    public static void notifyA11yStateChanged(View view, int changeType) {
        // Log.d(TAG, "notifyA11yStateChanged, " + view + ", " + changeType);
        long tsCurr = System.currentTimeMillis();
        tsLastStateChange = tsCurr;
        if (tsCurr - tsLastStateChangeThrottled < minLastStateChangedReportIntv) return;
        tsLastStateChangeThrottled = tsCurr;
        ProcessConfig configs = eventProcessConfig;
        if (configs == null || !configs.mReportA11yStateChange) return;
        logViewEvent(configs, "[SC]", view, Integer.toString(changeType), false);
    }

    public static void notifyA11yEvent(View view, int eventType) {
        long tsCurr = System.currentTimeMillis();
        tsLastStateChange = tsCurr;
        if (tsCurr - tsLastStateChangeThrottled < minLastStateChangedReportIntv) return;
        tsLastStateChangeThrottled = tsCurr;
        ProcessConfig configs = eventProcessConfig;
        if (configs == null || !configs.mReportA11yEvent) return;
        logViewEvent(configs, "[AE]", view, Integer.toString(eventType), false);
    }

    // 0: click
    // 1: long click
    // 2: touch
    // 3: context click
    // 7: menu click

    public static void notifyViewAction(View view, int actionType) {
        ProcessConfig configs = eventProcessConfig;
        if (configs == null) return;
        logViewEvent(configs, "[VA]", view, Integer.toString(actionType), true);
    }

    public static void notifyViewAction(View view, int actionType, int extra) {
        ProcessConfig configs = eventProcessConfig;
        if (configs == null) return;
        if (actionType == 2 && extra == MotionEvent.ACTION_MOVE) return;
        logViewEvent(configs, "[VA]", view, actionType + "/" + extra, true);
    }

    public static void notifyBackPressed() {
        ProcessConfig configs = eventProcessConfig;
        if (configs == null) return;
        logViewEvent(configs, "[BK]", null, "", true);
    }

    private static JSONArray getUIs(ProcessConfig configs, JSONArray ret) {
        for (int i = a11yStateChangeListeners.size() - 1; i >= -1; --i) {
            boolean forceCapture = false;
            if (i < 0) {
                if (!configs.mFocusedOnly || ret.length() > 0) break;
                // Fallback: if no window is focused, then simply return the last window.
                i = a11yStateChangeListeners.size() - 1;
                forceCapture = true;
            }
            try {
                Object viewRootImpl = fViewRootImpl.get(a11yStateChangeListeners.get(i));
                Object ctxWrapper = fContext.get(viewRootImpl);
                Resources res = ((Context) ctxWrapper).getResources();
                View rootView = (View) fRootView.get(viewRootImpl);
                boolean isFocused = rootView.hasWindowFocus();
                if (configs.mFocusedOnly && !forceCapture && !isFocused) continue;
                JSONObject ui = process(rootView, res, configs);
                Activity act = resolveActivity(ctxWrapper);
                String actId = act == null ? "unknown" : act.getClass().getName();
                ui.put("act_id", actId);
                ui.put("focus", isFocused);
                ret.put(ui);
            } catch (Exception e) {
                if (configs.mExposeTollerExceptions) e.printStackTrace();
            }
        }
        return ret;
    }

    private static Activity resolveActivity(Object context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) return (Activity) context;
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    @SuppressWarnings({"JavaReflectionMemberAccess", "PrivateApi"})
    private static void prepare() throws NoSuchFieldException, ClassNotFoundException, IllegalAccessException, NoSuchMethodException {
        if (fListenerInfo == null) {
            fListenerInfo = View.class.getDeclaredField("mListenerInfo");
            fListenerInfo.setAccessible(true);
        }
        if (fOnClickListener == null || fOnLongClickListener == null || fOnContextClickListener == null || fOnTouchListener == null) {
            Class<?> clsListenerInfo = Class.forName("android.view.View$ListenerInfo");
            fOnClickListener = clsListenerInfo.getDeclaredField("mOnClickListener");
            fOnClickListener.setAccessible(true);
            fOnLongClickListener = clsListenerInfo.getDeclaredField("mOnLongClickListener");
            fOnLongClickListener.setAccessible(true);
            fOnContextClickListener = clsListenerInfo.getDeclaredField("mOnContextClickListener");
            fOnContextClickListener.setAccessible(true);
            fOnTouchListener = clsListenerInfo.getDeclaredField("mOnTouchListener");
            fOnTouchListener.setAccessible(true);
        }
        if (a11yStateChangeListeners == null) {
            Class<?> clsAccessibilityManager = Class.forName("android.view.accessibility.AccessibilityManager");
            Field fInstance = clsAccessibilityManager.getDeclaredField("sInstance");
            fInstance.setAccessible(true);
            AccessibilityManager accessibilityManager = (AccessibilityManager) fInstance.get(null);
            Field fStateChangeListeners = clsAccessibilityManager.getDeclaredField("mAccessibilityStateChangeListeners");
            fStateChangeListeners.setAccessible(true);
            a11yStateChangeListeners = (CopyOnWriteArrayList<?>) fStateChangeListeners.get(accessibilityManager);
        }
        if (fViewRootImpl == null) {
            Class<?> clsA11yInteractionConnMgr = Class.forName("android.view.ViewRootImpl$AccessibilityInteractionConnectionManager");
            fViewRootImpl = clsA11yInteractionConnMgr.getDeclaredField("this$0");
            fViewRootImpl.setAccessible(true);
        }
        if (fRootView == null) {
            Class<?> clsViewRootImpl = Class.forName("android.view.ViewRootImpl");
            fRootView = clsViewRootImpl.getDeclaredField("mView");
            fRootView.setAccessible(true);
            fContext = clsViewRootImpl.getDeclaredField("mContext");
            fContext.setAccessible(true);
        }
        if (fDexCache == null) {
            fDexCache = Class.class.getDeclaredField("dexCache");
            fDexCache.setAccessible(true);
        }
        if (fDex == null || fLocation == null) {
            Class<?> clsDexCache = Class.forName("java.lang.DexCache");
            fDex = clsDexCache.getDeclaredField("dex");
            fDex.setAccessible(true);
            fLocation = clsDexCache.getDeclaredField("location");
            fLocation.setAccessible(true);
        }
        if (fDexData == null) {
            Class<?> clsDexData = Class.forName("com.android.dex.Dex");
            fDexData = clsDexData.getDeclaredField("data");
            fDexData.setAccessible(true);
        }
        if (fMemoryBlock == null) {
            fMemoryBlock = java.nio.MappedByteBuffer.class.getDeclaredField("block");
            fMemoryBlock.setAccessible(true);
        }
        if (mtdPeek == null || mtdGetSize == null) {
            Class<?> clsMemoryBlock = Class.forName("java.nio.MemoryBlock");
            // long getSize()
            mtdGetSize = clsMemoryBlock.getDeclaredMethod("getSize");
            // void peekByteArray(int offset, byte[] dst, int dstOffset, int byteCount)
            mtdPeek = clsMemoryBlock.getDeclaredMethod("peekByteArray", int.class, byte[].class, int.class, int.class);
        }
        if (mtdGetBoundsOnScreen == null) {
            // public void getBoundsOnScreen(Rect outRect)
            mtdGetBoundsOnScreen = View.class.getDeclaredMethod("getBoundsOnScreen", Rect.class);
        }
        if (mtdObtainVgChOrder == null) {
            Class<?> chListForA11y = Class.forName("android.view.ViewGroup$ChildListForAccessibility");
            // public static ChildListForAccessibility obtain(ViewGroup parent, boolean sort)
            mtdObtainVgChOrder = chListForA11y.getDeclaredMethod("obtain", ViewGroup.class, boolean.class);
            // public void recycle()
            mtdRecycleVgChOrder = chListForA11y.getDeclaredMethod("recycle");
            // private final ArrayList<View> mChildren
            fChildrenVgChOrder = chListForA11y.getDeclaredField("mChildren");
            fChildrenVgChOrder.setAccessible(true);
        }
    }

    static Rect getBound(View v) {
        try {
            Rect bound = new Rect();
            // public void getBoundsOnScreen(Rect outRect)
            mtdGetBoundsOnScreen.invoke(v, bound);
            return bound;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static String getUnifiedClassName(Class<?> cls) {
        while (cls != null) {
            String name = cls.getName();
            if (name.startsWith("android.widget.") || name.equals("android.webkit.WebView")) {
                return name;
            }
            cls = cls.getSuperclass();
        }
        return null;
    }

    private static void addIfTrue(JSONObject props, String k, boolean v) throws JSONException {
        if (v) props.put(k, true);
    }

    private static JSONObject process(final View v, Resources res, ProcessConfig configs)
            throws IllegalAccessException, JSONException {
        final int vHash = System.identityHashCode(v);
        JSONObject ret = new JSONObject();
        int vis = v.getVisibility();
        if (!configs.mMustBeVisible) ret.put("vis", vis);
        else if (vis != View.VISIBLE) return ret;
        try {
            int id = v.getId();
            ret.put("idn", id);
            if (id != View.NO_ID) ret.put("id", res.getResourceName(id));
        } catch (Exception ignored) { }
        ret.put("hash", vHash)
                .put("class", v.getClass().getName());
        String unifiedClsName = getUnifiedClassName(v.getClass());
        if (unifiedClsName != null) ret.put("ucls", unifiedClsName);
        if (v instanceof EditText) ret.put("et", true);
        Rect bound = getBound(v);
        if (bound != null) ret.put("bound", bound.toShortString());
        ret.put("en", v.isEnabled());
        if (v instanceof TextView) ret.put("text", ((TextView) v).getText());
        CharSequence contDesc = v.getContentDescription();
        if (contDesc != null && contDesc.length() > 0) ret.put("cdesc", contDesc);

        boolean actionable = false;
        boolean fixAdapterViewChildren = false;

        if (v instanceof AdapterView) {
            AdapterView<?> adapterView = (AdapterView<?>) v;
            final AdapterView.OnItemClickListener orgClickListener = adapterView.getOnItemClickListener();
            if (orgClickListener != null) {
                ret.put("mclk", orgClickListener.getClass().getName());
                actionable = fixAdapterViewChildren = true;
            }
        } else if (v instanceof TextView) {
            actionable = true;
        }

        if (configs.mIncludeA11yInfo) {
            final AccessibilityNodeInfo nodeInfo = AccessibilityNodeInfo.obtain();
            runOnMainThreadSync(new Runnable() {
                @Override
                public void run() {
                    v.onInitializeAccessibilityNodeInfo(nodeInfo);
                }
            });
            if (nodeInfo.isScrollable()) {
                ret.put("scr", true);
                actionable = true;
            }
            addIfTrue(ret, "cl", nodeInfo.isClickable());
            addIfTrue(ret, "lcl", nodeInfo.isLongClickable());
            addIfTrue(ret, "ccl", nodeInfo.isContextClickable());
            addIfTrue(ret, "ck", nodeInfo.isCheckable());
            addIfTrue(ret, "ckd", nodeInfo.isChecked());
            addIfTrue(ret, "fc", nodeInfo.isFocusable());
            addIfTrue(ret, "fcd", nodeInfo.isFocused());
            addIfTrue(ret, "pw", nodeInfo.isPassword());
            addIfTrue(ret, "sel", nodeInfo.isSelected());
            nodeInfo.recycle();
        }

        Object listenerInfo = fListenerInfo.get(v);
        if (listenerInfo != null) {
            final Object onClickListener = fOnClickListener.get(listenerInfo),
                    onLongClickListener = fOnLongClickListener.get(listenerInfo),
                    onContextClickListener = fOnContextClickListener.get(listenerInfo),
                    onTouchListener = fOnTouchListener.get(listenerInfo);
            if (v.isClickable() && onClickListener instanceof View.OnClickListener) {
                ret.put("vclk", onClickListener.getClass().getName());
            }
            if (v.isLongClickable() && onLongClickListener instanceof View.OnLongClickListener) {
                ret.put("vlclk", onLongClickListener.getClass().getName());
            }
            if (v.isContextClickable() && onContextClickListener instanceof View.OnContextClickListener) {
                ret.put("vcclk", onContextClickListener.getClass().getName());
            }
            if (onTouchListener instanceof View.OnTouchListener) {
                ret.put("vtch", onTouchListener.getClass().getName());
            }
            actionable = true;
        }

        if (actionable) {
            if (configs.mHandlers != null) configs.mHandlers.put(vHash, new WeakReference<>(v));
        }

        if (v instanceof ViewGroup) {
            ViewGroup vg = (ViewGroup) v;
            ArrayList<View> chList = null;
            try {
                chList = getA11yOrderedChildren(vg);
            } catch (Exception e) {
                if (configs.mExposeTollerExceptions) e.printStackTrace();
            }
            if (chList == null) {
                int childCount = vg.getChildCount();
                chList = new ArrayList<>(childCount);
                for (int i = 0; i < childCount; i++) {
                    View child = vg.getChildAt(i);
                    chList.add(child);
                }
            }
            JSONArray chs = new JSONArray();
            for (int i = 0; i < chList.size(); ++i) {
                View child = chList.get(i);
                JSONObject ch = process(child, res, configs);
                // Elements in AdapterViews might not have their own click handlers.
                // Instead, they rely on the AdapterView's item click handler.
                if (fixAdapterViewChildren && !ch.has("vclk")) {
                    ch.put("vclk", "av://" + vHash + "/" + i);
                    int chHash = System.identityHashCode(child);
                    if (configs.mHandlers != null && configs.mHandlers.get(chHash) == null) {
                        configs.mHandlers.put(chHash, new WeakReference<>(child));
                        if (configs.mParentAvs != null) {
                            configs.mParentAvs.put(chHash, Pair.create(vHash, i));
                        }
                    }
                }
                chs.put(ch);
            }
            if (chs.length() > 0) ret.put("ch", chs);
        }
        return ret;
    }

    private static ArrayList<View> getA11yOrderedChildren(ViewGroup vg)
            throws InvocationTargetException, IllegalAccessException {
        ArrayList<View> ret;
        Object children = mtdObtainVgChOrder.invoke(null, vg, true);
        try {
            //noinspection unchecked
            ret = new ArrayList<>((ArrayList<View>) fChildrenVgChOrder.get(children));
        } finally {
            mtdRecycleVgChOrder.invoke(children);
        }
        return ret;
    }

}
