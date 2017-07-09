.class public Lcom/android/internal/widget/DraggableGridViewPager;
.super Landroid/view/ViewGroup;
.source "DraggableGridViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DraggableGridViewPager$SavedState;,
        Lcom/android/internal/widget/DraggableGridViewPager$OnRearrangeListener;,
        Lcom/android/internal/widget/DraggableGridViewPager$SimpleOnPageChangeListener;,
        Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x96L

.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEFAULT_COL_COUNT:I = 0x4

.field private static final DEFAULT_GRID_GAP:I = 0x0

.field private static final DEFAULT_GRID_ITEM_HEIGHT:I = 0x5a

.field private static final DEFAULT_GRID_ITEM_WIDTH:I = 0x5a

.field private static final DEFAULT_LAND_COL_COUNT:I = 0x4

.field private static final DEFAULT_LAND_PADDING_LEFT:I = 0x32

.field private static final DEFAULT_LAND_PADDING_RIGHT:I = 0x32

.field private static final DEFAULT_LAND_ROW_COUNT:I = 0x1

.field private static final DEFAULT_ROW_COUNT:I = 0x2

.field private static final EDGE_HOLD_DURATION:J = 0x4b0L

.field private static final EDGE_LEFT:I = 0x0

.field private static final EDGE_RIGHT:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final LONG_CLICK_DURATION:J = 0x3e8L

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DraggableGridViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/widget/Adapter;

.field private mCalledSuper:Z

.field private mCloseEnough:I

.field private mColCount:I

.field private mCurItem:I

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDensity:F

.field private mEdgeSize:I

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mFlingDistance:I

.field private mGridGap:I

.field private mGridGapLand:I

.field private mGridGapPort:I

.field private mGridHeight:I

.field private mGridWidth:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mItemHeight:I

.field private mItemPaddingBottom:I

.field private mItemPaddingLeft:I

.field private mItemPaddingRight:I

.field private mItemPaddingTop:I

.field private mItemWidth:I

.field private mLastDownTime:J

.field private mLastDragged:I

.field private mLastEdge:I

.field private mLastEdgeTime:J

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastPosition:I

.field private mLastTarget:I

.field private mMaxOverScrollSize:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnPageChangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

.field private mOnRearrangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnRearrangeListener;

.field private mOrientation:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPageCount:I

.field private mPageSize:I

.field private mRowCount:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private newPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/internal/widget/DraggableGridViewPager$1;

    invoke-direct {v0}, Lcom/android/internal/widget/DraggableGridViewPager$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/DraggableGridViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DraggableGridViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/DraggableGridViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 280
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    .line 110
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    .line 111
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    .line 140
    new-instance v0, Lcom/android/internal/widget/DraggableGridViewPager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DraggableGridViewPager$2;-><init>(Lcom/android/internal/widget/DraggableGridViewPager;)V

    iput-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 164
    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    .line 173
    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastPosition:I

    .line 174
    iput-wide v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDownTime:J

    .line 177
    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    .line 178
    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastTarget:I

    .line 181
    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastEdge:I

    .line 182
    iput-wide v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastEdgeTime:J

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->newPositions:Ljava/util/ArrayList;

    .line 187
    iput v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOrientation:I

    .line 194
    new-instance v0, Lcom/android/internal/widget/DraggableGridViewPager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DraggableGridViewPager$3;-><init>(Lcom/android/internal/widget/DraggableGridViewPager;)V

    iput-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 200
    iput v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScrollState:I

    .line 283
    invoke-direct {p0, p2}, Lcom/android/internal/widget/DraggableGridViewPager;->initContextAttr(Landroid/util/AttributeSet;)V

    .line 285
    invoke-direct {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->initDraggableGridViewPager()V

    .line 286
    return-void
.end method

.method private static DEBUG_LOG(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/DraggableGridViewPager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/DraggableGridViewPager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->dataSetChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/DraggableGridViewPager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/DraggableGridViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DraggableGridViewPager;->setScrollState(I)V

    return-void
.end method

.method private animateDragged()V
    .locals 11

    .prologue
    .line 1278
    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    if-ltz v1, :cond_0

    .line 1279
    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1281
    .local v10, "v":Landroid/view/View;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v9, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1283
    .local v9, "r":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x14

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x14

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 1284
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1287
    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->top:I

    iget v3, v9, Landroid/graphics/Rect;->right:I

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1289
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1290
    .local v8, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f68bac7    # 0.9091f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f68bac7    # 0.9091f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1292
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1293
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1294
    .local v7, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v7, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1296
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1297
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1298
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 1299
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1301
    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    .line 1302
    invoke-virtual {v10, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1304
    .end local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    .end local v7    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v8    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v9    # "r":Landroid/graphics/Rect;
    .end local v10    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private animateGap(I)V
    .locals 12
    .param p1, "target"    # I

    .prologue
    const/4 v11, 0x1

    .line 1307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 1308
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1309
    .local v6, "v":Landroid/view/View;
    iget v7, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    if-ne v0, v7, :cond_1

    .line 1307
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1313
    :cond_1
    move v1, v0

    .line 1314
    .local v1, "newPos":I
    iget v7, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    if-ge v7, p1, :cond_4

    iget v7, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    add-int/lit8 v7, v7, 0x1

    if-lt v0, v7, :cond_4

    if-gt v0, p1, :cond_4

    .line 1315
    add-int/lit8 v1, v1, -0x1

    .line 1320
    :cond_2
    :goto_2
    move v3, v0

    .line 1321
    .local v3, "oldPos":I
    iget-object v7, p0, Lcom/android/internal/widget/DraggableGridViewPager;->newPositions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 1322
    iget-object v7, p0, Lcom/android/internal/widget/DraggableGridViewPager;->newPositions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1325
    :cond_3
    if-eq v3, v1, :cond_0

    .line 1330
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animateGap from="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", to="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 1331
    invoke-direct {p0, v3}, Lcom/android/internal/widget/DraggableGridViewPager;->getRectByPosition(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 1332
    .local v4, "oldRect":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->getRectByPosition(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 1333
    .local v2, "newRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1334
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1336
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1338
    .local v5, "translate":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v8, 0x96

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1339
    invoke-virtual {v5, v11}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 1340
    invoke-virtual {v5, v11}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1341
    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 1342
    invoke-virtual {v6, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1344
    iget-object v7, p0, Lcom/android/internal/widget/DraggableGridViewPager;->newPositions:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1316
    .end local v2    # "newRect":Landroid/graphics/Rect;
    .end local v3    # "oldPos":I
    .end local v4    # "oldRect":Landroid/graphics/Rect;
    .end local v5    # "translate":Landroid/view/animation/TranslateAnimation;
    :cond_4
    iget v7, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    if-ge p1, v7, :cond_2

    if-lt v0, p1, :cond_2

    iget v7, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    if-ge v0, v7, :cond_2

    .line 1317
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1346
    .end local v1    # "newPos":I
    .end local v6    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private completeScroll(Z)V
    .locals 6
    .param p1, "postEvents"    # Z

    .prologue
    .line 722
    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScrollState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 724
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/widget/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    .line 725
    iget-object v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 726
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getScrollX()I

    move-result v0

    .line 727
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getScrollY()I

    move-result v1

    .line 728
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 729
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 730
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 731
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/DraggableGridViewPager;->scrollTo(II)V

    .line 733
    :cond_1
    if-eqz p1, :cond_3

    .line 735
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->postInvalidateOnAnimation()V

    .line 740
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    :goto_0
    return-void

    .line 737
    .restart local v0    # "oldX":I
    .restart local v1    # "oldY":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private dataSetChanged()V
    .locals 5

    .prologue
    .line 1162
    const-string v3, "dataSetChanged ============= "

    invoke-static {v3}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 1163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1164
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1165
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3, v1, v0, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1166
    .local v2, "newChild":Landroid/view/View;
    if-eq v2, v0, :cond_0

    .line 1167
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->removeViewAt(I)V

    .line 1168
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->addView(Landroid/view/View;I)V

    .line 1163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1171
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "newChild":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildCount()I

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1172
    iget-object v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1173
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DraggableGridViewPager;->addView(Landroid/view/View;)V

    .line 1171
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1175
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 1176
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/DraggableGridViewPager;->removeViewAt(I)V

    goto :goto_2

    .line 1178
    :cond_3
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 4
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    .line 1111
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mFlingDistance:I

    if-le v2, v3, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mMinimumVelocity:I

    if-le v2, v3, :cond_1

    .line 1113
    if-lez p3, :cond_0

    move v0, p1

    .line 1118
    .local v0, "targetPage":I
    :goto_0
    return v0

    .line 1113
    .end local v0    # "targetPage":I
    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 1115
    :cond_1
    iget v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    if-lt p1, v2, :cond_2

    const v1, 0x3ecccccd    # 0.4f

    .line 1116
    .local v1, "truncator":F
    :goto_1
    int-to-float v2, p1

    add-float/2addr v2, p2

    add-float/2addr v2, v1

    float-to-int v0, v2

    .restart local v0    # "targetPage":I
    goto :goto_0

    .line 1115
    .end local v0    # "targetPage":I
    .end local v1    # "truncator":F
    :cond_2
    const v1, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1137
    iput-boolean v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    .line 1138
    iput-boolean v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsUnableToDrag:Z

    .line 1140
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1144
    :cond_0
    return-void
.end method

.method private getEdgeByXY(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1369
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mEdgeSize:I

    if-ge p1, v0, :cond_0

    .line 1370
    const/4 v0, 0x0

    .line 1374
    :goto_0
    return v0

    .line 1371
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mEdgeSize:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 1372
    const/4 v0, 0x1

    goto :goto_0

    .line 1374
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getPositionByXY(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, -0x1

    .line 1215
    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingLeft:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridWidth:I

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGapLand:I

    add-int/2addr v5, v6

    div-int v0, v4, v5

    .line 1216
    .local v0, "col":I
    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingTop:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridHeight:I

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGapPort:I

    add-int/2addr v5, v6

    div-int v2, v4, v5

    .line 1217
    .local v2, "row":I
    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingLeft:I

    if-lt p1, v4, :cond_0

    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingLeft:I

    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridWidth:I

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGapLand:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridWidth:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingTop:I

    if-lt p2, v4, :cond_0

    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingTop:I

    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridHeight:I

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGapPort:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridHeight:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    if-ltz v0, :cond_0

    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    if-ge v0, v4, :cond_0

    if-ltz v2, :cond_0

    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    if-lt v2, v4, :cond_2

    :cond_0
    move v1, v3

    .line 1230
    :cond_1
    :goto_0
    return v1

    .line 1225
    :cond_2
    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    add-int v1, v4, v0

    .line 1226
    .local v1, "position":I
    if-ltz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    :cond_3
    move v1, v3

    .line 1228
    goto :goto_0
.end method

.method private getRectByPosition(I)Landroid/graphics/Rect;
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 1205
    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    div-int v2, p1, v5

    .line 1206
    .local v2, "page":I
    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    rem-int v5, p1, v5

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    rem-int v0, v5, v6

    .line 1207
    .local v0, "col":I
    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    rem-int v5, p1, v5

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    div-int v3, v5, v6

    .line 1208
    .local v3, "row":I
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getWidth()I

    move-result v5

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingLeft:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridWidth:I

    iget v7, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGapLand:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v0

    add-int v1, v5, v6

    .line 1210
    .local v1, "left":I
    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingTop:I

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridHeight:I

    iget v7, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGapPort:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v3

    add-int v4, v5, v6

    .line 1211
    .local v4, "top":I
    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridWidth:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridHeight:I

    add-int/2addr v7, v4

    invoke-direct {v5, v1, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v5
.end method

.method private getTargetByXY(II)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, -0x1

    .line 1234
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/DraggableGridViewPager;->getPositionByXY(II)I

    move-result v1

    .line 1235
    .local v1, "position":I
    if-gez v1, :cond_1

    move v1, v3

    .line 1245
    .end local v1    # "position":I
    :cond_0
    :goto_0
    return v1

    .line 1238
    .restart local v1    # "position":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->getRectByPosition(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 1239
    .local v2, "r":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    div-int v0, v1, v4

    .line 1240
    .local v0, "page":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 1241
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getWidth()I

    move-result v4

    neg-int v4, v4

    mul-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1242
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v3

    .line 1243
    goto :goto_0
.end method

.method private initContextAttr(Landroid/util/AttributeSet;)V
    .locals 16
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 351
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 294
    .local v2, "context":Landroid/content/Context;
    sget-object v14, Lcom/android/internal/R$styleable;->DraggableGridViewPager:[I

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 296
    .local v1, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mDensity:F

    .line 299
    const/high16 v14, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mDensity:F

    mul-float/2addr v14, v15

    float-to-int v4, v14

    .line 300
    .local v4, "defaultItemHeight":I
    const/4 v14, 0x0

    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 301
    .local v6, "itemHeight":I
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 302
    .local v9, "itemMinHeight":I
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 303
    .local v7, "itemMaxHeight":I
    if-eqz v9, :cond_1

    if-ge v6, v9, :cond_1

    .line 304
    move v6, v9

    .line 306
    :cond_1
    if-eqz v7, :cond_2

    if-le v6, v7, :cond_2

    .line 307
    move v6, v7

    .line 309
    :cond_2
    if-eqz v6, :cond_3

    .line 310
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mItemHeight:I

    .line 314
    :cond_3
    const/high16 v14, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mDensity:F

    mul-float/2addr v14, v15

    float-to-int v5, v14

    .line 315
    .local v5, "defaultItemWidth":I
    const/4 v14, 0x3

    invoke-virtual {v1, v14, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 316
    .local v11, "itemWidth":I
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 317
    .local v10, "itemMinWidth":I
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 318
    .local v8, "itemMaxWidth":I
    if-eqz v10, :cond_4

    if-ge v11, v10, :cond_4

    .line 319
    move v11, v10

    .line 321
    :cond_4
    if-eqz v8, :cond_5

    if-le v11, v8, :cond_5

    .line 322
    move v11, v8

    .line 324
    :cond_5
    if-eqz v11, :cond_6

    .line 325
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mItemWidth:I

    .line 328
    :cond_6
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mItemPaddingLeft:I

    .line 329
    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mItemPaddingRight:I

    .line 330
    const/16 v14, 0xc

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mItemPaddingTop:I

    .line 331
    const/16 v14, 0xd

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mItemPaddingBottom:I

    .line 333
    const/4 v14, 0x6

    const/4 v15, 0x4

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    .line 334
    const/16 v14, 0x8

    const/4 v15, 0x2

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    .line 335
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    .line 336
    const/4 v14, 0x7

    const/4 v15, 0x4

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 337
    .local v12, "landColCount":I
    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    if-eq v12, v14, :cond_7

    .line 338
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    .line 340
    :cond_7
    const/16 v14, 0x9

    const/4 v15, 0x1

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    .line 341
    .local v13, "landRowCount":I
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    if-eq v13, v14, :cond_8

    .line 342
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    .line 345
    .end local v12    # "landColCount":I
    .end local v13    # "landRowCount":I
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    mul-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    .line 347
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mDensity:F

    mul-float/2addr v14, v15

    float-to-int v3, v14

    .line 348
    .local v3, "defaultGridGap":I
    const/16 v14, 0xe

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGap:I

    .line 349
    const/16 v14, 0xf

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGapLand:I

    .line 350
    const/16 v14, 0x10

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGapPort:I

    goto/16 :goto_0
.end method

.method private initDraggableGridViewPager()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v4, 0x0

    .line 355
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/DraggableGridViewPager;->setWillNotDraw(Z)V

    .line 356
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->setDescendantFocusability(I)V

    .line 357
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/DraggableGridViewPager;->setFocusable(Z)V

    .line 358
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/DraggableGridViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 361
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 364
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getPaddingLeft()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingLeft:I

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getPaddingTop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingTop:I

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getPaddingRight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingRight:I

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getPaddingBottom()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingBottom:I

    .line 369
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 373
    iget v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mDensity:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingLeft:I

    .line 374
    iget v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mDensity:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingRight:I

    .line 377
    :cond_0
    invoke-super {p0, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 379
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/android/internal/widget/DraggableGridViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    .line 380
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mTouchSlop:I

    .line 381
    const/high16 v2, 0x43c80000    # 400.0f

    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mMinimumVelocity:I

    .line 382
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mMaximumVelocity:I

    .line 384
    const/high16 v2, 0x41c80000    # 25.0f

    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mFlingDistance:I

    .line 385
    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCloseEnough:I

    .line 386
    return-void
.end method

.method private onItemClick(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    div-int v3, p1, v3

    int-to-long v4, v3

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1254
    :cond_0
    return-void
.end method

.method private onItemLongClick(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemLongClick position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 1258
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    div-int v3, p1, v3

    int-to-long v4, v3

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 1262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1123
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1124
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1127
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1128
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    .line 1129
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    .line 1130
    iget-object v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1131
    iget-object v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1134
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1127
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 7
    .param p1, "xpos"    # I

    .prologue
    const/4 v4, 0x0

    .line 675
    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageCount:I

    if-gtz v5, :cond_0

    .line 676
    iput-boolean v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCalledSuper:Z

    .line 677
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v4}, Lcom/android/internal/widget/DraggableGridViewPager;->onPageScrolled(IFI)V

    .line 678
    iget-boolean v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCalledSuper:Z

    if-nez v5, :cond_2

    .line 679
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "onPageScrolled did not call superclass implementation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getWidth()I

    move-result v3

    .line 685
    .local v3, "width":I
    if-lez v3, :cond_1

    .line 686
    div-int v0, p1, v3

    .line 687
    .local v0, "currentPage":I
    mul-int v5, v0, v3

    sub-int v1, p1, v5

    .line 688
    .local v1, "offsetPixels":I
    int-to-float v5, v1

    int-to-float v6, v3

    div-float v2, v5, v6

    .line 690
    .local v2, "pageOffset":F
    iput-boolean v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCalledSuper:Z

    .line 691
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->onPageScrolled(IFI)V

    .line 692
    iget-boolean v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCalledSuper:Z

    if-nez v4, :cond_1

    .line 693
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "onPageScrolled did not call superclass implementation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 697
    .end local v0    # "currentPage":I
    .end local v1    # "offsetPixels":I
    .end local v2    # "pageOffset":F
    :cond_1
    const/4 v4, 0x1

    .end local v3    # "width":I
    :cond_2
    return v4
.end method

.method private performDrag(F)Z
    .locals 10
    .param p1, "x"    # F

    .prologue
    .line 1079
    const/4 v2, 0x0

    .line 1081
    .local v2, "needsInvalidate":Z
    iget v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    sub-float v0, v8, p1

    .line 1082
    .local v0, "deltaX":F
    iput p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    .line 1084
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getScrollX()I

    move-result v8

    int-to-float v3, v8

    .line 1085
    .local v3, "oldScrollX":F
    add-float v6, v3, v0

    .line 1086
    .local v6, "scrollX":F
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getWidth()I

    move-result v7

    .line 1088
    .local v7, "width":I
    mul-int/lit8 v8, v7, 0x0

    int-to-float v1, v8

    .line 1089
    .local v1, "leftBound":F
    iget v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageCount:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v8, v7

    int-to-float v5, v8

    .line 1091
    .local v5, "rightBound":F
    cmpg-float v8, v6, v1

    if-gez v8, :cond_1

    .line 1092
    sub-float v8, v1, v6

    iget v9, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mMaxOverScrollSize:I

    int-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1094
    .local v4, "over":F
    sub-float v6, v1, v4

    .line 1101
    .end local v4    # "over":F
    :cond_0
    :goto_0
    iget v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    float-to-int v9, v6

    int-to-float v9, v9

    sub-float v9, v6, v9

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    .line 1102
    float-to-int v8, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getScrollY()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/widget/DraggableGridViewPager;->scrollTo(II)V

    .line 1103
    float-to-int v8, v6

    invoke-direct {p0, v8}, Lcom/android/internal/widget/DraggableGridViewPager;->pageScrolled(I)Z

    .line 1105
    return v2

    .line 1095
    :cond_1
    cmpl-float v8, v6, v5

    if-lez v8, :cond_0

    .line 1096
    sub-float v8, v6, v5

    iget v9, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mMaxOverScrollSize:I

    int-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1098
    .restart local v4    # "over":F
    add-float v6, v5, v4

    goto :goto_0
.end method

.method private rearrange()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1349
    iget v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    if-ltz v2, :cond_2

    .line 1350
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1351
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1353
    :cond_0
    iget v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastTarget:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastTarget:I

    if-eq v2, v3, :cond_1

    .line 1354
    iget v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1355
    .local v0, "child":Landroid/view/View;
    iget v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->removeViewAt(I)V

    .line 1356
    iget v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastTarget:I

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->addView(Landroid/view/View;I)V

    .line 1357
    iget-object v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnRearrangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnRearrangeListener;

    if-eqz v2, :cond_1

    .line 1358
    iget-object v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnRearrangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnRearrangeListener;

    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastTarget:I

    invoke-interface {v2, v3, v4}, Lcom/android/internal/widget/DraggableGridViewPager$OnRearrangeListener;->onRearrange(II)V

    .line 1361
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iput v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    .line 1362
    iput v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastTarget:I

    .line 1363
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->requestLayout()V

    .line 1364
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->invalidate()V

    .line 1366
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1073
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 1074
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1076
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v2, 0x0

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getWidth()I

    move-result v1

    mul-int v0, v1, p1

    .line 569
    .local v0, "destX":I
    if-eqz p2, :cond_1

    .line 570
    invoke-virtual {p0, v0, v2, p3}, Lcom/android/internal/widget/DraggableGridViewPager;->smoothScrollTo(III)V

    .line 571
    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    if-eqz v1, :cond_2

    .line 576
    iget-object v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 578
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->completeScroll(Z)V

    .line 579
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->scrollTo(II)V

    .line 580
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DraggableGridViewPager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 520
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iput p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScrollState:I

    .line 524
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1147
    iget-boolean v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1148
    iput-boolean p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScrollingCacheEnabled:Z

    .line 1159
    :cond_0
    return-void
.end method

.method private triggerSwipe(I)V
    .locals 3
    .param p1, "edge"    # I

    .prologue
    const/4 v2, 0x1

    .line 1378
    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    if-lez v0, :cond_1

    .line 1379
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->setCurrentItem(IZ)V

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    if-ne p1, v2, :cond_0

    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1381
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    .prologue
    .line 651
    iget-object v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 652
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getScrollX()I

    move-result v0

    .line 653
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getScrollY()I

    move-result v1

    .line 654
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 655
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 657
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 658
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/DraggableGridViewPager;->scrollTo(II)V

    .line 659
    invoke-direct {p0, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 660
    iget-object v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 661
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/widget/DraggableGridViewPager;->scrollTo(II)V

    .line 666
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->postInvalidateOnAnimation()V

    .line 672
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 671
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/widget/DraggableGridViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 601
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 602
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 603
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1267
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1274
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 1269
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 1270
    iget p2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    goto :goto_0

    .line 1271
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    if-lt p2, v0, :cond_0

    .line 1272
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getColCount()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    return v0
.end method

.method public getGridGap()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGap:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOrientation:I

    return v0
.end method

.method public getPageCount()I
    .locals 2

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DraggableGridViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 408
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 411
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 412
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 753
    .local v0, "action":I
    const/4 v10, 0x3

    if-eq v0, v10, :cond_0

    if-ne v0, v9, :cond_2

    .line 756
    :cond_0
    const-string v9, "Intercept done!"

    invoke-static {v9}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 757
    iput-boolean v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    .line 758
    iput-boolean v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsUnableToDrag:Z

    .line 759
    iput v12, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    .line 760
    iget-object v9, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 761
    iget-object v9, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 762
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 876
    :cond_1
    :goto_0
    return v8

    .line 769
    :cond_2
    if-eqz v0, :cond_5

    .line 770
    iget-boolean v10, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    if-nez v10, :cond_3

    iget v10, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    if-ltz v10, :cond_4

    .line 771
    :cond_3
    const-string v8, "Intercept returning true!"

    invoke-static {v8}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    move v8, v9

    .line 772
    goto :goto_0

    .line 774
    :cond_4
    iget-boolean v10, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsUnableToDrag:Z

    if-eqz v10, :cond_5

    .line 775
    const-string v9, "Intercept returning false!"

    invoke-static {v9}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 780
    :cond_5
    sparse-switch v0, :sswitch_data_0

    .line 867
    :cond_6
    :goto_1
    iget-object v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_7

    .line 868
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 870
    :cond_7
    iget-object v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 876
    iget-boolean v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 792
    :sswitch_0
    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    .line 793
    .local v1, "activePointerId":I
    if-eq v1, v12, :cond_6

    .line 799
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 800
    .local v3, "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 801
    .local v4, "x":F
    iget v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    sub-float v2, v4, v8

    .line 802
    .local v2, "dx":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 803
    .local v5, "xDiff":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 804
    .local v6, "y":F
    iget v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mInitialMotionY:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 805
    .local v7, "yDiff":F
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "***Moved to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " diff="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 807
    iget v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_a

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v8, v5

    cmpl-float v8, v8, v7

    if-lez v8, :cond_a

    .line 808
    const-string v8, "***Starting drag!"

    invoke-static {v8}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 809
    iput-boolean v9, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    .line 810
    invoke-direct {p0, v9}, Lcom/android/internal/widget/DraggableGridViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 811
    invoke-direct {p0, v9}, Lcom/android/internal/widget/DraggableGridViewPager;->setScrollState(I)V

    .line 812
    const/4 v8, 0x0

    cmpl-float v8, v2, v8

    if-lez v8, :cond_9

    iget v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mInitialMotionX:F

    iget v10, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mTouchSlop:I

    int-to-float v10, v10

    add-float/2addr v8, v10

    :goto_2
    iput v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    .line 814
    iput v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionY:F

    .line 815
    invoke-direct {p0, v9}, Lcom/android/internal/widget/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    .line 824
    :cond_8
    :goto_3
    iget-boolean v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    if-eqz v8, :cond_6

    .line 826
    invoke-direct {p0, v4}, Lcom/android/internal/widget/DraggableGridViewPager;->performDrag(F)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 827
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 812
    :cond_9
    iget v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mInitialMotionX:F

    iget v10, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mTouchSlop:I

    int-to-float v10, v10

    sub-float/2addr v8, v10

    goto :goto_2

    .line 816
    :cond_a
    iget v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_8

    .line 821
    const-string v8, "***Unable to drag!"

    invoke-static {v8}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 822
    iput-boolean v9, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 838
    .end local v1    # "activePointerId":I
    .end local v2    # "dx":F
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    .end local v5    # "xDiff":F
    .end local v6    # "y":F
    .end local v7    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mInitialMotionX:F

    iput v10, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    .line 839
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mInitialMotionY:F

    iput v10, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionY:F

    .line 840
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    .line 841
    iput-boolean v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsUnableToDrag:Z

    .line 843
    iget-object v10, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 844
    iget v10, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScrollState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    iget-object v10, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->getFinalX()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->getCurrX()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCloseEnough:I

    if-le v10, v11, :cond_b

    .line 847
    iget-object v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 848
    iput-boolean v9, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    .line 849
    invoke-direct {p0, v9}, Lcom/android/internal/widget/DraggableGridViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 850
    invoke-direct {p0, v9}, Lcom/android/internal/widget/DraggableGridViewPager;->setScrollState(I)V

    .line 855
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "***Down at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIsBeingDragged="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIsUnableToDrag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsUnableToDrag:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 858
    iput v12, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    goto/16 :goto_1

    .line 852
    :cond_b
    invoke-direct {p0, v8}, Lcom/android/internal/widget/DraggableGridViewPager;->completeScroll(Z)V

    .line 853
    iput-boolean v8, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    goto :goto_4

    .line 863
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DraggableGridViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 780
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildCount()I

    move-result v1

    .line 489
    .local v1, "childCount":I
    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageCount:I

    .line 490
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGapLand:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridWidth:I

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGapPort:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridHeight:I

    .line 499
    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mMaxOverScrollSize:I

    .line 500
    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mEdgeSize:I

    .line 501
    iget-object v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->newPositions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 502
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 503
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 504
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/android/internal/widget/DraggableGridViewPager;->getRectByPosition(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 505
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 508
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "child.layout position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 509
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 510
    iget-object v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->newPositions:Ljava/util/ArrayList;

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_0
    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    if-lez v5, :cond_1

    iget v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    iget v6, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageCount:I

    if-ge v5, v6, :cond_1

    .line 513
    iget v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    .line 514
    .local v2, "curItem":I
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    .line 515
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->setCurrentItem(I)V

    .line 517
    .end local v2    # "curItem":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1436
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1437
    .local v1, "measuredWidth":I
    iget v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mItemHeight:I

    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGapLand:I

    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mItemPaddingTop:I

    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mItemPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    mul-int/2addr v3, v4

    add-int v0, v2, v3

    .line 1438
    .local v0, "measuredHeight":I
    const-string v2, "DraggableGridViewPager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/DraggableGridViewPager;->setMeasuredDimension(II)V

    .line 1441
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 718
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCalledSuper:Z

    .line 719
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1387
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/DraggableGridViewPager$SavedState;

    .line 1388
    .local v0, "savedState":Lcom/android/internal/widget/DraggableGridViewPager$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/DraggableGridViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1389
    iget v1, v0, Lcom/android/internal/widget/DraggableGridViewPager$SavedState;->curItem:I

    iput v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    .line 1390
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->requestLayout()V

    .line 1391
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1395
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1396
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/DraggableGridViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/DraggableGridViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1397
    .local v0, "savedState":Lcom/android/internal/widget/DraggableGridViewPager$SavedState;
    iget v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    iput v2, v0, Lcom/android/internal/widget/DraggableGridViewPager$SavedState;->curItem:I

    .line 1398
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 881
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v29

    if-nez v29, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v29

    if-eqz v29, :cond_0

    .line 885
    const/16 v29, 0x0

    .line 1067
    :goto_0
    return v29

    .line 888
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageCount:I

    move/from16 v29, v0

    if-gtz v29, :cond_1

    .line 890
    const/16 v29, 0x0

    goto :goto_0

    .line 893
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    if-nez v29, :cond_2

    .line 894
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 896
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 898
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 899
    .local v6, "action":I
    const/4 v13, 0x0

    .line 901
    .local v13, "needsInvalidate":Z
    packed-switch v6, :pswitch_data_0

    .line 1064
    :cond_3
    :goto_1
    :pswitch_0
    if-eqz v13, :cond_4

    .line 1065
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DraggableGridViewPager;->postInvalidateOnAnimation()V

    .line 1067
    :cond_4
    const/16 v29, 0x1

    goto :goto_0

    .line 903
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Scroller;->abortAnimation()V

    .line 905
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mInitialMotionX:F

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    .line 906
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mInitialMotionY:F

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionY:F

    .line 907
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    .line 909
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Down at "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionY:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " mIsBeingDragged="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " mIsUnableToDrag="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsUnableToDrag:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    move/from16 v29, v0

    if-nez v29, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mScrollState:I

    move/from16 v29, v0

    if-nez v29, :cond_5

    .line 914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionY:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->getPositionByXY(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastPosition:I

    .line 919
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastPosition:I

    move/from16 v29, v0

    if-ltz v29, :cond_6

    .line 920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDownTime:J

    .line 924
    :goto_3
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Down at mLastPosition="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastPosition:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 925
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    goto/16 :goto_1

    .line 917
    :cond_5
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastPosition:I

    goto :goto_2

    .line 922
    :cond_6
    const-wide v30, 0x7fffffffffffffffL

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDownTime:J

    goto :goto_3

    .line 929
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 930
    .local v17, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    .line 931
    .local v25, "x":F
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 933
    .local v27, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    move/from16 v29, v0

    if-ltz v29, :cond_b

    .line 935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 936
    .local v22, "v":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getScrollX()I

    move-result v29

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v30, v0

    add-int v29, v29, v30

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    sub-int v12, v29, v30

    .line 937
    .local v12, "l":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getScrollY()I

    move-result v29

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v30, v0

    add-int v29, v29, v30

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    sub-int v19, v29, v30

    .line 938
    .local v19, "t":I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v29

    add-int v29, v29, v12

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v30

    add-int v30, v30, v19

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 941
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mScrollState:I

    move/from16 v29, v0

    if-nez v29, :cond_8

    .line 942
    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->getTargetByXY(II)I

    move-result v20

    .line 943
    .local v20, "target":I
    const/16 v29, -0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastTarget:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 944
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->animateGap(I)V

    .line 945
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastTarget:I

    .line 946
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Moved to mLastTarget="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastTarget:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 949
    :cond_7
    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->getEdgeByXY(II)I

    move-result v9

    .line 950
    .local v9, "edge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastEdge:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastEdge:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v9, v0, :cond_8

    .line 952
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastEdge:I

    .line 953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/widget/DraggableGridViewPager;->mLastEdgeTime:J

    .line 984
    .end local v9    # "edge":I
    .end local v12    # "l":I
    .end local v19    # "t":I
    .end local v20    # "target":I
    .end local v22    # "v":Landroid/view/View;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    move/from16 v29, v0

    if-eqz v29, :cond_d

    .line 986
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->performDrag(F)Z

    move-result v29

    or-int v13, v13, v29

    goto/16 :goto_1

    .line 956
    .restart local v9    # "edge":I
    .restart local v12    # "l":I
    .restart local v19    # "t":I
    .restart local v20    # "target":I
    .restart local v22    # "v":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastEdge:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v9, v0, :cond_a

    .line 957
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastEdge:I

    goto :goto_4

    .line 959
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastEdgeTime:J

    move-wide/from16 v32, v0

    sub-long v30, v30, v32

    const-wide/16 v32, 0x4b0

    cmp-long v29, v30, v32

    if-ltz v29, :cond_8

    .line 960
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->performHapticFeedback(I)Z

    .line 961
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/widget/DraggableGridViewPager;->triggerSwipe(I)V

    .line 962
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastEdge:I

    goto :goto_4

    .line 967
    .end local v9    # "edge":I
    .end local v12    # "l":I
    .end local v19    # "t":I
    .end local v20    # "target":I
    .end local v22    # "v":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    move/from16 v29, v0

    if-nez v29, :cond_8

    .line 968
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    move/from16 v29, v0

    sub-float v29, v25, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v26

    .line 969
    .local v26, "xDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionY:F

    move/from16 v29, v0

    sub-float v29, v27, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v28

    .line 970
    .local v28, "yDiff":F
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Moved to "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " diff="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 972
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mTouchSlop:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v29, v26, v29

    if-lez v29, :cond_8

    cmpl-float v29, v26, v28

    if-lez v29, :cond_8

    .line 973
    const-string v29, "Starting drag!"

    invoke-static/range {v29 .. v29}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 974
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    .line 975
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 976
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mInitialMotionX:F

    move/from16 v29, v0

    sub-float v29, v25, v29

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mInitialMotionX:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mTouchSlop:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    :goto_5
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    .line 978
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionY:F

    .line 979
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->setScrollState(I)V

    .line 980
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_4

    .line 976
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mInitialMotionX:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mTouchSlop:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v29, v29, v30

    goto :goto_5

    .line 987
    .end local v26    # "xDiff":F
    .end local v28    # "yDiff":F
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastPosition:I

    move/from16 v29, v0

    if-ltz v29, :cond_3

    .line 988
    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->getPositionByXY(II)I

    move-result v8

    .line 989
    .local v8, "currentPosition":I
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Moved to currentPosition="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 990
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastPosition:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ne v8, v0, :cond_f

    .line 991
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDownTime:J

    move-wide/from16 v32, v0

    sub-long v30, v30, v32

    const-wide/16 v32, 0x3e8

    cmp-long v29, v30, v32

    if-ltz v29, :cond_3

    .line 992
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/widget/DraggableGridViewPager;->onItemLongClick(I)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 993
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->performHapticFeedback(I)Z

    .line 994
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastPosition:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    .line 995
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 996
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastTarget:I

    .line 997
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/DraggableGridViewPager;->animateDragged()V

    .line 998
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastPosition:I

    .line 1000
    :cond_e
    const-wide v30, 0x7fffffffffffffffL

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDownTime:J

    goto/16 :goto_1

    .line 1003
    :cond_f
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastPosition:I

    goto/16 :goto_1

    .line 1009
    .end local v8    # "currentPosition":I
    .end local v17    # "pointerIndex":I
    .end local v25    # "x":F
    .end local v27    # "y":F
    :pswitch_3
    const-string v29, "Touch up!!!"

    invoke-static/range {v29 .. v29}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 1010
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 1011
    .restart local v17    # "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    .line 1012
    .restart local v25    # "x":F
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 1014
    .restart local v27    # "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    move/from16 v29, v0

    if-ltz v29, :cond_10

    .line 1015
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/DraggableGridViewPager;->rearrange()V

    goto/16 :goto_1

    .line 1016
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    move/from16 v29, v0

    if-eqz v29, :cond_11

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    .line 1018
    .local v23, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v29, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mMaximumVelocity:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v23

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v11, v0

    .line 1021
    .local v11, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getWidth()I

    move-result v24

    .line 1022
    .local v24, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getScrollX()I

    move-result v18

    .line 1023
    .local v18, "scrollX":I
    div-int v7, v18, v24

    .line 1024
    .local v7, "currentPage":I
    mul-int v29, v7, v24

    sub-int v15, v18, v29

    .line 1025
    .local v15, "offsetPixels":I
    int-to-float v0, v15

    move/from16 v29, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v16, v29, v30

    .line 1026
    .local v16, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mInitialMotionX:F

    move/from16 v29, v0

    sub-float v29, v25, v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1027
    .local v21, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v21

    invoke-direct {v0, v7, v1, v11, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->determineTargetPage(IFII)I

    move-result v14

    .line 1029
    .local v14, "nextPage":I
    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v14, v1, v2, v11}, Lcom/android/internal/widget/DraggableGridViewPager;->setCurrentItemInternal(IZZI)V

    .line 1031
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    .line 1032
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/DraggableGridViewPager;->endDrag()V

    goto/16 :goto_1

    .line 1033
    .end local v7    # "currentPage":I
    .end local v11    # "initialVelocity":I
    .end local v14    # "nextPage":I
    .end local v15    # "offsetPixels":I
    .end local v16    # "pageOffset":F
    .end local v18    # "scrollX":I
    .end local v21    # "totalDelta":I
    .end local v23    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v24    # "width":I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastPosition:I

    move/from16 v29, v0

    if-ltz v29, :cond_3

    .line 1034
    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->getPositionByXY(II)I

    move-result v8

    .line 1035
    .restart local v8    # "currentPosition":I
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Touch up!!! currentPosition="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 1036
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastPosition:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ne v8, v0, :cond_3

    .line 1037
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/widget/DraggableGridViewPager;->onItemClick(I)V

    goto/16 :goto_1

    .line 1043
    .end local v8    # "currentPosition":I
    .end local v17    # "pointerIndex":I
    .end local v25    # "x":F
    .end local v27    # "y":F
    :pswitch_4
    const-string v29, "Touch cancel!!!"

    invoke-static/range {v29 .. v29}, Lcom/android/internal/widget/DraggableGridViewPager;->DEBUG_LOG(Ljava/lang/String;)V

    .line 1044
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mLastDragged:I

    move/from16 v29, v0

    if-ltz v29, :cond_12

    .line 1045
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/DraggableGridViewPager;->rearrange()V

    goto/16 :goto_1

    .line 1046
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mIsBeingDragged:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    .line 1047
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    move/from16 v29, v0

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/DraggableGridViewPager;->scrollToItem(IZIZ)V

    .line 1048
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    .line 1049
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/DraggableGridViewPager;->endDrag()V

    goto/16 :goto_1

    .line 1053
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    .line 1054
    .local v10, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    .line 1055
    .restart local v25    # "x":F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    .line 1056
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 1060
    .end local v10    # "index":I
    .end local v25    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/DraggableGridViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1061
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/DraggableGridViewPager;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/DraggableGridViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 901
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 5
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    const/4 v4, 0x0

    .line 1181
    iget-object v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    if-eqz v2, :cond_0

    .line 1182
    iget-object v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    iget-object v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1183
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->removeAllViews()V

    .line 1184
    iput v4, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    .line 1185
    invoke-virtual {p0, v4, v4}, Lcom/android/internal/widget/DraggableGridViewPager;->scrollTo(II)V

    .line 1187
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    .line 1188
    iget-object v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    if-eqz v2, :cond_2

    .line 1191
    iget-object v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    if-gt v2, v3, :cond_1

    .line 1192
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DraggableGridViewPager;->setRowCount(I)V

    .line 1196
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    iget-object v3, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1198
    iget-object v2, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mAdapter:Landroid/widget/Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1199
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DraggableGridViewPager;->addView(Landroid/view/View;)V

    .line 1197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1202
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setColCount(I)V
    .locals 2
    .param p1, "colCount"    # I

    .prologue
    .line 419
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 420
    const/4 p1, 0x1

    .line 422
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    .line 423
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->requestLayout()V

    .line 425
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/internal/widget/DraggableGridViewPager;->setCurrentItemInternal(IZZ)V

    .line 535
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/DraggableGridViewPager;->setCurrentItemInternal(IZZ)V

    .line 539
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/DraggableGridViewPager;->setCurrentItemInternal(IZZI)V

    .line 543
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v0, 0x0

    .line 547
    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageCount:I

    if-gtz v1, :cond_0

    .line 548
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    .line 564
    :goto_0
    return-void

    .line 551
    :cond_0
    if-nez p3, :cond_1

    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    if-ne v1, p1, :cond_1

    .line 552
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 556
    :cond_1
    if-gez p1, :cond_4

    .line 557
    const/4 p1, 0x0

    .line 561
    :cond_2
    :goto_1
    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    if-eq v1, p1, :cond_3

    const/4 v0, 0x1

    .line 562
    .local v0, "dispatchSelected":Z
    :cond_3
    iput p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mCurItem:I

    .line 563
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/internal/widget/DraggableGridViewPager;->scrollToItem(IZIZ)V

    goto :goto_0

    .line 558
    .end local v0    # "dispatchSelected":Z
    :cond_4
    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageCount:I

    if-lt p1, v1, :cond_2

    .line 559
    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageCount:I

    add-int/lit8 p1, v1, -0x1

    goto :goto_1
.end method

.method public setGridGap(I)V
    .locals 0
    .param p1, "gridGap"    # I

    .prologue
    .line 475
    if-gez p1, :cond_0

    .line 476
    const/4 p1, 0x0

    .line 478
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGapPort:I

    iput p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGapLand:I

    iput p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mGridGap:I

    .line 479
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->requestLayout()V

    .line 480
    return-void
.end method

.method public setItemHeight(I)V
    .locals 2
    .param p1, "itemHeight"    # I

    .prologue
    .line 455
    if-gez p1, :cond_0

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mItemHeight:I

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->requestLayout()V

    goto :goto_0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 590
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 594
    return-void
.end method

.method public setOnPageChangeListener(Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    .line 586
    return-void
.end method

.method public setOnRearrangeListener(Lcom/android/internal/widget/DraggableGridViewPager$OnRearrangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/DraggableGridViewPager$OnRearrangeListener;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOnRearrangeListener:Lcom/android/internal/widget/DraggableGridViewPager$OnRearrangeListener;

    .line 598
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 389
    packed-switch p1, :pswitch_data_0

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :pswitch_0
    iput p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mOrientation:I

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->requestLayout()V

    .line 399
    return-void

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "pageCount"    # I

    .prologue
    .line 447
    if-gez p1, :cond_0

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageCount:I

    .line 451
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->requestLayout()V

    goto :goto_0
.end method

.method public setRowCount(I)V
    .locals 2
    .param p1, "rowCount"    # I

    .prologue
    .line 432
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 433
    const/4 p1, 0x1

    .line 435
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    .line 436
    iget v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mColCount:I

    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mRowCount:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mPageSize:I

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->requestLayout()V

    .line 438
    return-void
.end method

.method public setmItemWidth(I)V
    .locals 2
    .param p1, "itemWidth"    # I

    .prologue
    .line 463
    if-gez p1, :cond_0

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mItemWidth:I

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->requestLayout()V

    goto :goto_0
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/DraggableGridViewPager;->smoothScrollTo(III)V

    .line 608
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 613
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    .line 647
    :goto_0
    return-void

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getScrollX()I

    move-result v2

    .line 617
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getScrollY()I

    move-result v3

    .line 618
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 619
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 620
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 621
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->completeScroll(Z)V

    .line 622
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->setScrollState(I)V

    goto :goto_0

    .line 626
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->setScrollingCacheEnabled(Z)V

    .line 627
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->setScrollState(I)V

    .line 629
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->getWidth()I

    move-result v11

    .line 630
    .local v11, "width":I
    div-int/lit8 v9, v11, 0x2

    .line 631
    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v1, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 632
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v12, v9

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/DraggableGridViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v7, v1, v12

    .line 635
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 636
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 637
    if-lez p3, :cond_2

    .line 638
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 643
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 645
    iget-object v1, p0, Lcom/android/internal/widget/DraggableGridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 646
    invoke-virtual {p0}, Lcom/android/internal/widget/DraggableGridViewPager;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 640
    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v12, v11

    div-float v10, v1, v12

    .line 641
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v1, v12

    float-to-int v6, v1

    goto :goto_1
.end method
