.class public Landroid/widget/SlideLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SlideLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlideLinearLayout$OnEdgeChildStateChangedListener;
    }
.end annotation


# static fields
.field private static final TAN:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mChildWidth:I

.field private mEdgeChildStateChangedListener:Landroid/widget/SlideLinearLayout$OnEdgeChildStateChangedListener;

.field private mLastX:I

.field private mLastY:I

.field private mMaxWidth:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSlideWidth:I

.field protected final mTmpChildRect:Landroid/graphics/Rect;

.field protected final mTmpContainerRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SlideLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlideLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SlideLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    const-string v0, "SlideLinearLayout"

    iput-object v0, p0, Landroid/widget/SlideLinearLayout;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlideLinearLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlideLinearLayout;->mTmpChildRect:Landroid/graphics/Rect;

    .line 41
    iput v1, p0, Landroid/widget/SlideLinearLayout;->mMaxWidth:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SlideLinearLayout;->mSlideWidth:I

    .line 43
    iput v1, p0, Landroid/widget/SlideLinearLayout;->mChildWidth:I

    .line 45
    iput v1, p0, Landroid/widget/SlideLinearLayout;->mLastX:I

    .line 46
    iput v1, p0, Landroid/widget/SlideLinearLayout;->mLastY:I

    .line 85
    invoke-direct {p0}, Landroid/widget/SlideLinearLayout;->init()V

    .line 86
    return-void
.end method

.method private checkTouchChild(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 267
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 268
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 269
    .local v9, "y":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 270
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Landroid/widget/SlideLinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 271
    iget v10, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getPaddingLeft()I

    move-result v11

    add-int v4, v10, v11

    .line 272
    .local v4, "left":I
    iget v10, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getPaddingRight()I

    move-result v11

    sub-int v7, v10, v11

    .line 273
    .local v7, "right":I
    packed-switch v0, :pswitch_data_0

    .line 312
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 276
    :pswitch_1
    const/4 v2, 0x0

    .line 277
    .local v2, "handled":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 278
    invoke-virtual {p0, v3}, Landroid/widget/SlideLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 279
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_5

    .line 280
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 281
    .local v5, "r":Landroid/graphics/Rect;
    invoke-virtual {v1, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 284
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 285
    iget v10, v5, Landroid/graphics/Rect;->left:I

    if-gt v10, v4, :cond_3

    .line 286
    if-nez v0, :cond_2

    const/4 v10, 0x1

    :goto_2
    const/4 v11, 0x0

    invoke-direct {p0, v1, v10, v11}, Landroid/widget/SlideLinearLayout;->notifyChildStateChange(Landroid/view/View;ZI)V

    .line 288
    const/4 v2, 0x1

    .line 300
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "r":Landroid/graphics/Rect;
    :cond_1
    :goto_3
    if-nez v2, :cond_0

    .line 301
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-direct {p0, v10, v11, v12}, Landroid/widget/SlideLinearLayout;->notifyChildStateChange(Landroid/view/View;ZI)V

    goto :goto_0

    .line 286
    .restart local v1    # "child":Landroid/view/View;
    .restart local v5    # "r":Landroid/graphics/Rect;
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 291
    :cond_3
    iget v10, v5, Landroid/graphics/Rect;->right:I

    if-lt v10, v7, :cond_5

    .line 292
    if-nez v0, :cond_4

    const/4 v10, 0x1

    :goto_4
    const/4 v11, 0x1

    invoke-direct {p0, v1, v10, v11}, Landroid/widget/SlideLinearLayout;->notifyChildStateChange(Landroid/view/View;ZI)V

    .line 294
    const/4 v2, 0x1

    .line 295
    goto :goto_3

    .line 292
    :cond_4
    const/4 v10, 0x0

    goto :goto_4

    .line 277
    .end local v5    # "r":Landroid/graphics/Rect;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 307
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "handled":Z
    .end local v3    # "i":I
    :pswitch_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-direct {p0, v10, v11, v12}, Landroid/widget/SlideLinearLayout;->notifyChildStateChange(Landroid/view/View;ZI)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getMaxSlideWidth()I
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Landroid/widget/SlideLinearLayout;->mSlideWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget v0, p0, Landroid/widget/SlideLinearLayout;->mChildWidth:I

    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SlideLinearLayout;->mSlideWidth:I

    .line 209
    iget v0, p0, Landroid/widget/SlideLinearLayout;->mSlideWidth:I

    if-gez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SlideLinearLayout;->mSlideWidth:I

    .line 213
    :cond_0
    iget v0, p0, Landroid/widget/SlideLinearLayout;->mSlideWidth:I

    return v0
.end method

.method private handleTouchEventForSlide(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 218
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 219
    .local v5, "y":I
    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getScrollX()I

    move-result v3

    .line 222
    .local v3, "scrollX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    :pswitch_0
    iput v4, p0, Landroid/widget/SlideLinearLayout;->mLastX:I

    .line 262
    iput v5, p0, Landroid/widget/SlideLinearLayout;->mLastY:I

    .line 263
    return-void

    .line 224
    :pswitch_1
    iget-object v6, p0, Landroid/widget/SlideLinearLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_0

    .line 225
    iget-object v6, p0, Landroid/widget/SlideLinearLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0

    .line 231
    :pswitch_2
    iget v6, p0, Landroid/widget/SlideLinearLayout;->mLastX:I

    sub-int v0, v4, v6

    .line 232
    .local v0, "deltaX":I
    iget v6, p0, Landroid/widget/SlideLinearLayout;->mLastY:I

    sub-int v1, v5, v6

    .line 233
    .local v1, "deltaY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    if-lt v6, v7, :cond_0

    .line 237
    sub-int v2, v3, v0

    .line 238
    .local v2, "newScrollX":I
    if-eqz v0, :cond_0

    .line 239
    if-gez v2, :cond_2

    .line 240
    const/4 v2, 0x0

    .line 244
    :cond_1
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6}, Landroid/widget/SlideLinearLayout;->scrollTo(II)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-direct {p0}, Landroid/widget/SlideLinearLayout;->getMaxSlideWidth()I

    move-result v6

    if-le v2, v6, :cond_1

    .line 242
    invoke-direct {p0}, Landroid/widget/SlideLinearLayout;->getMaxSlideWidth()I

    move-result v2

    goto :goto_1

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SlideLinearLayout;->setOrientation(I)V

    .line 195
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/SlideLinearLayout;->mScroller:Landroid/widget/Scroller;

    .line 196
    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SlideLinearLayout;->mMaxWidth:I

    .line 197
    return-void
.end method

.method private notifyChildStateChange(Landroid/view/View;ZI)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pressed"    # Z
    .param p3, "position"    # I

    .prologue
    .line 315
    iget-object v0, p0, Landroid/widget/SlideLinearLayout;->mEdgeChildStateChangedListener:Landroid/widget/SlideLinearLayout$OnEdgeChildStateChangedListener;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Landroid/widget/SlideLinearLayout;->mEdgeChildStateChangedListener:Landroid/widget/SlideLinearLayout$OnEdgeChildStateChangedListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SlideLinearLayout$OnEdgeChildStateChangedListener;->onPressedStateChanged(Landroid/view/View;ZI)V

    .line 319
    :cond_0
    return-void
.end method

.method private smoothScrollTo(II)V
    .locals 6
    .param p1, "destX"    # I
    .param p2, "destY"    # I

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getScrollX()I

    move-result v1

    .line 201
    .local v1, "scrollX":I
    sub-int v3, p1, v1

    .line 202
    .local v3, "delta":I
    iget-object v0, p0, Landroid/widget/SlideLinearLayout;->mScroller:Landroid/widget/Scroller;

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 203
    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->invalidate()V

    .line 204
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Landroid/widget/SlideLinearLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroid/widget/SlideLinearLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SlideLinearLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SlideLinearLayout;->scrollTo(II)V

    .line 189
    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->postInvalidate()V

    .line 191
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/widget/SlideLinearLayout;->getMaxSlideWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    invoke-direct {p0, p1}, Landroid/widget/SlideLinearLayout;->handleTouchEventForSlide(Landroid/view/MotionEvent;)V

    .line 181
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SlideLinearLayout;->checkTouchChild(Landroid/view/MotionEvent;)V

    .line 182
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getChildCount()I

    move-result v1

    .line 136
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getPaddingLeft()I

    move-result v4

    .line 140
    .local v4, "leftPos":I
    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getPaddingTop()I

    move-result v7

    .line 141
    .local v7, "parentTop":I
    sub-int v9, p5, p3

    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getPaddingBottom()I

    move-result v10

    sub-int v6, v9, v10

    .line 144
    .local v6, "parentBottom":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 145
    invoke-virtual {p0, v3}, Landroid/widget/SlideLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 149
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 150
    .local v8, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 153
    .local v2, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/SlideLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getDividerWidth()I

    move-result v9

    add-int/2addr v4, v9

    .line 156
    :cond_0
    iget-object v9, p0, Landroid/widget/SlideLinearLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v4

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 157
    add-int/2addr v4, v8

    .line 158
    iget-object v9, p0, Landroid/widget/SlideLinearLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 159
    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v9

    .line 161
    iget-object v9, p0, Landroid/widget/SlideLinearLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v7

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 162
    iget-object v9, p0, Landroid/widget/SlideLinearLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v10, v6, v10

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 166
    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v10, p0, Landroid/widget/SlideLinearLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/SlideLinearLayout;->mTmpChildRect:Landroid/graphics/Rect;

    invoke-static {v9, v8, v2, v10, v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 169
    iget-object v9, p0, Landroid/widget/SlideLinearLayout;->mTmpChildRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/SlideLinearLayout;->mTmpChildRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/SlideLinearLayout;->mTmpChildRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Landroid/widget/SlideLinearLayout;->mTmpChildRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 144
    .end local v2    # "height":I
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "width":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getChildCount()I

    move-result v7

    .line 101
    .local v7, "count":I
    const/4 v10, 0x0

    .line 102
    .local v10, "maxHeight":I
    const/4 v11, 0x0

    .line 103
    .local v11, "maxWidth":I
    const/4 v6, 0x0

    .line 105
    .local v6, "childState":I
    iput v3, p0, Landroid/widget/SlideLinearLayout;->mChildWidth:I

    .line 106
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 107
    invoke-virtual {p0, v8}, Landroid/widget/SlideLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/widget/SlideLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v12, v0, v2

    .line 113
    .local v12, "width":I
    iget v0, p0, Landroid/widget/SlideLinearLayout;->mChildWidth:I

    add-int/2addr v0, v12

    iput v0, p0, Landroid/widget/SlideLinearLayout;->mChildWidth:I

    .line 114
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v2

    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v6, v0}, Landroid/widget/SlideLinearLayout;->combineMeasuredStates(II)I

    move-result v6

    .line 106
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "width":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v10, v0

    .line 121
    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 122
    iget v0, p0, Landroid/widget/SlideLinearLayout;->mChildWidth:I

    invoke-virtual {p0}, Landroid/widget/SlideLinearLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 123
    iget v0, p0, Landroid/widget/SlideLinearLayout;->mMaxWidth:I

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 125
    invoke-static {v11, p1, v6}, Landroid/widget/SlideLinearLayout;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    invoke-static {v10, p2, v2}, Landroid/widget/SlideLinearLayout;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/SlideLinearLayout;->setMeasuredDimension(II)V

    .line 128
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 89
    iput p1, p0, Landroid/widget/SlideLinearLayout;->mMaxWidth:I

    .line 90
    return-void
.end method

.method public setOnEdgeChildStateChangedListener(Landroid/widget/SlideLinearLayout$OnEdgeChildStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SlideLinearLayout$OnEdgeChildStateChangedListener;

    .prologue
    .line 93
    iput-object p1, p0, Landroid/widget/SlideLinearLayout;->mEdgeChildStateChangedListener:Landroid/widget/SlideLinearLayout$OnEdgeChildStateChangedListener;

    .line 94
    return-void
.end method
