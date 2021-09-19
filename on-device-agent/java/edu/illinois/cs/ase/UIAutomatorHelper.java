package edu.illinois.cs.ase;

import android.graphics.Rect;
import android.os.SystemClock;
import android.view.InputDevice;
import android.view.MotionEvent;
import android.view.View;

// Helper class for simulating UIAutomator behavior.
class UIAutomatorHelper {

    private final View v;

    UIAutomatorHelper(View v) {
        this.v = v;
    }

    private boolean injectTouchEventSync(final MotionEvent event) {
        boolean ret = v.dispatchTouchEvent(event);
        event.recycle();
        return ret;
    }

    // https://android.googlesource.com/platform/frameworks/testing/+/79693ed/uiautomator/library/src/com/android/uiautomator/core/InteractionController.java
    private long mDownTime;

    private boolean touchDown(int x, int y) {
        mDownTime = SystemClock.uptimeMillis();
        MotionEvent event = MotionEvent.obtain(
                mDownTime, mDownTime, MotionEvent.ACTION_DOWN, x, y, 1);
        event.setSource(InputDevice.SOURCE_TOUCHSCREEN);
        return injectTouchEventSync(event);
    }

    private boolean touchUp(int x, int y) {
        final long eventTime = SystemClock.uptimeMillis();
        MotionEvent event = MotionEvent.obtain(
                mDownTime, eventTime, MotionEvent.ACTION_UP, x, y, 1);
        event.setSource(InputDevice.SOURCE_TOUCHSCREEN);
        mDownTime = 0;
        return injectTouchEventSync(event);
    }

    private boolean touchMove(int x, int y) {
        final long eventTime = SystemClock.uptimeMillis();
        MotionEvent event = MotionEvent.obtain(
                mDownTime, eventTime, MotionEvent.ACTION_MOVE, x, y, 1);
        event.setSource(InputDevice.SOURCE_TOUCHSCREEN);
        return injectTouchEventSync(event);
    }

    private boolean swipe(int downX, int downY, int upX, int upY, int steps) {
        boolean ret;
        double xStep;
        double yStep;
        // avoid a divide by zero
        if (steps == 0) steps = 1;
        xStep = ((double) (upX - downX)) / steps;
        yStep = ((double) (upY - downY)) / steps;
        // first touch starts exactly at the point requested
        ret = touchDown(downX, downY);
        for (int i = 1; i < steps; i++) {
            ret &= touchMove(downX + (int) (xStep * i), downY + (int) (yStep * i));
            if (!ret) break;
            // set some known constant delay between steps as without it this
            // become completely dependent on the speed of the system and results
            // may vary on different devices. This guarantees at minimum we have
            // a preset delay.
            SystemClock.sleep(5);
        }
        ret &= touchUp(upX, upY);
        return ret;
    }

    // https://android.googlesource.com/platform/frameworks/uiautomator/+/61ce05bd4fd5ffc1f036c7c02c9af7cb92d6ec50/src/com/android/uiautomator/core/UiScrollable.java
    // More steps slows the swipe and prevents contents from being flung too far
    private static final int SCROLL_STEPS = 55;
    private static final int FLING_STEPS = 5;
    // Restrict a swipe's starting and ending points inside a 10% margin of the target
    private static final double DEFAULT_SWIPE_DEADZONE_PCT = 0.1;
    // Limits the number of swipes/scrolls performed during a search
    private static final int mMaxSearchSwipes = 30;
    // Used in ScrollForward() and ScrollBackward() to determine swipe direction
    public boolean mIsVerticalList = true;
    private final double mSwipeDeadZonePercentage = DEFAULT_SWIPE_DEADZONE_PCT;

    /**
     * Performs a backward scroll. If the swipe direction is set to vertical,
     * then the swipes will be performed from top to bottom. If the swipe
     * direction is set to horizontal, then the swipes will be performed from
     * left to right. Make sure to take into account devices configured with
     * right-to-left languages like Arabic and Hebrew.
     *
     * @param steps number of steps. Use this to control the speed of the scroll action.
     * @return true if scrolled, false if can't scroll anymore
     * @since API Level 16
     */
    boolean scrollBackward(int steps) {
        if ((mIsVerticalList && !v.canScrollVertically(-1))
                || (!mIsVerticalList && !v.canScrollHorizontally(-1))) return false;

        Rect rect = ViewHandlerAnalysis.getBound(v);
        if (rect == null) return false;

        int downX;
        int downY;
        int upX;
        int upY;
        // scrolling is by default assumed vertically unless the object is explicitly
        // set otherwise by setAsHorizontalContainer()
        if (mIsVerticalList) {
            int swipeAreaAdjust = (int) (rect.height() * mSwipeDeadZonePercentage);
            // scroll vertically: swipe up -> down
            downX = rect.centerX();
            downY = rect.top + swipeAreaAdjust;
            upX = rect.centerX();
            upY = rect.bottom - swipeAreaAdjust;
        } else {
            int swipeAreaAdjust = (int) (rect.width() * mSwipeDeadZonePercentage);
            // scroll horizontally: swipe left -> right
            downX = rect.left + swipeAreaAdjust;
            downY = rect.centerY();
            upX = rect.right - swipeAreaAdjust;
            upY = rect.centerY();
        }
        return swipe(downX, downY, upX, upY, steps);
    }

    /**
     * Scrolls to the beginning of a scrollable layout element. The beginning
     * can be at the  top-most edge in the case of vertical controls, or the
     * left-most edge for horizontal controls. Make sure to take into account
     * devices configured with right-to-left languages like Arabic and Hebrew.
     *
     * @param steps use steps to control the speed, so that it may be a scroll, or fling
     * @return true on scrolled else false
     * @since API Level 16
     */
    boolean scrollToBeginning(int maxSwipes, int steps) {
        // protect against potential hanging and return after preset attempts
        for (int x = 0; x < maxSwipes; x++) {
            if (!scrollBackward(steps)) break;
        }
        return true;
    }

    /**
     * Scrolls to the beginning of a scrollable layout element. The beginning
     * can be at the  top-most edge in the case of vertical controls, or the
     * left-most edge for horizontal controls. Make sure to take into account
     * devices configured with right-to-left languages like Arabic and Hebrew.
     *
     * @param maxSwipes
     * @return true on scrolled else false
     * @since API Level 16
     */
    boolean scrollToBeginning(int maxSwipes) {
        return scrollToBeginning(maxSwipes, SCROLL_STEPS);
    }

    /**
     * Performs a forward scroll with the default number of scroll steps (55).
     * If the swipe direction is set to vertical,
     * then the swipes will be performed from bottom to top. If the swipe
     * direction is set to horizontal, then the swipes will be performed from
     * right to left. Make sure to take into account devices configured with
     * right-to-left languages like Arabic and Hebrew.
     *
     * @return true if scrolled, false if can't scroll anymore
     * @since API Level 16
     */
    boolean scrollForward() {
        return scrollForward(SCROLL_STEPS);
    }

    /**
     * Performs a forward scroll. If the swipe direction is set to vertical,
     * then the swipes will be performed from bottom to top. If the swipe
     * direction is set to horizontal, then the swipes will be performed from
     * right to left. Make sure to take into account devices configured with
     * right-to-left languages like Arabic and Hebrew.
     *
     * @param steps number of steps. Use this to control the speed of the scroll action
     * @return true if scrolled, false if can't scroll anymore
     * @since API Level 16
     */
    boolean scrollForward(int steps) {
        if ((mIsVerticalList && !v.canScrollVertically(1))
                || (!mIsVerticalList && !v.canScrollHorizontally(1))) return false;

        Rect rect = ViewHandlerAnalysis.getBound(v);
        if (rect == null) return false;

        int downX;
        int downY;
        int upX;
        int upY;
        // scrolling is by default assumed vertically unless the object is explicitly
        // set otherwise by setAsHorizontalContainer()
        if (mIsVerticalList) {
            int swipeAreaAdjust = (int) (rect.height() * mSwipeDeadZonePercentage);
            // scroll vertically: swipe down -> up
            downX = rect.centerX();
            downY = rect.bottom - swipeAreaAdjust;
            upX = rect.centerX();
            upY = rect.top + swipeAreaAdjust;
        } else {
            int swipeAreaAdjust = (int) (rect.width() * mSwipeDeadZonePercentage);
            // scroll horizontally: swipe right -> left
            downX = rect.right - swipeAreaAdjust;
            downY = rect.centerY();
            upX = rect.left + swipeAreaAdjust;
            upY = rect.centerY();
        }
        return swipe(downX, downY, upX, upY, steps);
    }

    /**
     * Scrolls to the end of a scrollable layout element. The end can be at the
     * bottom-most edge in the case of vertical controls, or the right-most edge for
     * horizontal controls. Make sure to take into account devices configured with
     * right-to-left languages like Arabic and Hebrew.
     *
     * @param steps use steps to control the speed, so that it may be a scroll, or fling
     * @return true on scrolled else false
     * @since API Level 16
     */
    boolean scrollToEnd(int maxSwipes, int steps) {
        // protect against potential hanging and return after preset attempts
        for (int x = 0; x < maxSwipes; x++) {
            if (!scrollForward(steps)) {
                break;
            }
        }
        return true;
    }

    /**
     * Scrolls to the end of a scrollable layout element. The end can be at the
     * bottom-most edge in the case of vertical controls, or the right-most edge for
     * horizontal controls. Make sure to take into account devices configured with
     * right-to-left languages like Arabic and Hebrew.
     *
     * @param maxSwipes
     * @return true on scrolled, else false
     * @since API Level 16
     */
    boolean scrollToEnd(int maxSwipes) {
        return scrollToEnd(maxSwipes, SCROLL_STEPS);
    }

}
