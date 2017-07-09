.class public Landroid/widget/ListViewX;
.super Landroid/widget/ListView;
.source "ListViewX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SlideView$OnSlideListener;
.implements Landroid/widget/SlideView$OnViewPressedListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AbsListView$OnEdgeReachListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListViewX$StatusBarClickReceiver;,
        Landroid/widget/ListViewX$LongPressHandler;,
        Landroid/widget/ListViewX$XAdatper;,
        Landroid/widget/ListViewX$OnEditModeStateListener;,
        Landroid/widget/ListViewX$OnSlideLoadingStateListener;,
        Landroid/widget/ListViewX$OnSlideOutItemClickListener;,
        Landroid/widget/ListViewX$OnSlideListener;
    }
.end annotation


# static fields
.field private static final DEBUG_ADAPTER:Z = false

.field private static final DEBUG_EDITMODE:Z = false

.field private static final DEBUG_OTHERS:Z = false

.field private static final DEBUG_SLIDING:Z = false

.field public static final FIX_ITEM_FLAG:I = 0x11000001

.field private static HEADER_HEIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/widget/ListViewX;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ITEM_SCALE_MAX_DISTANCE:I = 0x1e0

.field private static final ITEM_SCALE_MAX_DISTANCE_FOR_HIGH_SPEED:I = 0x2e2

.field public static final LIST_MODE_LEFT_SLIDE_SHOW_ITEM:I = 0x1

.field public static final LIST_MODE_LONG_PRESS_EDIT_MODE:I = 0x10

.field public static final LIST_MODE_NORMAL:I = 0x0

.field public static final LIST_MODE_RESERVE_LONG_PRESS:I = 0x10000

.field public static final LIST_MODE_RIGHT_SLIDE:I = 0x1000

.field public static final LIST_MODE_SPLIT_SLIDE_VIEW:I = 0x100000

.field private static LONG_PRESS_TIMEOUT:J = 0x0L

.field private static final MESSAGE_LONG_PRESS:I = 0x1

.field private static final MIN_PULL_ANIMATION_HEIGHT:I = 0x9

.field private static final MODE_STR_EDIT:Ljava/lang/String; = "longPressEditMode"

.field private static final MODE_STR_LEFT_SLIDE:Ljava/lang/String; = "leftSlideShowItem"

.field private static final MODE_STR_LOADING:Ljava/lang/String; = "slideLoading"

.field private static final MODE_STR_NORMAL:Ljava/lang/String; = "normal"

.field private static final MODE_STR_RESERVE_LONG_PRESS:Ljava/lang/String; = "reserveLongPress"

.field private static final MODE_STR_RIGHT_SLIDE:Ljava/lang/String; = "rightSlide"

.field private static final MODE_STR_SPLIT_SLIDE_VIEW:Ljava/lang/String; = "splitSlideView"

.field private static final SCALE_ANIM_DURATION:I = 0x96

.field private static final SCALE_BACK_ANIM_DURATION:I = 0xc8

.field private static final SLIDING_DOWN:I = 0x1

.field private static final SLIDING_INIT:I = 0x0

.field private static final SLIDING_UP:I = 0x2

.field public static final STATE_HEADER_VIEW_HIDE:I = 0x0

.field public static final STATE_HEADER_VIEW_SHOW:I = 0x2

.field public static final STATE_HEADER_VIEW_SLIDING:I = 0x1

.field private static final STATUSBAR_CLICKED:Ljava/lang/String; = "com.android.systemui.statusbar.click.event"

.field private static final TAG:Ljava/lang/String; = "ListViewX"

.field private static final TAP_TIMEOUT:J

.field private static mLockClickEventInEditMode:Z


# instance fields
.field private BOUNCE_ANIM_BACK_DURATION:I

.field private BOUNCE_ANIM_DISTANCE:I

.field private BOUNCE_ANIM_RUSH_DURATION:I

.field private CHECK_SLIDING_REGION_RIGHT:I

.field private HEADER_BACK_ANIM_DURATION:I

.field private final INFINITE_PULL_DISTANCE_DECREMENT:I

.field private ITEM_ANIM_OFFSET_TIME:I

.field private ITEM_BASE_ANIM_DURATION:I

.field private ITEM_BATCH_REMOVE_BASE_DURATION:I

.field private ITEM_BATCH_REMOVE_OFFSET_DURATION:I

.field private final ITEM_PULL_DISTANCE_EACH_MOVE:I

.field private ITEM_PULL_MAX_DISTANCE:I

.field private final MAX_ITEM_HEIGHT_RATIO:I

.field private final MIN_FLING_VELOCITY:I

.field private SCALE_HEIGHT_COUNT:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private final mBatchPushEvent:Ljava/lang/Runnable;

.field private mBounceDistance:I

.field private final mBounceEvent:Ljava/lang/Runnable;

.field private mCheckedItems:[Z

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mCustomizedLeftTextColorsInEditMode:Landroid/content/res/ColorStateList;

.field private mCustomizedListItemBgColor:I

.field private mCustomizedListItemBgPressedColor:I

.field private mCustomizedRightTextColorsInEditMode:Landroid/content/res/ColorStateList;

.field private mDropLeftTouchEvent:Z

.field private mEditBar:Landroid/widget/ListViewXEditBar;

.field private mEditBarLayoutId:I

.field private mEditModeFirstCheckItem:I

.field private mEditModeFirstCheckItemState:Z

.field private mEditModeLastCheckItem:I

.field private mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

.field private mFlinging:Z

.field private mFocusedItemView:Landroid/widget/SlideView;

.field private mFocusedPosition:I

.field private mFooterHeight:[I

.field private mHandler:Landroid/widget/ListViewX$LongPressHandler;

.field private mHeaderAnim:Landroid/animation/ObjectAnimator;

.field private mHeaderHeight:[I

.field private mHeaderView:Landroid/widget/LinearLayout;

.field private mHeaderViewHeight:I

.field private mHeaderViewState:I

.field private mHideDivider:Z

.field private mInEditMode:Z

.field private mIsTouchDownOnSlideOutItem:Z

.field private mItemClickerListener:Landroid/widget/ListViewX$OnSlideOutItemClickListener;

.field private mItemSlideListener:Landroid/widget/ListViewX$OnSlideListener;

.field private mLastPosition:I

.field private mLastSlidingDirection:I

.field private mLastY:I

.field private mListItemMode:I

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private mLockScrollVertical:Z

.field private mLongClickable:Z

.field private mLongPressStarted:Z

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPendingEditMode:Z

.field private mPointerId:I

.field private mPullAnimEnabled:Z

.field private mPullDistance:I

.field private mPullStartX:I

.field private mPullStartY:I

.field private mPullingMode:I

.field private mScaleAnimsSet:Landroid/animation/AnimatorSet;

.field private mScaleItemHeightAnim1:Landroid/animation/ValueAnimator;

.field private mScaleItemHeightAnim2:Landroid/animation/ValueAnimator;

.field private mScaledDistance:I

.field private mScrollingState:I

.field private mShowDividerInEditMode:Z

.field private mSlideLoadingStateListener:Landroid/widget/ListViewX$OnSlideLoadingStateListener;

.field private mSlideParams:Landroid/widget/SlideView$SlideViewParams;

.field private mSlidingStarted:Z

.field private mSlidingStatus:I

.field private mSlidingView:Landroid/widget/SlideView;

.field private mStatusbarClickReceiver:Landroid/widget/ListViewX$StatusBarClickReceiver;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/ListViewX;->TAP_TIMEOUT:J

    .line 141
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/ListViewX;->mLockClickEventInEditMode:Z

    .line 2515
    new-instance v0, Landroid/widget/ListViewX$6;

    const-string v1, "HeaderHeight"

    invoke-direct {v0, v1}, Landroid/widget/ListViewX$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/ListViewX;->HEADER_HEIGHT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 297
    const v0, 0x116011c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 302
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x32

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 305
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/ListViewX;->ITEM_BASE_ANIM_DURATION:I

    .line 105
    iput v4, p0, Landroid/widget/ListViewX;->ITEM_ANIM_OFFSET_TIME:I

    .line 106
    const/16 v0, 0xfa

    iput v0, p0, Landroid/widget/ListViewX;->ITEM_BATCH_REMOVE_BASE_DURATION:I

    .line 107
    const/16 v0, 0x1e

    iput v0, p0, Landroid/widget/ListViewX;->ITEM_BATCH_REMOVE_OFFSET_DURATION:I

    .line 108
    const/16 v0, 0x96

    iput v0, p0, Landroid/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    .line 109
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    .line 110
    iput v4, p0, Landroid/widget/ListViewX;->BOUNCE_ANIM_RUSH_DURATION:I

    .line 111
    const/16 v0, 0xc8

    iput v0, p0, Landroid/widget/ListViewX;->BOUNCE_ANIM_BACK_DURATION:I

    .line 112
    const/16 v0, 0x1e

    iput v0, p0, Landroid/widget/ListViewX;->BOUNCE_ANIM_DISTANCE:I

    .line 117
    iput-object v3, p0, Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;

    .line 119
    iput v2, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    .line 120
    iput v2, p0, Landroid/widget/ListViewX;->mCurrentPosition:I

    .line 125
    iput-boolean v1, p0, Landroid/widget/ListViewX;->mLockScrollVertical:Z

    .line 130
    iput-boolean v1, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    .line 132
    iput-object v3, p0, Landroid/widget/ListViewX;->mItemClickerListener:Landroid/widget/ListViewX$OnSlideOutItemClickListener;

    .line 133
    iput-object v3, p0, Landroid/widget/ListViewX;->mItemSlideListener:Landroid/widget/ListViewX$OnSlideListener;

    .line 134
    new-instance v0, Landroid/widget/ListViewX$LongPressHandler;

    invoke-direct {v0, p0, v3}, Landroid/widget/ListViewX$LongPressHandler;-><init>(Landroid/widget/ListViewX;Landroid/widget/ListViewX$1;)V

    iput-object v0, p0, Landroid/widget/ListViewX;->mHandler:Landroid/widget/ListViewX$LongPressHandler;

    .line 135
    iput-boolean v1, p0, Landroid/widget/ListViewX;->mLongPressStarted:Z

    .line 137
    iput-boolean v1, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    .line 138
    iput v2, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItem:I

    .line 139
    iput v2, p0, Landroid/widget/ListViewX;->mEditModeLastCheckItem:I

    .line 143
    iput-object v3, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    .line 147
    iput-boolean v5, p0, Landroid/widget/ListViewX;->mShowDividerInEditMode:Z

    .line 151
    iput v2, p0, Landroid/widget/ListViewX;->mCustomizedListItemBgColor:I

    .line 152
    iput v2, p0, Landroid/widget/ListViewX;->mCustomizedListItemBgPressedColor:I

    .line 156
    iput v1, p0, Landroid/widget/ListViewX;->mLastY:I

    .line 157
    iput v1, p0, Landroid/widget/ListViewX;->mPullStartX:I

    .line 158
    iput v1, p0, Landroid/widget/ListViewX;->mPullStartY:I

    .line 159
    iput v2, p0, Landroid/widget/ListViewX;->mPointerId:I

    .line 160
    iput-boolean v5, p0, Landroid/widget/ListViewX;->mPullAnimEnabled:Z

    .line 161
    iput-boolean v1, p0, Landroid/widget/ListViewX;->mHideDivider:Z

    .line 164
    iput v1, p0, Landroid/widget/ListViewX;->mHeaderViewState:I

    .line 165
    iput-object v3, p0, Landroid/widget/ListViewX;->mSlideLoadingStateListener:Landroid/widget/ListViewX$OnSlideLoadingStateListener;

    .line 166
    iput-object v3, p0, Landroid/widget/ListViewX;->mStatusbarClickReceiver:Landroid/widget/ListViewX$StatusBarClickReceiver;

    .line 167
    iput-boolean v1, p0, Landroid/widget/ListViewX;->mPendingEditMode:Z

    .line 186
    iput v1, p0, Landroid/widget/ListViewX;->mScaledDistance:I

    .line 2046
    new-instance v0, Landroid/widget/ListViewX$3;

    invoke-direct {v0, p0}, Landroid/widget/ListViewX$3;-><init>(Landroid/widget/ListViewX;)V

    iput-object v0, p0, Landroid/widget/ListViewX;->mBatchPushEvent:Ljava/lang/Runnable;

    .line 2100
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ListViewX;->SCALE_HEIGHT_COUNT:I

    .line 2116
    iput v1, p0, Landroid/widget/ListViewX;->mBounceDistance:I

    .line 2159
    new-instance v0, Landroid/widget/ListViewX$4;

    invoke-direct {v0, p0}, Landroid/widget/ListViewX$4;-><init>(Landroid/widget/ListViewX;)V

    iput-object v0, p0, Landroid/widget/ListViewX;->mBounceEvent:Ljava/lang/Runnable;

    .line 2176
    iput-boolean v1, p0, Landroid/widget/ListViewX;->mFlinging:Z

    .line 2203
    const/16 v0, 0x28

    iput v0, p0, Landroid/widget/ListViewX;->MAX_ITEM_HEIGHT_RATIO:I

    .line 2204
    const/16 v0, 0xc

    iput v0, p0, Landroid/widget/ListViewX;->ITEM_PULL_DISTANCE_EACH_MOVE:I

    .line 2205
    iput v4, p0, Landroid/widget/ListViewX;->INFINITE_PULL_DISTANCE_DECREMENT:I

    .line 2206
    const/16 v0, 0x1388

    iput v0, p0, Landroid/widget/ListViewX;->MIN_FLING_VELOCITY:I

    .line 2207
    iput v2, p0, Landroid/widget/ListViewX;->mPullingMode:I

    .line 2426
    new-instance v0, Landroid/widget/ListViewX$5;

    invoke-direct {v0, p0}, Landroid/widget/ListViewX$5;-><init>(Landroid/widget/ListViewX;)V

    iput-object v0, p0, Landroid/widget/ListViewX;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 2447
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/ListViewX;->mHeaderHeight:[I

    .line 2460
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/ListViewX;->mFooterHeight:[I

    .line 306
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListViewX;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 307
    invoke-direct {p0}, Landroid/widget/ListViewX;->initAnimParams()V

    .line 308
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 309
    invoke-virtual {p0, p0}, Landroid/widget/ListViewX;->setOnEdgeReachListener(Landroid/widget/AbsListView$OnEdgeReachListener;)V

    .line 310
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/ListViewX;Landroid/widget/SlideView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListViewX;
    .param p1, "x1"    # Landroid/widget/SlideView;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ListViewX;->updateViewCheckState(Landroid/widget/SlideView;I)V

    return-void
.end method

.method static synthetic access$102(Landroid/widget/ListViewX;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListViewX;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Landroid/widget/ListViewX;->mPullDistance:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/ListViewX;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/widget/ListViewX;->mHideDivider:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/ListViewX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    iget v0, p0, Landroid/widget/ListViewX;->mHeaderViewState:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/ListViewX;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/widget/ListViewX;->mSlidingStarted:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/ListViewX;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/ListViewX;->canIntercept()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/ListViewX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    iget v0, p0, Landroid/widget/ListViewX;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/ListViewX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    iget v0, p0, Landroid/widget/ListViewX;->mScrollingState:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/ListViewX;)Landroid/widget/SlideView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/ListViewX;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/ListViewX;->showEditScreen()V

    return-void
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 60
    sput-boolean p0, Landroid/widget/ListViewX;->mLockClickEventInEditMode:Z

    return p0
.end method

.method static synthetic access$200(Landroid/widget/ListViewX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    iget v0, p0, Landroid/widget/ListViewX;->mScaledDistance:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/ListViewX;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/ListViewX;->startBatchPushInAnimation()V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/ListViewX;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/ListViewX;->mHeaderAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/widget/ListViewX;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListViewX;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 60
    iput-object p1, p0, Landroid/widget/ListViewX;->mHeaderAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/widget/ListViewX;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/ListViewX;->isSlideLoadingMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/ListViewX;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/ListViewX;->hideHeaderView()V

    return-void
.end method

.method static synthetic access$2402(Landroid/widget/ListViewX;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListViewX;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Landroid/widget/ListViewX;->mFlinging:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/widget/ListViewX;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/ListViewX;->resetPullingMode()V

    return-void
.end method

.method static synthetic access$2600(Landroid/widget/ListViewX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    iget v0, p0, Landroid/widget/ListViewX;->mLastPosition:I

    return v0
.end method

.method static synthetic access$2602(Landroid/widget/ListViewX;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListViewX;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Landroid/widget/ListViewX;->mLastPosition:I

    return p1
.end method

.method static synthetic access$2700(Landroid/widget/ListViewX;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListViewX;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/ListViewX;->updateHeaderView(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/ListViewX;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListViewX;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ListViewX;->scaleHeight(IZ)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ListViewX;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/ListViewX;->isSplitedSlideView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/ListViewX;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/ListViewX;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/ListViewX;)Landroid/widget/SlideView$SlideViewParams;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/ListViewX;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/ListViewX;->isEditMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/widget/ListViewX;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewX;

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2337
    iget-object v0, p0, Landroid/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2338
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2341
    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2342
    return-void
.end method

.method private canIntercept()Z
    .locals 2

    .prologue
    .line 2195
    iget v0, p0, Landroid/widget/ListViewX;->mPullDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 2197
    const/4 v0, 0x1

    .line 2200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canPull(I)Z
    .locals 8
    .param p1, "delta"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2277
    invoke-direct {p0, p1}, Landroid/widget/ListViewX;->setPullingMode(I)V

    .line 2278
    iget v6, p0, Landroid/widget/ListViewX;->mPullingMode:I

    if-nez v6, :cond_1

    move v0, v4

    .line 2279
    .local v0, "down":Z
    :goto_0
    iget v6, p0, Landroid/widget/ListViewX;->mPullingMode:I

    if-ne v6, v4, :cond_2

    move v3, v4

    .line 2280
    .local v3, "up":Z
    :goto_1
    iget v6, p0, Landroid/widget/ListViewX;->mPullingMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v2, v4

    .line 2282
    .local v2, "push":Z
    :goto_2
    iget v6, p0, Landroid/widget/ListViewX;->mPullingMode:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    if-nez p1, :cond_4

    .line 2333
    :cond_0
    :goto_3
    return v5

    .end local v0    # "down":Z
    .end local v2    # "push":Z
    .end local v3    # "up":Z
    :cond_1
    move v0, v5

    .line 2278
    goto :goto_0

    .restart local v0    # "down":Z
    :cond_2
    move v3, v5

    .line 2279
    goto :goto_1

    .restart local v3    # "up":Z
    :cond_3
    move v2, v5

    .line 2280
    goto :goto_2

    .line 2287
    .restart local v2    # "push":Z
    :cond_4
    if-eqz v0, :cond_5

    iget v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    iget v7, p0, Landroid/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    if-lt v6, v7, :cond_5

    if-gtz p1, :cond_0

    .line 2292
    :cond_5
    if-eqz v3, :cond_6

    iget v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    iget v7, p0, Landroid/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    neg-int v7, v7

    if-gt v6, v7, :cond_6

    if-ltz p1, :cond_0

    .line 2296
    :cond_6
    iget v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x28

    div-int/lit8 v6, v6, 0x32

    add-int/lit8 v1, v6, 0x1

    .line 2298
    .local v1, "offset":I
    if-eqz v0, :cond_7

    .line 2299
    iget v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    if-ltz v6, :cond_7

    .line 2300
    if-lez p1, :cond_a

    .line 2301
    iget v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    div-int v7, p1, v1

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    .line 2306
    :goto_4
    iget v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    iget v7, p0, Landroid/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    if-le v6, v7, :cond_b

    .line 2307
    iget v6, p0, Landroid/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    iput v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    .line 2314
    :cond_7
    :goto_5
    if-nez v3, :cond_8

    if-eqz v2, :cond_9

    .line 2320
    :cond_8
    if-gez p1, :cond_c

    .line 2321
    iget v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    div-int v7, p1, v1

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    .line 2326
    :goto_6
    iget v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    iget v7, p0, Landroid/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    neg-int v7, v7

    if-ge v6, v7, :cond_d

    .line 2327
    iget v5, p0, Landroid/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    neg-int v5, v5

    iput v5, p0, Landroid/widget/ListViewX;->mPullDistance:I

    :cond_9
    :goto_7
    move v5, v4

    .line 2333
    goto :goto_3

    .line 2303
    :cond_a
    iget v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    add-int/2addr v6, p1

    iput v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    goto :goto_4

    .line 2308
    :cond_b
    iget v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    if-gez v6, :cond_7

    .line 2309
    iput v5, p0, Landroid/widget/ListViewX;->mPullDistance:I

    goto :goto_5

    .line 2323
    :cond_c
    iget v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    add-int/2addr v6, p1

    iput v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    goto :goto_6

    .line 2328
    :cond_d
    iget v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    if-lez v6, :cond_9

    .line 2329
    iput v5, p0, Landroid/widget/ListViewX;->mPullDistance:I

    goto :goto_7
.end method

.method private checkForFixedView(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 487
    invoke-direct {p0}, Landroid/widget/ListViewX;->isSplitedSlideView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    if-eqz p2, :cond_0

    instance-of v1, p2, Landroid/widget/SlideViewEx;

    if-eqz v1, :cond_0

    .line 489
    check-cast p2, Landroid/widget/SlideViewEx;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, p1}, Landroid/widget/SlideViewEx;->checkForFixedView(Landroid/view/MotionEvent;)I

    move-result v0

    .line 490
    .local v0, "slideViewState":I
    iget-object v1, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    if-eqz v1, :cond_1

    .line 500
    .end local v0    # "slideViewState":I
    :cond_0
    :goto_0
    return-void

    .line 493
    .restart local v0    # "slideViewState":I
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 494
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListViewX;->setLongClickable(Z)V

    goto :goto_0

    .line 495
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 496
    iget-boolean v1, p0, Landroid/widget/ListViewX;->mLongClickable:Z

    invoke-virtual {p0, v1}, Landroid/widget/ListViewX;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private createHeaderAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2567
    iget v1, p0, Landroid/widget/ListViewX;->mPullDistance:I

    iput v1, p0, Landroid/widget/ListViewX;->mBounceDistance:I

    .line 2568
    iget v1, p0, Landroid/widget/ListViewX;->mPullDistance:I

    iput v1, p0, Landroid/widget/ListViewX;->mLastPosition:I

    .line 2569
    sget-object v1, Landroid/widget/ListViewX;->HEADER_HEIGHT:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Landroid/widget/ListViewX;->mPullDistance:I

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2570
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget v1, p0, Landroid/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2571
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2572
    iget-object v1, p0, Landroid/widget/ListViewX;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2573
    iput-object v0, p0, Landroid/widget/ListViewX;->mHeaderAnim:Landroid/animation/ObjectAnimator;

    .line 2574
    return-void
.end method

.method private editModeSlidingCheck()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 1498
    iget v2, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItem:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1499
    iget-object v2, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    invoke-virtual {v2}, Landroid/widget/SlideView;->isViewChecked()Z

    move-result v2

    iget-boolean v4, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    if-eq v2, v4, :cond_0

    .line 1501
    iget-object v2, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    iget-boolean v4, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    invoke-virtual {v2, v4}, Landroid/widget/SlideView;->setViewChecked(Z)V

    .line 1502
    iget-object v2, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    iget v4, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    iget-boolean v5, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    invoke-direct {p0, v2, v4, v5}, Landroid/widget/ListViewX;->updateCheckStatus(Landroid/widget/SlideView;IZ)V

    .line 1504
    :cond_0
    invoke-direct {p0}, Landroid/widget/ListViewX;->updateEditModeSlidingStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1506
    iget-boolean v2, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    .line 1507
    iget v2, p0, Landroid/widget/ListViewX;->mLastSlidingDirection:I

    if-ne v2, v3, :cond_4

    .line 1508
    iget v2, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    add-int/lit8 v2, v2, -0x1

    iget-boolean v4, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    invoke-direct {p0, v2, v4}, Landroid/widget/ListViewX;->setSlideViewChecked(IZ)V

    .line 1519
    :cond_1
    :goto_1
    iget v2, p0, Landroid/widget/ListViewX;->mLastSlidingDirection:I

    if-ne v2, v3, :cond_5

    .line 1520
    iget v2, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 1524
    .local v0, "nextPos":I
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getLastVisiblePosition()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1526
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/ListViewX;->smoothScrollToPosition(II)V

    .line 1539
    .end local v0    # "nextPos":I
    :cond_2
    :goto_2
    return-void

    .line 1506
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1509
    :cond_4
    iget v2, p0, Landroid/widget/ListViewX;->mLastSlidingDirection:I

    if-ne v2, v6, :cond_1

    .line 1510
    iget v2, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v4, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    invoke-direct {p0, v2, v4}, Landroid/widget/ListViewX;->setSlideViewChecked(IZ)V

    goto :goto_1

    .line 1528
    :cond_5
    iget v2, p0, Landroid/widget/ListViewX;->mLastSlidingDirection:I

    if-ne v2, v6, :cond_2

    .line 1529
    iget v2, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x1

    .line 1532
    .local v1, "prevPos":I
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1534
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/ListViewX;->smoothScrollToPosition(II)V

    goto :goto_2
.end method

.method private exitEditMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1329
    iput-boolean v4, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    .line 1331
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v0

    .line 1333
    .local v0, "count":I
    invoke-direct {p0, v4}, Landroid/widget/ListViewX;->initCheckStatus(Z)V

    .line 1334
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1336
    invoke-virtual {p0, v1}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1337
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1338
    invoke-direct {p0, v2}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/SlideView;->setViewChecked(Z)V

    .line 1334
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1341
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListViewX;->invalidateViews()V

    .line 1342
    invoke-direct {p0}, Landroid/widget/ListViewX;->refreshDividers()V

    .line 1343
    return-void
.end method

.method private finishAnimateDividerHeight()V
    .locals 6

    .prologue
    .line 2102
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getChildCount()I

    move-result v3

    .line 2103
    .local v3, "maxCount":I
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getDividerHeight()I

    move-result v4

    .line 2105
    .local v4, "originalHeight":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2106
    invoke-virtual {p0, v2}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2107
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v1

    .line 2108
    .local v1, "item":Landroid/widget/SlideView;
    if-eqz v1, :cond_0

    .line 2109
    invoke-virtual {v1, v4}, Landroid/widget/SlideView;->setDividerHeight(I)V

    .line 2105
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2113
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "item":Landroid/widget/SlideView;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ListViewX;->startRemoveAnimation(I)V

    .line 2114
    return-void
.end method

.method private getCheckItemCount()I
    .locals 3

    .prologue
    .line 1346
    const/4 v0, 0x0

    .line 1348
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1349
    iget-object v2, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 1350
    add-int/lit8 v0, v0, 0x1

    .line 1348
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1354
    :cond_1
    return v0
.end method

.method private getListViewPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1542
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getScaledDistance(I)I
    .locals 12
    .param p1, "velocity"    # I

    .prologue
    const-wide/high16 v10, 0x407e000000000000L    # 480.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1010
    const/4 v1, 0x0

    .line 1011
    .local v1, "distance":I
    const-wide/16 v2, 0x0

    .line 1013
    .local v2, "ratio":D
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1014
    .local v0, "absVelocity":I
    const/16 v4, 0xbb8

    if-ge v0, v4, :cond_0

    .line 1016
    int-to-double v4, v0

    const-wide v6, 0x40c3880000000000L    # 10000.0

    div-double/2addr v4, v6

    sub-double v4, v8, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double v2, v8, v4

    .line 1017
    mul-double v4, v10, v2

    double-to-int v1, v4

    .line 1028
    :goto_0
    return v1

    .line 1018
    :cond_0
    const/16 v4, 0x32c8

    if-ge v0, v4, :cond_1

    .line 1020
    int-to-double v4, v0

    const-wide v6, 0x40cafe0000000000L    # 13820.0

    div-double/2addr v4, v6

    sub-double v4, v8, v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double v2, v8, v4

    .line 1021
    mul-double v4, v10, v2

    double-to-int v1, v4

    goto :goto_0

    .line 1025
    :cond_1
    const-wide v4, 0x4087100000000000L    # 738.0

    int-to-double v6, v0

    const-wide v8, 0x40d3880000000000L    # 20000.0

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v1, v4

    goto :goto_0
.end method

.method private getSlideView(Landroid/view/View;)Landroid/widget/SlideView;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1628
    if-nez p1, :cond_0

    move-object p1, v0

    .line 1640
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 1631
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Landroid/widget/ListViewX;->isSplitedSlideView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1632
    instance-of v1, p1, Landroid/widget/SlideViewEx;

    if-eqz v1, :cond_2

    .line 1633
    check-cast p1, Landroid/widget/SlideViewEx;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/SlideViewEx;->getSlideView()Landroid/widget/SlideView;

    move-result-object p1

    goto :goto_0

    .line 1636
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    instance-of v1, p1, Landroid/widget/SlideView;

    if-eqz v1, :cond_2

    .line 1637
    check-cast p1, Landroid/widget/SlideView;

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 1640
    goto :goto_0
.end method

.method private handleOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v12, -0x1

    .line 688
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v6, v11

    .line 689
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v8, v11

    .line 692
    .local v8, "y":I
    invoke-direct {p0, p1}, Landroid/widget/ListViewX;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 813
    :cond_0
    :goto_0
    iget-boolean v3, p0, Landroid/widget/ListViewX;->mLockScrollVertical:Z

    :cond_1
    :goto_1
    return v3

    .line 695
    :sswitch_0
    iput v6, p0, Landroid/widget/ListViewX;->mPullStartX:I

    .line 696
    iput v8, p0, Landroid/widget/ListViewX;->mPullStartY:I

    .line 697
    iput v8, p0, Landroid/widget/ListViewX;->mLastY:I

    .line 698
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Landroid/widget/ListViewX;->mPointerId:I

    .line 700
    invoke-direct {p0}, Landroid/widget/ListViewX;->isEditMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 701
    iget-boolean v10, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-eqz v10, :cond_2

    .line 702
    iget-object v10, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    invoke-virtual {v10}, Landroid/widget/SlideView;->getCheckedRegion()I

    move-result v10

    iget v11, p0, Landroid/widget/ListViewX;->CHECK_SLIDING_REGION_RIGHT:I

    add-int/2addr v10, v11

    if-ge v6, v10, :cond_0

    .line 704
    iget v10, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    iget-object v11, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    invoke-virtual {v11}, Landroid/widget/SlideView;->isViewChecked()Z

    move-result v11

    invoke-direct {p0, v10, v11}, Landroid/widget/ListViewX;->startEditModeSlidingCheck(IZ)V

    goto :goto_0

    .line 706
    :cond_2
    invoke-direct {p0}, Landroid/widget/ListViewX;->shouldStartEditModeForLongPress()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 707
    iget v10, p0, Landroid/widget/ListViewX;->mCurrentPosition:I

    invoke-direct {p0, v10}, Landroid/widget/ListViewX;->startCountForLongPress(I)V

    goto :goto_0

    .line 713
    :sswitch_1
    invoke-direct {p0}, Landroid/widget/ListViewX;->isEditMode()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 714
    invoke-direct {p0}, Landroid/widget/ListViewX;->stopCountForLongPress()V

    .line 715
    iget-boolean v11, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-eqz v11, :cond_3

    iget v11, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItem:I

    if-eq v11, v12, :cond_3

    .line 716
    invoke-direct {p0}, Landroid/widget/ListViewX;->stopEditModeSlidingCheck()V

    goto :goto_1

    .line 727
    :cond_3
    iget-boolean v11, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-nez v11, :cond_4

    iget-boolean v11, p0, Landroid/widget/ListViewX;->mLockScrollVertical:Z

    if-nez v11, :cond_4

    .line 728
    invoke-direct {p0}, Landroid/widget/ListViewX;->startFinishAnimate()V

    .line 731
    :cond_4
    invoke-direct {p0}, Landroid/widget/ListViewX;->releaseVelocityTracker()V

    .line 732
    iput v10, p0, Landroid/widget/ListViewX;->mLastY:I

    .line 733
    iput v12, p0, Landroid/widget/ListViewX;->mPointerId:I

    goto :goto_0

    .line 738
    :sswitch_2
    iget v10, p0, Landroid/widget/ListViewX;->mPointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 739
    .local v5, "pointerIndex":I
    if-eq v5, v12, :cond_1

    .line 745
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v6, v10

    .line 746
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v8, v10

    .line 748
    iget v10, p0, Landroid/widget/ListViewX;->mLastY:I

    sub-int v0, v8, v10

    .line 749
    .local v0, "deltaY":I
    iput v8, p0, Landroid/widget/ListViewX;->mLastY:I

    .line 757
    iget-boolean v10, p0, Landroid/widget/ListViewX;->mPullAnimEnabled:Z

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-nez v10, :cond_5

    iget-boolean v10, p0, Landroid/widget/ListViewX;->mLockScrollVertical:Z

    if-nez v10, :cond_5

    .line 758
    iget v10, p0, Landroid/widget/ListViewX;->mPullStartY:I

    sub-int v9, v8, v10

    .line 759
    .local v9, "yShift":I
    iget v10, p0, Landroid/widget/ListViewX;->mPullStartX:I

    sub-int v7, v6, v10

    .line 761
    .local v7, "xShift":I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v10, v11, :cond_5

    .line 763
    invoke-direct {p0, v0, v3}, Landroid/widget/ListViewX;->scaleHeight(IZ)V

    .line 767
    .end local v7    # "xShift":I
    .end local v9    # "yShift":I
    :cond_5
    iget-boolean v10, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItem:I

    if-eq v10, v12, :cond_0

    .line 769
    invoke-direct {p0}, Landroid/widget/ListViewX;->editModeSlidingCheck()V

    goto/16 :goto_0

    .line 780
    .end local v0    # "deltaY":I
    .end local v5    # "pointerIndex":I
    :sswitch_3
    invoke-direct {p0}, Landroid/widget/ListViewX;->releaseVelocityTracker()V

    .line 781
    iput v12, p0, Landroid/widget/ListViewX;->mPointerId:I

    goto/16 :goto_0

    .line 785
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 786
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 787
    .local v1, "id":I
    iput v1, p0, Landroid/widget/ListViewX;->mPointerId:I

    .line 789
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Landroid/widget/ListViewX;->mLastY:I

    .line 790
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Landroid/widget/ListViewX;->mPullStartX:I

    .line 791
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Landroid/widget/ListViewX;->mPullStartY:I

    goto/16 :goto_0

    .line 796
    .end local v1    # "id":I
    .end local v2    # "index":I
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const v12, 0xff00

    and-int/2addr v11, v12

    shr-int/lit8 v5, v11, 0x8

    .line 798
    .restart local v5    # "pointerIndex":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 799
    .local v4, "pointerId":I
    iget v11, p0, Landroid/widget/ListViewX;->mPointerId:I

    if-ne v4, v11, :cond_0

    .line 800
    if-nez v5, :cond_6

    .line 801
    .local v3, "newPointerIndex":I
    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Landroid/widget/ListViewX;->mPointerId:I

    .line 802
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Landroid/widget/ListViewX;->mPullStartX:I

    .line 803
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Landroid/widget/ListViewX;->mPullStartY:I

    .line 804
    iget v10, p0, Landroid/widget/ListViewX;->mPullStartY:I

    iput v10, p0, Landroid/widget/ListViewX;->mLastY:I

    goto/16 :goto_0

    .end local v3    # "newPointerIndex":I
    :cond_6
    move v3, v10

    .line 800
    goto :goto_2

    .line 693
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x105 -> :sswitch_4
        0x106 -> :sswitch_5
    .end sparse-switch
.end method

.method private handleSlidingEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 504
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 505
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Landroid/widget/ListViewX;->pointToPosition(II)I

    move-result v1

    .line 506
    .local v1, "pos":I
    const/4 v0, 0x0

    .line 509
    .local v0, "child":Landroid/view/View;
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v8

    if-lt v1, v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFooterViewsCount()I

    move-result v9

    sub-int/2addr v8, v9

    if-ge v1, v8, :cond_1

    .line 511
    invoke-direct {p0, v1}, Landroid/widget/ListViewX;->getListViewPosition(I)I

    move-result v4

    .line 512
    .local v4, "position":I
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v1, v8

    invoke-virtual {p0, v8}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 513
    iput v4, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    .line 514
    invoke-direct {p0, v0}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    .line 515
    iput v4, p0, Landroid/widget/ListViewX;->mCurrentPosition:I

    .line 524
    .end local v4    # "position":I
    :goto_0
    iget-boolean v8, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-nez v8, :cond_0

    invoke-direct {p0}, Landroid/widget/ListViewX;->isSlideLeftMode()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0}, Landroid/widget/ListViewX;->canIntercept()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListViewX;->hasWindowFocus()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Landroid/widget/ListViewX;->mScrollingState:I

    if-eqz v8, :cond_2

    .line 537
    :cond_0
    const/4 v8, 0x0

    .line 651
    :goto_1
    return v8

    .line 519
    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    .line 520
    const/4 v8, -0x1

    iput v8, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    goto :goto_0

    .line 540
    :cond_2
    invoke-direct {p0, p1, v0}, Landroid/widget/ListViewX;->checkForFixedView(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 651
    const/4 v8, 0x0

    goto :goto_1

    .line 549
    :pswitch_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mIsTouchDownOnSlideOutItem:Z

    .line 550
    iget-boolean v8, p0, Landroid/widget/ListViewX;->mSlidingStarted:Z

    if-eqz v8, :cond_7

    .line 551
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mDropLeftTouchEvent:Z

    .line 552
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    iget-object v9, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    if-eq v8, v9, :cond_5

    .line 554
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    if-eqz v8, :cond_3

    .line 555
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/SlideView;->shrink(Z)V

    .line 556
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    .line 558
    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mSlidingStarted:Z

    .line 559
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mLockScrollVertical:Z

    .line 585
    :cond_4
    :goto_2
    const/4 v8, 0x1

    goto :goto_1

    .line 561
    :cond_5
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    if-eqz v8, :cond_4

    .line 563
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mIsTouchDownOnSlideOutItem:Z

    .line 564
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/SlideView;->handleSlideOutItemClick(II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 569
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/SlideView;->shrink(Z)V

    .line 570
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    .line 571
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mSlidingStarted:Z

    .line 572
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mLockScrollVertical:Z

    .line 576
    iget-object v8, p0, Landroid/widget/ListViewX;->mItemSlideListener:Landroid/widget/ListViewX$OnSlideListener;

    if-eqz v8, :cond_4

    .line 577
    iget-object v8, p0, Landroid/widget/ListViewX;->mItemSlideListener:Landroid/widget/ListViewX$OnSlideListener;

    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/widget/ListViewX$OnSlideListener;->onSlide(Landroid/view/View;II)V

    goto :goto_2

    .line 581
    :cond_6
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    invoke-virtual {v8, p1}, Landroid/widget/SlideView;->onRequireTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 587
    :cond_7
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mDropLeftTouchEvent:Z

    .line 588
    iget-object v8, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    if-eqz v8, :cond_9

    .line 589
    iget-object v8, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    iput-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    .line 590
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    invoke-virtual {v8, p1}, Landroid/widget/SlideView;->onRequireTouchEvent(Landroid/view/MotionEvent;)Z

    .line 597
    :cond_8
    :goto_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 592
    :cond_9
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    if-eqz v8, :cond_8

    .line 593
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/SlideView;->shrink(Z)V

    .line 594
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    goto :goto_3

    .line 601
    :pswitch_1
    const/4 v5, 0x0

    .line 602
    .local v5, "sliding":Z
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    if-eqz v8, :cond_a

    .line 603
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    invoke-virtual {v8, p1}, Landroid/widget/SlideView;->onRequireTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 611
    :cond_a
    iget-boolean v8, p0, Landroid/widget/ListViewX;->mSlidingStarted:Z

    if-eqz v8, :cond_d

    .line 612
    const/4 v5, 0x1

    .line 613
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    if-eqz v8, :cond_b

    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    invoke-virtual {v8}, Landroid/widget/SlideView;->isPressed()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 615
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/SlideView;->setPressed(Z)V

    .line 625
    :cond_b
    :goto_4
    if-nez v5, :cond_c

    iget-boolean v8, p0, Landroid/widget/ListViewX;->mDropLeftTouchEvent:Z

    if-eqz v8, :cond_e

    :cond_c
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 617
    :cond_d
    if-eqz v5, :cond_b

    .line 618
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mSlidingStarted:Z

    .line 619
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mLockScrollVertical:Z

    .line 620
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    if-eqz v8, :cond_b

    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    invoke-virtual {v8}, Landroid/widget/SlideView;->isPressed()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 622
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/SlideView;->setPressed(Z)V

    goto :goto_4

    .line 625
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 628
    .end local v5    # "sliding":Z
    :pswitch_2
    iget-boolean v8, p0, Landroid/widget/ListViewX;->mSlidingStarted:Z

    if-eqz v8, :cond_12

    .line 629
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    if-eqz v8, :cond_10

    .line 630
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    invoke-virtual {v8, p1}, Landroid/widget/SlideView;->onRequireTouchEvent(Landroid/view/MotionEvent;)Z

    .line 631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 632
    .local v2, "deltaTime":J
    sget-wide v8, Landroid/widget/ListViewX;->TAP_TIMEOUT:J

    cmp-long v8, v2, v8

    if-gez v8, :cond_11

    iget-boolean v8, p0, Landroid/widget/ListViewX;->mIsTouchDownOnSlideOutItem:Z

    if-nez v8, :cond_f

    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    invoke-virtual {v8}, Landroid/widget/SlideView;->isSliding()Z

    move-result v8

    if-nez v8, :cond_11

    .line 634
    :cond_f
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/SlideView;->shrink(Z)V

    .line 635
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mSlidingStarted:Z

    .line 636
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mLockScrollVertical:Z

    .line 637
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    .line 644
    .end local v2    # "deltaTime":J
    :cond_10
    :goto_5
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 638
    .restart local v2    # "deltaTime":J
    :cond_11
    iget-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    invoke-virtual {v8}, Landroid/widget/SlideView;->isSliding()Z

    move-result v8

    if-nez v8, :cond_10

    .line 639
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mSlidingStarted:Z

    .line 640
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ListViewX;->mLockScrollVertical:Z

    .line 641
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    goto :goto_5

    .line 646
    .end local v2    # "deltaTime":J
    :cond_12
    iget-boolean v8, p0, Landroid/widget/ListViewX;->mDropLeftTouchEvent:Z

    goto/16 :goto_1

    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private hideHeaderView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1606
    iget-object v0, p0, Landroid/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    iget v1, p0, Landroid/widget/ListViewX;->mHeaderViewHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1607
    invoke-direct {p0, v2}, Landroid/widget/ListViewX;->updateHeaderViewState(I)V

    .line 1608
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1137
    iput-object p1, p0, Landroid/widget/ListViewX;->mContext:Landroid/content/Context;

    .line 1138
    new-instance v5, Landroid/widget/SlideView$SlideViewParams;

    invoke-direct {v5, p1}, Landroid/widget/SlideView$SlideViewParams;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;

    .line 1139
    const/16 v5, 0x1011

    iput v5, p0, Landroid/widget/ListViewX;->mListItemMode:I

    .line 1141
    iput v8, p0, Landroid/widget/ListViewX;->mDividerHeight:I

    .line 1142
    const/4 v4, 0x0

    .line 1143
    .local v4, "width":I
    invoke-direct {p0}, Landroid/widget/ListViewX;->isSlideRightMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1144
    iget-object v5, p0, Landroid/widget/ListViewX;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105017b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1147
    :cond_0
    iget-object v5, p0, Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;

    invoke-virtual {v5, v4}, Landroid/widget/SlideView$SlideViewParams;->setLeftSpaceWidth(I)V

    .line 1148
    iget-object v5, p0, Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;

    iget v6, p0, Landroid/widget/ListViewX;->mCustomizedListItemBgColor:I

    iget v7, p0, Landroid/widget/ListViewX;->mCustomizedListItemBgPressedColor:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/SlideView$SlideViewParams;->setBgColor(II)V

    .line 1149
    iget-object v5, p0, Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SlideView$SlideViewParams;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1150
    const v5, 0x106000d

    invoke-virtual {p0, v5}, Landroid/widget/ListViewX;->setSelector(I)V

    .line 1151
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v6, v5

    sput-wide v6, Landroid/widget/ListViewX;->LONG_PRESS_TIMEOUT:J

    .line 1152
    invoke-virtual {p0, v8}, Landroid/widget/ListViewX;->setHeaderDividersEnabled(Z)V

    .line 1153
    invoke-virtual {p0, v9}, Landroid/widget/ListViewX;->setFocusableInTouchMode(Z)V

    .line 1154
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/ListViewX;->setOverScrollMode(I)V

    .line 1157
    sget-object v5, Lcom/android/internal/R$styleable;->ListViewX:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1159
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x3

    const v6, 0x109008e

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ListViewX;->mEditBarLayoutId:I

    .line 1161
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ListViewX;->CHECK_SLIDING_REGION_RIGHT:I

    .line 1163
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1164
    .local v1, "leftThreshHold":I
    iget-object v5, p0, Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;

    invoke-virtual {v5, v1}, Landroid/widget/SlideView$SlideViewParams;->setLeftSlideThreshHold(I)V

    .line 1165
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 1166
    .local v2, "rightThreshHold":I
    iget-object v5, p0, Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;

    invoke-virtual {v5, v2}, Landroid/widget/SlideView$SlideViewParams;->setRightSlideThreshHold(I)V

    .line 1167
    const v5, 0x1090127

    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1169
    .local v3, "slideViewLayout":I
    iget-object v5, p0, Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;

    invoke-virtual {v5, v3}, Landroid/widget/SlideView$SlideViewParams;->setLayoutResource(I)V

    .line 1170
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/ListViewX;->initListItemMode(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1173
    return-void
.end method

.method private initAnimParams()V
    .locals 2

    .prologue
    .line 1194
    iget-object v1, p0, Landroid/widget/ListViewX;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1195
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x1050184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    .line 1197
    const v1, 0x10e00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ListViewX;->ITEM_BASE_ANIM_DURATION:I

    .line 1199
    const v1, 0x10e00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ListViewX;->ITEM_ANIM_OFFSET_TIME:I

    .line 1201
    const v1, 0x10e00e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ListViewX;->ITEM_BATCH_REMOVE_BASE_DURATION:I

    .line 1203
    const v1, 0x10e00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ListViewX;->ITEM_BATCH_REMOVE_OFFSET_DURATION:I

    .line 1205
    const v1, 0x10e00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    .line 1207
    const v1, 0x10e00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ListViewX;->BOUNCE_ANIM_RUSH_DURATION:I

    .line 1209
    const v1, 0x10e00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ListViewX;->BOUNCE_ANIM_BACK_DURATION:I

    .line 1211
    const v1, 0x1050183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ListViewX;->BOUNCE_ANIM_DISTANCE:I

    .line 1213
    return-void
.end method

.method private initCheckStatus(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    .line 1405
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 1407
    .local v0, "count":I
    new-array v2, v0, [Z

    iput-object v2, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    .line 1409
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1410
    iget-object v2, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    aput-boolean p1, v2, v1

    .line 1409
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1412
    :cond_0
    return-void
.end method

.method private initHeaderView(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 1546
    sget-object v2, Lcom/android/internal/R$styleable;->ListViewX:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1548
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const v3, 0x1090090

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1550
    .local v1, "headerViewId":I
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    .line 1552
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1553
    iget-object v2, p0, Landroid/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Landroid/widget/ListViewX;->measureView(Landroid/view/View;)V

    .line 1554
    iget-object v2, p0, Landroid/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/ListViewX;->mHeaderViewHeight:I

    .line 1555
    invoke-direct {p0}, Landroid/widget/ListViewX;->hideHeaderView()V

    .line 1556
    iget-object v2, p0, Landroid/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1557
    iget-object v2, p0, Landroid/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/ListViewX;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1558
    invoke-virtual {p0}, Landroid/widget/ListViewX;->setSelectionAfterHeaderView()V

    .line 1559
    return-void
.end method

.method private initListItemMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 1176
    const-string v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListViewX;->mListItemMode:I

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    const-string v0, "leftSlideShowItem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1179
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ListViewX;->mListItemMode:I

    goto :goto_0

    .line 1180
    :cond_2
    const-string v0, "longPressEditMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1181
    const/16 v0, 0x10

    iput v0, p0, Landroid/widget/ListViewX;->mListItemMode:I

    goto :goto_0

    .line 1182
    :cond_3
    const-string v0, "rightSlide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1183
    const/16 v0, 0x1000

    iput v0, p0, Landroid/widget/ListViewX;->mListItemMode:I

    goto :goto_0

    .line 1184
    :cond_4
    const-string v0, "splitSlideView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1185
    const/high16 v0, 0x100000

    iput v0, p0, Landroid/widget/ListViewX;->mListItemMode:I

    goto :goto_0

    .line 1186
    :cond_5
    const-string v0, "reserveLongPress"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1187
    const/high16 v0, 0x10000

    iput v0, p0, Landroid/widget/ListViewX;->mListItemMode:I

    goto :goto_0

    .line 1188
    :cond_6
    const-string v0, "slideLoading"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private initSlidingParams()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1217
    iput-boolean v1, p0, Landroid/widget/ListViewX;->mLockScrollVertical:Z

    .line 1218
    iput-boolean v1, p0, Landroid/widget/ListViewX;->mSlidingStarted:Z

    .line 1219
    iget-object v0, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    invoke-virtual {v0, v1}, Landroid/widget/SlideView;->shrink(Z)V

    .line 1222
    iput-object v3, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    .line 1224
    :cond_0
    iput v2, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    .line 1225
    iput v2, p0, Landroid/widget/ListViewX;->mCurrentPosition:I

    .line 1226
    iput-object v3, p0, Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;

    .line 1227
    iget-boolean v0, p0, Landroid/widget/ListViewX;->mLongClickable:Z

    invoke-virtual {p0, v0}, Landroid/widget/ListViewX;->setLongClickable(Z)V

    .line 1228
    return-void
.end method

.method private isBottom()Z
    .locals 5

    .prologue
    .line 2229
    const/4 v1, 0x0

    .line 2230
    .local v1, "isBottom":Z
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFooterViewsCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 2231
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/HeaderViewListAdapter;

    iget-object v3, v3, Landroid/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFooterViewsCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView$FixedViewInfo;

    .line 2232
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getBottom()I

    move-result v4

    if-gt v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 2234
    const/4 v1, 0x1

    .line 2244
    .end local v0    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    :goto_0
    return v1

    .line 2237
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2238
    .local v2, "last":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getBottom()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 2240
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isEditMode()Z
    .locals 1

    .prologue
    .line 1235
    iget v0, p0, Landroid/widget/ListViewX;->mListItemMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSlideLeftMode()Z
    .locals 1

    .prologue
    .line 1231
    iget v0, p0, Landroid/widget/ListViewX;->mListItemMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSlideLoadingMode()Z
    .locals 1

    .prologue
    .line 1240
    const/4 v0, 0x0

    return v0
.end method

.method private isSlideRightMode()Z
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Landroid/widget/ListViewX;->mListItemMode:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSplitedSlideView()Z
    .locals 2

    .prologue
    .line 1252
    iget v0, p0, Landroid/widget/ListViewX;->mListItemMode:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTop()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2209
    const/4 v2, 0x0

    .line 2210
    .local v2, "isTop":Z
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 2211
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/HeaderViewListAdapter;

    iget-object v3, v3, Landroid/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 2214
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_0

    .line 2215
    const/4 v2, 0x1

    .line 2225
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    :goto_0
    return v2

    .line 2218
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2219
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_0

    .line 2221
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1562
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1563
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 1564
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1568
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1570
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1572
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 1573
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1579
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1580
    return-void

    .line 1576
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private refreshDividers()V
    .locals 3

    .prologue
    .line 1274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1276
    invoke-virtual {p0, v0}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v1

    .line 1277
    .local v1, "view":Landroid/widget/SlideView;
    if-eqz v1, :cond_0

    .line 1278
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SlideView;->setDividerState(Z)V

    .line 1274
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1281
    .end local v1    # "view":Landroid/widget/SlideView;
    :cond_1
    return-void
.end method

.method private registerStatusbarClickBroadCast()V
    .locals 3

    .prologue
    .line 1620
    iget-object v1, p0, Landroid/widget/ListViewX;->mStatusbarClickReceiver:Landroid/widget/ListViewX$StatusBarClickReceiver;

    if-nez v1, :cond_0

    .line 1621
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.click.event"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1622
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Landroid/widget/ListViewX$StatusBarClickReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ListViewX$StatusBarClickReceiver;-><init>(Landroid/widget/ListViewX;Landroid/widget/ListViewX$1;)V

    iput-object v1, p0, Landroid/widget/ListViewX;->mStatusbarClickReceiver:Landroid/widget/ListViewX$StatusBarClickReceiver;

    .line 1623
    iget-object v1, p0, Landroid/widget/ListViewX;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/ListViewX;->mStatusbarClickReceiver:Landroid/widget/ListViewX$StatusBarClickReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1625
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 2346
    iget-object v0, p0, Landroid/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2347
    iget-object v0, p0, Landroid/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2348
    iget-object v0, p0, Landroid/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2349
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2351
    :cond_0
    return-void
.end method

.method private resetCheckStatus()V
    .locals 5

    .prologue
    .line 1415
    iget-object v3, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    if-nez v3, :cond_1

    .line 1429
    :cond_0
    return-void

    .line 1418
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFooterViewsCount()I

    move-result v4

    sub-int v0, v3, v4

    .line 1420
    .local v0, "count":I
    iget-object v2, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    .line 1421
    .local v2, "oldCheckItems":[Z
    new-array v3, v0, [Z

    iput-object v3, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    .line 1422
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1423
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1424
    iget-object v3, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    aget-boolean v4, v2, v1

    aput-boolean v4, v3, v1

    .line 1422
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private resetFooterHeight()V
    .locals 3

    .prologue
    .line 2469
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 2470
    iget-object v1, p0, Landroid/widget/ListViewX;->mFooterHeight:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 2469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2472
    :cond_0
    return-void
.end method

.method private resetHeaderHeight()V
    .locals 3

    .prologue
    .line 2455
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 2456
    iget-object v1, p0, Landroid/widget/ListViewX;->mHeaderHeight:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 2455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2458
    :cond_0
    return-void
.end method

.method private resetPullingMode()V
    .locals 1

    .prologue
    .line 2270
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListViewX;->mPullingMode:I

    .line 2271
    invoke-direct {p0}, Landroid/widget/ListViewX;->resetHeaderHeight()V

    .line 2272
    invoke-direct {p0}, Landroid/widget/ListViewX;->resetFooterHeight()V

    .line 2273
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListViewX;->enableScroll(Z)V

    .line 2274
    return-void
.end method

.method private scaleHeight(IZ)V
    .locals 26
    .param p1, "delta"    # I
    .param p2, "compute"    # Z

    .prologue
    .line 2354
    const/16 v17, 0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 2355
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListViewX;->canPull(I)Z

    move-result v17

    if-nez v17, :cond_1

    .line 2424
    :cond_0
    :goto_0
    return-void

    .line 2360
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListViewX;->mPullingMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2361
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListViewX;->mPullDistance:I

    move/from16 v17, v0

    div-int/lit8 v15, v17, 0x2

    .line 2362
    .local v15, "paddingTop":I
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/widget/ListViewX;->setPadding(IIII)V

    goto :goto_0

    .line 2366
    .end local v15    # "paddingTop":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListViewX;->getChildCount()I

    move-result v14

    .line 2367
    .local v14, "maxCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListViewX;->SCALE_HEIGHT_COUNT:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    move/from16 v16, v14

    .line 2368
    .local v16, "scaleCount":I
    :goto_1
    move/from16 v0, v16

    new-array v8, v0, [I

    .line 2371
    .local v8, "heightList":[I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListViewX;->mPullingMode:I

    move/from16 v17, v0

    if-nez v17, :cond_4

    const/4 v10, 0x1

    .line 2372
    .local v10, "isDown":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListViewX;->mPullingMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/4 v11, 0x1

    .line 2373
    .local v11, "isUp":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListViewX;->mPullDistance:I

    move/from16 v17, v0

    if-ltz v17, :cond_6

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ListViewX;->mPullDistance:I

    .line 2375
    .local v5, "distance":I
    :goto_4
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_5
    move/from16 v0, v16

    if-ge v13, v0, :cond_7

    .line 2376
    div-int/lit8 v17, v5, 0x28

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v13

    move-wide/from16 v22, v0

    const-wide v24, 0x3fb999999999999aL    # 0.1

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    mul-double v6, v18, v20

    .line 2377
    .local v6, "height":D
    double-to-int v0, v6

    move/from16 v17, v0

    aput v17, v8, v13

    .line 2375
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 2367
    .end local v5    # "distance":I
    .end local v6    # "height":D
    .end local v8    # "heightList":[I
    .end local v10    # "isDown":Z
    .end local v11    # "isUp":Z
    .end local v13    # "k":I
    .end local v16    # "scaleCount":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListViewX;->SCALE_HEIGHT_COUNT:I

    move/from16 v16, v0

    goto :goto_1

    .line 2371
    .restart local v8    # "heightList":[I
    .restart local v16    # "scaleCount":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 2372
    .restart local v10    # "isDown":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 2373
    .restart local v11    # "isUp":Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListViewX;->mPullDistance:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v5, v0

    goto :goto_4

    .line 2382
    .restart local v5    # "distance":I
    .restart local v13    # "k":I
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_8

    .line 2383
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListViewX;->mPullDistance:I

    move/from16 v17, v0

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListViewX;->mLayoutMode:I

    .line 2384
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListViewX;->mPullDistance:I

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListViewX;->mFlinging:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 2385
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListViewX;->resetPullingMode()V

    .line 2389
    :cond_8
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_9

    .line 2390
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListViewX;->mPullDistance:I

    move/from16 v17, v0

    if-eqz v17, :cond_c

    const/16 v17, 0x3

    :goto_7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListViewX;->mLayoutMode:I

    .line 2391
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListViewX;->mPullDistance:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListViewX;->mFlinging:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 2392
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListViewX;->resetPullingMode()V

    .line 2397
    :cond_9
    if-eqz v11, :cond_e

    .line 2398
    const/4 v13, 0x0

    add-int/lit8 v9, v14, -0x1

    .local v9, "index":I
    :goto_8
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    .line 2399
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2400
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v12

    .line 2401
    .local v12, "item":Landroid/widget/SlideView;
    aget v17, v8, v13

    if-ltz v17, :cond_a

    .line 2402
    if-eqz v12, :cond_d

    .line 2403
    aget v17, v8, v13

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/SlideView;->setSpaceHeight(I)V

    .line 2398
    :cond_a
    :goto_9
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    .line 2383
    .end local v4    # "child":Landroid/view/View;
    .end local v9    # "index":I
    .end local v12    # "item":Landroid/widget/SlideView;
    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    .line 2390
    :cond_c
    const/16 v17, 0x0

    goto :goto_7

    .line 2405
    .restart local v4    # "child":Landroid/view/View;
    .restart local v9    # "index":I
    .restart local v12    # "item":Landroid/widget/SlideView;
    :cond_d
    aget v17, v8, v13

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v1, v13}, Landroid/widget/ListViewX;->setFooterViewPadding(Landroid/view/View;II)V

    goto :goto_9

    .line 2411
    .end local v4    # "child":Landroid/view/View;
    .end local v9    # "index":I
    .end local v12    # "item":Landroid/widget/SlideView;
    :cond_e
    const/4 v13, 0x0

    const/4 v9, 0x0

    .restart local v9    # "index":I
    :goto_a
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    .line 2412
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2413
    .restart local v4    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v12

    .line 2414
    .restart local v12    # "item":Landroid/widget/SlideView;
    aget v17, v8, v13

    if-ltz v17, :cond_f

    .line 2415
    if-eqz v12, :cond_10

    .line 2416
    aget v17, v8, v13

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/SlideView;->setSpaceHeight(I)V

    .line 2411
    :cond_f
    :goto_b
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 2418
    :cond_10
    aget v17, v8, v13

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v13}, Landroid/widget/ListViewX;->setHeaderViewPadding(II)V

    goto :goto_b
.end method

.method private setEditModeAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1961
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1973
    :goto_0
    return-void

    .line 1965
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v4}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    invoke-direct {v0, v2, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1966
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1967
    iget v2, p0, Landroid/widget/ListViewX;->ITEM_BASE_ANIM_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1969
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 1970
    .local v1, "lac":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v1, v4}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 1971
    const v2, 0x3cf5c28f    # 0.03f

    invoke-virtual {v1, v2}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 1972
    invoke-virtual {p0, v1}, Landroid/widget/ListViewX;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_0
.end method

.method private setFooterHeight(II)V
    .locals 1
    .param p1, "height"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2462
    iget-object v0, p0, Landroid/widget/ListViewX;->mFooterHeight:[I

    aget v0, v0, p2

    if-nez v0, :cond_0

    .line 2463
    iget-object v0, p0, Landroid/widget/ListViewX;->mFooterHeight:[I

    aput p1, v0, p2

    .line 2466
    :cond_0
    return-void
.end method

.method private setFooterViewPadding(Landroid/view/View;II)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "pos"    # I

    .prologue
    .line 2495
    if-eqz p1, :cond_0

    if-ltz p3, :cond_0

    const/16 v1, 0xa

    if-lt p3, v1, :cond_1

    .line 2510
    :cond_0
    :goto_0
    return-void

    .line 2500
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, p3}, Landroid/widget/ListViewX;->setFooterHeight(II)V

    .line 2501
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2502
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/widget/ListViewX;->mFooterHeight:[I

    aget v1, v1, p3

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2509
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setHeaderHeight(II)V
    .locals 1
    .param p1, "height"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2449
    iget-object v0, p0, Landroid/widget/ListViewX;->mHeaderHeight:[I

    aget v0, v0, p2

    if-nez v0, :cond_0

    .line 2450
    iget-object v0, p0, Landroid/widget/ListViewX;->mHeaderHeight:[I

    aput p1, v0, p2

    .line 2453
    :cond_0
    return-void
.end method

.method private setHeaderViewPadding(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2475
    if-ltz p2, :cond_0

    const/16 v2, 0xa

    if-lt p2, v2, :cond_1

    .line 2492
    :cond_0
    :goto_0
    return-void

    .line 2480
    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2482
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v2, p2}, Landroid/widget/ListViewX;->setHeaderHeight(II)V

    .line 2483
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2484
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Landroid/widget/ListViewX;->mHeaderHeight:[I

    aget v2, v2, p2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2491
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setPullingMode(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 2248
    if-lez p1, :cond_0

    invoke-direct {p0}, Landroid/widget/ListViewX;->isTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ListViewX;->mPullDistance:I

    if-nez v0, :cond_0

    .line 2249
    iput v1, p0, Landroid/widget/ListViewX;->mPullingMode:I

    .line 2250
    invoke-virtual {p0, v1}, Landroid/widget/ListViewX;->enableScroll(Z)V

    .line 2254
    :cond_0
    if-gez p1, :cond_1

    invoke-direct {p0}, Landroid/widget/ListViewX;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/ListViewX;->mPullDistance:I

    if-nez v0, :cond_1

    .line 2255
    invoke-direct {p0}, Landroid/widget/ListViewX;->isTop()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2256
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ListViewX;->mPullingMode:I

    .line 2257
    invoke-virtual {p0, v1}, Landroid/widget/ListViewX;->enableScroll(Z)V

    .line 2262
    :cond_1
    if-gez p1, :cond_2

    iget v0, p0, Landroid/widget/ListViewX;->mPullDistance:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/widget/ListViewX;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/ListViewX;->isTop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2264
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/ListViewX;->mPullingMode:I

    .line 2267
    :cond_2
    return-void
.end method

.method private setSlideViewChecked(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1386
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 1388
    iget-object v0, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/ListViewX;->setSlideViewChecked(IZ)V

    .line 1390
    :cond_0
    return-void

    .line 1388
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSlideViewChecked(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 1394
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1396
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v1

    .line 1397
    .local v1, "item":Landroid/widget/SlideView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/SlideView;->isViewChecked()Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 1399
    invoke-direct {p0, v1, p1}, Landroid/widget/ListViewX;->updateViewCheckState(Landroid/widget/SlideView;I)V

    .line 1400
    invoke-direct {p0, v1, p1, p2}, Landroid/widget/ListViewX;->updateCheckStatus(Landroid/widget/SlideView;IZ)V

    .line 1402
    :cond_0
    return-void
.end method

.method private shouldStartEditModeForLongPress()Z
    .locals 2

    .prologue
    .line 1248
    iget v0, p0, Landroid/widget/ListViewX;->mListItemMode:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showEditScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1285
    iget v0, p0, Landroid/widget/ListViewX;->mPullDistance:I

    if-eqz v0, :cond_0

    .line 1286
    invoke-direct {p0}, Landroid/widget/ListViewX;->startFinishAnimate()V

    .line 1288
    :cond_0
    iput-boolean v2, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    .line 1289
    invoke-virtual {p0, v1}, Landroid/widget/ListViewX;->setLongClickable(Z)V

    .line 1291
    iget-object v0, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    if-eqz v0, :cond_1

    .line 1293
    iget-object v0, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    invoke-virtual {v0, v1}, Landroid/widget/SlideView;->shrink(Z)V

    .line 1294
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    .line 1296
    :cond_1
    iput-boolean v1, p0, Landroid/widget/ListViewX;->mSlidingStarted:Z

    .line 1297
    invoke-direct {p0, v1}, Landroid/widget/ListViewX;->initCheckStatus(Z)V

    .line 1299
    iget v0, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1300
    iget-object v0, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    iget v1, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    aput-boolean v2, v0, v1

    .line 1302
    :cond_2
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    if-eqz v0, :cond_3

    .line 1303
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    iget-object v1, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    invoke-interface {v0, p0, v1}, Landroid/widget/ListViewX$OnEditModeStateListener;->onPrepareEditMode(Landroid/widget/ListView;[Z)V

    .line 1306
    :cond_3
    invoke-direct {p0}, Landroid/widget/ListViewX;->setEditModeAnimation()V

    .line 1307
    invoke-virtual {p0}, Landroid/widget/ListViewX;->invalidateViews()V

    .line 1308
    invoke-direct {p0}, Landroid/widget/ListViewX;->refreshDividers()V

    .line 1309
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    if-nez v0, :cond_4

    .line 1311
    new-instance v0, Landroid/widget/ListViewXEditBar;

    iget v1, p0, Landroid/widget/ListViewX;->mEditBarLayoutId:I

    invoke-direct {v0, p0, v1}, Landroid/widget/ListViewXEditBar;-><init>(Landroid/widget/ListView;I)V

    iput-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    .line 1313
    :cond_4
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    if-eqz v0, :cond_5

    .line 1317
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    iget-object v1, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    invoke-virtual {v1}, Landroid/widget/ListViewXEditBar;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/widget/ListViewX$OnEditModeStateListener;->prepareCustomizedTitle(Landroid/widget/ListView;Landroid/view/View;)V

    .line 1320
    :cond_5
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    iget-boolean v1, p0, Landroid/widget/ListViewX;->mShowDividerInEditMode:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListViewXEditBar;->showDivider(Z)V

    .line 1321
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    invoke-direct {p0}, Landroid/widget/ListViewX;->getCheckItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListViewXEditBar;->updateTitle(I)V

    .line 1323
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    invoke-virtual {v0}, Landroid/widget/ListViewXEditBar;->show()V

    .line 1325
    return-void
.end method

.method private startBatchPushInAnimation()V
    .locals 17

    .prologue
    .line 2054
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v10

    .line 2055
    .local v10, "startIndex":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListViewX;->getChildCount()I

    move-result v5

    .line 2057
    .local v5, "endIndex":I
    const/4 v11, 0x0

    .line 2058
    .local v11, "totalAnimCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v13

    sub-int v9, v12, v13

    .line 2059
    .local v9, "offset":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2060
    .local v3, "animationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v8, 0x0

    .line 2061
    .local v8, "moveItemCount":I
    move v7, v10

    .local v7, "k":I
    :goto_0
    if-ge v7, v5, :cond_4

    .line 2064
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    add-int v13, v7, v9

    aget-boolean v12, v12, v13

    if-eqz v12, :cond_1

    .line 2065
    add-int/lit8 v8, v8, 0x1

    .line 2061
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2069
    :cond_1
    if-eqz v8, :cond_0

    .line 2075
    const/4 v6, 0x0

    .line 2076
    .local v6, "index":I
    move v6, v7

    :goto_2
    if-ge v6, v5, :cond_2

    .line 2077
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    add-int v13, v6, v9

    aget-boolean v12, v12, v13

    if-eqz v12, :cond_3

    .line 2091
    :cond_2
    add-int/lit8 v7, v6, -0x1

    goto :goto_1

    .line 2082
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int v4, v12, v8

    .line 2084
    .local v4, "distance":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    const/4 v15, 0x1

    neg-int v0, v4

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2085
    .local v1, "anim":Landroid/animation/Animator;
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v12}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2086
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2087
    add-int/lit8 v11, v11, 0x1

    .line 2076
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2094
    .end local v1    # "anim":Landroid/animation/Animator;
    .end local v4    # "distance":I
    .end local v6    # "index":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "animPos":I
    :goto_3
    if-ge v2, v11, :cond_5

    .line 2095
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 2096
    .restart local v1    # "anim":Landroid/animation/Animator;
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 2094
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2098
    .end local v1    # "anim":Landroid/animation/Animator;
    :cond_5
    return-void
.end method

.method private startCountForLongPress(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 1256
    iget-boolean v1, p0, Landroid/widget/ListViewX;->mLongPressStarted:Z

    if-nez v1, :cond_0

    .line 1258
    iput-boolean v2, p0, Landroid/widget/ListViewX;->mLongPressStarted:Z

    .line 1259
    iget-object v1, p0, Landroid/widget/ListViewX;->mHandler:Landroid/widget/ListViewX$LongPressHandler;

    invoke-virtual {v1, v2}, Landroid/widget/ListViewX$LongPressHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1260
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1261
    iget-object v1, p0, Landroid/widget/ListViewX;->mHandler:Landroid/widget/ListViewX$LongPressHandler;

    sget-wide v2, Landroid/widget/ListViewX;->LONG_PRESS_TIMEOUT:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListViewX$LongPressHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1263
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private startEditModeEnterAnimation()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1976
    const/4 v7, 0x0

    .line 1977
    .local v7, "time":I
    const/4 v8, 0x0

    .line 1978
    .local v8, "totalVisibleItems":I
    const/4 v6, 0x0

    .line 1979
    .local v6, "startIndex":I
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getChildCount()I

    move-result v4

    .line 1982
    .local v4, "endIndex":I
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1983
    .local v2, "animSet":Landroid/animation/AnimatorSet;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1984
    .local v3, "animationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move v5, v6

    .local v5, "k":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 1986
    invoke-virtual {p0, v5}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    invoke-virtual {p0, v5}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x3

    int-to-float v12, v12

    aput v12, v11, v13

    const/4 v12, 0x0

    aput v12, v11, v14

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1987
    .local v0, "anim":Landroid/animation/Animator;
    iget v9, p0, Landroid/widget/ListViewX;->ITEM_BATCH_REMOVE_BASE_DURATION:I

    iget v10, p0, Landroid/widget/ListViewX;->ITEM_BATCH_REMOVE_OFFSET_DURATION:I

    mul-int/2addr v10, v7

    add-int/2addr v9, v10

    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1988
    new-array v9, v14, [Landroid/animation/Animator;

    aput-object v0, v9, v13

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1993
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1994
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1995
    add-int/lit8 v8, v8, 0x1

    .line 1996
    add-int/lit8 v7, v7, 0x1

    .line 1984
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1999
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    const/4 v1, 0x0

    .local v1, "animPos":I
    :goto_1
    if-ge v1, v8, :cond_1

    .line 2000
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 2001
    .restart local v0    # "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1999
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2003
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-void
.end method

.method private startEditModeSlidingCheck(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1436
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    .line 1437
    iput p1, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItem:I

    .line 1438
    iput p1, p0, Landroid/widget/ListViewX;->mEditModeLastCheckItem:I

    .line 1439
    iput-boolean v1, p0, Landroid/widget/ListViewX;->mLockScrollVertical:Z

    .line 1440
    sput-boolean v1, Landroid/widget/ListViewX;->mLockClickEventInEditMode:Z

    .line 1441
    iput v2, p0, Landroid/widget/ListViewX;->mLastSlidingDirection:I

    .line 1442
    return-void

    :cond_0
    move v0, v2

    .line 1436
    goto :goto_0
.end method

.method private startFinishAnimate()V
    .locals 3

    .prologue
    .line 2179
    iget-object v1, p0, Landroid/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2180
    iget-object v1, p0, Landroid/widget/ListViewX;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/widget/ListViewX;->mPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v0, v1

    .line 2181
    .local v0, "velocityY":I
    iget v1, p0, Landroid/widget/ListViewX;->mPullDistance:I

    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/ListViewX;->mPullDistance:I

    if-gez v1, :cond_3

    if-gez v0, :cond_3

    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x1388

    if-le v1, v2, :cond_3

    .line 2183
    iget-boolean v1, p0, Landroid/widget/ListViewX;->mFlinging:Z

    if-nez v1, :cond_2

    .line 2184
    invoke-direct {p0, v0}, Landroid/widget/ListViewX;->startFlingAnim(I)V

    .line 2192
    :cond_2
    :goto_0
    return-void

    .line 2187
    :cond_3
    iget v1, p0, Landroid/widget/ListViewX;->mPullDistance:I

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/ListViewX;->mFlinging:Z

    if-nez v1, :cond_2

    .line 2188
    invoke-direct {p0}, Landroid/widget/ListViewX;->createHeaderAnim()V

    .line 2189
    invoke-direct {p0}, Landroid/widget/ListViewX;->startHeaderAnim()V

    goto :goto_0
.end method

.method private startFlingAnim(I)V
    .locals 10
    .param p1, "velocity"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2540
    iput-boolean v8, p0, Landroid/widget/ListViewX;->mFlinging:Z

    .line 2541
    const/4 v3, 0x0

    .line 2543
    .local v3, "toDistance":I
    iget v4, p0, Landroid/widget/ListViewX;->mPullingMode:I

    if-ne v4, v9, :cond_0

    .line 2544
    iget v4, p0, Landroid/widget/ListViewX;->mPullDistance:I

    iget v5, p0, Landroid/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    mul-int/2addr v5, p1

    div-int/lit16 v5, v5, 0x1f40

    add-int v3, v4, v5

    .line 2549
    :goto_0
    iget v4, p0, Landroid/widget/ListViewX;->mPullDistance:I

    iput v4, p0, Landroid/widget/ListViewX;->mLastPosition:I

    .line 2550
    sget-object v4, Landroid/widget/ListViewX;->HEADER_HEIGHT:Landroid/util/Property;

    new-array v5, v9, [I

    iget v6, p0, Landroid/widget/ListViewX;->mPullDistance:I

    aput v6, v5, v7

    aput v3, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2551
    .local v2, "animatorGo":Landroid/animation/ObjectAnimator;
    iget v4, p0, Landroid/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2552
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2554
    sget-object v4, Landroid/widget/ListViewX;->HEADER_HEIGHT:Landroid/util/Property;

    new-array v5, v9, [I

    aput v3, v5, v7

    aput v7, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2555
    .local v1, "animatorBack":Landroid/animation/ObjectAnimator;
    iget v4, p0, Landroid/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2556
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2558
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2559
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    iget-object v4, p0, Landroid/widget/ListViewX;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2560
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2562
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2563
    return-void

    .line 2546
    .end local v0    # "animSet":Landroid/animation/AnimatorSet;
    .end local v1    # "animatorBack":Landroid/animation/ObjectAnimator;
    .end local v2    # "animatorGo":Landroid/animation/ObjectAnimator;
    :cond_0
    iget v4, p0, Landroid/widget/ListViewX;->mPullDistance:I

    iget v5, p0, Landroid/widget/ListViewX;->HEADER_BACK_ANIM_DURATION:I

    mul-int/2addr v5, p1

    div-int/lit16 v5, v5, 0x3a98

    add-int v3, v4, v5

    goto :goto_0
.end method

.method private startHeaderAnim()V
    .locals 1

    .prologue
    .line 2577
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListViewX;->mFlinging:Z

    .line 2578
    iget-object v0, p0, Landroid/widget/ListViewX;->mHeaderAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2579
    iget-object v0, p0, Landroid/widget/ListViewX;->mHeaderAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2581
    :cond_0
    return-void
.end method

.method private stopCountForLongPress()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1266
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListViewX;->mLongPressStarted:Z

    .line 1268
    iget-object v0, p0, Landroid/widget/ListViewX;->mHandler:Landroid/widget/ListViewX$LongPressHandler;

    invoke-virtual {v0, v1}, Landroid/widget/ListViewX$LongPressHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Landroid/widget/ListViewX;->mHandler:Landroid/widget/ListViewX$LongPressHandler;

    invoke-virtual {v0, v1}, Landroid/widget/ListViewX$LongPressHandler;->removeMessages(I)V

    .line 1271
    :cond_0
    return-void
.end method

.method private stopEditModeSlidingCheck()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1451
    iget-object v3, p0, Landroid/widget/ListViewX;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    .line 1452
    iget-object v3, p0, Landroid/widget/ListViewX;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1454
    :cond_0
    iget v3, p0, Landroid/widget/ListViewX;->mLastSlidingDirection:I

    if-eqz v3, :cond_2

    .line 1455
    iget v2, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItem:I

    .line 1456
    .local v2, "start":I
    iget v0, p0, Landroid/widget/ListViewX;->mEditModeLastCheckItem:I

    .line 1457
    .local v0, "end":I
    iget v3, p0, Landroid/widget/ListViewX;->mEditModeLastCheckItem:I

    iget v4, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItem:I

    if-ge v3, v4, :cond_1

    .line 1458
    iget v2, p0, Landroid/widget/ListViewX;->mEditModeLastCheckItem:I

    .line 1459
    iget v0, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItem:I

    .line 1464
    :cond_1
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1465
    iget-boolean v3, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    invoke-direct {p0, v1, v3}, Landroid/widget/ListViewX;->setSlideViewChecked(IZ)V

    .line 1464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1469
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "start":I
    :cond_2
    iget v3, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    iget-boolean v4, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    invoke-direct {p0, v3, v4}, Landroid/widget/ListViewX;->setSlideViewChecked(IZ)V

    .line 1471
    :cond_3
    iput-boolean v5, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItemState:Z

    .line 1472
    iput v6, p0, Landroid/widget/ListViewX;->mEditModeFirstCheckItem:I

    .line 1473
    iput v6, p0, Landroid/widget/ListViewX;->mEditModeLastCheckItem:I

    .line 1474
    sput-boolean v5, Landroid/widget/ListViewX;->mLockClickEventInEditMode:Z

    .line 1475
    iput-boolean v5, p0, Landroid/widget/ListViewX;->mLockScrollVertical:Z

    .line 1476
    iput v5, p0, Landroid/widget/ListViewX;->mLastSlidingDirection:I

    .line 1477
    return-void
.end method

.method private updateCheckStatus(Landroid/widget/SlideView;IZ)V
    .locals 7
    .param p1, "item"    # Landroid/widget/SlideView;
    .param p2, "position"    # I
    .param p3, "checked"    # Z

    .prologue
    .line 1374
    iget-object v0, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    aput-boolean p3, v0, p2

    .line 1375
    if-eqz p1, :cond_0

    .line 1376
    invoke-direct {p0, p1, p2}, Landroid/widget/ListViewX;->updateViewCheckState(Landroid/widget/SlideView;I)V

    .line 1378
    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    invoke-direct {p0}, Landroid/widget/ListViewX;->getCheckItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListViewXEditBar;->updateTitle(I)V

    .line 1379
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    if-eqz v0, :cond_1

    .line 1380
    iget-object v1, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    invoke-virtual {p1}, Landroid/widget/SlideView;->getId()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    aget-boolean v6, v0, p2

    move-object v2, p0

    move v3, p2

    invoke-interface/range {v1 .. v6}, Landroid/widget/ListViewX$OnEditModeStateListener;->onItemCheckedChanged(Landroid/widget/ListView;IJZ)V

    .line 1383
    :cond_1
    return-void
.end method

.method private updateEditModeSlidingStatus()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1480
    iget v0, p0, Landroid/widget/ListViewX;->mLastSlidingDirection:I

    .line 1481
    .local v0, "direction":I
    iget v2, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/widget/ListViewX;->mEditModeLastCheckItem:I

    iget v3, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    if-eq v2, v3, :cond_0

    .line 1482
    iget v2, p0, Landroid/widget/ListViewX;->mEditModeLastCheckItem:I

    iget v3, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    if-ge v2, v3, :cond_1

    .line 1483
    iput v1, p0, Landroid/widget/ListViewX;->mLastSlidingDirection:I

    .line 1487
    :goto_0
    iget v2, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    iput v2, p0, Landroid/widget/ListViewX;->mEditModeLastCheckItem:I

    .line 1489
    :cond_0
    if-eqz v0, :cond_2

    iget v2, p0, Landroid/widget/ListViewX;->mLastSlidingDirection:I

    if-eq v0, v2, :cond_2

    :goto_1
    return v1

    .line 1485
    :cond_1
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/ListViewX;->mLastSlidingDirection:I

    goto :goto_0

    .line 1489
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateHeaderView(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    const/4 v5, 0x0

    .line 1586
    iget-object v3, p0, Landroid/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v3

    add-int v0, v3, p1

    .line 1589
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getTop()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1590
    iget v3, p0, Landroid/widget/ListViewX;->mHeaderViewHeight:I

    mul-int/lit8 v1, v3, -0x1

    .line 1593
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/ListViewX;->mHeaderViewHeight:I

    add-int/2addr v3, v4

    if-lt v0, v3, :cond_1

    .line 1594
    const/4 v1, 0x0

    .line 1595
    .local v1, "paddingTop":I
    const/4 v2, 0x2

    .line 1601
    .local v2, "state":I
    :goto_0
    iget-object v3, p0, Landroid/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5, v1, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1602
    invoke-direct {p0, v2}, Landroid/widget/ListViewX;->updateHeaderViewState(I)V

    .line 1603
    return-void

    .line 1597
    .end local v1    # "paddingTop":I
    .end local v2    # "state":I
    :cond_1
    const/4 v2, 0x1

    .line 1598
    .restart local v2    # "state":I
    iget-object v3, p0, Landroid/widget/ListViewX;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    add-int v1, v3, p1

    .restart local v1    # "paddingTop":I
    goto :goto_0
.end method

.method private updateHeaderViewState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1611
    iget v0, p0, Landroid/widget/ListViewX;->mHeaderViewState:I

    if-eq v0, p1, :cond_0

    .line 1612
    iput p1, p0, Landroid/widget/ListViewX;->mHeaderViewState:I

    .line 1613
    iget-object v0, p0, Landroid/widget/ListViewX;->mSlideLoadingStateListener:Landroid/widget/ListViewX$OnSlideLoadingStateListener;

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Landroid/widget/ListViewX;->mSlideLoadingStateListener:Landroid/widget/ListViewX$OnSlideLoadingStateListener;

    iget v1, p0, Landroid/widget/ListViewX;->mHeaderViewState:I

    invoke-interface {v0, p0, v1}, Landroid/widget/ListViewX$OnSlideLoadingStateListener;->onSlideLoadingState(Landroid/view/View;I)V

    .line 1617
    :cond_0
    return-void
.end method

.method private updateViewCheckState(Landroid/widget/SlideView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/SlideView;
    .param p2, "position"    # I

    .prologue
    .line 1361
    iget-boolean v0, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 1364
    iget-object v0, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    aget-boolean v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/SlideView;->setViewChecked(Z)V

    .line 1366
    :cond_0
    return-void
.end method


# virtual methods
.method public bounceAnimation()V
    .locals 18

    .prologue
    .line 2118
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListViewX;->getChildCount()I

    move-result v12

    .line 2119
    .local v12, "maxCount":I
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2120
    .local v6, "animSetGroup":Landroid/animation/AnimatorSet;
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2121
    .local v5, "animSetGo":Landroid/animation/AnimatorSet;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2122
    .local v4, "animSetBack":Landroid/animation/AnimatorSet;
    const/4 v9, 0x0

    .line 2123
    .local v9, "builderGo":Landroid/animation/AnimatorSet$Builder;
    const/4 v8, 0x0

    .line 2124
    .local v8, "builderBack":Landroid/animation/AnimatorSet$Builder;
    const/4 v13, 0x0

    .line 2125
    .local v13, "time":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListViewX;->mBounceDistance:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListViewX;->ITEM_PULL_MAX_DISTANCE:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListViewX;->BOUNCE_ANIM_DISTANCE:I

    int-to-float v15, v15

    mul-float v7, v14, v15

    .line 2128
    .local v7, "bounceRange":F
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_0
    if-ge v11, v12, :cond_3

    .line 2129
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2130
    .local v10, "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 2131
    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    const/16 v16, 0x1

    neg-float v0, v7

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v10, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2132
    .local v3, "animGo":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListViewX;->BOUNCE_ANIM_RUSH_DURATION:I

    int-to-long v14, v14

    invoke-virtual {v3, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2133
    new-instance v14, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2135
    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    neg-float v0, v7

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v10, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2136
    .local v2, "animBack":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListViewX;->BOUNCE_ANIM_BACK_DURATION:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListViewX;->ITEM_ANIM_OFFSET_TIME:I

    mul-int/2addr v15, v13

    add-int/2addr v14, v15

    int-to-long v14, v14

    invoke-virtual {v2, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2137
    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2139
    if-nez v9, :cond_1

    .line 2140
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 2145
    :goto_1
    if-nez v8, :cond_2

    .line 2146
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    .line 2151
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 2128
    .end local v2    # "animBack":Landroid/animation/Animator;
    .end local v3    # "animGo":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2142
    .restart local v2    # "animBack":Landroid/animation/Animator;
    .restart local v3    # "animGo":Landroid/animation/Animator;
    :cond_1
    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 2148
    :cond_2
    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 2155
    .end local v2    # "animBack":Landroid/animation/Animator;
    .end local v3    # "animGo":Landroid/animation/Animator;
    .end local v10    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2156
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 2157
    return-void
.end method

.method closeEditScreen()V
    .locals 2

    .prologue
    .line 1092
    iget-boolean v0, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-eqz v0, :cond_1

    .line 1093
    iget-boolean v0, p0, Landroid/widget/ListViewX;->mLongClickable:Z

    invoke-virtual {p0, v0}, Landroid/widget/ListViewX;->setLongClickable(Z)V

    .line 1094
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    iget-object v1, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    invoke-interface {v0, p0, v1}, Landroid/widget/ListViewX$OnEditModeStateListener;->onExitEditMode(Landroid/widget/ListView;[Z)V

    .line 1098
    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    invoke-virtual {v0}, Landroid/widget/ListViewXEditBar;->close()V

    .line 1099
    invoke-direct {p0}, Landroid/widget/ListViewX;->exitEditMode()V

    .line 1101
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 955
    iget-boolean v0, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 958
    invoke-virtual {p0}, Landroid/widget/ListViewX;->closeEditScreen()V

    .line 959
    const/4 v0, 0x1

    .line 961
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 657
    invoke-direct {p0, p1}, Landroid/widget/ListViewX;->handleSlidingEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 666
    :cond_0
    iput v2, p0, Landroid/widget/ListViewX;->mTouchMode:I

    .line 684
    :cond_1
    :goto_0
    return v0

    .line 670
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/ListViewX;->handleOnTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 679
    :cond_3
    iput v2, p0, Landroid/widget/ListViewX;->mTouchMode:I

    goto :goto_0

    .line 684
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCheckedItemCount()I
    .locals 2

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "count":I
    invoke-direct {p0}, Landroid/widget/ListViewX;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    if-eqz v1, :cond_0

    .line 438
    invoke-direct {p0}, Landroid/widget/ListViewX;->getCheckItemCount()I

    move-result v0

    .line 440
    :cond_0
    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 5

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "array":Landroid/util/SparseBooleanArray;
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCheckedItemCount()I

    move-result v1

    .line 447
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 448
    new-instance v0, Landroid/util/SparseBooleanArray;

    .end local v0    # "array":Landroid/util/SparseBooleanArray;
    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 449
    .restart local v0    # "array":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 450
    iget-object v3, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    .line 451
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 449
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method getCustomizedLeftTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/widget/ListViewX;->mCustomizedLeftTextColorsInEditMode:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getCustomizedRightTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Landroid/widget/ListViewX;->mCustomizedRightTextColorsInEditMode:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getEditModeCustomizedTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "checkedItemCount"    # I

    .prologue
    .line 1120
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/ListViewX$OnEditModeStateListener;->getCustomizedTitle(Landroid/widget/ListView;I)Ljava/lang/String;

    move-result-object v0

    .line 1123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 460
    iget-object v0, p0, Landroid/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 465
    iget-object v0, p0, Landroid/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Landroid/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getListItemMode()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Landroid/widget/ListViewX;->mListItemMode:I

    return v0
.end method

.method protected getOriginView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 476
    move-object v0, p1

    .line 477
    .local v0, "v":Landroid/view/View;
    instance-of v1, p1, Landroid/widget/SlideView;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 478
    check-cast v1, Landroid/widget/SlideView;

    invoke-virtual {v1}, Landroid/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 479
    if-nez v0, :cond_0

    .line 480
    move-object v0, p1

    .line 483
    :cond_0
    return-object v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Landroid/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    .line 347
    :goto_0
    return-object v0

    .line 344
    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/ListViewX$XAdatper;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Landroid/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/ListViewX$XAdatper;

    invoke-virtual {v0}, Landroid/widget/ListViewX$XAdatper;->getOriginAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Landroid/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 0

    .prologue
    .line 1084
    invoke-super {p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1086
    invoke-direct {p0}, Landroid/widget/ListViewX;->initSlidingParams()V

    .line 1087
    invoke-direct {p0}, Landroid/widget/ListViewX;->resetCheckStatus()V

    .line 1088
    return-void
.end method

.method public hideDivider(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    .line 1903
    iput-boolean p1, p0, Landroid/widget/ListViewX;->mHideDivider:Z

    .line 1904
    invoke-virtual {p0}, Landroid/widget/ListViewX;->requestLayout()V

    .line 1905
    invoke-virtual {p0}, Landroid/widget/ListViewX;->invalidate()V

    .line 1906
    return-void
.end method

.method public isItemChecked(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 942
    iget-boolean v1, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 943
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v0

    .line 945
    .local v0, "view":Landroid/widget/SlideView;
    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {v0}, Landroid/widget/SlideView;->isViewChecked()Z

    move-result v1

    .line 949
    .end local v0    # "view":Landroid/widget/SlideView;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 901
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 902
    invoke-direct {p0}, Landroid/widget/ListViewX;->registerStatusbarClickBroadCast()V

    .line 903
    invoke-virtual {p0}, Landroid/widget/ListViewX;->isLongClickable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ListViewX;->mLongClickable:Z

    .line 904
    iget-boolean v0, p0, Landroid/widget/ListViewX;->mPendingEditMode:Z

    if-eqz v0, :cond_0

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListViewX;->mPendingEditMode:Z

    .line 906
    invoke-direct {p0}, Landroid/widget/ListViewX;->showEditScreen()V

    .line 908
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 842
    iget-object v1, p0, Landroid/widget/ListViewX;->mItemClickerListener:Landroid/widget/ListViewX$OnSlideOutItemClickListener;

    if-eqz v1, :cond_1

    .line 843
    move-object v0, p1

    .line 844
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    invoke-virtual {v1}, Landroid/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 847
    :cond_0
    iget-object v1, p0, Landroid/widget/ListViewX;->mItemClickerListener:Landroid/widget/ListViewX$OnSlideOutItemClickListener;

    iget v2, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v1, v0, v2, v4, v5}, Landroid/widget/ListViewX$OnSlideOutItemClickListener;->onSlideOutItemClick(Landroid/view/View;IJ)V

    .line 850
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 912
    invoke-virtual {p0}, Landroid/widget/ListViewX;->closeEditScreen()V

    .line 913
    iget-object v0, p0, Landroid/widget/ListViewX;->mStatusbarClickReceiver:Landroid/widget/ListViewX$StatusBarClickReceiver;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Landroid/widget/ListViewX;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/ListViewX;->mStatusbarClickReceiver:Landroid/widget/ListViewX$StatusBarClickReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 915
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListViewX;->mStatusbarClickReceiver:Landroid/widget/ListViewX$StatusBarClickReceiver;

    .line 917
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 918
    return-void
.end method

.method public onEdgeReached(Landroid/widget/AbsListView;II)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "delta"    # I
    .param p3, "velocity"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 1033
    iget-boolean v1, p0, Landroid/widget/ListViewX;->mPullAnimEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/ListViewX;->mLockScrollVertical:Z

    if-nez v1, :cond_2

    .line 1034
    invoke-direct {p0, p3}, Landroid/widget/ListViewX;->getScaledDistance(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ListViewX;->mScaledDistance:I

    .line 1035
    const-string v1, "ListViewX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaledDistance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/ListViewX;->mScaledDistance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " velocity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget-object v1, p0, Landroid/widget/ListViewX;->mScaleAnimsSet:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_0

    .line 1038
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ListViewX;->mScaleItemHeightAnim1:Landroid/animation/ValueAnimator;

    .line 1039
    iget-object v1, p0, Landroid/widget/ListViewX;->mScaleItemHeightAnim1:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1040
    iget-object v1, p0, Landroid/widget/ListViewX;->mScaleItemHeightAnim1:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1041
    iget-object v1, p0, Landroid/widget/ListViewX;->mScaleItemHeightAnim1:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/widget/ListViewX$1;

    invoke-direct {v2, p0, p2}, Landroid/widget/ListViewX$1;-><init>(Landroid/widget/ListViewX;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1049
    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ListViewX;->mScaleItemHeightAnim2:Landroid/animation/ValueAnimator;

    .line 1050
    iget-object v1, p0, Landroid/widget/ListViewX;->mScaleItemHeightAnim2:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1051
    iget-object v1, p0, Landroid/widget/ListViewX;->mScaleItemHeightAnim2:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1052
    iget-object v1, p0, Landroid/widget/ListViewX;->mScaleItemHeightAnim2:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/widget/ListViewX$2;

    invoke-direct {v2, p0, p2}, Landroid/widget/ListViewX$2;-><init>(Landroid/widget/ListViewX;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1060
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroid/widget/ListViewX;->mScaleAnimsSet:Landroid/animation/AnimatorSet;

    .line 1061
    iget-object v1, p0, Landroid/widget/ListViewX;->mScaleAnimsSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Landroid/widget/ListViewX;->mScaleItemHeightAnim1:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ListViewX;->mScaleItemHeightAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1064
    :cond_0
    const/4 v0, 0x1

    .line 1065
    .local v0, "boundaryVal":I
    if-gez p2, :cond_1

    .line 1067
    const/4 v0, -0x1

    .line 1070
    :cond_1
    iget-object v1, p0, Landroid/widget/ListViewX;->mScaleItemHeightAnim1:Landroid/animation/ValueAnimator;

    new-array v2, v4, [F

    aput v7, v2, v5

    int-to-float v3, v0

    aput v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1071
    iget-object v1, p0, Landroid/widget/ListViewX;->mScaleItemHeightAnim2:Landroid/animation/ValueAnimator;

    new-array v2, v4, [F

    int-to-float v3, v0

    aput v3, v2, v5

    aput v7, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1073
    iput-boolean v6, p0, Landroid/widget/ListViewX;->mFlinging:Z

    .line 1074
    iput v5, p0, Landroid/widget/ListViewX;->mLastPosition:I

    .line 1075
    invoke-direct {p0, p2}, Landroid/widget/ListViewX;->setPullingMode(I)V

    .line 1077
    iget-object v1, p0, Landroid/widget/ListViewX;->mScaleAnimsSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Landroid/widget/ListViewX;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1078
    iget-object v1, p0, Landroid/widget/ListViewX;->mScaleAnimsSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1080
    .end local v0    # "boundaryVal":I
    :cond_2
    return-void

    .line 1038
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1049
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pressed"    # Z

    .prologue
    .line 880
    iget v3, p0, Landroid/widget/ListViewX;->mCurrentPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 885
    iget-boolean v3, p0, Landroid/widget/ListViewX;->mSlidingStarted:Z

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    iget v3, p0, Landroid/widget/ListViewX;->mCurrentPosition:I

    add-int/lit8 v2, v3, -0x1

    .line 889
    .local v2, "itemPrevious":I
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 890
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 891
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v1

    .line 892
    .local v1, "item":Landroid/widget/SlideView;
    if-eqz v1, :cond_0

    .line 893
    invoke-virtual {v1, p2}, Landroid/widget/SlideView;->setDividerState(Z)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1002
    iget-object v0, p0, Landroid/widget/ListViewX;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Landroid/widget/ListViewX;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1005
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 976
    iget v0, p0, Landroid/widget/ListViewX;->mScrollingState:I

    if-eq v0, p2, :cond_0

    .line 977
    iput p2, p0, Landroid/widget/ListViewX;->mScrollingState:I

    .line 979
    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Landroid/widget/ListViewX;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 982
    :cond_1
    return-void
.end method

.method public onSlide(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "status"    # I

    .prologue
    .line 854
    iget-boolean v0, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-nez v0, :cond_0

    .line 857
    iput p2, p0, Landroid/widget/ListViewX;->mSlidingStatus:I

    .line 858
    packed-switch p2, :pswitch_data_0

    .line 869
    :goto_0
    iget-object v0, p0, Landroid/widget/ListViewX;->mItemSlideListener:Landroid/widget/ListViewX$OnSlideListener;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Landroid/widget/ListViewX;->mItemSlideListener:Landroid/widget/ListViewX$OnSlideListener;

    check-cast p1, Landroid/widget/SlideView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    invoke-interface {v0, v1, v2, p2}, Landroid/widget/ListViewX$OnSlideListener;->onSlide(Landroid/view/View;II)V

    .line 876
    :cond_0
    return-void

    .line 860
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ListViewX;->mLongClickable:Z

    invoke-virtual {p0, v0}, Landroid/widget/ListViewX;->setLongClickable(Z)V

    goto :goto_0

    .line 864
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/ListViewX;->stopCountForLongPress()V

    .line 865
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListViewX;->setLongClickable(Z)V

    goto :goto_0

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 923
    iget-object v0, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SlideView;->shrink(Z)V

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListViewX;->mSlidingView:Landroid/widget/SlideView;

    .line 928
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V

    .line 929
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v1, 0x0

    .line 818
    invoke-direct {p0, p2}, Landroid/widget/ListViewX;->getListViewPosition(I)I

    move-result v0

    .line 819
    .local v0, "pos":I
    iget-boolean v2, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-nez v2, :cond_3

    .line 821
    iget-boolean v2, p0, Landroid/widget/ListViewX;->mSlidingStarted:Z

    if-eqz v2, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v1

    .line 824
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SlideView;->isViewFixed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 828
    :cond_2
    invoke-super {p0, p1, v0, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0

    .line 830
    :cond_3
    sget-boolean v2, Landroid/widget/ListViewX;->mLockClickEventInEditMode:Z

    if-eqz v2, :cond_4

    .line 831
    sput-boolean v1, Landroid/widget/ListViewX;->mLockClickEventInEditMode:Z

    goto :goto_0

    .line 833
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/ListViewX;->setSlideViewChecked(I)V

    goto :goto_0
.end method

.method selectAllListItem(Z)V
    .locals 5
    .param p1, "select"    # Z

    .prologue
    .line 1104
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v0

    .line 1105
    .local v0, "count":I
    invoke-direct {p0, p1}, Landroid/widget/ListViewX;->initCheckStatus(Z)V

    .line 1106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1108
    invoke-virtual {p0, v1}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/ListViewX;->getSlideView(Landroid/view/View;)Landroid/widget/SlideView;

    move-result-object v2

    .line 1109
    .local v2, "view":Landroid/widget/SlideView;
    if-eqz v2, :cond_0

    .line 1110
    invoke-virtual {v2, p1}, Landroid/widget/SlideView;->setViewChecked(Z)V

    .line 1106
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1113
    .end local v2    # "view":Landroid/widget/SlideView;
    :cond_1
    iget-object v3, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    invoke-direct {p0}, Landroid/widget/ListViewX;->getCheckItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListViewXEditBar;->updateTitle(I)V

    .line 1114
    iget-object v3, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    if-eqz v3, :cond_2

    .line 1115
    iget-object v3, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    iget-object v4, p0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    invoke-interface {v3, p0, v4}, Landroid/widget/ListViewX$OnEditModeStateListener;->onMultiItemCheckedChanged(Landroid/widget/ListView;[Z)V

    .line 1117
    :cond_2
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 60
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/ListViewX;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 336
    new-instance v0, Landroid/widget/ListViewX$XAdatper;

    invoke-direct {v0, p0, p1}, Landroid/widget/ListViewX$XAdatper;-><init>(Landroid/widget/ListViewX;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Landroid/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    .line 337
    iget-object v0, p0, Landroid/widget/ListViewX;->mAdapter:Landroid/widget/ListAdapter;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 338
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 470
    invoke-super {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 471
    iput-object p1, p0, Landroid/widget/ListViewX;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 472
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    .line 934
    iget-boolean v0, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 935
    invoke-direct {p0, p1, p2}, Landroid/widget/ListViewX;->setSlideViewChecked(IZ)V

    .line 937
    :cond_0
    return-void
.end method

.method public setLeftButtonEnabledInEditMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 411
    invoke-direct {p0}, Landroid/widget/ListViewX;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    invoke-virtual {v0, p1}, Landroid/widget/ListViewXEditBar;->setLeftButtonEnabled(Z)V

    .line 414
    :cond_0
    return-void
.end method

.method public setLeftTextColorInEditMode(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 393
    invoke-direct {p0}, Landroid/widget/ListViewX;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iput-object p1, p0, Landroid/widget/ListViewX;->mCustomizedLeftTextColorsInEditMode:Landroid/content/res/ColorStateList;

    .line 395
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    iget-object v1, p0, Landroid/widget/ListViewX;->mCustomizedLeftTextColorsInEditMode:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ListViewXEditBar;->setLeftTextColor(Landroid/content/res/ColorStateList;)V

    .line 399
    :cond_0
    return-void
.end method

.method public setListItemBackgroundColor(II)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "pressedColor"    # I

    .prologue
    .line 427
    iput p1, p0, Landroid/widget/ListViewX;->mCustomizedListItemBgColor:I

    .line 428
    iput p2, p0, Landroid/widget/ListViewX;->mCustomizedListItemBgPressedColor:I

    .line 429
    iget-object v0, p0, Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;

    iget v1, p0, Landroid/widget/ListViewX;->mCustomizedListItemBgColor:I

    iget v2, p0, Landroid/widget/ListViewX;->mCustomizedListItemBgPressedColor:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/SlideView$SlideViewParams;->setBgColor(II)V

    .line 430
    return-void
.end method

.method public setListItemMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 316
    iget v1, p0, Landroid/widget/ListViewX;->mListItemMode:I

    if-ne p1, v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iput p1, p0, Landroid/widget/ListViewX;->mListItemMode:I

    .line 320
    iget-object v1, p0, Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;

    if-eqz v1, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "width":I
    invoke-direct {p0}, Landroid/widget/ListViewX;->isSlideRightMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    iget-object v1, p0, Landroid/widget/ListViewX;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 326
    :cond_2
    iget-object v1, p0, Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;

    invoke-virtual {v1, v0}, Landroid/widget/SlideView$SlideViewParams;->setLeftSpaceWidth(I)V

    goto :goto_0
.end method

.method public setOnEditModeStateListener(Landroid/widget/ListViewX$OnEditModeStateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ListViewX$OnEditModeStateListener;

    .prologue
    .line 364
    iput-object p1, p0, Landroid/widget/ListViewX;->mEditModeListener:Landroid/widget/ListViewX$OnEditModeStateListener;

    .line 365
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 967
    iput-object p1, p0, Landroid/widget/ListViewX;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 968
    invoke-virtual {p0}, Landroid/widget/ListViewX;->invokeOnItemScrollListener()V

    .line 969
    return-void
.end method

.method public setOnSlideListener(Landroid/widget/ListViewX$OnSlideListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ListViewX$OnSlideListener;

    .prologue
    .line 360
    iput-object p1, p0, Landroid/widget/ListViewX;->mItemSlideListener:Landroid/widget/ListViewX$OnSlideListener;

    .line 361
    return-void
.end method

.method public setOnSlideLoadingStateListener(Landroid/widget/ListViewX$OnSlideLoadingStateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ListViewX$OnSlideLoadingStateListener;

    .prologue
    .line 368
    iput-object p1, p0, Landroid/widget/ListViewX;->mSlideLoadingStateListener:Landroid/widget/ListViewX$OnSlideLoadingStateListener;

    .line 369
    return-void
.end method

.method public setOnSlideOutItemClickListener(Landroid/widget/ListViewX$OnSlideOutItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ListViewX$OnSlideOutItemClickListener;

    .prologue
    .line 356
    iput-object p1, p0, Landroid/widget/ListViewX;->mItemClickerListener:Landroid/widget/ListViewX$OnSlideOutItemClickListener;

    .line 357
    return-void
.end method

.method public setPullAnimEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1899
    iput-boolean p1, p0, Landroid/widget/ListViewX;->mPullAnimEnabled:Z

    .line 1900
    return-void
.end method

.method public setRightButtonEnabledInEditMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 417
    invoke-direct {p0}, Landroid/widget/ListViewX;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    invoke-virtual {v0, p1}, Landroid/widget/ListViewXEditBar;->setRightButtonEnabled(Z)V

    .line 420
    :cond_0
    return-void
.end method

.method public setRightTextColorInEditMode(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 402
    invoke-direct {p0}, Landroid/widget/ListViewX;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iput-object p1, p0, Landroid/widget/ListViewX;->mCustomizedRightTextColorsInEditMode:Landroid/content/res/ColorStateList;

    .line 404
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Landroid/widget/ListViewX;->mEditBar:Landroid/widget/ListViewXEditBar;

    iget-object v1, p0, Landroid/widget/ListViewX;->mCustomizedRightTextColorsInEditMode:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ListViewXEditBar;->setRightTextColor(Landroid/content/res/ColorStateList;)V

    .line 408
    :cond_0
    return-void
.end method

.method public setSlideModeText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;

    invoke-virtual {v0, p1}, Landroid/widget/SlideView$SlideViewParams;->setText(Ljava/lang/CharSequence;)V

    .line 353
    return-void
.end method

.method public showDividerInEditMode(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 423
    iput-boolean p1, p0, Landroid/widget/ListViewX;->mShowDividerInEditMode:Z

    .line 424
    return-void
.end method

.method public startAddAnimation(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x0

    .line 1938
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getLastVisiblePosition()I

    move-result v6

    if-ge p1, v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 1958
    :cond_0
    return-void

    .line 1942
    :cond_1
    const/4 v5, 0x0

    .line 1944
    .local v5, "time":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1945
    .local v1, "animationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v6

    add-int/2addr v6, p1

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v7

    sub-int v4, v6, v7

    .line 1946
    .local v4, "startIndex":I
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getChildCount()I

    move-result v2

    .line 1947
    .local v2, "endIndex":I
    move v3, v4

    .local v3, "k":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1948
    add-int/lit8 v5, v5, 0x1

    .line 1949
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v3}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-direct {v0, v8, v8, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1950
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1951
    iget v6, p0, Landroid/widget/ListViewX;->ITEM_BASE_ANIM_DURATION:I

    iget v7, p0, Landroid/widget/ListViewX;->ITEM_ANIM_OFFSET_TIME:I

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1952
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1947
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1955
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2
    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_0

    .line 1956
    invoke-virtual {p0, v3}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    sub-int v6, v3, v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/animation/Animation;

    invoke-virtual {v7, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1955
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public startBatchRemoveAnimation()V
    .locals 18

    .prologue
    .line 2006
    const/4 v11, 0x0

    .line 2007
    .local v11, "time":I
    const/4 v12, 0x0

    .line 2008
    .local v12, "totalVisibleItems":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v10

    .line 2009
    .local v10, "startIndex":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListViewX;->getChildCount()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListViewX;->getFooterViewsCount()I

    move-result v14

    sub-int v7, v13, v14

    .line 2012
    .local v7, "endIndex":I
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2013
    .local v5, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v14

    sub-int v9, v13, v14

    .line 2014
    .local v9, "offset":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2015
    .local v6, "animationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move v8, v10

    .local v8, "k":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 2018
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListViewX;->mCheckedItems:[Z

    add-int v14, v8, v9

    aget-boolean v13, v13, v14

    if-eqz v13, :cond_0

    .line 2019
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2020
    .local v2, "anim":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListViewX;->ITEM_BATCH_REMOVE_BASE_DURATION:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListViewX;->ITEM_BATCH_REMOVE_OFFSET_DURATION:I

    mul-int/2addr v14, v11

    add-int/2addr v13, v14

    int-to-long v14, v13

    invoke-virtual {v2, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2021
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-virtual {v5, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2023
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    fill-array-data v15, :array_0

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2024
    .local v3, "animAlpha":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListViewX;->ITEM_BATCH_REMOVE_BASE_DURATION:I

    int-to-long v14, v13

    invoke-virtual {v3, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2025
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-virtual {v5, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2026
    new-instance v13, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v5, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2027
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2028
    add-int/lit8 v12, v12, 0x1

    .line 2029
    add-int/lit8 v11, v11, 0x1

    .line 2015
    .end local v2    # "anim":Landroid/animation/Animator;
    .end local v3    # "animAlpha":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2033
    :cond_1
    if-nez v12, :cond_2

    .line 2044
    :goto_1
    return-void

    .line 2038
    :cond_2
    const/4 v4, 0x0

    .local v4, "animPos":I
    :goto_2
    if-ge v4, v12, :cond_3

    .line 2039
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 2040
    .restart local v2    # "anim":Landroid/animation/Animator;
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 2038
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2043
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListViewX;->mHandler:Landroid/widget/ListViewX$LongPressHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListViewX;->mBatchPushEvent:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListViewX;->ITEM_BATCH_REMOVE_BASE_DURATION:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListViewX;->ITEM_BATCH_REMOVE_OFFSET_DURATION:I

    move/from16 v16, v0

    mul-int v16, v16, v11

    add-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/widget/ListViewX$LongPressHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2023
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public startEditMode()V
    .locals 1

    .prologue
    .line 373
    invoke-direct {p0}, Landroid/widget/ListViewX;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-boolean v0, p0, Landroid/widget/ListViewX;->mInEditMode:Z

    if-nez v0, :cond_0

    .line 375
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListViewX;->mFocusedPosition:I

    .line 376
    invoke-virtual {p0}, Landroid/widget/ListViewX;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-direct {p0}, Landroid/widget/ListViewX;->showEditScreen()V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListViewX;->mPendingEditMode:Z

    goto :goto_0
.end method

.method public startRemoveAnimation(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x0

    .line 1909
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getLastVisiblePosition()I

    move-result v6

    if-ge p1, v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 1935
    :cond_0
    return-void

    .line 1914
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1915
    .local v1, "animationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    const/4 v5, 0x0

    .line 1916
    .local v5, "time":I
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v6

    add-int/2addr v6, p1

    invoke-virtual {p0}, Landroid/widget/ListViewX;->getFirstVisiblePosition()I

    move-result v7

    sub-int v4, v6, v7

    .line 1917
    .local v4, "startIndex":I
    invoke-virtual {p0}, Landroid/widget/ListViewX;->getChildCount()I

    move-result v2

    .line 1922
    .local v2, "endIndex":I
    move v3, v4

    .local v3, "k":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1923
    add-int/lit8 v5, v5, 0x1

    .line 1925
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v3}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v8, v8, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1927
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1928
    iget v6, p0, Landroid/widget/ListViewX;->ITEM_BASE_ANIM_DURATION:I

    iget v7, p0, Landroid/widget/ListViewX;->ITEM_ANIM_OFFSET_TIME:I

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1929
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1922
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1932
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2
    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_0

    .line 1933
    invoke-virtual {p0, v3}, Landroid/widget/ListViewX;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    sub-int v6, v3, v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/animation/Animation;

    invoke-virtual {v7, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1932
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public stopEditMode()V
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Landroid/widget/ListViewX;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Landroid/widget/ListViewX;->closeEditScreen()V

    .line 390
    :cond_0
    return-void
.end method
