.class Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;
.super Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingSlideToolbarMainPanel"
.end annotation


# instance fields
.field private mAboveContent:Z

.field private final mContentView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mFooterView:Landroid/view/View;

.field private final mHeaderView:Landroid/view/View;

.field private final mMenuItemLayoutId:I

.field private final mMenuItemLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private final mMenuItemPadding:I

.field private final mSlideLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openOverflow"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1653
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 1654
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mContext:Landroid/content/Context;

    .line 1656
    sget-object v2, Lcom/android/internal/R$styleable;->editFloatingWindow:[I

    const v3, 0x11600eb

    invoke-virtual {p1, v6, v2, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1659
    .local v0, "a":Landroid/content/res/TypedArray;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mMenuItemLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 1664
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1666
    .local v1, "layout":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mMenuItemLayoutId:I

    .line 1668
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mMenuItemPadding:I

    .line 1670
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    .line 1671
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    const v3, 0x102033c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mSlideLayout:Landroid/widget/LinearLayout;

    .line 1673
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    const v3, 0x102033b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mHeaderView:Landroid/view/View;

    .line 1675
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    const v3, 0x102033d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mFooterView:Landroid/view/View;

    .line 1677
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1678
    return-void
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1749
    move-object v0, p1

    .line 1750
    .local v0, "button":Landroid/view/View;
    # invokes: Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    invoke-static {p2}, Lcom/android/internal/widget/FloatingToolbar;->access$2400(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1753
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1754
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1755
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public layoutMenuItems(Ljava/util/List;I)Ljava/util/List;
    .locals 10
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    .line 1682
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1685
    .local v3, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mSlideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1687
    const/4 v0, 0x1

    .line 1688
    .local v0, "isFirstItem":Z
    :goto_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1689
    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 1690
    .local v1, "menuItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mMenuItemLayoutId:I

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mMenuItemLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mMenuItemPadding:I

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createSlideMenuItem(Landroid/content/Context;Landroid/view/MenuItem;ILandroid/view/ViewGroup$LayoutParams;I)Landroid/view/View;
    invoke-static {v4, v1, v5, v6, v7}, Lcom/android/internal/widget/FloatingToolbar;->access$3000(Landroid/content/Context;Landroid/view/MenuItem;ILandroid/view/ViewGroup$LayoutParams;I)Landroid/view/View;

    move-result-object v2

    .line 1695
    .local v2, "menuItemView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1696
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1701
    const/4 v0, 0x0

    .line 1705
    :cond_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1706
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1714
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 1715
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mSlideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1716
    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 1718
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    .end local v2    # "menuItemView":Landroid/view/View;
    :cond_2
    return-object v3
.end method

.method public measure()Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1731
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1732
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 1733
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    move v0, v1

    .line 1731
    goto :goto_0
.end method

.method public setPanelAboveContent(Z)V
    .locals 3
    .param p1, "isAboveContent"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1737
    iput-boolean p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mAboveContent:Z

    .line 1738
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mAboveContent:Z

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1740
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1745
    :goto_0
    return-void

    .line 1742
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1743
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingSlideToolbarMainPanel;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
