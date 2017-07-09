.class final Landroid/widget/ListViewX$6;
.super Landroid/util/IntProperty;
.source "ListViewX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty",
        "<",
        "Landroid/widget/ListViewX;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 2515
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/widget/ListViewX;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Landroid/widget/ListViewX;

    .prologue
    .line 2518
    # getter for: Landroid/widget/ListViewX;->mLastPosition:I
    invoke-static {p1}, Landroid/widget/ListViewX;->access$2600(Landroid/widget/ListViewX;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2515
    check-cast p1, Landroid/widget/ListViewX;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/ListViewX$6;->get(Landroid/widget/ListViewX;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/widget/ListViewX;I)V
    .locals 2
    .param p1, "object"    # Landroid/widget/ListViewX;
    .param p2, "value"    # I

    .prologue
    .line 2524
    # getter for: Landroid/widget/ListViewX;->mLastPosition:I
    invoke-static {p1}, Landroid/widget/ListViewX;->access$2600(Landroid/widget/ListViewX;)I

    move-result v1

    sub-int v0, p2, v1

    .line 2525
    .local v0, "delta":I
    # setter for: Landroid/widget/ListViewX;->mLastPosition:I
    invoke-static {p1, p2}, Landroid/widget/ListViewX;->access$2602(Landroid/widget/ListViewX;I)I

    .line 2526
    # setter for: Landroid/widget/ListViewX;->mPullDistance:I
    invoke-static {p1, p2}, Landroid/widget/ListViewX;->access$102(Landroid/widget/ListViewX;I)I

    .line 2527
    # invokes: Landroid/widget/ListViewX;->isSlideLoadingMode()Z
    invoke-static {p1}, Landroid/widget/ListViewX;->access$2200(Landroid/widget/ListViewX;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Landroid/widget/ListViewX;->mHeaderViewState:I
    invoke-static {p1}, Landroid/widget/ListViewX;->access$1200(Landroid/widget/ListViewX;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2529
    # invokes: Landroid/widget/ListViewX;->updateHeaderView(I)V
    invoke-static {p1, v0}, Landroid/widget/ListViewX;->access$2700(Landroid/widget/ListViewX;I)V

    .line 2531
    :cond_0
    const/4 v1, 0x0

    # invokes: Landroid/widget/ListViewX;->scaleHeight(IZ)V
    invoke-static {p1, v0, v1}, Landroid/widget/ListViewX;->access$300(Landroid/widget/ListViewX;IZ)V

    .line 2532
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 2515
    check-cast p1, Landroid/widget/ListViewX;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/ListViewX$6;->setValue(Landroid/widget/ListViewX;I)V

    return-void
.end method
