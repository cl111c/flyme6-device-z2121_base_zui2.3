.class public Lcom/android/internal/widget/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/android/internal/widget/DraggablePageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/CirclePageIndicator$1;,
        Lcom/android/internal/widget/CirclePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mShowingDrawable:Landroid/graphics/drawable/Drawable;

.field private mSnap:Z

.field private mSnapPage:I

.field private mTouchSlop:I

.field private mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 61
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mLastMotionX:F

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mActivePointerId:I

    .line 65
    iput-object v2, p0, Lcom/android/internal/widget/CirclePageIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object v2, p0, Lcom/android/internal/widget/CirclePageIndicator;->mShowingDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CirclePageIndicator;->initPageIndicator(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 61
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mLastMotionX:F

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mActivePointerId:I

    .line 65
    iput-object v2, p0, Lcom/android/internal/widget/CirclePageIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object v2, p0, Lcom/android/internal/widget/CirclePageIndicator;->mShowingDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CirclePageIndicator;->initPageIndicator(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 61
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mLastMotionX:F

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mActivePointerId:I

    .line 65
    iput-object v2, p0, Lcom/android/internal/widget/CirclePageIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object v2, p0, Lcom/android/internal/widget/CirclePageIndicator;->mShowingDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CirclePageIndicator;->initPageIndicator(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method private measureLong(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 490
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 491
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 493
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    if-nez v4, :cond_2

    .line 495
    :cond_0
    move v1, v3

    .line 506
    .local v1, "result":I
    :cond_1
    :goto_0
    return v1

    .line 498
    .end local v1    # "result":I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    invoke-virtual {v4}, Lcom/android/internal/widget/DraggableGridViewPager;->getPageCount()I

    move-result v0

    .line 499
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 502
    .restart local v1    # "result":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 503
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private measureShort(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 518
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 519
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 521
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 523
    move v0, v2

    .line 532
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 526
    .end local v0    # "result":I
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 528
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 529
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mOrientation:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method protected initPageIndicator(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->isInEditMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 112
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v4, 0x0

    .line 86
    .local v4, "defaultPageColor":I
    const/4 v2, -0x1

    .line 87
    .local v2, "defaultFillColor":I
    const/4 v3, 0x0

    .line 88
    .local v3, "defaultOrientation":I
    const v7, -0x222223

    .line 89
    .local v7, "defaultStrokeColor":I
    const/high16 v8, 0x40400000    # 3.0f

    .line 90
    .local v8, "defaultStrokeWidth":F
    const/high16 v5, 0x41100000    # 9.0f

    .line 91
    .local v5, "defaultRadius":F
    const/4 v1, 0x1

    .line 92
    .local v1, "defaultCentered":Z
    const/4 v6, 0x0

    .line 94
    .local v6, "defaultSnap":Z
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/widget/CirclePageIndicator;->mCentered:Z

    .line 95
    iput v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mOrientation:I

    .line 96
    iget-object v10, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v10, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v10, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v10, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    const v11, -0x222223

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v10, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    const/high16 v11, 0x40400000    # 3.0f

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    iget-object v10, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v10, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    const/high16 v10, 0x41100000    # 9.0f

    iput v10, p0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    .line 104
    iput-boolean v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mSnap:Z

    .line 106
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 107
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    iput v10, p0, Lcom/android/internal/widget/CirclePageIndicator;->mTouchSlop:I

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 110
    .local v9, "res":Landroid/content/res/Resources;
    const v10, 0x1080762

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/widget/CirclePageIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    const v10, 0x1080761

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/widget/CirclePageIndicator;->mShowingDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mSnap:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->invalidate()V

    .line 427
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/DraggableGridViewPager;->getPageCount()I

    move-result v3

    .line 201
    .local v3, "count":I
    if-eqz v3, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mCurrentPage:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v0, v3, :cond_2

    .line 206
    add-int/lit8 v23, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 210
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v22, v23, v24

    .line 211
    .local v22, "widthIndicator":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v8, v23, v24

    .line 217
    .local v8, "heightIndicator":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mOrientation:I

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/CirclePageIndicator;->getWidth()I

    move-result v13

    .line 219
    .local v13, "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/CirclePageIndicator;->getPaddingLeft()I

    move-result v12

    .line 220
    .local v12, "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/CirclePageIndicator;->getPaddingRight()I

    move-result v11

    .line 221
    .local v11, "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/CirclePageIndicator;->getPaddingTop()I

    move-result v18

    .line 229
    .local v18, "shortPaddingBefore":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v23, v23, v24

    const/high16 v24, 0x41400000    # 12.0f

    add-float v21, v23, v24

    .line 230
    .local v21, "threeRadius":F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v24, v0

    add-float v17, v23, v24

    .line 231
    .local v17, "shortOffset":F
    int-to-float v0, v12

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v24, v0

    add-float v10, v23, v24

    .line 232
    .local v10, "longOffset":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mCentered:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 233
    sub-int v23, v13, v12

    sub-int v23, v23, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    int-to-float v0, v3

    move/from16 v24, v0

    mul-float v24, v24, v21

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    sub-float v23, v23, v24

    add-float v10, v10, v23

    .line 239
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    .line 240
    .local v14, "pageFillRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v23

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_4

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v23

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    sub-float v14, v14, v23

    .line 245
    :cond_4
    const/4 v9, 0x0

    .local v9, "iLoop":I
    :goto_2
    if-ge v9, v3, :cond_9

    .line 246
    int-to-float v0, v9

    move/from16 v23, v0

    mul-float v23, v23, v21

    add-float v7, v10, v23

    .line 247
    .local v7, "drawLong":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mOrientation:I

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v23, v0

    sub-float v5, v7, v23

    .line 249
    .local v5, "dX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v23, v0

    sub-float v6, v17, v23

    .line 255
    .local v6, "dY":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getAlpha()I

    move-result v23

    if-lez v23, :cond_5

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mShowingDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v26, v0

    float-to-int v0, v8

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 258
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mShowingDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    neg-float v0, v5

    move/from16 v23, v0

    neg-float v0, v6

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 264
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v23, v0

    cmpl-float v23, v14, v23

    if-eqz v23, :cond_6

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v26, v0

    float-to-int v0, v8

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 269
    neg-float v0, v5

    move/from16 v23, v0

    neg-float v0, v6

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 223
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    .end local v9    # "iLoop":I
    .end local v10    # "longOffset":F
    .end local v11    # "longPaddingAfter":I
    .end local v12    # "longPaddingBefore":I
    .end local v13    # "longSize":I
    .end local v14    # "pageFillRadius":F
    .end local v17    # "shortOffset":F
    .end local v18    # "shortPaddingBefore":I
    .end local v21    # "threeRadius":F
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/CirclePageIndicator;->getHeight()I

    move-result v13

    .line 224
    .restart local v13    # "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/CirclePageIndicator;->getPaddingTop()I

    move-result v12

    .line 225
    .restart local v12    # "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/CirclePageIndicator;->getPaddingBottom()I

    move-result v11

    .line 226
    .restart local v11    # "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/CirclePageIndicator;->getPaddingLeft()I

    move-result v18

    .restart local v18    # "shortPaddingBefore":I
    goto/16 :goto_1

    .line 251
    .restart local v7    # "drawLong":F
    .restart local v9    # "iLoop":I
    .restart local v10    # "longOffset":F
    .restart local v14    # "pageFillRadius":F
    .restart local v17    # "shortOffset":F
    .restart local v21    # "threeRadius":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v23, v0

    sub-float v5, v17, v23

    .line 252
    .restart local v5    # "dX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v23, v0

    sub-float v6, v7, v23

    .restart local v6    # "dY":F
    goto/16 :goto_3

    .line 274
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mSnap:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mSnapPage:I

    move/from16 v23, v0

    :goto_4
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v4, v23, v21

    .line 275
    .local v4, "cx":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mSnap:Z

    move/from16 v23, v0

    if-nez v23, :cond_a

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mPageOffset:F

    move/from16 v23, v0

    mul-float v23, v23, v21

    add-float v4, v4, v23

    .line 279
    :cond_a
    const v15, 0x3f2e147b    # 0.68f

    .line 280
    .local v15, "scalParam":F
    const v16, 0x3f2e147b    # 0.68f

    .line 281
    .local v16, "scale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mPageOffset:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mPageOffset:F

    move/from16 v23, v0

    const v24, 0x3dcccccd    # 0.1f

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_c

    .line 282
    const/high16 v23, 0x3f800000    # 1.0f

    const v24, 0x40866666    # 4.2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mPageOffset:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v16, v23, v24

    .line 291
    :goto_5
    mul-float v23, v22, v16

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v20, v0

    .line 292
    .local v20, "tWidth":F
    mul-float v23, v8, v16

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v19, v0

    .line 293
    .local v19, "tHeight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mOrientation:I

    move/from16 v23, v0

    if-nez v23, :cond_f

    .line 296
    add-float v23, v10, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    add-float v23, v23, v22

    sub-float v5, v23, v20

    .line 297
    .restart local v5    # "dX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v23, v0

    sub-float v23, v17, v23

    sub-float v24, v8, v19

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v6, v23, v24

    .line 306
    .restart local v6    # "dY":F
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mShowingDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 307
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mShowingDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
    neg-float v0, v5

    move/from16 v23, v0

    neg-float v0, v6

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    .line 274
    .end local v4    # "cx":F
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v15    # "scalParam":F
    .end local v16    # "scale":F
    .end local v19    # "tHeight":F
    .end local v20    # "tWidth":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mCurrentPage:I

    move/from16 v23, v0

    goto/16 :goto_4

    .line 283
    .restart local v4    # "cx":F
    .restart local v15    # "scalParam":F
    .restart local v16    # "scale":F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mPageOffset:F

    move/from16 v23, v0

    const v24, 0x3dcccccd    # 0.1f

    cmpl-float v23, v23, v24

    if-lez v23, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mPageOffset:F

    move/from16 v23, v0

    const v24, 0x3f666666    # 0.9f

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_d

    .line 284
    const v16, 0x3f2e147b    # 0.68f

    goto/16 :goto_5

    .line 285
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mPageOffset:F

    move/from16 v23, v0

    const v24, 0x3f666666    # 0.9f

    cmpl-float v23, v23, v24

    if-lez v23, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mPageOffset:F

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_e

    .line 287
    const v23, 0x3f2e147b    # 0.68f

    const v24, 0x40866666    # 4.2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mPageOffset:F

    move/from16 v25, v0

    const v26, 0x3f666666    # 0.9f

    sub-float v25, v25, v26

    mul-float v24, v24, v25

    add-float v16, v23, v24

    goto/16 :goto_5

    .line 289
    :cond_e
    const/high16 v16, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 301
    .restart local v19    # "tHeight":F
    .restart local v20    # "tWidth":F
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v23, v0

    sub-float v23, v17, v23

    sub-float v24, v22, v20

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v5, v23, v24

    .line 302
    .restart local v5    # "dX":F
    add-float v23, v10, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    add-float v23, v23, v8

    sub-float v6, v23, v19

    .restart local v6    # "dY":F
    goto/16 :goto_6
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 474
    iget v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 475
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CirclePageIndicator;->measureLong(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/internal/widget/CirclePageIndicator;->measureShort(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CirclePageIndicator;->measureShort(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/internal/widget/CirclePageIndicator;->measureLong(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 431
    iput p1, p0, Lcom/android/internal/widget/CirclePageIndicator;->mScrollState:I

    .line 433
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 436
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 440
    iput p1, p0, Lcom/android/internal/widget/CirclePageIndicator;->mCurrentPage:I

    .line 441
    iput p2, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPageOffset:F

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->invalidate()V

    .line 444
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 447
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mSnap:Z

    if-eqz v0, :cond_0

    .line 452
    iput p1, p0, Lcom/android/internal/widget/CirclePageIndicator;->mCurrentPage:I

    .line 453
    iput p1, p0, Lcom/android/internal/widget/CirclePageIndicator;->mSnapPage:I

    .line 454
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->invalidate()V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 460
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 537
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/CirclePageIndicator$SavedState;

    .line 538
    .local v0, "savedState":Lcom/android/internal/widget/CirclePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 539
    iget v1, v0, Lcom/android/internal/widget/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/android/internal/widget/CirclePageIndicator;->mCurrentPage:I

    .line 540
    iget v1, v0, Lcom/android/internal/widget/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/android/internal/widget/CirclePageIndicator;->mSnapPage:I

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->requestLayout()V

    .line 542
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 546
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 547
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/CirclePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 548
    .local v0, "savedState":Lcom/android/internal/widget/CirclePageIndicator$SavedState;
    iget v2, p0, Lcom/android/internal/widget/CirclePageIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/android/internal/widget/CirclePageIndicator$SavedState;->currentPage:I

    .line 549
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 314
    const/4 v12, 0x1

    .line 392
    :goto_0
    return v12

    .line 316
    :cond_0
    iget-object v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    invoke-virtual {v12}, Lcom/android/internal/widget/DraggableGridViewPager;->getPageCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 317
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 321
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 392
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 323
    :pswitch_1
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mActivePointerId:I

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 328
    :pswitch_2
    iget v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mActivePointerId:I

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 329
    .local v1, "activePointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 330
    .local v11, "x":F
    iget v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mLastMotionX:F

    sub-float v3, v11, v12

    .line 332
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_4

    .line 333
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/android/internal/widget/CirclePageIndicator;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 334
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mIsDragging:Z

    .line 338
    :cond_4
    iget-boolean v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mIsDragging:Z

    if-eqz v12, :cond_3

    .line 339
    iput v11, p0, Lcom/android/internal/widget/CirclePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 350
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_8

    .line 351
    iget-object v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    invoke-virtual {v12}, Lcom/android/internal/widget/DraggableGridViewPager;->getPageCount()I

    move-result v2

    .line 352
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->getWidth()I

    move-result v10

    .line 353
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 354
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 356
    .local v9, "sixthWidth":F
    iget v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mCurrentPage:I

    if-lez v12, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    .line 357
    const/4 v12, 0x3

    if-eq v0, v12, :cond_5

    .line 358
    iget-object v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    iget v13, p0, Lcom/android/internal/widget/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/DraggableGridViewPager;->setCurrentItem(I)V

    .line 360
    :cond_5
    const/4 v12, 0x1

    goto :goto_0

    .line 361
    :cond_6
    iget v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_8

    .line 362
    const/4 v12, 0x3

    if-eq v0, v12, :cond_7

    .line 363
    iget-object v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    iget v13, p0, Lcom/android/internal/widget/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/DraggableGridViewPager;->setCurrentItem(I)V

    .line 365
    :cond_7
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 369
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_8
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mIsDragging:Z

    .line 370
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 375
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 376
    .local v5, "index":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    iput v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mLastMotionX:F

    .line 377
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 382
    .end local v5    # "index":I
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 383
    .local v8, "pointerIndex":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 384
    .local v7, "pointerId":I
    iget v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mActivePointerId:I

    if-ne v7, v12, :cond_9

    .line 385
    if-nez v8, :cond_a

    const/4 v6, 0x1

    .line 386
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mActivePointerId:I

    .line 388
    .end local v6    # "newPointerIndex":I
    :cond_9
    iget v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mActivePointerId:I

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    iput v12, p0, Lcom/android/internal/widget/CirclePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 385
    :cond_a
    const/4 v6, 0x0

    goto :goto_2

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0
    .param p1, "centered"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/widget/CirclePageIndicator;->mCentered:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->invalidate()V

    .line 118
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/DraggableGridViewPager;->setCurrentItem(I)V

    .line 420
    iput p1, p0, Lcom/android/internal/widget/CirclePageIndicator;->mCurrentPage:I

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->invalidate()V

    .line 422
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->invalidate()V

    .line 136
    return-void
.end method

.method public setOnPageChangeListener(Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/internal/widget/CirclePageIndicator;->mListener:Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;

    .line 465
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 143
    packed-switch p1, :pswitch_data_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_0
    iput p1, p0, Lcom/android/internal/widget/CirclePageIndicator;->mOrientation:I

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->requestLayout()V

    .line 153
    return-void

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1
    .param p1, "pageColor"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->invalidate()V

    .line 127
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 178
    iput p1, p0, Lcom/android/internal/widget/CirclePageIndicator;->mRadius:F

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->invalidate()V

    .line 180
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/internal/widget/CirclePageIndicator;->mSnap:Z

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->invalidate()V

    .line 189
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->invalidate()V

    .line 162
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->invalidate()V

    .line 171
    return-void
.end method

.method public setViewPager(Lcom/android/internal/widget/DraggableGridViewPager;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/DraggableGridViewPager;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    if-ne v0, p1, :cond_0

    .line 406
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;)V

    .line 403
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    .line 404
    iget-object v0, p0, Lcom/android/internal/widget/CirclePageIndicator;->mViewPager:Lcom/android/internal/widget/DraggableGridViewPager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/DraggableGridViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/DraggableGridViewPager$OnPageChangeListener;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/widget/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Lcom/android/internal/widget/DraggableGridViewPager;I)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/DraggableGridViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CirclePageIndicator;->setViewPager(Lcom/android/internal/widget/DraggableGridViewPager;)V

    .line 411
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/CirclePageIndicator;->setCurrentItem(I)V

    .line 412
    return-void
.end method
