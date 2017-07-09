.class public Landroid/widget/SlideView;
.super Landroid/widget/LinearLayout;
.source "SlideView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlideView$SlideViewParams;,
        Landroid/widget/SlideView$OnViewPressedListener;,
        Landroid/widget/SlideView$OnViewCheckedChangeListener;,
        Landroid/widget/SlideView$OnSlideListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_COLOR:I = -0x1

.field private static final SHRINK_SPEED_FACTOR:I = 0x2

.field public static final SLIDE_STATUS_OFF:I = 0x0

.field public static final SLIDE_STATUS_ON:I = 0x2

.field public static final SLIDE_STATUS_START_SCROLL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlideView"

.field private static final TAN:I = 0x2


# instance fields
.field private BOUNCE_ANIM_BACK_DURATION:I

.field private BOUNCE_ANIM_DISTANCE:F

.field private BOUNCE_ANIM_FACTOR_BASE:F

.field private BOUNCE_ANIM_RUSH_DURATION:I

.field private final SLIDE_TITLE_ANIMATION_DURATION:J

.field private final SLIDE_TITLE_CAMERA_DISTANCE:F

.field private mBgColor:I

.field private mBgPressedColor:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChecked:Z

.field private mCheckedChangeListener:Landroid/widget/SlideView$OnViewCheckedChangeListener;

.field private mChildView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerView:Landroid/widget/ImageView;

.field private mDownSpace:Landroid/view/View;

.field private mEditing:Z

.field private mFixed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/widget/RelativeLayout;

.field private final mHolderRect:Landroid/graphics/Rect;

.field private mHolderWidth:I

.field private mLastX:I

.field private mLastY:I

.field private mLeftSlideThreshold:I

.field private mLeftSpaceWidth:I

.field private mOnSlideListener:Landroid/widget/SlideView$OnSlideListener;

.field private mOnSlideOutItemClickListener:Landroid/view/View$OnClickListener;

.field private mOnViewPressedListener:Landroid/widget/SlideView$OnViewPressedListener;

.field private mOriginalHeight:I

.field private mPosition:I

.field private final mRemoveAnim:Ljava/lang/Runnable;

.field private mRightSlideThreshold:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private mSlidingStatus:I

.field private mSpace:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;

.field private mViewContent:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/SlideView$SlideViewParams;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/SlideView$SlideViewParams;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "params"    # Landroid/widget/SlideView$SlideViewParams;

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object v0, p0, Landroid/widget/SlideView;->mChildView:Landroid/view/View;

    .line 58
    iput-object v0, p0, Landroid/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Landroid/widget/SlideView;->mSpace:Landroid/view/View;

    .line 61
    iput-object v0, p0, Landroid/widget/SlideView;->mDownSpace:Landroid/view/View;

    .line 66
    iput v1, p0, Landroid/widget/SlideView;->mSlidingStatus:I

    .line 71
    iput v1, p0, Landroid/widget/SlideView;->mLastX:I

    .line 72
    iput v1, p0, Landroid/widget/SlideView;->mLastY:I

    .line 73
    iput-boolean v1, p0, Landroid/widget/SlideView;->mEditing:Z

    .line 74
    iput v2, p0, Landroid/widget/SlideView;->mPosition:I

    .line 75
    iput-boolean v1, p0, Landroid/widget/SlideView;->mChecked:Z

    .line 76
    iput v1, p0, Landroid/widget/SlideView;->mLeftSlideThreshold:I

    .line 77
    iput v1, p0, Landroid/widget/SlideView;->mRightSlideThreshold:I

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlideView;->mHolderRect:Landroid/graphics/Rect;

    .line 82
    iput-boolean v1, p0, Landroid/widget/SlideView;->mFixed:Z

    .line 83
    iput v1, p0, Landroid/widget/SlideView;->mOriginalHeight:I

    .line 84
    iput v2, p0, Landroid/widget/SlideView;->mBgColor:I

    .line 85
    iput v2, p0, Landroid/widget/SlideView;->mBgPressedColor:I

    .line 88
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Landroid/widget/SlideView;->SLIDE_TITLE_ANIMATION_DURATION:J

    .line 89
    const/high16 v0, 0x44f00000    # 1920.0f

    iput v0, p0, Landroid/widget/SlideView;->SLIDE_TITLE_CAMERA_DISTANCE:F

    .line 91
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Landroid/widget/SlideView;->BOUNCE_ANIM_DISTANCE:F

    .line 92
    const/16 v0, 0xf0

    iput v0, p0, Landroid/widget/SlideView;->BOUNCE_ANIM_RUSH_DURATION:I

    .line 93
    const/16 v0, 0x104

    iput v0, p0, Landroid/widget/SlideView;->BOUNCE_ANIM_BACK_DURATION:I

    .line 94
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/widget/SlideView;->BOUNCE_ANIM_FACTOR_BASE:F

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/SlideView;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Landroid/widget/SlideView$1;

    invoke-direct {v0, p0}, Landroid/widget/SlideView$1;-><init>(Landroid/widget/SlideView;)V

    iput-object v0, p0, Landroid/widget/SlideView;->mRemoveAnim:Ljava/lang/Runnable;

    .line 141
    invoke-direct {p0, p3}, Landroid/widget/SlideView;->initView(Landroid/widget/SlideView$SlideViewParams;)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Landroid/widget/SlideView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SlideView;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/widget/SlideView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private initAnimParams()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Landroid/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SlideView;->BOUNCE_ANIM_DISTANCE:F

    .line 580
    iget-object v0, p0, Landroid/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SlideView;->BOUNCE_ANIM_RUSH_DURATION:I

    .line 582
    iget-object v0, p0, Landroid/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SlideView;->BOUNCE_ANIM_BACK_DURATION:I

    .line 584
    iget-object v0, p0, Landroid/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Landroid/widget/SlideView;->BOUNCE_ANIM_FACTOR_BASE:F

    .line 586
    return-void
.end method

.method private initAnimTextView(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 589
    new-instance v1, Landroid/view/animation/ElasticInterpolator;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/ElasticInterpolator;-><init>(B)V

    .line 592
    .local v1, "interpolator":Landroid/view/animation/ElasticInterpolator;
    const v2, 0x40333333    # 2.8f

    invoke-virtual {v1, v2}, Landroid/view/animation/ElasticInterpolator;->p(F)Landroid/view/animation/ElasticInterpolator;

    move-result-object v2

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v2, v3}, Landroid/view/animation/ElasticInterpolator;->a(F)Landroid/view/animation/ElasticInterpolator;

    move-object v0, p1

    .line 594
    check-cast v0, Landroid/widget/AnimTextView;

    .line 595
    .local v0, "animTextView":Landroid/widget/AnimTextView;
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/widget/AnimTextView;->setDuration(J)V

    .line 596
    invoke-virtual {v0, v1}, Landroid/widget/AnimTextView;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 597
    const/high16 v2, 0x44f00000    # 1920.0f

    invoke-virtual {v0, v2}, Landroid/widget/AnimTextView;->setCameraDistance(F)V

    .line 598
    return-void
.end method

.method private initView(Landroid/widget/SlideView$SlideViewParams;)V
    .locals 2
    .param p1, "params"    # Landroid/widget/SlideView$SlideViewParams;

    .prologue
    .line 601
    invoke-virtual {p0}, Landroid/widget/SlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlideView;->mContext:Landroid/content/Context;

    .line 602
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Landroid/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    .line 604
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SlideView;->setOrientation(I)V

    .line 605
    iget-object v0, p0, Landroid/widget/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/widget/SlideView$SlideViewParams;->getLayoutResource()I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 606
    const v0, 0x10203ff

    invoke-virtual {p0, v0}, Landroid/widget/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    .line 607
    const v0, 0x1020305

    invoke-virtual {p0, v0}, Landroid/widget/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    .line 608
    const v0, 0x10203fe

    invoke-virtual {p0, v0}, Landroid/widget/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlideView;->mSpace:Landroid/view/View;

    .line 609
    const v0, 0x1020402

    invoke-virtual {p0, v0}, Landroid/widget/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlideView;->mDownSpace:Landroid/view/View;

    .line 610
    const v0, 0x1020401

    invoke-virtual {p0, v0}, Landroid/widget/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/SlideView;->mTextView:Landroid/widget/TextView;

    .line 611
    iget-object v0, p0, Landroid/widget/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Landroid/widget/SlideView;->mHolder:Landroid/widget/RelativeLayout;

    .line 612
    const v0, 0x10203fc

    invoke-virtual {p0, v0}, Landroid/widget/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Landroid/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    .line 613
    iget-object v0, p0, Landroid/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 614
    iget-object v0, p0, Landroid/widget/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/SlideView;->initAnimTextView(Landroid/widget/TextView;)V

    .line 615
    invoke-direct {p0, p1}, Landroid/widget/SlideView;->updateParams(Landroid/widget/SlideView$SlideViewParams;)V

    .line 616
    invoke-direct {p0}, Landroid/widget/SlideView;->initAnimParams()V

    .line 617
    return-void
.end method

.method private quickScrollTo(II)V
    .locals 6
    .param p1, "destX"    # I
    .param p2, "destY"    # I

    .prologue
    const/4 v2, 0x0

    .line 548
    iget-object v0, p0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v1

    .line 549
    .local v1, "scrollX":I
    sub-int v3, p1, v1

    .line 550
    .local v3, "delta":I
    iget-object v0, p0, Landroid/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 551
    invoke-virtual {p0}, Landroid/widget/SlideView;->invalidate()V

    .line 552
    return-void
.end method

.method private smoothScrollTo(II)V
    .locals 6
    .param p1, "destX"    # I
    .param p2, "destY"    # I

    .prologue
    const/4 v2, 0x0

    .line 540
    iget-object v0, p0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v1

    .line 541
    .local v1, "scrollX":I
    sub-int v3, p1, v1

    .line 543
    .local v3, "delta":I
    iget-object v0, p0, Landroid/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 544
    invoke-virtual {p0}, Landroid/widget/SlideView;->invalidate()V

    .line 545
    return-void
.end method

.method private startSlideAnimation(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 654
    iget-object v2, p0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 655
    invoke-virtual {p0}, Landroid/widget/SlideView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 657
    .local v0, "animTime":I
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, p1

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 658
    .local v1, "animation":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 659
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 661
    iget-object v2, p0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 662
    return-void
.end method

.method private updateParams(Landroid/widget/SlideView$SlideViewParams;)V
    .locals 3
    .param p1, "params"    # Landroid/widget/SlideView$SlideViewParams;

    .prologue
    const/4 v2, -0x1

    .line 555
    if-eqz p1, :cond_3

    .line 556
    invoke-virtual {p1}, Landroid/widget/SlideView$SlideViewParams;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/SlideView;->mHolderWidth:I

    .line 557
    invoke-virtual {p1}, Landroid/widget/SlideView$SlideViewParams;->getLeftSpaceWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/SlideView;->mLeftSpaceWidth:I

    .line 558
    invoke-virtual {p1}, Landroid/widget/SlideView$SlideViewParams;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 559
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 560
    iget-object v1, p0, Landroid/widget/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SlideView$SlideViewParams;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 563
    invoke-virtual {p1}, Landroid/widget/SlideView$SlideViewParams;->getBgColor()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 564
    invoke-virtual {p1}, Landroid/widget/SlideView$SlideViewParams;->getBgColor()I

    move-result v1

    iput v1, p0, Landroid/widget/SlideView;->mBgColor:I

    .line 565
    iget v1, p0, Landroid/widget/SlideView;->mBgColor:I

    invoke-virtual {p0, v1}, Landroid/widget/SlideView;->setBackgroundColor(I)V

    .line 567
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SlideView$SlideViewParams;->getBgPressedColor()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 568
    invoke-virtual {p1}, Landroid/widget/SlideView$SlideViewParams;->getBgPressedColor()I

    move-result v1

    iput v1, p0, Landroid/widget/SlideView;->mBgPressedColor:I

    .line 570
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SlideView$SlideViewParams;->getLeftSlideThreshold()I

    move-result v1

    iput v1, p0, Landroid/widget/SlideView;->mLeftSlideThreshold:I

    .line 571
    invoke-virtual {p1}, Landroid/widget/SlideView$SlideViewParams;->getRightSlideThreshold()I

    move-result v1

    iput v1, p0, Landroid/widget/SlideView;->mRightSlideThreshold:I

    .line 573
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_3
    return-void
.end method

.method private updateSlidingStatus(I)V
    .locals 3
    .param p1, "scrollX"    # I

    .prologue
    .line 626
    iget v1, p0, Landroid/widget/SlideView;->mHolderWidth:I

    if-lt p1, v1, :cond_2

    .line 627
    const/4 v0, 0x2

    .line 636
    .local v0, "status":I
    :goto_0
    iget v1, p0, Landroid/widget/SlideView;->mSlidingStatus:I

    if-eq v0, v1, :cond_1

    .line 637
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 638
    iget-object v1, p0, Landroid/widget/SlideView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    :cond_0
    iput v0, p0, Landroid/widget/SlideView;->mSlidingStatus:I

    .line 645
    iget-object v1, p0, Landroid/widget/SlideView;->mOnSlideListener:Landroid/widget/SlideView$OnSlideListener;

    if-eqz v1, :cond_1

    .line 647
    iget-object v1, p0, Landroid/widget/SlideView;->mOnSlideListener:Landroid/widget/SlideView$OnSlideListener;

    iget v2, p0, Landroid/widget/SlideView;->mSlidingStatus:I

    invoke-interface {v1, p0, v2}, Landroid/widget/SlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 650
    :cond_1
    return-void

    .line 628
    .end local v0    # "status":I
    :cond_2
    iget v1, p0, Landroid/widget/SlideView;->mLeftSlideThreshold:I

    if-gt p1, v1, :cond_3

    iget v1, p0, Landroid/widget/SlideView;->mRightSlideThreshold:I

    neg-int v1, v1

    if-ge p1, v1, :cond_4

    .line 629
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "status":I
    goto :goto_0

    .line 631
    .end local v0    # "status":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "status":I
    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Landroid/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Landroid/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SlideView;->scrollTo(II)V

    .line 462
    iget-object v0, p0, Landroid/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SlideView;->updateSlidingStatus(I)V

    .line 463
    invoke-virtual {p0}, Landroid/widget/SlideView;->postInvalidate()V

    .line 465
    :cond_0
    return-void
.end method

.method public getCheckedRegion()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Landroid/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Landroid/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getRight()I

    move-result v0

    .line 423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/widget/SlideView;->mChildView:Landroid/view/View;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Landroid/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 274
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v1
.end method

.method public getSlidingStatus()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Landroid/widget/SlideView;->mSlidingStatus:I

    return v0
.end method

.method public getViewPosition()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Landroid/widget/SlideView;->mPosition:I

    return v0
.end method

.method public handleSlideOutItemClick(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "clicked":Z
    iget-object v1, p0, Landroid/widget/SlideView;->mHolder:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Landroid/widget/SlideView;->mHolderRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 410
    iget-object v1, p0, Landroid/widget/SlideView;->mHolderRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    const/4 v0, 0x1

    .line 412
    iget-object v1, p0, Landroid/widget/SlideView;->mOnSlideOutItemClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Landroid/widget/SlideView;->mOnSlideOutItemClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Landroid/widget/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 416
    :cond_0
    return v0
.end method

.method public isSliding()Z
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Landroid/widget/SlideView;->mSlidingStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewChecked()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Landroid/widget/SlideView;->mEditing:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Landroid/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewFixed()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Landroid/widget/SlideView;->mFixed:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 479
    iput-boolean p2, p0, Landroid/widget/SlideView;->mChecked:Z

    .line 480
    iget-object v0, p0, Landroid/widget/SlideView;->mCheckedChangeListener:Landroid/widget/SlideView$OnViewCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Landroid/widget/SlideView;->mCheckedChangeListener:Landroid/widget/SlideView$OnViewCheckedChangeListener;

    iget v1, p0, Landroid/widget/SlideView;->mPosition:I

    iget-boolean v2, p0, Landroid/widget/SlideView;->mChecked:Z

    invoke-interface {v0, p1, v1, v2}, Landroid/widget/SlideView$OnViewCheckedChangeListener;->onCheckedChange(Landroid/view/View;IZ)V

    .line 483
    :cond_0
    return-void
.end method

.method public onRequireTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 302
    .local v10, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 303
    .local v11, "y":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v7

    .line 304
    .local v7, "scrollX":I
    const/4 v4, 0x0

    .line 306
    .local v4, "enableAnim":Z
    const/4 v8, 0x0

    .line 310
    .local v8, "sliding":Z
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/SlideView;->mFixed:Z

    if-eqz v12, :cond_0

    move v9, v8

    .line 404
    .end local v8    # "sliding":Z
    .local v9, "sliding":I
    :goto_0
    return v9

    .line 315
    .end local v9    # "sliding":I
    .restart local v8    # "sliding":Z
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 397
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/SlideView;->mLastX:I

    .line 398
    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/SlideView;->mLastY:I

    .line 400
    if-eqz v4, :cond_2

    .line 401
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/SlideView;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SlideView;->mRemoveAnim:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/SlideView;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SlideView;->mRemoveAnim:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    move v9, v8

    .line 404
    .restart local v9    # "sliding":I
    goto :goto_0

    .line 318
    .end local v9    # "sliding":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v12

    if-nez v12, :cond_1

    .line 319
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/SlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    .line 324
    :pswitch_1
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/SlideView;->mLastX:I

    sub-int v2, v10, v12

    .line 325
    .local v2, "deltaX":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/SlideView;->mLastY:I

    sub-int v3, v11, v12

    .line 326
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    if-lt v12, v13, :cond_1

    .line 330
    sub-int v6, v7, v2

    .line 335
    .local v6, "newScrollX":I
    if-eqz v2, :cond_1

    .line 336
    int-to-double v12, v7

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SlideView;->mHolderWidth:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    mul-double v14, v14, v16

    cmpg-double v12, v12, v14

    if-gez v12, :cond_3

    int-to-double v12, v6

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SlideView;->mHolderWidth:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    mul-double v14, v14, v16

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_3

    .line 337
    const/4 v4, 0x1

    .line 341
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/SlideView;->mHolderWidth:I

    if-le v6, v12, :cond_7

    .line 342
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/SlideView;->mHolderWidth:I

    .line 350
    :cond_4
    :goto_2
    int-to-double v12, v6

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SlideView;->mHolderWidth:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    mul-double v14, v14, v16

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_5

    .line 351
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/SlideView;->mTextView:Landroid/widget/TextView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Landroid/widget/SlideView;->scrollTo(II)V

    .line 354
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/SlideView;->updateSlidingStatus(I)V

    .line 355
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/SlideView;->mLeftSlideThreshold:I

    if-gt v6, v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/SlideView;->mRightSlideThreshold:I

    neg-int v12, v12

    if-ge v6, v12, :cond_8

    :cond_6
    const/4 v8, 0x1

    :goto_3
    goto/16 :goto_1

    .line 343
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/SlideView;->mLeftSpaceWidth:I

    neg-int v12, v12

    if-ge v6, v12, :cond_4

    .line 344
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/SlideView;->mLeftSpaceWidth:I

    neg-int v6, v12

    goto :goto_2

    .line 355
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 361
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v6    # "newScrollX":I
    :pswitch_2
    const/4 v6, 0x0

    .line 362
    .restart local v6    # "newScrollX":I
    int-to-double v12, v7

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SlideView;->mHolderWidth:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_9

    .line 363
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/SlideView;->mHolderWidth:I

    .line 367
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v12

    if-gez v12, :cond_a

    .line 368
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v5

    .line 372
    .local v5, "left":I
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12}, Landroid/widget/SlideView;->quickScrollTo(II)V

    .line 376
    neg-int v12, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/SlideView;->startBounceAnimation(I)V

    .line 383
    .end local v5    # "left":I
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/SlideView;->updateSlidingStatus(I)V

    .line 384
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/SlideView;->mHolderWidth:I

    if-gt v6, v12, :cond_b

    const/4 v8, 0x1

    .line 390
    :goto_5
    goto/16 :goto_1

    .line 381
    :cond_a
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12}, Landroid/widget/SlideView;->smoothScrollTo(II)V

    goto :goto_4

    .line 384
    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeContentView()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/widget/SlideView;->mChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/SlideView;->mChildView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SlideView;->mChildView:Landroid/view/View;

    .line 181
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 469
    if-ltz p1, :cond_0

    .line 470
    iget-object v0, p0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/SlideView;->updateBackground(Landroid/view/View;)V

    .line 155
    iget-object v1, p0, Landroid/widget/SlideView;->mChildView:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Landroid/widget/SlideView;->mChildView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/widget/SlideView;->mChildView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 161
    :cond_1
    iput-object p1, p0, Landroid/widget/SlideView;->mChildView:Landroid/view/View;

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_2

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 166
    :cond_2
    if-nez v0, :cond_3

    .line 167
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 170
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 173
    :cond_4
    iget-object v1, p0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 249
    iget-object v0, p0, Landroid/widget/SlideView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 252
    :cond_0
    iput-object p1, p0, Landroid/widget/SlideView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 253
    if-eqz p1, :cond_1

    .line 254
    iget-object v0, p0, Landroid/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v0, p0, Landroid/widget/SlideView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/SlideView;->setDividerHeight(I)V

    .line 256
    iget-object v0, p0, Landroid/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Landroid/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 264
    if-lez p1, :cond_0

    .line 265
    iget-object v1, p0, Landroid/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 266
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 267
    iget-object v1, p0, Landroid/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setDividerState(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 525
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/SlideView;->mSlidingStatus:I

    if-eqz v0, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Landroid/widget/SlideView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 529
    if-eqz p1, :cond_2

    .line 530
    iget-object v0, p0, Landroid/widget/SlideView;->mDivider:Landroid/graphics/drawable/Drawable;

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 534
    :goto_1
    iget-object v0, p0, Landroid/widget/SlideView;->mDividerView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/SlideView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 532
    :cond_2
    iget-object v0, p0, Landroid/widget/SlideView;->mDivider:Landroid/graphics/drawable/Drawable;

    new-array v1, v1, [I

    const v2, 0x101009e

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1
.end method

.method public setOnSlideListener(Landroid/widget/SlideView$OnSlideListener;)V
    .locals 0
    .param p1, "onSlideListener"    # Landroid/widget/SlideView$OnSlideListener;

    .prologue
    .line 225
    iput-object p1, p0, Landroid/widget/SlideView;->mOnSlideListener:Landroid/widget/SlideView$OnSlideListener;

    .line 226
    return-void
.end method

.method public setOnSlideOutItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 221
    iput-object p1, p0, Landroid/widget/SlideView;->mOnSlideOutItemClickListener:Landroid/view/View$OnClickListener;

    .line 222
    return-void
.end method

.method public setOnViewCheckedChangedListener(Landroid/widget/SlideView$OnViewCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SlideView$OnViewCheckedChangeListener;

    .prologue
    .line 229
    iput-object p1, p0, Landroid/widget/SlideView;->mCheckedChangeListener:Landroid/widget/SlideView$OnViewCheckedChangeListener;

    .line 230
    return-void
.end method

.method public setOnViewPressedistener(Landroid/widget/SlideView$OnViewPressedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SlideView$OnViewPressedListener;

    .prologue
    .line 233
    iput-object p1, p0, Landroid/widget/SlideView;->mOnViewPressedListener:Landroid/widget/SlideView$OnViewPressedListener;

    .line 234
    return-void
.end method

.method public setParams(Landroid/widget/SlideView$SlideViewParams;)V
    .locals 0
    .param p1, "params"    # Landroid/widget/SlideView$SlideViewParams;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Landroid/widget/SlideView;->updateParams(Landroid/widget/SlideView$SlideViewParams;)V

    .line 150
    return-void
.end method

.method public setPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    const/4 v1, -0x1

    .line 488
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 489
    invoke-virtual {p0, p1}, Landroid/widget/SlideView;->setDividerState(Z)V

    .line 494
    iget-object v0, p0, Landroid/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SlideView;->mFixed:Z

    if-nez v0, :cond_0

    .line 498
    if-eqz p1, :cond_3

    iget v0, p0, Landroid/widget/SlideView;->mSlidingStatus:I

    if-nez v0, :cond_3

    .line 499
    iget v0, p0, Landroid/widget/SlideView;->mBgPressedColor:I

    if-eq v0, v1, :cond_2

    .line 500
    iget v0, p0, Landroid/widget/SlideView;->mBgPressedColor:I

    invoke-virtual {p0, v0}, Landroid/widget/SlideView;->setBackgroundColor(I)V

    .line 515
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/SlideView;->mOnViewPressedListener:Landroid/widget/SlideView$OnViewPressedListener;

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Landroid/widget/SlideView;->mOnViewPressedListener:Landroid/widget/SlideView$OnViewPressedListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/SlideView$OnViewPressedListener;->onPressed(Landroid/view/View;Z)V

    .line 518
    :cond_1
    return-void

    .line 502
    :cond_2
    iget-object v0, p0, Landroid/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/SlideView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 503
    iget-object v0, p0, Landroid/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SlideView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 506
    :cond_3
    iget v0, p0, Landroid/widget/SlideView;->mBgColor:I

    if-eq v0, v1, :cond_4

    .line 507
    iget v0, p0, Landroid/widget/SlideView;->mBgColor:I

    invoke-virtual {p0, v0}, Landroid/widget/SlideView;->setBackgroundColor(I)V

    goto :goto_0

    .line 509
    :cond_4
    iget-object v0, p0, Landroid/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 510
    iget-object v0, p0, Landroid/widget/SlideView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SlideView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSpaceHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 278
    iget v1, p0, Landroid/widget/SlideView;->mOriginalHeight:I

    if-nez v1, :cond_0

    .line 279
    invoke-virtual {p0}, Landroid/widget/SlideView;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/SlideView;->mOriginalHeight:I

    .line 282
    :cond_0
    const/4 v0, 0x0

    .line 283
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/widget/SlideView;->mSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 284
    div-int/lit8 v1, p1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 285
    iget-object v1, p0, Landroid/widget/SlideView;->mSpace:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v1, p0, Landroid/widget/SlideView;->mDownSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 288
    div-int/lit8 v1, p1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 289
    iget-object v1, p0, Landroid/widget/SlideView;->mDownSpace:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/widget/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public setViewChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 198
    iget-boolean v0, p0, Landroid/widget/SlideView;->mEditing:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public setViewFixed(Z)V
    .locals 0
    .param p1, "fixed"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Landroid/widget/SlideView;->mFixed:Z

    .line 433
    return-void
.end method

.method public setViewPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 213
    iput p1, p0, Landroid/widget/SlideView;->mPosition:I

    .line 214
    return-void
.end method

.method public showCheckItem(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 188
    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Landroid/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlideView;->mEditing:Z

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/widget/SlideView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 193
    iput-boolean v2, p0, Landroid/widget/SlideView;->mEditing:Z

    goto :goto_0
.end method

.method public shrink(Z)V
    .locals 2
    .param p1, "smooth"    # Z

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    if-eqz p1, :cond_1

    .line 240
    invoke-direct {p0, v1, v1}, Landroid/widget/SlideView;->smoothScrollTo(II)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-direct {p0, v1, v1}, Landroid/widget/SlideView;->quickScrollTo(II)V

    goto :goto_0
.end method

.method public startBounceAnimation(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 665
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 667
    .local v2, "animSet":Landroid/animation/AnimatorSet;
    int-to-float v5, p1

    iget v6, p0, Landroid/widget/SlideView;->mLeftSpaceWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Landroid/widget/SlideView;->BOUNCE_ANIM_DISTANCE:F

    mul-float v3, v5, v6

    .line 668
    .local v3, "rushDistance":F
    int-to-float v5, p1

    iget v6, p0, Landroid/widget/SlideView;->mLeftSpaceWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Landroid/widget/SlideView;->BOUNCE_ANIM_FACTOR_BASE:F

    mul-float v4, v5, v6

    .line 670
    .local v4, "rushRate":F
    iget-object v5, p0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v11, [F

    int-to-float v8, p1

    aput v8, v7, v9

    neg-float v8, v3

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 673
    .local v1, "animRush":Landroid/animation/Animator;
    iget v5, p0, Landroid/widget/SlideView;->BOUNCE_ANIM_RUSH_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 674
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 676
    iget-object v5, p0, Landroid/widget/SlideView;->mViewContent:Landroid/widget/LinearLayout;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v11, [F

    neg-float v8, v3

    aput v8, v7, v9

    const/4 v8, 0x0

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 678
    .local v0, "animBounce":Landroid/animation/Animator;
    iget v5, p0, Landroid/widget/SlideView;->BOUNCE_ANIM_BACK_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 679
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 680
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 681
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 682
    return-void
.end method

.method public updateBackground(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 440
    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 444
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 446
    .local v1, "current":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 447
    .local v2, "newBg":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/SlideView;->mSpace:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v3, p0, Landroid/widget/SlideView;->mDownSpace:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 451
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "current":Landroid/graphics/drawable/Drawable;
    .end local v2    # "newBg":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method
