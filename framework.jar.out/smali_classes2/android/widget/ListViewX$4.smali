.class Landroid/widget/ListViewX$4;
.super Ljava/lang/Object;
.source "ListViewX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListViewX;


# direct methods
.method constructor <init>(Landroid/widget/ListViewX;)V
    .locals 0

    .prologue
    .line 2159
    iput-object p1, p0, Landroid/widget/ListViewX$4;->this$0:Landroid/widget/ListViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2162
    iget-object v0, p0, Landroid/widget/ListViewX$4;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mHeaderAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Landroid/widget/ListViewX;->access$2100(Landroid/widget/ListViewX;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2163
    iget-object v0, p0, Landroid/widget/ListViewX$4;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mHeaderAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Landroid/widget/ListViewX;->access$2100(Landroid/widget/ListViewX;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2164
    iget-object v0, p0, Landroid/widget/ListViewX$4;->this$0:Landroid/widget/ListViewX;

    const/4 v1, 0x0

    # setter for: Landroid/widget/ListViewX;->mHeaderAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Landroid/widget/ListViewX;->access$2102(Landroid/widget/ListViewX;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 2167
    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewX$4;->this$0:Landroid/widget/ListViewX;

    # invokes: Landroid/widget/ListViewX;->isSlideLoadingMode()Z
    invoke-static {v0}, Landroid/widget/ListViewX;->access$2200(Landroid/widget/ListViewX;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListViewX$4;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mHeaderViewState:I
    invoke-static {v0}, Landroid/widget/ListViewX;->access$1200(Landroid/widget/ListViewX;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2168
    iget-object v0, p0, Landroid/widget/ListViewX$4;->this$0:Landroid/widget/ListViewX;

    # invokes: Landroid/widget/ListViewX;->hideHeaderView()V
    invoke-static {v0}, Landroid/widget/ListViewX;->access$2300(Landroid/widget/ListViewX;)V

    .line 2171
    :cond_1
    iget-object v0, p0, Landroid/widget/ListViewX$4;->this$0:Landroid/widget/ListViewX;

    const/4 v1, 0x0

    # setter for: Landroid/widget/ListViewX;->mPullDistance:I
    invoke-static {v0, v1}, Landroid/widget/ListViewX;->access$102(Landroid/widget/ListViewX;I)I

    .line 2172
    iget-object v0, p0, Landroid/widget/ListViewX$4;->this$0:Landroid/widget/ListViewX;

    invoke-virtual {v0}, Landroid/widget/ListViewX;->bounceAnimation()V

    .line 2173
    return-void
.end method
