.class public Landroid/app/Activity;
.super Landroid/view/ContextThemeWrapper;
.source "Activity.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/Window$OnWindowDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$ManagedDialog;,
        Landroid/app/Activity$NonConfigurationInstances;,
        Landroid/app/Activity$ManagedCursor;,
        Landroid/app/Activity$TranslucentConversionListener;,
        Landroid/app/Activity$HostCallbacks;
    }
.end annotation


# static fields
.field private static final DEBUG_LIFECYCLE:Z = false

.field public static final DEFAULT_KEYS_DIALER:I = 0x1

.field public static final DEFAULT_KEYS_DISABLE:I = 0x0

.field public static final DEFAULT_KEYS_SEARCH_GLOBAL:I = 0x4

.field public static final DEFAULT_KEYS_SEARCH_LOCAL:I = 0x3

.field public static final DEFAULT_KEYS_SHORTCUT:I = 0x2

.field protected static final FOCUSED_STATE_SET:[I

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field private static final REQUEST_PERMISSIONS_WHO_PREFIX:Ljava/lang/String; = "@android:requestPermissions:"

.field public static final RESULT_CANCELED:I = 0x0

.field public static final RESULT_FIRST_USER:I = 0x1

.field public static final RESULT_OK:I = -0x1

.field private static final SAVED_DIALOGS_TAG:Ljava/lang/String; = "android:savedDialogs"

.field private static final SAVED_DIALOG_ARGS_KEY_PREFIX:Ljava/lang/String; = "android:dialog_args_"

.field private static final SAVED_DIALOG_IDS_KEY:Ljava/lang/String; = "android:savedDialogIds"

.field private static final SAVED_DIALOG_KEY_PREFIX:Ljava/lang/String; = "android:dialog_"

.field private static final TAG:Ljava/lang/String; = "Activity"

.field private static final WINDOW_HIERARCHY_TAG:Ljava/lang/String; = "android:viewHierarchyState"


# instance fields
.field mActionBar:Landroid/app/ActionBar;

.field private mActionModeTypeStarting:I

.field mActivityInfo:Landroid/content/pm/ActivityInfo;

.field mActivityTransitionState:Landroid/app/ActivityTransitionState;

.field private mApplication:Landroid/app/Application;

.field mCalled:Z

.field private mChangeCanvasToTranslucent:Z

.field mChangingConfigurations:Z

.field private mComponent:Landroid/content/ComponentName;

.field mConfigChangeFlags:I

.field mCurrentConfig:Landroid/content/res/Configuration;

.field mDecor:Landroid/view/View;

.field private mDefaultKeyMode:I

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDestroyed:Z

.field private mDoReportFullyDrawn:Z

.field mEmbeddedID:Ljava/lang/String;

.field private mEnableDefaultActionBarUp:Z

.field mEnterTransitionListener:Landroid/app/SharedElementCallback;

.field mExitTransitionListener:Landroid/app/SharedElementCallback;

.field mFinished:Z

.field final mFragments:Landroid/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field private mIdent:I

.field private final mInstanceTracker:Ljava/lang/Object;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field mIntent:Landroid/content/Intent;

.field mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field mMainThread:Landroid/app/ActivityThread;

.field private final mManagedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity$ManagedCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Activity$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuInflater:Landroid/view/MenuInflater;

.field mParent:Landroid/app/Activity;

.field mReferrer:Ljava/lang/String;

.field mResultCode:I

.field mResultData:Landroid/content/Intent;

.field mResumed:Z

.field private mSearchEvent:Landroid/view/SearchEvent;

.field private mSearchManager:Landroid/app/SearchManager;

.field mStartedActivity:Z

.field private mStopped:Z

.field mTemporaryPause:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleReady:Z

.field private mToken:Landroid/os/IBinder;

.field private mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

.field private mUiThread:Ljava/lang/Thread;

.field mVisibleBehind:Z

.field mVisibleFromClient:Z

.field mVisibleFromServer:Z

.field private mVoiceInteractor:Landroid/app/VoiceInteractor;

.field private mWindow:Landroid/view/Window;

.field mWindowAdded:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 789
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009c

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/app/Activity;->FOCUSED_STATE_SET:[I

    .line 670
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 670
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;-><init>()V

    .line 719
    iput-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 721
    iput-boolean v1, p0, Landroid/app/Activity;->mTemporaryPause:Z

    .line 723
    iput-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 741
    iput-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 742
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 743
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 744
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 745
    iput-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 751
    iput v1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 754
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    .line 755
    new-instance v0, Landroid/app/Activity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/app/Activity$HostCallbacks;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Landroid/app/FragmentController;->createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    .line 772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 771
    iput-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    .line 775
    iput v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 776
    iput-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 783
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 784
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 786
    iput v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 787
    iput-object v2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 792
    invoke-static {p0}, Landroid/os/StrictMode;->trackActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mInstanceTracker:Ljava/lang/Object;

    .line 796
    new-instance v0, Landroid/app/ActivityTransitionState;

    invoke-direct {v0}, Landroid/app/ActivityTransitionState;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 797
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 798
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 670
    return-void
.end method

.method private cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 3955
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 3956
    :goto_a
    if-eqz v0, :cond_f

    .line 3957
    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 3959
    :cond_f
    if-eqz p1, :cond_17

    invoke-direct {p0}, Landroid/app/Activity;->isTopOfTask()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3954
    :cond_17
    :goto_17
    return-void

    .line 3955
    :cond_18
    const/4 v0, 0x0

    .local v0, "decor":Landroid/view/View;
    goto :goto_a

    .line 3960
    .end local v0    # "decor":Landroid/view/View;
    :cond_1a
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v1, p0, p1}, Landroid/app/ActivityTransitionState;->startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_17
.end method

.method private createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .param p1, "dialogId"    # Ljava/lang/Integer;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1070
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 1071
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_c

    .line 1072
    return-object v2

    .line 1074
    :cond_c
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 1075
    return-object v0
.end method

.method private dispatchRequestPermissionsResult(ILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 6549
    if-eqz p2, :cond_17

    .line 6550
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    .line 6549
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6551
    .local v1, "permissions":[Ljava/lang/String;
    :goto_a
    if-eqz p2, :cond_1a

    .line 6552
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    .line 6551
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 6553
    .local v0, "grantResults":[I
    :goto_13
    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 6547
    return-void

    .line 6550
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_17
    new-array v1, v3, [Ljava/lang/String;

    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_a

    .line 6552
    :cond_1a
    new-array v0, v3, [I

    .restart local v0    # "grantResults":[I
    goto :goto_13
.end method

.method private dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 6559
    if-eqz p2, :cond_17

    .line 6560
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    .line 6559
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6561
    .local v1, "permissions":[Ljava/lang/String;
    :goto_a
    if-eqz p2, :cond_1a

    .line 6562
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    .line 6561
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 6563
    .local v0, "grantResults":[I
    :goto_13
    invoke-virtual {p3, p1, v1, v0}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 6557
    return-void

    .line 6560
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_17
    new-array v1, v3, [Ljava/lang/String;

    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_a

    .line 6562
    :cond_1a
    new-array v0, v3, [I

    .restart local v0    # "grantResults":[I
    goto :goto_13
.end method

.method private ensureSearchManager()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5243
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_6

    .line 5244
    return-void

    .line 5247
    :cond_6
    new-instance v0, Landroid/app/SearchManager;

    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    .line 5242
    return-void
.end method

.method private finish(Z)V
    .registers 7
    .param p1, "finishTask"    # Z

    .prologue
    .line 4848
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_22

    .line 4851
    monitor-enter p0

    .line 4852
    :try_start_5
    iget v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 4853
    .local v1, "resultCode":I
    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_1f

    .local v2, "resultData":Landroid/content/Intent;
    monitor-exit p0

    .line 4857
    if-eqz v2, :cond_f

    .line 4858
    :try_start_c
    invoke-virtual {v2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 4860
    :cond_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 4861
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 4860
    invoke-interface {v3, v4, v1, v2, p1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4862
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1e} :catch_28

    .line 4847
    .end local v1    # "resultCode":I
    .end local v2    # "resultData":Landroid/content/Intent;
    :cond_1e
    :goto_1e
    return-void

    .line 4851
    :catchall_1f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4868
    :cond_22
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v3, p0}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    goto :goto_1e

    .line 4864
    .restart local v1    # "resultCode":I
    .restart local v2    # "resultData":Landroid/content/Intent;
    :catch_28
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1e
.end method

.method private initWindowDecorActionBar()V
    .registers 4

    .prologue
    .line 2139
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2143
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2145
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1a

    .line 2146
    :cond_19
    return-void

    .line 2149
    :cond_1a
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 2150
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v2, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 2152
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 2153
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 2138
    return-void
.end method

.method private isTopOfTask()Z
    .registers 4

    .prologue
    .line 5620
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isTopOfTask(Landroid/os/IBinder;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5621
    :catch_b
    move-exception v0

    .line 5622
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private missingDialog(I)Ljava/lang/IllegalArgumentException;
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 3484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no dialog with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was ever "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3485
    const-string/jumbo v2, "shown via Activity#showDialog"

    .line 3484
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private restoreManagedDialogs(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 1043
    const-string/jumbo v7, "android:savedDialogs"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1044
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_b

    .line 1045
    return-void

    .line 1048
    :cond_b
    const-string/jumbo v7, "android:savedDialogIds"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1049
    .local v4, "ids":[I
    array-length v6, v4

    .line 1050
    .local v6, "numDialogs":I
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1051
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v6, :cond_6c

    .line 1052
    aget v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1053
    .local v1, "dialogId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1054
    .local v2, "dialogState":Landroid/os/Bundle;
    if-eqz v2, :cond_69

    .line 1057
    new-instance v5, Landroid/app/Activity$ManagedDialog;

    invoke-direct {v5, v10}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog;)V

    .line 1058
    .local v5, "md":Landroid/app/Activity$ManagedDialog;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 1059
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, v7}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 1060
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_69

    .line 1061
    iget-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1062
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    iget-object v9, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1063
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1051
    .end local v5    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1042
    .end local v1    # "dialogId":Ljava/lang/Integer;
    .end local v2    # "dialogState":Landroid/os/Bundle;
    :cond_6c
    return-void
.end method

.method private saveManagedDialogs(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1399
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v6, :cond_5

    .line 1400
    return-void

    .line 1403
    :cond_5
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1404
    .local v5, "numDialogs":I
    if-nez v5, :cond_e

    .line 1405
    return-void

    .line 1408
    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1410
    .local v0, "dialogState":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    new-array v2, v6, [I

    .line 1413
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v5, :cond_4b

    .line 1414
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1415
    .local v3, "key":I
    aput v3, v2, v1

    .line 1416
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedDialog;

    .line 1417
    .local v4, "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {v3}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1418
    iget-object v6, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    if-eqz v6, :cond_48

    .line 1419
    invoke-static {v3}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1413
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1423
    .end local v3    # "key":I
    .end local v4    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_4b
    const-string/jumbo v6, "android:savedDialogIds"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1424
    const-string/jumbo v6, "android:savedDialogs"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1398
    return-void
.end method

.method private static savedDialogArgsKeyFor(I)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # I

    .prologue
    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:dialog_args_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static savedDialogKeyFor(I)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # I

    .prologue
    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "activity"    # Landroid/app/Activity;
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4127
    const/4 v5, 0x0

    .line 4128
    .local v5, "resolvedType":Ljava/lang/String;
    if-eqz p3, :cond_13

    .line 4129
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 4130
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 4131
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 4133
    .end local v5    # "resolvedType":Ljava/lang/String;
    :cond_13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 4134
    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 4135
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p6

    iget-object v7, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p7

    .line 4133
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v13

    .line 4137
    .local v13, "result":I
    const/4 v1, -0x6

    if-ne v13, v1, :cond_42

    .line 4138
    new-instance v1, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v1
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3b} :catch_3b

    .line 4141
    .end local v13    # "result":I
    :catch_3b
    move-exception v12

    .line 4143
    :goto_3c
    if-ltz p2, :cond_41

    .line 4151
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4125
    :cond_41
    return-void

    .line 4140
    .restart local v13    # "result":I
    :cond_42
    const/4 v1, 0x0

    :try_start_43
    invoke-static {v13, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_46} :catch_3b

    goto :goto_3c
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2214
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2215
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2213
    return-void
.end method

.method final attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aThread"    # Landroid/app/ActivityThread;
    .param p3, "instr"    # Landroid/app/Instrumentation;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "ident"    # I
    .param p6, "application"    # Landroid/app/Application;
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "info"    # Landroid/content/pm/ActivityInfo;
    .param p9, "title"    # Ljava/lang/CharSequence;
    .param p10, "parent"    # Landroid/app/Activity;
    .param p11, "id"    # Ljava/lang/String;
    .param p12, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "referrer"    # Ljava/lang/String;
    .param p15, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 6175
    invoke-virtual {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 6177
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentController;->attachHost(Landroid/app/Fragment;)V

    .line 6179
    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 6180
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 6181
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 6182
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 6183
    iget v1, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v1, :cond_2e

    .line 6184
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v2, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 6186
    :cond_2e
    iget v1, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v1, :cond_39

    .line 6187
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v2, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 6189
    :cond_39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    .line 6191
    iput-object p2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6192
    iput-object p3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 6193
    iput-object p4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6194
    iput p5, p0, Landroid/app/Activity;->mIdent:I

    .line 6195
    iput-object p6, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 6196
    iput-object p7, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 6197
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 6198
    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 6199
    iput-object p8, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 6200
    iput-object p9, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 6201
    move-object/from16 v0, p10

    iput-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 6202
    move-object/from16 v0, p11

    iput-object v0, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6203
    move-object/from16 v0, p12

    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 6204
    if-eqz p15, :cond_6f

    .line 6205
    if-eqz p12, :cond_a8

    .line 6206
    move-object/from16 v0, p12

    iget-object v1, v0, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 6213
    :cond_6f
    :goto_6f
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 6214
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 6215
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 6216
    iget v2, p8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_b6

    const/4 v2, 0x1

    .line 6213
    :goto_89
    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 6217
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v1, :cond_9b

    .line 6218
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 6220
    :cond_9b
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 6221
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 6174
    return-void

    .line 6208
    :cond_a8
    new-instance v1, Landroid/app/VoiceInteractor;

    .line 6209
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 6208
    move-object/from16 v0, p15

    invoke-direct {v1, v0, p0, p0, v2}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_6f

    .line 6216
    :cond_b6
    const/4 v2, 0x0

    goto :goto_89
.end method

.method public canStartActivityForResult()Z
    .registers 2

    .prologue
    .line 4565
    const/4 v0, 0x1

    return v0
.end method

.method public closeContextMenu()V
    .registers 3

    .prologue
    const/4 v1, 0x6

    .line 3256
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3257
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 3255
    :cond_e
    return-void
.end method

.method public closeOptionsMenu()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3195
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3196
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 3194
    :cond_e
    return-void
.end method

.method public convertFromTranslucent()V
    .registers 5

    .prologue
    .line 5645
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 5646
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5647
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_1a

    .line 5643
    :cond_19
    :goto_19
    return-void

    .line 5649
    :catch_1a
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_19
.end method

.method public convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z
    .registers 9
    .param p1, "callback"    # Landroid/app/Activity$TranslucentConversionListener;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v5, 0x0

    .line 5684
    :try_start_1
    iput-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 5686
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, p2}, Landroid/app/IActivityManager;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v2

    .line 5685
    iput-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 5687
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_2a

    .line 5688
    const/4 v0, 0x1

    .line 5694
    .local v0, "drawComplete":Z
    :goto_1a
    iget-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-nez v2, :cond_27

    iget-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v2, :cond_27

    .line 5696
    iget-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-interface {v2, v0}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 5698
    :cond_27
    iget-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    return v2

    .line 5689
    .end local v0    # "drawComplete":Z
    :catch_2a
    move-exception v1

    .line 5691
    .local v1, "e":Landroid/os/RemoteException;
    iput-boolean v5, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 5692
    const/4 v0, 0x0

    .restart local v0    # "drawComplete":Z
    goto :goto_1a
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 17
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 5083
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5085
    .local v2, "packageName":Ljava/lang/String;
    :try_start_4
    invoke-virtual {p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 5087
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5089
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_2f

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5090
    :goto_11
    iget-object v4, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v6, v1, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p2, v6, v1

    .line 5091
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 5088
    const/4 v1, 0x3

    .line 5090
    const/4 v7, 0x0

    const/4 v9, 0x0

    move v5, p1

    move/from16 v8, p3

    .line 5087
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 5092
    .local v12, "target":Landroid/content/IIntentSender;
    if-eqz v12, :cond_34

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    :goto_2e
    return-object v0

    .line 5089
    .end local v12    # "target":Landroid/content/IIntentSender;
    :cond_2f
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    iget-object v3, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_33} :catch_36

    goto :goto_11

    .line 5092
    .restart local v12    # "target":Landroid/content/IIntentSender;
    :cond_34
    const/4 v0, 0x0

    goto :goto_2e

    .line 5093
    .end local v12    # "target":Landroid/content/IIntentSender;
    :catch_36
    move-exception v11

    .line 5096
    .local v11, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public final dismissDialog(I)V
    .registers 4
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3468
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_9

    .line 3469
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 3472
    :cond_9
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 3473
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_18

    .line 3474
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 3476
    :cond_18
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3467
    return-void
.end method

.method dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 11
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 6426
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 6427
    if-nez p1, :cond_b

    .line 6428
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 6422
    :cond_a
    :goto_a
    return-void

    .line 6429
    :cond_b
    const-string/jumbo v4, "@android:requestPermissions:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 6430
    const-string/jumbo v4, "@android:requestPermissions:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 6431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 6432
    invoke-direct {p0, p2, p4}, Landroid/app/Activity;->dispatchRequestPermissionsResult(ILandroid/content/Intent;)V

    goto :goto_a

    .line 6434
    :cond_29
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 6435
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_a

    .line 6436
    invoke-direct {p0, p2, p4, v0}, Landroid/app/Activity;->dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V

    goto :goto_a

    .line 6439
    .end local v0    # "frag":Landroid/app/Fragment;
    :cond_35
    const-string/jumbo v4, "@android:view:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 6440
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    .line 6441
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    .line 6440
    invoke-virtual {v4, v5}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v3

    .line 6442
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "viewRoot$iterator":Ljava/util/Iterator;
    :cond_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 6443
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 6444
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    .line 6443
    if-eqz v4, :cond_4e

    .line 6446
    return-void

    .line 6450
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v2    # "viewRoot$iterator":Ljava/util/Iterator;
    .end local v3    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    :cond_6b
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 6451
    .restart local v0    # "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_a

    .line 6452
    invoke-virtual {v0, p2, p3, p4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_a
.end method

.method public dispatchEnterAnimationComplete()V
    .registers 2

    .prologue
    .line 5852
    invoke-virtual {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 5853
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 5854
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnEnterAnimationComplete()V

    .line 5851
    :cond_22
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2800
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2801
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2802
    const/4 v0, 0x1

    return v0

    .line 2804
    :cond_f
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2715
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2719
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_1a

    .line 2720
    iget-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, p1}, Landroid/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 2719
    if-eqz v3, :cond_1a

    .line 2721
    return v5

    .line 2724
    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2725
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2726
    return v5

    .line 2728
    :cond_25
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2729
    .local v0, "decor":Landroid/view/View;
    if-nez v0, :cond_2d

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2730
    :cond_2d
    if-eqz v0, :cond_33

    .line 2731
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 2730
    :cond_33
    invoke-virtual {p1, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2744
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2745
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2746
    const/4 v0, 0x1

    return v0

    .line 2748
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v4, -0x1

    .line 2808
    invoke-virtual {p0}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2809
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2811
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2812
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_3c

    .line 2813
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_3a

    const/4 v0, 0x1

    .line 2814
    .local v0, "isFullScreen":Z
    :goto_24
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 2816
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2817
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 2818
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2821
    :cond_38
    const/4 v3, 0x1

    return v3

    .line 2813
    .end local v0    # "isFullScreen":Z
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_3a
    const/4 v0, 0x0

    .restart local v0    # "isFullScreen":Z
    goto :goto_24

    .line 2812
    .end local v0    # "isFullScreen":Z
    :cond_3c
    const/4 v0, 0x0

    .restart local v0    # "isFullScreen":Z
    goto :goto_24
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 2763
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2765
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2766
    const/4 v0, 0x1

    return v0

    .line 2768
    :cond_15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2782
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2783
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2784
    const/4 v0, 0x1

    return v0

    .line 2786
    :cond_f
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 5560
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5559
    return-void
.end method

.method dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 5564
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Local Activity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5565
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5566
    const-string/jumbo v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5568
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5569
    iget-boolean v1, p0, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5570
    iget-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mFinished="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5571
    iget-boolean v1, p0, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 5572
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mChangingConfigurations="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5573
    iget-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 5574
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCurrentConfig="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5575
    iget-object v1, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5577
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5578
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5579
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_85

    .line 5580
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/VoiceInteractor;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5583
    :cond_85
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_b2

    .line 5584
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b2

    .line 5585
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_b2

    .line 5586
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5589
    :cond_b2
    iget-object v1, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5563
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 2090
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 4878
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(Z)V

    .line 4877
    return-void
.end method

.method public finishActivity(I)V
    .registers 6
    .param p1, "requestCode"    # I

    .prologue
    .line 4947
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_10

    .line 4949
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 4950
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 4949
    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_16

    .line 4946
    :goto_f
    return-void

    .line 4955
    :cond_10
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p0, p1}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    goto :goto_f

    .line 4951
    :catch_16
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_f
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .registers 7
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 4969
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 4970
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 4969
    invoke-interface {v1, v2, v3, p2}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 4967
    :goto_b
    return-void

    .line 4971
    :catch_c
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_b
.end method

.method public finishAffinity()V
    .registers 4

    .prologue
    .line 4896
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v1, :cond_d

    .line 4897
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can not be called from an embedded activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4899
    :cond_d
    iget v1, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v1, :cond_15

    iget-object v1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v1, :cond_1e

    .line 4900
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can not be called to deliver a result"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4903
    :cond_1e
    :try_start_1e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 4904
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2d} :catch_2e

    .line 4895
    :cond_2d
    :goto_2d
    return-void

    .line 4906
    :catch_2e
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2d
.end method

.method public finishAfterTransition()V
    .registers 2

    .prologue
    .line 4932
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4933
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4931
    :cond_b
    return-void
.end method

.method public finishAndRemoveTask()V
    .registers 2

    .prologue
    .line 4981
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(Z)V

    .line 4980
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .registers 2
    .param p1, "child"    # Landroid/app/Activity;

    .prologue
    .line 4921
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4920
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .registers 2

    .prologue
    .line 2100
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2101
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method getActivityOptions()Landroid/app/ActivityOptions;
    .registers 4

    .prologue
    .line 5730
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 5731
    :catch_b
    move-exception v0

    .line 5733
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getActivityToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 6226
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    goto :goto_a
.end method

.method public final getApplication()Landroid/app/Application;
    .registers 2

    .prologue
    .line 821
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 4756
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 4757
    :catch_b
    move-exception v0

    .line 4758
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4733
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 4734
    :catch_b
    move-exception v0

    .line 4735
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getChangingConfigurations()I
    .registers 2

    .prologue
    .line 1756
    iget v0, p0, Landroid/app/Activity;->mConfigChangeFlags:I

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 5222
    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .registers 2

    .prologue
    .line 2250
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransitionManager()Landroid/transition/TransitionManager;
    .registers 2

    .prologue
    .line 2228
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 869
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_b

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .registers 2

    .prologue
    .line 1917
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 802
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getLastNonConfigurationChildInstances()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1862
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v1, :cond_9

    .line 1863
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 1862
    :cond_9
    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1783
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v1, :cond_9

    .line 1784
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 1783
    :cond_9
    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 3691
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 5205
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5206
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 5207
    .local v0, "cls":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 5208
    .local v1, "packageLen":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_1b

    .line 5210
    :cond_1a
    return-object v0

    .line 5209
    :cond_1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1a

    .line 5212
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final getMediaController()Landroid/media/session/MediaController;
    .registers 2

    .prologue
    .line 5497
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .prologue
    .line 3700
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_18

    .line 3701
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3702
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1b

    .line 3703
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 3708
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0

    .line 3705
    :cond_1b
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_18
.end method

.method public final getParent()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 831
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 6083
    iget-object v6, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 6084
    .local v4, "parentName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 6085
    return-object v9

    .line 6089
    :cond_c
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6091
    .local v5, "target":Landroid/content/ComponentName;
    :try_start_11
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 6092
    .local v2, "parentInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 6093
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_23

    .line 6094
    invoke-static {v5}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 6096
    .local v3, "parentIntent":Landroid/content/Intent;
    :goto_22
    return-object v3

    .line 6095
    .end local v3    # "parentIntent":Landroid/content/Intent;
    :cond_23
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_2b} :catch_2d

    move-result-object v3

    .restart local v3    # "parentIntent":Landroid/content/Intent;
    goto :goto_22

    .line 6097
    .end local v1    # "parentActivity":Ljava/lang/String;
    .end local v2    # "parentInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "parentIntent":Landroid/content/Intent;
    :catch_2d
    move-exception v0

    .line 6098
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6099
    const-string/jumbo v8, "\' in manifest"

    .line 6098
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6100
    return-object v9
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 5239
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getReferrer()Landroid/net/Uri;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4685
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4686
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 4687
    .local v1, "referrer":Landroid/net/Uri;
    if-eqz v1, :cond_11

    .line 4688
    return-object v1

    .line 4690
    :cond_11
    const-string/jumbo v3, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4691
    .local v2, "referrerName":Ljava/lang/String;
    if-eqz v2, :cond_1f

    .line 4692
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 4694
    :cond_1f
    iget-object v3, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    if-eqz v3, :cond_3a

    .line 4695
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "android-app"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 4697
    :cond_3a
    return-object v4
.end method

.method public getRequestedOrientation()I
    .registers 4

    .prologue
    .line 5133
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_f

    .line 5135
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5136
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5135
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getRequestedOrientation(Landroid/os/IBinder;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_16

    move-result v1

    return v1

    .line 5141
    :cond_f
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    return v1

    .line 5137
    :catch_16
    move-exception v0

    .line 5143
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public final getSearchEvent()Landroid/view/SearchEvent;
    .registers 2

    .prologue
    .line 3572
    iget-object v0, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5252
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_f

    .line 5253
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5254
    const-string/jumbo v1, "System services not available to Activities before onCreate()"

    .line 5253
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5257
    :cond_f
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5258
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 5259
    :cond_1b
    const-string/jumbo v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5260
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 5261
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    return-object v0

    .line 5263
    :cond_2a
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTaskId()I
    .registers 5

    .prologue
    .line 5154
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5155
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    .line 5154
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    return v1

    .line 5156
    :catch_c
    move-exception v0

    .line 5157
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 5308
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleColor()I
    .registers 2

    .prologue
    .line 5312
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    return v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .registers 2

    .prologue
    .line 1262
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    return-object v0
.end method

.method public final getVolumeControlStream()I
    .registers 2

    .prologue
    .line 5464
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 836
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public hasWindowFocus()Z
    .registers 4

    .prologue
    .line 2686
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2687
    .local v1, "w":Landroid/view/Window;
    if-eqz v1, :cond_11

    .line 2688
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2689
    .local v0, "d":Landroid/view/View;
    if-eqz v0, :cond_11

    .line 2690
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    return v2

    .line 2693
    .end local v0    # "d":Landroid/view/View;
    :cond_11
    const/4 v2, 0x0

    return v2
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2971
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2972
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2970
    :cond_15
    :goto_15
    return-void

    .line 2973
    :cond_16
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    goto :goto_15
.end method

.method public isBackgroundVisibleBehind()Z
    .registers 4

    .prologue
    .line 5817
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5818
    :catch_b
    move-exception v0

    .line 5820
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isChangingConfigurations()Z
    .registers 2

    .prologue
    .line 4824
    iget-boolean v0, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    return v0
.end method

.method public final isChild()Z
    .registers 2

    .prologue
    .line 826
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDestroyed()Z
    .registers 2

    .prologue
    .line 4811
    iget-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .registers 2

    .prologue
    .line 4803
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    return v0
.end method

.method public isImmersive()Z
    .registers 4

    .prologue
    .line 5605
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isImmersive(Landroid/os/IBinder;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5606
    :catch_b
    move-exception v0

    .line 5607
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public final isResumed()Z
    .registers 2

    .prologue
    .line 6418
    iget-boolean v0, p0, Landroid/app/Activity;->mResumed:Z

    return v0
.end method

.method public isTaskRoot()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5169
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 5170
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x1

    .line 5169
    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_12

    move-result v3

    if-ltz v3, :cond_10

    :goto_f
    return v1

    :cond_10
    move v1, v2

    goto :goto_f

    .line 5171
    :catch_12
    move-exception v0

    .line 5172
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isVoiceInteraction()Z
    .registers 2

    .prologue
    .line 1238
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isVoiceInteractionRoot()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1250
    :try_start_1
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v2, :cond_f

    .line 1251
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->isRootVoiceInteraction(Landroid/os/IBinder;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_10

    move-result v1

    .line 1250
    :cond_f
    return v1

    .line 1252
    :catch_10
    move-exception v0

    .line 1254
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method makeVisible()V
    .registers 4

    .prologue
    .line 4783
    iget-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v1, :cond_18

    .line 4784
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 4785
    .local v0, "wm":Landroid/view/ViewManager;
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4786
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 4788
    .end local v0    # "wm":Landroid/view/ViewManager;
    :cond_18
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4782
    return-void
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1961
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1962
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_12

    .line 1963
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 1965
    :cond_12
    return-object v6
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2001
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2002
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_12

    .line 2003
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 2005
    :cond_12
    return-object v6
.end method

.method public moveTaskToBack(Z)Z
    .registers 5
    .param p1, "nonRoot"    # Z

    .prologue
    .line 5189
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5190
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5189
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 5191
    :catch_b
    move-exception v0

    .line 5194
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .registers 10
    .param p1, "upIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 6023
    iget-object v5, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v5, :cond_3d

    .line 6024
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 6025
    .local v0, "destInfo":Landroid/content/ComponentName;
    if-nez v0, :cond_1f

    .line 6026
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 6027
    if-nez v0, :cond_16

    .line 6028
    return v7

    .line 6030
    :cond_16
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6031
    .end local p1    # "upIntent":Landroid/content/Intent;
    .local v4, "upIntent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p1, v4

    .line 6035
    .end local v4    # "upIntent":Landroid/content/Intent;
    .restart local p1    # "upIntent":Landroid/content/Intent;
    :cond_1f
    monitor-enter p0

    .line 6036
    :try_start_20
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    .line 6037
    .local v2, "resultCode":I
    iget-object v3, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_38

    .local v3, "resultData":Landroid/content/Intent;
    monitor-exit p0

    .line 6039
    if-eqz v3, :cond_2a

    .line 6040
    invoke-virtual {v3}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 6043
    :cond_2a
    :try_start_2a
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 6044
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v5, v6, p1, v2, v3}, Landroid/app/IActivityManager;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_36} :catch_3b

    move-result v5

    return v5

    .line 6035
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Landroid/content/Intent;
    :catchall_38
    move-exception v5

    monitor-exit p0

    throw v5

    .line 6046
    .restart local v2    # "resultCode":I
    .restart local v3    # "resultData":Landroid/content/Intent;
    :catch_3b
    move-exception v1

    .line 6047
    .local v1, "e":Landroid/os/RemoteException;
    return v7

    .line 6050
    .end local v0    # "destInfo":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Landroid/content/Intent;
    :cond_3d
    iget-object v5, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v5, p0, p1}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v5

    return v5
.end method

.method public navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 4
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "upIntent"    # Landroid/content/Intent;

    .prologue
    .line 6067
    invoke-virtual {p0, p2}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 5964
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 5953
    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .registers 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 5051
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 5030
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 11
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3714
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v4, :cond_25

    .line 3715
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 3726
    :goto_9
    if-eqz p1, :cond_24

    .line 3727
    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3728
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xe3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 3729
    .local v1, "colorPrimary":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3730
    if-eqz v1, :cond_24

    .line 3731
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v3, v5, v5, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 3733
    .local v3, "v":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 3713
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "colorPrimary":I
    .end local v3    # "v":Landroid/app/ActivityManager$TaskDescription;
    :cond_24
    return-void

    .line 3718
    :cond_25
    :try_start_25
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2e} :catch_32

    .line 3722
    :goto_2e
    invoke-virtual {p1, p2, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_9

    .line 3719
    :catch_32
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_2e
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .registers 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1925
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    .prologue
    .line 2664
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 2499
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2500
    return-void

    .line 2503
    :cond_d
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2504
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 2498
    :cond_1c
    return-void
.end method

.method public onBackgroundVisibleBehindChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 5837
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 5330
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1725
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1727
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1729
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_11

    .line 1731
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1734
    :cond_11
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1a

    .line 1737
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1723
    :cond_1a
    return-void
.end method

.method public onContentChanged()V
    .registers 1

    .prologue
    .line 2624
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3279
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 3280
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3282
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3293
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 3294
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 3292
    :cond_9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 902
    iget-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v2, :cond_f

    .line 903
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v3, v3, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/app/FragmentController;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    .line 905
    :cond_f
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 906
    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-nez v2, :cond_49

    .line 907
    iput-boolean v4, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    .line 912
    :cond_1b
    :goto_1b
    if-eqz p1, :cond_31

    .line 913
    const-string/jumbo v2, "android:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 914
    .local v0, "p":Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v3, :cond_2e

    .line 915
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v1, v1, Landroid/app/Activity$NonConfigurationInstances;->fragments:Ljava/util/List;

    .line 914
    :cond_2e
    invoke-virtual {v2, v0, v1}, Landroid/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 917
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_31
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->dispatchCreate()V

    .line 918
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 919
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_46

    .line 920
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1, p0}, Landroid/app/VoiceInteractor;->attachActivity(Landroid/app/Activity;)V

    .line 922
    :cond_46
    iput-boolean v4, p0, Landroid/app/Activity;->mCalled:Z

    .line 900
    return-void

    .line 909
    :cond_49
    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_1b
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 947
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 946
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 3213
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1534
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3303
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3342
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .registers 2
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .prologue
    .line 3148
    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;

    .line 3147
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3006
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 3007
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 3009
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 2845
    if-nez p1, :cond_13

    .line 2846
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2847
    .local v0, "show":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2848
    return v0

    .line 2850
    .end local v0    # "show":Z
    :cond_13
    return v1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3
    .param p1, "featureId"    # I

    .prologue
    .line 2833
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .registers 4
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1512
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 5542
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 5543
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 5546
    :cond_e
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 5528
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1650
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    .line 1653
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v5, :cond_2b

    .line 1654
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1655
    .local v4, "numDialogs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v4, :cond_29

    .line 1656
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedDialog;

    .line 1657
    .local v2, "md":Landroid/app/Activity$ManagedDialog;
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1658
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1655
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1661
    .end local v2    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_29
    iput-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1665
    .end local v1    # "i":I
    .end local v4    # "numDialogs":I
    :cond_2b
    iget-object v6, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1666
    :try_start_2e
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1667
    .local v3, "numCursors":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_35
    if-ge v1, v3, :cond_4b

    .line 1668
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedCursor;

    .line 1669
    .local v0, "c":Landroid/app/Activity$ManagedCursor;
    if-eqz v0, :cond_48

    .line 1670
    invoke-static {v0}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1667
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 1673
    .end local v0    # "c":Landroid/app/Activity$ManagedCursor;
    :cond_4b
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_50
    .catchall {:try_start_2e .. :try_end_50} :catchall_62

    monitor-exit v6

    .line 1677
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v5, :cond_5a

    .line 1678
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v5}, Landroid/app/SearchManager;->stopSearch()V

    .line 1681
    :cond_5a
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/Application;->dispatchActivityDestroyed(Landroid/app/Activity;)V

    .line 1648
    return-void

    .line 1665
    .end local v1    # "i":I
    .end local v3    # "numCursors":I
    :catchall_62
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 2674
    return-void
.end method

.method public onEnterAnimationComplete()V
    .registers 1

    .prologue
    .line 5845
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2587
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2388
    const/4 v5, 0x4

    if-ne p1, v5, :cond_18

    .line 2389
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2390
    const/4 v6, 0x5

    .line 2389
    if-lt v5, v6, :cond_14

    .line 2391
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 2395
    :goto_13
    return v7

    .line 2393
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_13

    .line 2398
    :cond_18
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    if-nez v5, :cond_1d

    .line 2399
    return v8

    .line 2400
    :cond_1d
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    if-ne v5, v6, :cond_33

    .line 2401
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 2402
    .local v4, "w":Landroid/view/Window;
    invoke-virtual {v4, v8}, Landroid/view/Window;->hasFeature(I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2403
    invoke-virtual {v4, v8, p1, p2, v6}, Landroid/view/Window;->performPanelShortcut(IILandroid/view/KeyEvent;I)Z

    move-result v5

    .line 2402
    if-eqz v5, :cond_32

    .line 2405
    return v7

    .line 2407
    :cond_32
    return v8

    .line 2410
    .end local v4    # "w":Landroid/view/Window;
    :cond_33
    const/4 v0, 0x0

    .line 2412
    .local v0, "clearSpannable":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_40

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 2413
    :cond_40
    const/4 v0, 0x1

    .line 2414
    const/4 v1, 0x0

    .line 2439
    :cond_42
    :goto_42
    if-eqz v0, :cond_53

    .line 2440
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2441
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2442
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v5, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2444
    :cond_53
    return v1

    .line 2416
    :cond_54
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    .line 2417
    iget-object v6, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2416
    invoke-virtual {v5, v9, v6, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2418
    .local v1, "handled":Z
    if-eqz v1, :cond_42

    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_42

    .line 2421
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2422
    .local v3, "str":Ljava/lang/String;
    const/4 v0, 0x1

    .line 2424
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    packed-switch v5, :pswitch_data_a6

    :pswitch_74
    goto :goto_42

    .line 2426
    :pswitch_75
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.DIAL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2427
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2428
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_42

    .line 2431
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_9e
    invoke-virtual {p0, v3, v8, v9, v8}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_42

    .line 2434
    :pswitch_a2
    invoke-virtual {p0, v3, v8, v9, v7}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_42

    .line 2424
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_75
        :pswitch_74
        :pswitch_9e
        :pswitch_a2
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2454
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2490
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2520
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2521
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_b

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2473
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2474
    const/4 v1, 0x5

    .line 2473
    if-lt v0, v1, :cond_18

    .line 2475
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2476
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2481
    :cond_18
    const/4 v0, 0x0

    return v0

    .line 2477
    :cond_1a
    invoke-static {}, Ledu/illinois/cs/ase/ViewHandlerAnalysis;->notifyBackPressed()V

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2478
    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 1902
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1903
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchLowMemory()V

    .line 1900
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const v5, 0xc350

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2898
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2900
    .local v0, "titleCondensed":Ljava/lang/CharSequence;
    sparse-switch p1, :sswitch_data_7a

    .line 2934
    return v3

    .line 2905
    :sswitch_e
    if-eqz v0, :cond_21

    .line 2906
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2908
    :cond_21
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2909
    return v4

    .line 2911
    :cond_28
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2912
    return v4

    .line 2914
    :cond_31
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_58

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_58

    .line 2915
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_58

    .line 2916
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_51

    .line 2917
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v1

    return v1

    .line 2919
    :cond_51
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result v1

    return v1

    .line 2922
    :cond_58
    return v3

    .line 2925
    :sswitch_59
    if-eqz v0, :cond_6c

    .line 2926
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2928
    :cond_6c
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 2929
    return v4

    .line 2931
    :cond_73
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 2900
    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_e
        0x6 -> :sswitch_59
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 2877
    const/16 v0, 0x8

    if-ne p1, v0, :cond_11

    .line 2878
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2879
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_12

    .line 2880
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 2885
    :cond_11
    :goto_11
    return v2

    .line 2882
    :cond_12
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "Tried to open action bar menu with no action bar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public onNavigateUp()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3088
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3089
    .local v1, "upIntent":Landroid/content/Intent;
    if-eqz v1, :cond_42

    .line 3090
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 3094
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3113
    :goto_10
    const/4 v2, 0x1

    return v2

    .line 3095
    :cond_12
    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3096
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 3097
    .local v0, "b":Landroid/app/TaskStackBuilder;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 3098
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 3099
    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 3103
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v2, :cond_2d

    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v2, :cond_3a

    .line 3105
    :cond_2d
    const-string/jumbo v2, "Activity"

    const-string/jumbo v3, "onNavigateUp only finishing topmost activity to return a result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_10

    .line 3108
    :cond_3a
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_10

    .line 3111
    .end local v0    # "b":Landroid/app/TaskStackBuilder;
    :cond_3e
    invoke-virtual {p0, v1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_10

    .line 3115
    :cond_42
    return v2
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .registers 3
    .param p1, "child"    # Landroid/app/Activity;

    .prologue
    .line 3125
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onNewActivityOptions(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 5714
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 5715
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v0, :cond_e

    .line 5716
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 5713
    :cond_e
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1286
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3056
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 3057
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3059
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3174
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 3175
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3173
    :cond_9
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2948
    sparse-switch p1, :sswitch_data_1c

    .line 2947
    :goto_3
    return-void

    .line 2950
    :sswitch_4
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2951
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_3

    .line 2955
    :sswitch_d
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    goto :goto_3

    .line 2959
    :sswitch_11
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2960
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_3

    .line 2948
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_4
        0x6 -> :sswitch_d
        0x8 -> :sswitch_11
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 1469
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPaused(Landroid/app/Activity;)V

    .line 1470
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1467
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 1103
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1104
    iput-boolean v2, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 1105
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitleColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1107
    :cond_14
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 1102
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1123
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1122
    return-void
.end method

.method protected onPostResume()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1226
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1227
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/Window;->makeActive()V

    .line 1228
    :cond_a
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 1229
    :cond_13
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 1225
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3351
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 3350
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3380
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 3379
    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .registers 2
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .prologue
    .line 3163
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3031
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 3032
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 3034
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2863
    if-nez p1, :cond_10

    if-eqz p3, :cond_10

    .line 2864
    invoke-virtual {p0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2865
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p3}, Landroid/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2866
    return v0

    .line 2868
    .end local v0    # "goforit":Z
    :cond_10
    const/4 v1, 0x1

    return v1
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .registers 2
    .param p1, "outContent"    # Landroid/app/assist/AssistContent;

    .prologue
    .line 1570
    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1548
    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 4707
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 3836
    return-void
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 1171
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1170
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1001
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_12

    .line 1002
    const-string/jumbo v1, "android:viewHierarchyState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1003
    .local v0, "windowState":Landroid/os/Bundle;
    if-eqz v0, :cond_12

    .line 1004
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1000
    .end local v0    # "windowState":Landroid/os/Bundle;
    :cond_12
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1032
    if-eqz p1, :cond_5

    .line 1033
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1031
    :cond_5
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 1207
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityResumed(Landroid/app/Activity;)V

    .line 1208
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->onResume()V

    .line 1209
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1205
    return-void
.end method

.method onRetainNonConfigurationChildInstances()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1875
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1840
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1366
    const-string/jumbo v1, "android:viewHierarchyState"

    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1367
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1368
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_1a

    .line 1369
    const-string/jumbo v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1371
    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1365
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1390
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1389
    return-void
.end method

.method public onSearchRequested()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3555
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    .line 3556
    const/4 v1, 0x4

    .line 3555
    if-eq v0, v1, :cond_16

    .line 3557
    invoke-virtual {p0, v3, v2, v3, v2}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 3558
    const/4 v0, 0x1

    return v0

    .line 3560
    :cond_16
    return v2
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 4
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .prologue
    .line 3545
    iput-object p1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 3546
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 3547
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 3548
    return v0
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 1142
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1144
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 1146
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStarted(Landroid/app/Activity;)V

    .line 1140
    return-void
.end method

.method public onStateNotSaved()V
    .registers 1

    .prologue
    .line 1181
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1612
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 1613
    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->onStop()V

    .line 1614
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStopped(Landroid/app/Activity;)V

    .line 1615
    iput-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 1616
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1610
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 5316
    iget-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    if-eqz v1, :cond_1b

    .line 5317
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5318
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_12

    .line 5319
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 5320
    if-eqz p2, :cond_12

    .line 5321
    invoke-virtual {v0, p2}, Landroid/view/Window;->setTitleColor(I)V

    .line 5324
    :cond_12
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1b

    .line 5325
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 5315
    .end local v0    # "win":Landroid/view/Window;
    :cond_1b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2535
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2536
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2537
    const/4 v0, 0x1

    return v0

    .line 2540
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2558
    const/4 v0, 0x0

    return v0
.end method

.method onTranslucentConversionComplete(Z)V
    .registers 5
    .param p1, "drawComplete"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5703
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_c

    .line 5704
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-interface {v0, p1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 5705
    iput-object v1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 5707
    :cond_c
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-eqz v0, :cond_1a

    .line 5708
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 5702
    :cond_1a
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 1908
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1909
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchTrimMemory(I)V

    .line 1906
    return-void
.end method

.method public onUserInteraction()V
    .registers 1

    .prologue
    .line 2609
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 1

    .prologue
    .line 1488
    return-void
.end method

.method public onVisibleBehindCanceled()V
    .registers 2

    .prologue
    .line 5799
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 5798
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2616
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_15

    .line 2617
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2618
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2619
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2612
    .end local v0    # "decor":Landroid/view/View;
    :cond_15
    return-void
.end method

.method public onWindowDismissed()V
    .registers 1

    .prologue
    .line 2702
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2701
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2654
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v1, 0x0

    .line 5922
    iget v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    if-nez v0, :cond_13

    .line 5923
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 5924
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_13

    .line 5925
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 5928
    :cond_13
    return-object v1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 5938
    :try_start_1
    iput p2, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 5939
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_a

    move-result-object v0

    .line 5941
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 5939
    return-object v0

    .line 5940
    :catchall_a
    move-exception v0

    .line 5941
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 5940
    throw v0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3249
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 3248
    return-void
.end method

.method public openOptionsMenu()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3184
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3185
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->openOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3183
    :cond_16
    :goto_16
    return-void

    .line 3186
    :cond_17
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    goto :goto_16
.end method

.method public overridePendingTransition(II)V
    .registers 7
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .prologue
    .line 4613
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 4614
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4613
    invoke-interface {v1, v2, v3, p1, p2}, Landroid/app/IActivityManager;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 4611
    :goto_d
    return-void

    .line 4615
    :catch_e
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_d
.end method

.method final performCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 6237
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 6238
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 6239
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    .line 6236
    return-void
.end method

.method final performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 6243
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 6244
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 6245
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    .line 6242
    return-void
.end method

.method final performCreateCommon()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 6230
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v1

    .line 6231
    const/16 v2, 0xa

    .line 6230
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_20

    :goto_f
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 6232
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchActivityCreated()V

    .line 6233
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 6229
    return-void

    .line 6230
    :cond_20
    const/4 v0, 0x1

    goto :goto_f
.end method

.method final performDestroy()V
    .registers 2

    .prologue
    .line 6404
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    .line 6405
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->destroy()V

    .line 6406
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchDestroy()V

    .line 6407
    invoke-virtual {p0}, Landroid/app/Activity;->onDestroy()V

    .line 6408
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderDestroy()V

    .line 6409
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_1e

    .line 6410
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->detachActivity()V

    .line 6403
    :cond_1e
    return-void
.end method

.method final performPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 6345
    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 6346
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchPause()V

    .line 6347
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 6348
    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    .line 6349
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 6350
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_44

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6351
    const/16 v1, 0x9

    .line 6350
    if-lt v0, v1, :cond_44

    .line 6352
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 6353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6354
    const-string/jumbo v2, " did not call through to super.onPause()"

    .line 6353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6352
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6356
    :cond_44
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 6344
    return-void
.end method

.method final performRestart()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 6265
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 6267
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-eqz v3, :cond_b3

    .line 6268
    iput-boolean v6, p0, Landroid/app/Activity;->mStopped:Z

    .line 6269
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_1d

    .line 6270
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 6273
    :cond_1d
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 6274
    :try_start_20
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6275
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    if-ge v1, v0, :cond_7d

    .line 6276
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 6277
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get1(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get2(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 6278
    :cond_3d
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-nez v3, :cond_72

    .line 6279
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6280
    const/16 v5, 0xe

    .line 6279
    if-lt v3, v5, :cond_72

    .line 6281
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 6282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trying to requery an already closed cursor  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6283
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 6282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6281
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6f
    .catchall {:try_start_20 .. :try_end_6f} :catchall_6f

    .line 6273
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :catchall_6f
    move-exception v3

    monitor-exit v4

    throw v3

    .line 6286
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_72
    const/4 v3, 0x0

    :try_start_73
    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set0(Landroid/app/Activity$ManagedCursor;Z)Z

    .line 6287
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set1(Landroid/app/Activity$ManagedCursor;Z)Z
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_6f

    .line 6275
    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_7d
    monitor-exit v4

    .line 6292
    iput-boolean v6, p0, Landroid/app/Activity;->mCalled:Z

    .line 6293
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 6294
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_b0

    .line 6295
    new-instance v3, Landroid/util/SuperNotCalledException;

    .line 6296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6297
    const-string/jumbo v5, " did not call through to super.onRestart()"

    .line 6296
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6295
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6299
    :cond_b0
    invoke-virtual {p0}, Landroid/app/Activity;->performStart()V

    .line 6264
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_b3
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 959
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 960
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 958
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 974
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 975
    if-eqz p1, :cond_8

    .line 976
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 973
    :cond_8
    return-void
.end method

.method final performResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 6304
    invoke-virtual {p0}, Landroid/app/Activity;->performRestart()V

    .line 6306
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 6308
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 6310
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 6312
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 6313
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_3e

    .line 6314
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 6315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6316
    const-string/jumbo v2, " did not call through to super.onResume()"

    .line 6315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6314
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6320
    :cond_3e
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_80

    .line 6331
    :cond_46
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 6333
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchResume()V

    .line 6334
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 6336
    invoke-virtual {p0}, Landroid/app/Activity;->onPostResume()V

    .line 6337
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_ba

    .line 6338
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 6339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6340
    const-string/jumbo v2, " did not call through to super.onPostResume()"

    .line 6339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6338
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6321
    :cond_80
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "An activity without a UI must call finish() before onResume() completes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6322
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6323
    const/16 v1, 0x16

    .line 6322
    if-le v0, v1, :cond_46

    .line 6324
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6326
    const-string/jumbo v2, " did not call finish() prior to onResume() completing"

    .line 6325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6324
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6303
    :cond_ba
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1299
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 1300
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->saveState(Landroid/os/Bundle;)V

    .line 1297
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1314
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1315
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 1313
    return-void
.end method

.method final performStart()V
    .registers 4

    .prologue
    .line 6249
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 6250
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 6251
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 6252
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 6253
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 6254
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_46

    .line 6255
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 6256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6257
    const-string/jumbo v2, " did not call through to super.onStart()"

    .line 6256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6255
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6259
    :cond_46
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchStart()V

    .line 6260
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->reportLoaderStart()V

    .line 6261
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 6248
    return-void
.end method

.method final performStop()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6365
    iput-boolean v5, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 6366
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-boolean v4, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 6368
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v3, :cond_8b

    .line 6369
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_18

    .line 6370
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    .line 6373
    :cond_18
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_29

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_29

    .line 6374
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 6377
    :cond_29
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->dispatchStop()V

    .line 6379
    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    .line 6380
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 6381
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_60

    .line 6382
    new-instance v3, Landroid/util/SuperNotCalledException;

    .line 6383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6384
    const-string/jumbo v5, " did not call through to super.onStop()"

    .line 6383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6382
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6387
    :cond_60
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 6388
    :try_start_63
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6389
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6a
    if-ge v1, v0, :cond_88

    .line 6390
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 6391
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get1(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 6392
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V

    .line 6393
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set0(Landroid/app/Activity$ManagedCursor;Z)Z
    :try_end_85
    .catchall {:try_start_63 .. :try_end_85} :catchall_8e

    .line 6389
    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_88
    monitor-exit v4

    .line 6398
    iput-boolean v6, p0, Landroid/app/Activity;->mStopped:Z

    .line 6400
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_8b
    iput-boolean v5, p0, Landroid/app/Activity;->mResumed:Z

    .line 6364
    return-void

    .line 6387
    :catchall_8e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method final performUserLeaving()V
    .registers 1

    .prologue
    .line 6360
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 6361
    invoke-virtual {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 6359
    return-void
.end method

.method public postponeEnterTransition()V
    .registers 2

    .prologue
    .line 6151
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->postponeEnterTransition()V

    .line 6150
    return-void
.end method

.method public recreate()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 4834
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 4835
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can only be called on top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4837
    :cond_f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_24

    .line 4838
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4840
    :cond_24
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    move-object v7, v2

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    .line 4833
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3227
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3226
    return-void
.end method

.method public releaseInstance()Z
    .registers 4

    .prologue
    .line 4997
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->releaseActivityInstance(Landroid/os/IBinder;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 4998
    :catch_b
    move-exception v0

    .line 5001
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public final removeDialog(I)V
    .registers 4
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3512
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_18

    .line 3513
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 3514
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_18

    .line 3515
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3516
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3511
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_18
    return-void
.end method

.method public reportFullyDrawn()V
    .registers 4

    .prologue
    .line 1698
    iget-boolean v1, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    if-eqz v1, :cond_10

    .line 1699
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 1701
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->reportActivityFullyDrawn(Landroid/os/IBinder;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 1697
    :cond_10
    :goto_10
    return-void

    .line 1702
    :catch_11
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_10
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .registers 6
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 3814
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3815
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "@android:requestPermissions:"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 3813
    return-void
.end method

.method public requestVisibleBehind(Z)Z
    .registers 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5770
    iget-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    if-nez v2, :cond_6

    .line 5772
    const/4 p1, 0x0

    .line 5775
    .end local p1    # "visible":Z
    :cond_6
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 5776
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5775
    invoke-interface {v2, v3, p1}, Landroid/app/IActivityManager;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    :goto_12
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleBehind:Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_19

    .line 5780
    :goto_14
    iget-boolean v1, p0, Landroid/app/Activity;->mVisibleBehind:Z

    return v1

    :cond_17
    move p1, v1

    .line 5775
    goto :goto_12

    .line 5777
    :catch_19
    move-exception v0

    .line 5778
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleBehind:Z

    goto :goto_14
.end method

.method public final requestWindowFeature(I)Z
    .registers 3
    .param p1, "featureId"    # I

    .prologue
    .line 3650
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1879
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1880
    .local v0, "activity":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v1

    .line 1881
    .local v1, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->retainNonConfig()Ljava/util/List;

    move-result-object v2

    .line 1882
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1883
    .local v3, "loaders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-nez v0, :cond_22

    if-nez v1, :cond_22

    if-nez v2, :cond_22

    if-nez v3, :cond_22

    .line 1884
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-nez v5, :cond_22

    .line 1885
    return-object v6

    .line 1888
    :cond_22
    new-instance v4, Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {v4}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 1889
    .local v4, "nci":Landroid/app/Activity$NonConfigurationInstances;
    iput-object v0, v4, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 1890
    iput-object v1, v4, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 1891
    iput-object v2, v4, Landroid/app/Activity$NonConfigurationInstances;->fragments:Ljava/util/List;

    .line 1892
    iput-object v3, v4, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    .line 1893
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v5, :cond_3c

    .line 1894
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v5}, Landroid/app/VoiceInteractor;->retainInstance()V

    .line 1895
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v5, v4, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    .line 1897
    :cond_3c
    return-object v4
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 5508
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_e

    .line 5509
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5507
    :goto_d
    return-void

    .line 5511
    :cond_e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_d
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .registers 5
    .param p1, "toolbar"    # Landroid/widget/Toolbar;

    .prologue
    .line 2120
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/app/WindowDecorActionBar;

    if-eqz v1, :cond_11

    .line 2121
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2126
    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 2128
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/internal/app/ToolbarActionBar;-><init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 2129
    .local v0, "tbab":Lcom/android/internal/app/ToolbarActionBar;
    iput-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 2130
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Lcom/android/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 2131
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    .line 2119
    return-void
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .registers 3
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 2238
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTransitionManager(Landroid/transition/TransitionManager;)V

    .line 2237
    return-void
.end method

.method public setContentView(I)V
    .registers 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 2166
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 2167
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2165
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2186
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 2187
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2185
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2202
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2203
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2201
    return-void
.end method

.method public final setDefaultKeyMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 2341
    iput p1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 2345
    packed-switch p1, :pswitch_data_1e

    .line 2357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2348
    :pswitch_b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2340
    :goto_e
    return-void

    .line 2353
    :pswitch_f
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2354
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_e

    .line 2345
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_b
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 6113
    if-nez p1, :cond_4

    .line 6114
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 6116
    :cond_4
    iput-object p1, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 6112
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 6129
    if-nez p1, :cond_4

    .line 6130
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 6132
    :cond_4
    iput-object p1, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 6128
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3674
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 3673
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 3682
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 3681
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 3658
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 3657
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3666
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 3665
    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .registers 3
    .param p1, "finish"    # Z

    .prologue
    .line 2258
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 2257
    return-void
.end method

.method public setImmersive(Z)V
    .registers 5
    .param p1, "i"    # Z

    .prologue
    .line 5874
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->setImmersive(Landroid/os/IBinder;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 5872
    :goto_9
    return-void

    .line 5875
    :catch_a
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_9
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 816
    iput-object p1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 815
    return-void
.end method

.method public final setMediaController(Landroid/media/session/MediaController;)V
    .registers 3
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 5486
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setMediaController(Landroid/media/session/MediaController;)V

    .line 5485
    return-void
.end method

.method final setParent(Landroid/app/Activity;)V
    .registers 2
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 6166
    iput-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 6165
    return-void
.end method

.method public setPersistent(Z)V
    .registers 2
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2079
    return-void
.end method

.method public final setProgress(I)V
    .registers 5
    .param p1, "progress"    # I

    .prologue
    .line 5414
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit8 v1, p1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5413
    return-void
.end method

.method public final setProgressBarIndeterminate(Z)V
    .registers 5
    .param p1, "indeterminate"    # Z

    .prologue
    .line 5398
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 5399
    if-eqz p1, :cond_c

    const/4 v0, -0x3

    .line 5398
    :goto_7
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5397
    return-void

    .line 5400
    :cond_c
    const/4 v0, -0x4

    goto :goto_7
.end method

.method public final setProgressBarIndeterminateVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 5384
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 5385
    if-eqz p1, :cond_c

    const/4 v0, -0x1

    .line 5384
    :goto_7
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5383
    return-void

    .line 5385
    :cond_c
    const/4 v0, -0x2

    goto :goto_7
.end method

.method public final setProgressBarVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 5371
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz p1, :cond_c

    const/4 v0, -0x1

    :goto_7
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5370
    return-void

    .line 5372
    :cond_c
    const/4 v0, -0x2

    goto :goto_7
.end method

.method public setRequestedOrientation(I)V
    .registers 5
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 5110
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_e

    .line 5112
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5113
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5112
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->setRequestedOrientation(Landroid/os/IBinder;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_14

    .line 5109
    :goto_d
    return-void

    .line 5118
    :cond_e
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_d

    .line 5114
    :catch_14
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_d
.end method

.method public final setResult(I)V
    .registers 3
    .param p1, "resultCode"    # I

    .prologue
    .line 4632
    monitor-enter p0

    .line 4633
    :try_start_1
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 4634
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 4631
    return-void

    .line 4632
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setResult(ILandroid/content/Intent;)V
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 4661
    monitor-enter p0

    .line 4662
    :try_start_1
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 4663
    iput-object p2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    .line 4660
    return-void

    .line 4661
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setSecondaryProgress(I)V
    .registers 5
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 5431
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5432
    add-int/lit16 v1, p1, 0x4e20

    .line 5431
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5430
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 8
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 5348
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_30

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 5349
    invoke-static {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v2

    .line 5350
    .local v2, "size":I
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5351
    .local v1, "icon":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 5352
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v5

    .line 5351
    invoke-direct {v3, v4, v1, v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 5357
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v2    # "size":I
    .local v3, "td":Landroid/app/ActivityManager$TaskDescription;
    :goto_26
    :try_start_26
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v4, v5, v3}, Landroid/app/IActivityManager;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2f} :catch_32

    .line 5345
    :goto_2f
    return-void

    .line 5354
    .end local v3    # "td":Landroid/app/ActivityManager$TaskDescription;
    :cond_30
    move-object v3, p1

    .restart local v3    # "td":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_26

    .line 5358
    :catch_32
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2f
.end method

.method public setTitle(I)V
    .registers 3
    .param p1, "titleId"    # I

    .prologue
    .line 5288
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 5287
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 5273
    iput-object p1, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 5274
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 5276
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 5277
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 5272
    :cond_10
    return-void
.end method

.method public setTitleColor(I)V
    .registers 3
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5303
    iput p1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 5304
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 5302
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 4773
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eq v0, p1, :cond_f

    .line 4774
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 4775
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_f

    .line 4776
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->makeVisible()V

    .line 4772
    :cond_f
    :goto_f
    return-void

    .line 4777
    :cond_10
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f
.end method

.method public final setVolumeControlStream(I)V
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 5452
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 5451
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 3861
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .registers 11
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 5982
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 5983
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 5984
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_f

    .line 5985
    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 5987
    :cond_f
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 5988
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v5, :cond_19

    .line 5989
    return v8

    .line 5991
    :cond_19
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 5992
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 5991
    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_24} :catch_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_24} :catch_26

    move-result v5

    return v5

    .line 5995
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_26
    move-exception v1

    .line 5996
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v8

    .line 5993
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_28
    move-exception v2

    .line 5994
    .local v2, "e":Landroid/os/RemoteException;
    return v8
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1585
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 1586
    :catch_b
    move-exception v0

    .line 1588
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public final showDialog(I)V
    .registers 3
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3394
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 3393
    return-void
.end method

.method public final showDialog(ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3430
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_c

    .line 3431
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 3433
    :cond_c
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 3434
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_30

    .line 3435
    new-instance v0, Landroid/app/Activity$ManagedDialog;

    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    invoke-direct {v0, v2}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog;)V

    .line 3436
    .restart local v0    # "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 3437
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_2b

    .line 3438
    const/4 v1, 0x0

    return v1

    .line 3440
    :cond_2b
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3443
    :cond_30
    iput-object p2, v0, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 3444
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 3445
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 3446
    const/4 v1, 0x1

    return v1
.end method

.method public showLockTaskEscapeMessage()V
    .registers 4

    .prologue
    .line 6516
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 6514
    :goto_9
    return-void

    .line 6517
    :catch_a
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_9
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 5890
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 5904
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActivities([Landroid/content/Intent;)V
    .registers 3
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 4217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4216
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4244
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 4245
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 4244
    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4243
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4167
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, -0x1

    .line 4195
    if-eqz p2, :cond_7

    .line 4196
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4194
    :goto_6
    return-void

    .line 4200
    :cond_7
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6
.end method

.method public startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v6, -0x1

    .line 4043
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_e

    .line 4044
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4047
    :cond_e
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4048
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    .line 4047
    invoke-virtual/range {v0 .. v9}, Landroid/app/Instrumentation;->execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v10

    .line 4050
    .local v10, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v10, :cond_35

    .line 4051
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4052
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v7

    .line 4053
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v8

    .line 4051
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4055
    :cond_35
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4042
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v6, -0x1

    .line 4011
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_e

    .line 4012
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4015
    :cond_e
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4016
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    .line 4015
    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v9

    .line 4018
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_34

    .line 4019
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4020
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v7

    .line 4021
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v8

    .line 4019
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4023
    :cond_34
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4010
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4004
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4003
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 3877
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 3876
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 3915
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_34

    .line 3917
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 3918
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    .line 3917
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 3920
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_2b

    .line 3921
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 3922
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    .line 3923
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p2

    .line 3921
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3925
    :cond_2b
    if-ltz p2, :cond_30

    .line 3933
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 3936
    :cond_30
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 3914
    .end local v8    # "ar":Landroid/app/Instrumentation$ActivityResult;
    :goto_33
    return-void

    .line 3939
    :cond_34
    if-eqz p3, :cond_3c

    .line 3940
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_33

    .line 3944
    :cond_3c
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_33
.end method

.method public startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 15
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4544
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v9

    .line 4545
    .local v9, "referrer":Landroid/net/Uri;
    if-eqz v9, :cond_c

    .line 4546
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4549
    :cond_c
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4550
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 4549
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 4552
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_32

    .line 4553
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4554
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 4555
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move-object v2, p1

    move v3, p3

    .line 4553
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4557
    :cond_32
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4543
    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 3976
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_d

    .line 3977
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3979
    :cond_d
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 3980
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 3979
    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v9

    .line 3982
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_35

    .line 3983
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 3984
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p2

    .line 3983
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3986
    :cond_35
    if-ltz p2, :cond_3a

    .line 3994
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 3997
    :cond_3a
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 3975
    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 3968
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3967
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 5
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 4459
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4458
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 14
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4484
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4485
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 4484
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 4487
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_27

    .line 4488
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4489
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 4490
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p3

    .line 4488
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4492
    :cond_27
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4482
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 4510
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4509
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4535
    iget-object v0, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4534
    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 4318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4353
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_4b

    .line 4354
    const/4 v13, 0x1

    .line 4356
    .local v13, "result":I
    :try_start_5
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v12

    .line 4357
    .local v12, "referrer":Landroid/net/Uri;
    if-eqz v12, :cond_11

    .line 4358
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4360
    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 4361
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 4362
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4363
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 4364
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 4365
    iget-object v6, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v8, 0x1

    .line 4366
    const/4 v9, 0x0

    move-object v3, p1

    move/from16 v7, p2

    move-object/from16 v10, p3

    .line 4362
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3b} :catch_54

    move-result v13

    .line 4371
    .end local v12    # "referrer":Landroid/net/Uri;
    :goto_3c
    invoke-static {v13, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 4373
    if-ltz p2, :cond_44

    .line 4381
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4383
    :cond_44
    const/4 v0, 0x1

    if-eq v13, v0, :cond_49

    const/4 v0, 0x1

    :goto_48
    return v0

    :cond_49
    const/4 v0, 0x0

    goto :goto_48

    .line 4386
    .end local v13    # "result":I
    :cond_4b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 4387
    const-string/jumbo v1, "startActivityIfNeeded can only be called from a top-level activity"

    .line 4386
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4367
    .restart local v13    # "result":I
    :catch_54
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    goto :goto_3c
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .registers 13
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4265
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 4264
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4263
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 15
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 4291
    if-eqz p6, :cond_e

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 4292
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4290
    :goto_d
    return-void

    :cond_e
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 4297
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_d
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 15
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4077
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 4076
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4075
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4108
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p0

    move-object/from16 v7, p7

    .line 4109
    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V

    .line 4107
    :goto_10
    return-void

    .line 4111
    :cond_11
    if-eqz p7, :cond_22

    .line 4112
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_10

    .line 4117
    :cond_22
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_10
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 17
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4577
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 4576
    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4575
    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p1

    move-object/from16 v7, p8

    .line 4590
    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V

    .line 4589
    return-void
.end method

.method public startLockTask()V
    .registers 4

    .prologue
    .line 6480
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->startLockTaskMode(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 6478
    :goto_9
    return-void

    .line 6481
    :catch_a
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_9
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .registers 5
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2037
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2038
    :try_start_3
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/Activity$ManagedCursor;

    invoke-direct {v2, p1}, Landroid/app/Activity$ManagedCursor;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    .line 2036
    return-void

    .line 2037
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4405
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4428
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_18

    .line 4430
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 4431
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 4432
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 4433
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 4432
    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_15

    move-result v1

    return v1

    .line 4434
    :catch_15
    move-exception v0

    .line 4437
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1

    .line 4440
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 4441
    const-string/jumbo v2, "startNextMatchingActivity can only be called from a top-level activity"

    .line 4440
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startPostponedEnterTransition()V
    .registers 2

    .prologue
    .line 6160
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->startPostponedEnterTransition()V

    .line 6159
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 11
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 3607
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 3608
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 3606
    return-void
.end method

.method public stopLockTask()V
    .registers 3

    .prologue
    .line 6504
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 6502
    :goto_7
    return-void

    .line 6505
    :catch_8
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_7
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .registers 7
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2061
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2062
    :try_start_3
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2063
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1f

    .line 2064
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 2065
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    if-ne v3, p1, :cond_21

    .line 2066
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_24

    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_1f
    monitor-exit v4

    .line 2060
    return-void

    .line 2063
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2061
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :catchall_24
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public takeKeyEvents(Z)V
    .registers 3
    .param p1, "get"    # Z

    .prologue
    .line 3635
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 3634
    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 3623
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 3624
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 3622
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3238
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3237
    return-void
.end method
