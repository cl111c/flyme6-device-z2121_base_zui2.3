.class Landroid/widget/ListViewX$XAdatper;
.super Ljava/lang/Object;
.source "ListViewX.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XAdatper"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Landroid/widget/ListViewX;


# direct methods
.method public constructor <init>(Landroid/widget/ListViewX;Landroid/widget/ListAdapter;)V
    .locals 1
    .param p2, "source"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1648
    iput-object p1, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1646
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    .line 1649
    iput-object p2, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    .line 1650
    return-void
.end method

.method private createSlideView(Landroid/view/View;I)Landroid/widget/SlideView;
    .locals 4
    .param p1, "content"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1768
    new-instance v0, Landroid/widget/SlideView;

    iget-object v1, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/ListViewX;->access$600(Landroid/widget/ListViewX;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mSlideParams:Landroid/widget/SlideView$SlideViewParams;
    invoke-static {v3}, Landroid/widget/ListViewX;->access$700(Landroid/widget/ListViewX;)Landroid/widget/SlideView$SlideViewParams;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/SlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/SlideView$SlideViewParams;)V

    .line 1769
    .local v0, "view":Landroid/widget/SlideView;
    invoke-virtual {v0, p1}, Landroid/widget/SlideView;->setContentView(Landroid/view/View;)V

    .line 1770
    iget-object v1, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    invoke-virtual {v0, v1}, Landroid/widget/SlideView;->setOnSlideOutItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 1771
    iget-object v1, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    invoke-virtual {v0, v1}, Landroid/widget/SlideView;->setOnSlideListener(Landroid/widget/SlideView$OnSlideListener;)V

    .line 1772
    iget-object v1, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    invoke-virtual {v0, v1}, Landroid/widget/SlideView;->setOnViewPressedistener(Landroid/widget/SlideView$OnViewPressedListener;)V

    .line 1773
    invoke-virtual {v0, p2}, Landroid/widget/SlideView;->setViewPosition(I)V

    .line 1774
    iget-object v1, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    iget-object v1, v1, Landroid/widget/ListViewX;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SlideView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1775
    invoke-direct {p0, p2, v0}, Landroid/widget/ListViewX$XAdatper;->updateDivider(ILandroid/widget/SlideView;)V

    .line 1776
    return-object v0
.end method

.method private getSlideView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "vg"    # Landroid/view/ViewGroup;

    .prologue
    .line 1780
    move-object v1, p2

    check-cast v1, Landroid/widget/SlideView;

    .line 1782
    .local v1, "view":Landroid/widget/SlideView;
    if-nez v1, :cond_1

    .line 1784
    iget-object v2, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Landroid/widget/ListViewX$XAdatper;->createSlideView(Landroid/view/View;I)Landroid/widget/SlideView;

    move-result-object v1

    .line 1794
    :goto_0
    iget-object v2, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    # invokes: Landroid/widget/ListViewX;->isEditMode()Z
    invoke-static {v2}, Landroid/widget/ListViewX;->access$800(Landroid/widget/ListViewX;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1796
    iget-object v2, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mInEditMode:Z
    invoke-static {v2}, Landroid/widget/ListViewX;->access$900(Landroid/widget/ListViewX;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SlideView;->showCheckItem(Z)V

    .line 1797
    iget-object v2, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    # invokes: Landroid/widget/ListViewX;->updateViewCheckState(Landroid/widget/SlideView;I)V
    invoke-static {v2, v1, p1}, Landroid/widget/ListViewX;->access$1000(Landroid/widget/ListViewX;Landroid/widget/SlideView;I)V

    .line 1799
    :cond_0
    return-object v1

    .line 1786
    :cond_1
    invoke-virtual {v1}, Landroid/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 1788
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1789
    iget-object v2, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v0, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SlideView;->setContentView(Landroid/view/View;)V

    .line 1790
    invoke-virtual {v1}, Landroid/widget/SlideView;->requestLayout()V

    .line 1792
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/widget/ListViewX$XAdatper;->updateDivider(ILandroid/widget/SlideView;)V

    goto :goto_0
.end method

.method private getWrappedSlideView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "vg"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x11000001

    .line 1804
    move-object v4, p2

    check-cast v4, Landroid/widget/SlideViewEx;

    .line 1805
    .local v4, "view":Landroid/widget/SlideViewEx;
    const/4 v2, 0x0

    .line 1806
    .local v2, "slideView":Landroid/widget/SlideView;
    if-nez v4, :cond_3

    .line 1808
    iget-object v5, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1809
    .local v3, "sourceView":Landroid/view/View;
    new-instance v4, Landroid/widget/SlideViewEx;

    .end local v4    # "view":Landroid/widget/SlideViewEx;
    iget-object v5, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/ListViewX;->access$600(Landroid/widget/ListViewX;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/SlideViewEx;-><init>(Landroid/content/Context;)V

    .line 1810
    .restart local v4    # "view":Landroid/widget/SlideViewEx;
    invoke-virtual {v4, v3}, Landroid/widget/SlideViewEx;->setSourceView(Landroid/view/View;)V

    .line 1811
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 1812
    .local v1, "fixedView":Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v5, v3

    .line 1813
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1814
    invoke-virtual {v4, v1}, Landroid/widget/SlideViewEx;->addFixedView(Landroid/view/View;)V

    .line 1816
    :cond_0
    invoke-direct {p0, v3, p1}, Landroid/widget/ListViewX$XAdatper;->createSlideView(Landroid/view/View;I)Landroid/widget/SlideView;

    move-result-object v2

    .line 1817
    invoke-virtual {v4, v2}, Landroid/widget/SlideViewEx;->addSlideView(Landroid/view/View;)V

    .line 1832
    .end local v1    # "fixedView":Landroid/view/View;
    .end local v3    # "sourceView":Landroid/view/View;
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    # invokes: Landroid/widget/ListViewX;->isEditMode()Z
    invoke-static {v5}, Landroid/widget/ListViewX;->access$800(Landroid/widget/ListViewX;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1834
    iget-object v5, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mInEditMode:Z
    invoke-static {v5}, Landroid/widget/ListViewX;->access$900(Landroid/widget/ListViewX;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/SlideView;->showCheckItem(Z)V

    .line 1835
    iget-object v5, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    # invokes: Landroid/widget/ListViewX;->updateViewCheckState(Landroid/widget/SlideView;I)V
    invoke-static {v5, v2, p1}, Landroid/widget/ListViewX;->access$1000(Landroid/widget/ListViewX;Landroid/widget/SlideView;I)V

    .line 1837
    :cond_2
    return-object v4

    .line 1819
    :cond_3
    invoke-virtual {v4}, Landroid/widget/SlideViewEx;->getSourceView()Landroid/view/View;

    move-result-object v0

    .line 1821
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1822
    iget-object v5, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v0, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1823
    .restart local v3    # "sourceView":Landroid/view/View;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 1824
    .restart local v1    # "fixedView":Landroid/view/View;
    if-eqz v1, :cond_4

    move-object v5, v3

    .line 1825
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1826
    invoke-virtual {v4, v1}, Landroid/widget/SlideViewEx;->addFixedView(Landroid/view/View;)V

    .line 1828
    :cond_4
    invoke-direct {p0, v3, p1}, Landroid/widget/ListViewX$XAdatper;->createSlideView(Landroid/view/View;I)Landroid/widget/SlideView;

    move-result-object v2

    .line 1829
    invoke-virtual {v4, v2}, Landroid/widget/SlideViewEx;->addSlideView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateDivider(ILandroid/widget/SlideView;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/widget/SlideView;

    .prologue
    const/4 v2, 0x0

    .line 1843
    iget-object v1, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mHideDivider:Z
    invoke-static {v1}, Landroid/widget/ListViewX;->access$1100(Landroid/widget/ListViewX;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1844
    invoke-virtual {p2, v2}, Landroid/widget/SlideView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1856
    :goto_0
    return-void

    .line 1846
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListViewX$XAdatper;->getCount()I

    move-result v0

    .line 1847
    .local v0, "count":I
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    invoke-virtual {v1}, Landroid/widget/ListViewX;->areFooterDividersEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ListViewX$XAdatper;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    if-ge v1, v0, :cond_3

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListViewX$XAdatper;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1850
    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/SlideView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1853
    :cond_3
    iget-object v1, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    iget-object v1, v1, Landroid/widget/ListViewX;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Landroid/widget/SlideView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1747
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1748
    const/4 v0, 0x0

    .line 1750
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1655
    const/4 v0, 0x0

    .line 1657
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1663
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1664
    const/4 v0, 0x0

    .line 1666
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1672
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1673
    const-wide/16 v0, 0x0

    .line 1675
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1681
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1682
    const/4 v0, 0x0

    .line 1684
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getOriginAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "vg"    # Landroid/view/ViewGroup;

    .prologue
    .line 1690
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1691
    const/4 v0, 0x0

    .line 1700
    :goto_0
    return-object v0

    .line 1697
    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->this$0:Landroid/widget/ListViewX;

    # invokes: Landroid/widget/ListViewX;->isSplitedSlideView()Z
    invoke-static {v0}, Landroid/widget/ListViewX;->access$500(Landroid/widget/ListViewX;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1698
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListViewX$XAdatper;->getWrappedSlideView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1700
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListViewX$XAdatper;->getSlideView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1707
    const/4 v0, 0x1

    .line 1709
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1716
    const/4 v0, 0x0

    .line 1718
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1725
    const/4 v0, 0x1

    .line 1727
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1756
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1757
    const/4 v0, 0x0

    .line 1759
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 1733
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1734
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1736
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 1740
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Landroid/widget/ListViewX$XAdatper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1743
    :cond_0
    return-void
.end method
