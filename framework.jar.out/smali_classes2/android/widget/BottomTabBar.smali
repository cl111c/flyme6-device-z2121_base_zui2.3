.class public Landroid/widget/BottomTabBar;
.super Landroid/widget/LinearLayout;
.source "BottomTabBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BottomTabBar$1;,
        Landroid/widget/BottomTabBar$SelectedStateTracker;,
        Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;,
        Landroid/widget/BottomTabBar$OnSelectionChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INVALID_ID:I = -0x1

.field private static final INVALID_INDEX:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BottomTabBar"


# instance fields
.field private mBarHeight:I

.field protected final mBorderRect:Landroid/graphics/Rect;

.field private mChildOnSelectedChangeListener:Landroid/widget/BottomBarItem$OnSelectedListener;

.field protected mChildrenRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field protected mDividerHeight:I

.field private mEnabledAnim:Z

.field private mFocusedId:I

.field private mHorizontalTouchPadding:I

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mItemTextDisabledColor:I

.field protected mLeftWidth:I

.field protected mOnSelectionChangeListener:Landroid/widget/BottomTabBar$OnSelectionChangeListener;

.field private mPassThroughListener:Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;

.field private mProtectFromSelectedChange:Z

.field protected mRightWidth:I

.field protected final mTmpChildRect:Landroid/graphics/Rect;

.field protected final mTmpContainerRect:Landroid/graphics/Rect;

.field private mTouchedChildIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/BottomTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const v0, 0x116011a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/BottomTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/BottomTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    iput v2, p0, Landroid/widget/BottomTabBar;->mFocusedId:I

    .line 75
    iput-boolean v4, p0, Landroid/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    .line 80
    iput v2, p0, Landroid/widget/BottomTabBar;->mTouchedChildIndex:I

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    .line 83
    iput-boolean v3, p0, Landroid/widget/BottomTabBar;->mEnabledAnim:Z

    .line 84
    iput v4, p0, Landroid/widget/BottomTabBar;->mDividerHeight:I

    .line 90
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    .line 109
    sget-object v1, Lcom/android/internal/R$styleable;->BottomTabBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060149

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/BottomTabBar;->setBackgroundColor(I)V

    .line 113
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/BottomTabBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-object v1, p0, Landroid/widget/BottomTabBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/BottomTabBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050178

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/BottomTabBar;->mDividerHeight:I

    .line 118
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/BottomTabBar;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 119
    const/4 v1, 0x4

    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106013f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/BottomTabBar;->mItemTextDisabledColor:I

    .line 121
    const/4 v1, 0x3

    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/BottomTabBar;->mBarHeight:I

    .line 123
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/BottomTabBar;->mHorizontalTouchPadding:I

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    invoke-direct {p0}, Landroid/widget/BottomTabBar;->init()V

    .line 127
    return-void
.end method

.method static synthetic access$300(Landroid/widget/BottomTabBar;)Landroid/widget/BottomBarItem$OnSelectedListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/BottomTabBar;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/BottomTabBar;->mChildOnSelectedChangeListener:Landroid/widget/BottomBarItem$OnSelectedListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/BottomTabBar;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/BottomTabBar;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/BottomTabBar;->setFocusedId(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/BottomTabBar;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/BottomTabBar;

    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    return v0
.end method

.method static synthetic access$502(Landroid/widget/BottomTabBar;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/BottomTabBar;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Landroid/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/BottomTabBar;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BottomTabBar;

    .prologue
    .line 61
    iget v0, p0, Landroid/widget/BottomTabBar;->mFocusedId:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/BottomTabBar;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/BottomTabBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/BottomTabBar;->setFocusedStateForView(IZ)V

    return-void
.end method

.method private activateAnimation(Z)V
    .locals 4
    .param p1, "enter"    # Z

    .prologue
    .line 525
    iget-boolean v2, p0, Landroid/widget/BottomTabBar;->mEnabledAnim:Z

    if-nez v2, :cond_0

    .line 542
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->clearAnimation()V

    .line 531
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 532
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0054

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 537
    .local v0, "animation":Landroid/view/animation/Animation;
    :goto_1
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 539
    .local v1, "animationTime":I
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 541
    invoke-virtual {p0, v0}, Landroid/widget/BottomTabBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 534
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "animationTime":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0052

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_1
.end method

.method private cancelLastItemTouch()V
    .locals 3

    .prologue
    .line 516
    iget v1, p0, Landroid/widget/BottomTabBar;->mTouchedChildIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 517
    iget v1, p0, Landroid/widget/BottomTabBar;->mTouchedChildIndex:I

    invoke-virtual {p0, v1}, Landroid/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 518
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/BottomBarItem;

    if-eqz v1, :cond_0

    .line 519
    check-cast v0, Landroid/widget/BottomBarItem;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/BottomBarItem;->cancelTouch()V

    .line 522
    :cond_0
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 484
    iget-object v0, p0, Landroid/widget/BottomTabBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Landroid/widget/BottomTabBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getRight()I

    move-result v3

    iget v4, p0, Landroid/widget/BottomTabBar;->mDividerHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 486
    iget-object v0, p0, Landroid/widget/BottomTabBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 488
    :cond_0
    return-void
.end method

.method private getTouchedChildIndex(FF)I
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 501
    const/4 v1, -0x1

    .line 502
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 507
    iget-object v2, p0, Landroid/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    move v1, v0

    .line 512
    :cond_0
    return v1

    .line 502
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/BottomTabBar;->setOrientation(I)V

    .line 464
    new-instance v0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/BottomTabBar;Landroid/widget/BottomTabBar$1;)V

    iput-object v0, p0, Landroid/widget/BottomTabBar;->mPassThroughListener:Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;

    .line 465
    new-instance v0, Landroid/widget/BottomTabBar$SelectedStateTracker;

    invoke-direct {v0, p0, v1}, Landroid/widget/BottomTabBar$SelectedStateTracker;-><init>(Landroid/widget/BottomTabBar;Landroid/widget/BottomTabBar$1;)V

    iput-object v0, p0, Landroid/widget/BottomTabBar;->mChildOnSelectedChangeListener:Landroid/widget/BottomBarItem$OnSelectedListener;

    .line 466
    iget-object v0, p0, Landroid/widget/BottomTabBar;->mPassThroughListener:Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 467
    return-void
.end method

.method private setFocusedId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 470
    iput p1, p0, Landroid/widget/BottomTabBar;->mFocusedId:I

    .line 471
    iget-object v0, p0, Landroid/widget/BottomTabBar;->mOnSelectionChangeListener:Landroid/widget/BottomTabBar$OnSelectionChangeListener;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Landroid/widget/BottomTabBar;->mOnSelectionChangeListener:Landroid/widget/BottomTabBar$OnSelectionChangeListener;

    iget v1, p0, Landroid/widget/BottomTabBar;->mFocusedId:I

    invoke-interface {v0, p0, v1}, Landroid/widget/BottomTabBar$OnSelectionChangeListener;->onSelectionChanged(Landroid/widget/BottomTabBar;I)V

    .line 474
    :cond_0
    return-void
.end method

.method private setFocusedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "focused"    # Z

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Landroid/widget/BottomTabBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 478
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/BottomBarItem;

    if-eqz v1, :cond_0

    .line 479
    check-cast v0, Landroid/widget/BottomBarItem;

    .end local v0    # "focusedView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/BottomBarItem;->setFocused(Z)V

    .line 481
    :cond_0
    return-void
.end method

.method private updateItemsTextColor()V
    .locals 4

    .prologue
    .line 491
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 492
    invoke-virtual {p0, v1}, Landroid/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 493
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/BottomBarItem;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 494
    check-cast v2, Landroid/widget/BottomBarItem;

    iget-object v3, p0, Landroid/widget/BottomTabBar;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/BottomBarItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 495
    check-cast v0, Landroid/widget/BottomBarItem;

    .end local v0    # "child":Landroid/view/View;
    iget v2, p0, Landroid/widget/BottomTabBar;->mItemTextDisabledColor:I

    invoke-virtual {v0, v2}, Landroid/widget/BottomBarItem;->setTextDisabledColor(I)V

    .line 491
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 231
    instance-of v1, p1, Landroid/widget/BottomBarItem;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 232
    check-cast v0, Landroid/widget/BottomBarItem;

    .line 233
    .local v0, "item":Landroid/widget/BottomBarItem;
    invoke-virtual {v0}, Landroid/widget/BottomBarItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    .line 235
    iget v1, p0, Landroid/widget/BottomTabBar;->mFocusedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 236
    iget v1, p0, Landroid/widget/BottomTabBar;->mFocusedId:I

    invoke-direct {p0, v1, v3}, Landroid/widget/BottomTabBar;->setFocusedStateForView(IZ)V

    .line 238
    :cond_0
    iput-boolean v3, p0, Landroid/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    .line 239
    invoke-virtual {v0}, Landroid/widget/BottomBarItem;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/BottomTabBar;->setFocusedId(I)V

    .line 243
    .end local v0    # "item":Landroid/widget/BottomBarItem;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 244
    return-void
.end method

.method public clearSelection()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/BottomTabBar;->setSelection(I)V

    .line 189
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 394
    invoke-virtual {p0, p1}, Landroid/widget/BottomTabBar;->isMovingOutTouchArea(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    invoke-direct {p0}, Landroid/widget/BottomTabBar;->cancelLastItemTouch()V

    move v2, v4

    .line 421
    :goto_0
    return v2

    .line 403
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/BottomTabBar;->getTouchedChildIndex(FF)I

    move-result v0

    .line 404
    .local v0, "index":I
    const/4 v1, 0x0

    .line 409
    .local v1, "view":Landroid/view/View;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 410
    invoke-virtual {p0, v0}, Landroid/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 412
    :cond_1
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/widget/BottomBarItem;

    if-eqz v2, :cond_3

    .line 413
    iget v2, p0, Landroid/widget/BottomTabBar;->mTouchedChildIndex:I

    if-eq v0, v2, :cond_2

    .line 414
    invoke-direct {p0}, Landroid/widget/BottomTabBar;->cancelLastItemTouch()V

    :cond_2
    move-object v2, v1

    .line 416
    check-cast v2, Landroid/widget/BottomBarItem;

    iget-object v3, p0, Landroid/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v3}, Landroid/widget/BottomBarItem;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    .line 418
    iput v0, p0, Landroid/widget/BottomTabBar;->mTouchedChildIndex:I

    move v2, v4

    .line 419
    goto :goto_0

    .line 421
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public enablePushAnimation(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 435
    iput-boolean p1, p0, Landroid/widget/BottomTabBar;->mEnabledAnim:Z

    .line 436
    return-void
.end method

.method public findItemById(I)Landroid/widget/BottomBarItem;
    .locals 3
    .param p1, "itemId"    # I

    .prologue
    .line 247
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 248
    invoke-virtual {p0, v1}, Landroid/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/BottomBarItem;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 250
    check-cast v0, Landroid/widget/BottomBarItem;

    .line 253
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 247
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSelectedItemId()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Landroid/widget/BottomTabBar;->mFocusedId:I

    return v0
.end method

.method protected isMovingOutTouchArea(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 459
    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 450
    :pswitch_1
    iget-object v2, p0, Landroid/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/BottomTabBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 452
    .local v0, "x":I
    iget-object v2, p0, Landroid/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/widget/BottomTabBar;->mHorizontalTouchPadding:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    iget-object v2, p0, Landroid/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/widget/BottomTabBar;->mHorizontalTouchPadding:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public lockTabBar(Z)V
    .locals 3
    .param p1, "locked"    # Z

    .prologue
    .line 268
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 269
    invoke-virtual {p0, v1}, Landroid/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/BottomBarItem;

    if-eqz v2, :cond_0

    .line 271
    check-cast v0, Landroid/widget/BottomBarItem;

    .end local v0    # "child":Landroid/view/View;
    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/BottomBarItem;->enableSelect(Z)V

    .line 268
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 274
    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 373
    invoke-direct {p0, p1}, Landroid/widget/BottomTabBar;->drawDivider(Landroid/graphics/Canvas;)V

    .line 374
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 381
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 382
    invoke-direct {p0}, Landroid/widget/BottomTabBar;->updateItemsTextColor()V

    .line 384
    iget v0, p0, Landroid/widget/BottomTabBar;->mFocusedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 385
    iput-boolean v2, p0, Landroid/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    .line 386
    iget v0, p0, Landroid/widget/BottomTabBar;->mFocusedId:I

    invoke-direct {p0, v0, v2}, Landroid/widget/BottomTabBar;->setFocusedStateForView(IZ)V

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/BottomTabBar;->mProtectFromSelectedChange:Z

    .line 388
    iget v0, p0, Landroid/widget/BottomTabBar;->mFocusedId:I

    invoke-direct {p0, v0}, Landroid/widget/BottomTabBar;->setFocusedId(I)V

    .line 390
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BottomTabBar;->getChildCount()I

    move-result v5

    .line 317
    .local v5, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BottomTabBar;->getPaddingLeft()I

    move-result v9

    .line 318
    .local v9, "leftPos":I
    sub-int v20, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BottomTabBar;->getPaddingRight()I

    move-result v21

    sub-int v16, v20, v21

    .line 321
    .local v16, "rightPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BottomTabBar;->mLeftWidth:I

    move/from16 v20, v0

    add-int v11, v9, v20

    .line 322
    .local v11, "middleLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BottomTabBar;->mRightWidth:I

    move/from16 v20, v0

    sub-int v12, v16, v20

    .line 324
    .local v12, "middleRight":I
    const/16 v18, 0x0

    .line 325
    .local v18, "visibleCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_1

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 327
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 328
    add-int/lit8 v18, v18, 0x1

    .line 325
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 331
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    if-lez v5, :cond_3

    sub-int v20, v12, v11

    div-int v6, v20, v18

    .line 332
    .local v6, "groupWidth":I
    :goto_1
    if-lez v5, :cond_4

    sub-int v20, p4, p2

    div-int v17, v20, v18

    .line 335
    .local v17, "touchWidth":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BottomTabBar;->getPaddingTop()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BottomTabBar;->mDividerHeight:I

    move/from16 v21, v0

    add-int v14, v20, v21

    .line 336
    .local v14, "parentTop":I
    sub-int v20, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BottomTabBar;->getPaddingBottom()I

    move-result v21

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BottomTabBar;->mDividerHeight:I

    move/from16 v21, v0

    add-int v13, v20, v21

    .line 338
    .local v13, "parentBottom":I
    const/16 v18, 0x0

    .line 339
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_5

    .line 340
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 341
    .restart local v4    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    .line 342
    .local v15, "rect":Landroid/graphics/Rect;
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 343
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 344
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 346
    .local v10, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 347
    .local v19, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 350
    .local v7, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    mul-int v21, v6, v18

    add-int v21, v21, v11

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    add-int/lit8 v21, v18, 0x1

    mul-int v21, v21, v6

    add-int v21, v21, v11

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int v21, v21, v14

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 356
    mul-int v20, v17, v18

    add-int v20, v20, p2

    const/16 v21, 0x0

    add-int/lit8 v22, v18, 0x1

    mul-int v22, v22, v17

    add-int v22, v22, p2

    sub-int v23, p5, p3

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 361
    const/16 v20, 0x11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v7, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 366
    add-int/lit8 v18, v18, 0x1

    .line 339
    .end local v7    # "height":I
    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "width":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 331
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "groupWidth":I
    .end local v13    # "parentBottom":I
    .end local v14    # "parentTop":I
    .end local v15    # "rect":Landroid/graphics/Rect;
    .end local v17    # "touchWidth":I
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 332
    .restart local v6    # "groupWidth":I
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 369
    .restart local v13    # "parentBottom":I
    .restart local v14    # "parentTop":I
    .restart local v17    # "touchWidth":I
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getChildCount()I

    move-result v7

    .line 281
    .local v7, "count":I
    iput v3, p0, Landroid/widget/BottomTabBar;->mLeftWidth:I

    .line 282
    iput v3, p0, Landroid/widget/BottomTabBar;->mRightWidth:I

    .line 285
    const/4 v10, 0x0

    .line 286
    .local v10, "maxWidth":I
    const/4 v6, 0x0

    .line 288
    .local v6, "childState":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 289
    invoke-virtual {p0, v8}, Landroid/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 290
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 291
    invoke-virtual/range {v0 .. v5}, Landroid/widget/BottomTabBar;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 293
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 294
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 298
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v6, v0}, Landroid/widget/BottomTabBar;->combineMeasuredStates(II)I

    move-result v6

    .line 288
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    iget v0, p0, Landroid/widget/BottomTabBar;->mLeftWidth:I

    iget v2, p0, Landroid/widget/BottomTabBar;->mRightWidth:I

    add-int/2addr v0, v2

    add-int/2addr v10, v0

    .line 305
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 307
    invoke-static {v10, p1, v6}, Landroid/widget/BottomTabBar;->resolveSizeAndState(III)I

    move-result v0

    iget v2, p0, Landroid/widget/BottomTabBar;->mBarHeight:I

    shl-int/lit8 v3, v6, 0x10

    invoke-static {v2, p2, v3}, Landroid/widget/BottomTabBar;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/BottomTabBar;->setMeasuredDimension(II)V

    .line 310
    return-void
.end method

.method public removeItemById(I)V
    .locals 3
    .param p1, "itemId"    # I

    .prologue
    .line 257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 258
    invoke-virtual {p0, v1}, Landroid/widget/BottomTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/BottomBarItem;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 260
    invoke-virtual {p0, v1}, Landroid/widget/BottomTabBar;->removeViewAt(I)V

    .line 264
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void

    .line 257
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected setChildOnSelectedChangeListener(Landroid/widget/BottomBarItem$OnSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/BottomBarItem$OnSelectedListener;

    .prologue
    .line 440
    iput-object p1, p0, Landroid/widget/BottomTabBar;->mChildOnSelectedChangeListener:Landroid/widget/BottomBarItem$OnSelectedListener;

    .line 441
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/widget/BottomTabBar;->mPassThroughListener:Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;

    # setter for: Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0, p1}, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->access$002(Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 136
    return-void
.end method

.method public setOnSelectoinChangeListener(Landroid/widget/BottomTabBar$OnSelectionChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/BottomTabBar$OnSelectionChangeListener;

    .prologue
    .line 199
    iput-object p1, p0, Landroid/widget/BottomTabBar;->mOnSelectionChangeListener:Landroid/widget/BottomTabBar$OnSelectionChangeListener;

    .line 200
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x1

    .line 150
    if-eq p1, v2, :cond_0

    iget v0, p0, Landroid/widget/BottomTabBar;->mFocusedId:I

    if-ne p1, v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 154
    :cond_0
    iget v0, p0, Landroid/widget/BottomTabBar;->mFocusedId:I

    if-eq v0, v2, :cond_1

    .line 155
    iget v0, p0, Landroid/widget/BottomTabBar;->mFocusedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/BottomTabBar;->setFocusedStateForView(IZ)V

    .line 158
    :cond_1
    if-eq p1, v2, :cond_2

    .line 159
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/BottomTabBar;->setFocusedStateForView(IZ)V

    .line 162
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/BottomTabBar;->setFocusedId(I)V

    goto :goto_0
.end method

.method public setTopDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 426
    iput-object p1, p0, Landroid/widget/BottomTabBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 427
    if-eqz p1, :cond_0

    .line 428
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/BottomTabBar;->mDividerHeight:I

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/BottomTabBar;->mDividerHeight:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/widget/BottomTabBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 220
    if-nez p1, :cond_1

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/BottomTabBar;->activateAnimation(Z)V

    .line 225
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    :cond_0
    return-void

    .line 223
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/BottomTabBar;->activateAnimation(Z)V

    goto :goto_0
.end method
