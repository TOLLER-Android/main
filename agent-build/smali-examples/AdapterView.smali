.class public abstract Landroid/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterView$OnItemClickListener;,
        Landroid/widget/AdapterView$OnItemLongClickListener;,
        Landroid/widget/AdapterView$OnItemSelectedListener;,
        Landroid/widget/AdapterView$AdapterContextMenuInfo;,
        Landroid/widget/AdapterView$AdapterDataSetObserver;,
        Landroid/widget/AdapterView$SelectionNotifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method static synthetic -set0(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)Landroid/widget/AdapterView$SelectionNotifier;
    .registers 2

    iput-object p1, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/AdapterView;)Landroid/os/Parcelable;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/AdapterView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 238
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 242
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 85
    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 95
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 127
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 154
    iput v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 159
    iput-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 165
    iput v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 170
    iput-wide v2, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 202
    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 207
    iput-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 231
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 249
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_27

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setImportantForAccessibility(I)V

    .line 245
    :cond_27
    return-void
.end method

.method private dispatchOnItemSelected()V
    .registers 1

    .prologue
    .line 913
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    .line 914
    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    .line 912
    return-void
.end method

.method private fireOnSelected()V
    .registers 7

    .prologue
    .line 918
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_5

    .line 919
    return-void

    .line 921
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 922
    .local v3, "selection":I
    if-ltz v3, :cond_1e

    .line 923
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 924
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 925
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    .line 924
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 917
    .end local v2    # "v":Landroid/view/View;
    :goto_1d
    return-void

    .line 927
    :cond_1e
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    goto :goto_1d
.end method

.method private isScrollableForAccessibility()Z
    .registers 7

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1000
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1001
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_21

    .line 1002
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 1003
    .local v1, "itemCount":I
    if-lez v1, :cond_1f

    .line 1004
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    if-gtz v4, :cond_1c

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_1d

    .line 1003
    :cond_1c
    :goto_1c
    return v2

    :cond_1d
    move v2, v3

    .line 1004
    goto :goto_1c

    :cond_1f
    move v2, v3

    .line 1003
    goto :goto_1c

    .line 1006
    .end local v1    # "itemCount":I
    :cond_21
    return v3
.end method

.method private performAccessibilityActionsOnSelected()V
    .registers 3

    .prologue
    .line 932
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v1, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    .line 933
    return-void

    .line 935
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 936
    .local v0, "position":I
    if-ltz v0, :cond_17

    .line 938
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    .line 931
    :cond_17
    return-void
.end method

.method private updateEmptyStatus(Z)V
    .registers 8
    .param p1, "empty"    # Z

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 750
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 751
    const/4 p1, 0x0

    .line 754
    .end local p1    # "empty":Z
    :cond_a
    if-eqz p1, :cond_2d

    .line 755
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 756
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 757
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 766
    :goto_18
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_28

    .line 767
    iget v2, p0, Landroid/widget/AdapterView;->mLeft:I

    iget v3, p0, Landroid/widget/AdapterView;->mTop:I

    iget v4, p0, Landroid/widget/AdapterView;->mRight:I

    iget v5, p0, Landroid/widget/AdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 749
    :cond_28
    :goto_28
    return-void

    .line 760
    :cond_29
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_18

    .line 770
    :cond_2d
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 771
    :cond_36
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_28
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 469
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 482
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 510
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 495
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .registers 3

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    .line 1011
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method checkFocus()V
    .registers 6

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v4, 0x0

    .line 731
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 732
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_30

    :cond_d
    const/4 v1, 0x1

    .line 733
    .local v1, "empty":Z
    :goto_e
    if-eqz v1, :cond_32

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v2

    .line 737
    :goto_14
    if-eqz v2, :cond_34

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    :goto_18
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 738
    if-eqz v2, :cond_1f

    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    :cond_1f
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 739
    iget-object v3, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_2f

    .line 740
    if-eqz v0, :cond_36

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    :goto_2c
    invoke-direct {p0, v3}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 730
    :cond_2f
    return-void

    .line 732
    .end local v1    # "empty":Z
    :cond_30
    const/4 v1, 0x0

    .restart local v1    # "empty":Z
    goto :goto_e

    .line 733
    :cond_32
    const/4 v2, 0x1

    .local v2, "focusable":Z
    goto :goto_14

    .end local v2    # "focusable":Z
    :cond_34
    move v3, v4

    .line 737
    goto :goto_18

    .line 740
    :cond_36
    const/4 v3, 0x1

    goto :goto_2c
.end method

.method checkSelectionChanged()V
    .registers 5

    .prologue
    .line 1084
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_e

    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 1085
    :cond_e
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 1086
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 1087
    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 1092
    :cond_19
    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-eqz v0, :cond_22

    .line 1093
    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {v0}, Landroid/widget/AdapterView$SelectionNotifier;->run()V

    .line 1083
    :cond_22
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    .line 945
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 946
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_15

    .line 947
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 946
    if-eqz v1, :cond_15

    .line 948
    const/4 v1, 0x1

    return v1

    .line 950
    :cond_15
    return v2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 809
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 802
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 801
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1259
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1261
    const-string/jumbo v0, "scrolling:firstPosition"

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1262
    const-string/jumbo v0, "list:nextSelectedPosition"

    iget v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1263
    const-string/jumbo v0, "list:nextSelectedRowId"

    iget-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    long-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 1264
    const-string/jumbo v0, "list:selectedPosition"

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1265
    const-string/jumbo v0, "list:itemCount"

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1258
    return-void
.end method

.method findSyncPosition()I
    .registers 21

    .prologue
    .line 1106
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1108
    .local v3, "count":I
    if-nez v3, :cond_9

    .line 1109
    const/16 v16, -0x1

    return v16

    .line 1112
    :cond_9
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1113
    .local v10, "idToMatch":J
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1116
    .local v13, "seed":I
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v10, v16

    if-nez v16, :cond_1a

    .line 1117
    const/16 v16, -0x1

    return v16

    .line 1121
    :cond_1a
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1122
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1129
    .local v4, "endTime":J
    move v6, v13

    .line 1132
    .local v6, "first":I
    move v9, v13

    .line 1135
    .local v9, "last":I
    const/4 v12, 0x0

    .line 1145
    .local v12, "next":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1146
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v2, :cond_42

    .line 1147
    const/16 v16, -0x1

    return v16

    .line 1167
    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v14, "rowId":J
    :cond_3e
    add-int/lit8 v9, v9, 0x1

    .line 1168
    move v13, v9

    .line 1170
    const/4 v12, 0x0

    .line 1150
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_42
    :goto_42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_61

    .line 1151
    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    .line 1152
    .restart local v14    # "rowId":J
    cmp-long v16, v14, v10

    if-nez v16, :cond_53

    .line 1154
    return v13

    .line 1157
    :cond_53
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_64

    const/4 v8, 0x1

    .line 1158
    .restart local v8    # "hitLast":Z
    :goto_5a
    if-nez v6, :cond_66

    const/4 v7, 0x1

    .line 1160
    .restart local v7    # "hitFirst":Z
    :goto_5d
    if-eqz v8, :cond_68

    if-eqz v7, :cond_68

    .line 1181
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_61
    const/16 v16, -0x1

    return v16

    .line 1157
    .restart local v14    # "rowId":J
    :cond_64
    const/4 v8, 0x0

    .restart local v8    # "hitLast":Z
    goto :goto_5a

    .line 1158
    :cond_66
    const/4 v7, 0x0

    .restart local v7    # "hitFirst":Z
    goto :goto_5d

    .line 1165
    :cond_68
    if-nez v7, :cond_3e

    if-eqz v12, :cond_6e

    if-eqz v8, :cond_3e

    .line 1171
    :cond_6e
    if-nez v8, :cond_74

    if-nez v12, :cond_42

    if-nez v7, :cond_42

    .line 1173
    :cond_74
    add-int/lit8 v6, v6, -0x1

    .line 1174
    move v13, v6

    .line 1176
    const/4 v12, 0x1

    goto :goto_42
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 970
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-class v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .registers 2

    .prologue
    .line 691
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .registers 2

    .prologue
    .line 644
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v1, 0x0

    .line 782
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 783
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_9

    if-gez p1, :cond_a

    :cond_9
    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_9
.end method

.method public getItemIdAtPosition(I)J
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 787
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 788
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_8

    if-gez p1, :cond_b

    :cond_8
    const-wide/high16 v2, -0x8000000000000000L

    :goto_a
    return-wide v2

    :cond_b
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_a
.end method

.method public getLastVisiblePosition()I
    .registers 3

    .prologue
    .line 654
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 292
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2

    .prologue
    .line 363
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2

    .prologue
    .line 410
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v6, -0x1

    .line 612
    move-object v3, p1

    .line 615
    .local v3, "listItem":Landroid/view/View;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_10

    invoke-virtual {v4, p0}, Landroid/view/View;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_d} :catch_29

    move-result v5

    if-eqz v5, :cond_27

    .line 623
    :cond_10
    if-eqz v3, :cond_2e

    .line 625
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 626
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v0, :cond_2e

    .line 627
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 628
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    return v5

    .line 616
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    :cond_27
    move-object v3, v4

    goto :goto_2

    .line 618
    .end local v4    # "v":Landroid/view/View;
    :catch_29
    move-exception v1

    .line 620
    .local v1, "e":Ljava/lang/ClassCastException;
    return v6

    .line 626
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "childCount":I
    .restart local v2    # "i":I
    .restart local v4    # "v":Landroid/view/View;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 634
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    :cond_2e
    return v6
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 5

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v3, 0x0

    .line 583
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 584
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 585
    .local v1, "selection":I
    if-eqz v0, :cond_18

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_18

    if-ltz v1, :cond_18

    .line 586
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 588
    :cond_18
    return-object v3
.end method

.method public getSelectedItemId()J
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 569
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .registers 11

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1015
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1016
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1018
    .local v1, "found":Z
    if-lez v0, :cond_40

    .line 1023
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_20

    .line 1026
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1030
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v2

    .line 1031
    .local v2, "newPos":I
    if-ltz v2, :cond_20

    .line 1033
    invoke-virtual {p0, v2, v7}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1034
    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_20

    .line 1036
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1037
    const/4 v1, 0x1

    .line 1041
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_20
    if-nez v1, :cond_40

    .line 1043
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1046
    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_2a

    .line 1047
    add-int/lit8 v2, v0, -0x1

    .line 1049
    :cond_2a
    if-gez v2, :cond_2d

    .line 1050
    const/4 v2, 0x0

    .line 1054
    :cond_2d
    invoke-virtual {p0, v2, v7}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1055
    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_37

    .line 1057
    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1059
    :cond_37
    if-ltz v3, :cond_40

    .line 1060
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1061
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1062
    const/4 v1, 0x1

    .line 1066
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_40
    if-nez v1, :cond_4f

    .line 1068
    iput v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1069
    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1070
    iput v6, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1071
    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1072
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1073
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1076
    :cond_4f
    invoke-virtual {p0}, Landroid/widget/AdapterView;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 1014
    return-void
.end method

.method isInFilterMode()Z
    .registers 2

    .prologue
    .line 701
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .registers 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .line 1193
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 866
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 867
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 865
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 987
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 988
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 989
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 990
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_17

    .line 991
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 993
    :cond_17
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 994
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 995
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 996
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 986
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 976
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 977
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 978
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 979
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_17

    .line 980
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 975
    :cond_17
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 550
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    .line 549
    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 956
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 958
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 959
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 961
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 962
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 963
    const/4 v1, 0x1

    return v1

    .line 965
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 308
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x7

    invoke-static {p1, v0, p2}, Ledu/illinois/cs/ase/ViewHandlerAnalysis;->notifyViewAction(Landroid/view/View;II)V

    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    .line 310
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 311
    const/4 v6, 0x1

    .line 316
    .local v6, "result":Z
    :goto_1c
    if-eqz p1, :cond_22

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 319
    :cond_22
    return v6

    .line 313
    .end local v6    # "result":Z
    :cond_23
    const/4 v6, 0x0

    .restart local v6    # "result":Z
    goto :goto_1c
.end method

.method rememberSyncState()V
    .registers 7

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1226
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2e

    .line 1227
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1228
    iget v2, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1229
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2f

    .line 1231
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1232
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1233
    iget v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1234
    if-eqz v1, :cond_2c

    .line 1235
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1237
    :cond_2c
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1225
    .end local v1    # "v":Landroid/view/View;
    :cond_2e
    :goto_2e
    return-void

    .line 1240
    :cond_2f
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1241
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1242
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_5a

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 1243
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1247
    :goto_4b
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1248
    if-eqz v1, :cond_57

    .line 1249
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1251
    :cond_57
    iput v5, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_2e

    .line 1245
    :cond_5a
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_4b
.end method

.method public removeAllViews()V
    .registers 3

    .prologue
    .line 545
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 523
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 535
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .registers 3

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v1, 0x0

    .line 891
    iput-object v1, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    .line 893
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_13

    .line 894
    iget-object v0, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 893
    if-eqz v0, :cond_2b

    .line 895
    :cond_13
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_32

    .line 900
    :cond_1b
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_2c

    .line 901
    new-instance v0, Landroid/widget/AdapterView$SelectionNotifier;

    invoke-direct {v0, p0, v1}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)V

    iput-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    .line 905
    :goto_26
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 888
    :cond_2b
    :goto_2b
    return-void

    .line 903
    :cond_2c
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_26

    .line 907
    :cond_32
    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    goto :goto_2b
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 5
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 673
    if-eqz p1, :cond_e

    .line 674
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_e

    .line 675
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 678
    :cond_e
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 679
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1c

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v1

    .line 680
    :goto_18
    invoke-direct {p0, v1}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 669
    return-void

    .line 679
    :cond_1c
    const/4 v1, 0x1

    .local v1, "empty":Z
    goto :goto_18
.end method

.method public setFocusable(Z)V
    .registers 6
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    .line 706
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 707
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_20

    :cond_d
    const/4 v1, 0x1

    .line 709
    .local v1, "empty":Z
    :goto_e
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    .line 710
    if-nez p1, :cond_14

    .line 711
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 714
    :cond_14
    if-eqz p1, :cond_1c

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v2

    :cond_1c
    :goto_1c
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 705
    return-void

    .line 707
    .end local v1    # "empty":Z
    :cond_20
    const/4 v1, 0x0

    .restart local v1    # "empty":Z
    goto :goto_e

    .line 714
    :cond_22
    const/4 v2, 0x1

    goto :goto_1c
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 7
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 719
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 720
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_21

    :cond_e
    const/4 v1, 0x1

    .line 722
    .local v1, "empty":Z
    :goto_f
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 723
    if-eqz p1, :cond_15

    .line 724
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    .line 727
    :cond_15
    if-eqz p1, :cond_23

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v2

    :cond_1d
    :goto_1d
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 718
    return-void

    .line 720
    .end local v1    # "empty":Z
    :cond_21
    const/4 v1, 0x0

    .restart local v1    # "empty":Z
    goto :goto_f

    :cond_23
    move v2, v3

    .line 727
    goto :goto_1d
.end method

.method setNextSelectedPositionInt(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1211
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1212
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1214
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_18

    if-ltz p1, :cond_18

    .line 1215
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1216
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1210
    :cond_18
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 793
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 283
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 282
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 352
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setLongClickable(Z)V

    .line 355
    :cond_a
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 351
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 405
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 404
    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1201
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1202
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1200
    return-void
.end method

.method public abstract setSelection(I)V
.end method
