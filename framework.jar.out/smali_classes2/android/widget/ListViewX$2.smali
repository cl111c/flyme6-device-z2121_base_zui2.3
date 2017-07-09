.class Landroid/widget/ListViewX$2;
.super Ljava/lang/Object;
.source "ListViewX.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListViewX;->onEdgeReached(Landroid/widget/AbsListView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListViewX;

.field final synthetic val$delta:I


# direct methods
.method constructor <init>(Landroid/widget/ListViewX;I)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Landroid/widget/ListViewX$2;->this$0:Landroid/widget/ListViewX;

    iput p2, p0, Landroid/widget/ListViewX$2;->val$delta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1054
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1055
    .local v0, "t":F
    iget-object v1, p0, Landroid/widget/ListViewX$2;->this$0:Landroid/widget/ListViewX;

    iget-object v2, p0, Landroid/widget/ListViewX$2;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mScaledDistance:I
    invoke-static {v2}, Landroid/widget/ListViewX;->access$200(Landroid/widget/ListViewX;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    # setter for: Landroid/widget/ListViewX;->mPullDistance:I
    invoke-static {v1, v2}, Landroid/widget/ListViewX;->access$102(Landroid/widget/ListViewX;I)I

    .line 1056
    iget-object v1, p0, Landroid/widget/ListViewX$2;->this$0:Landroid/widget/ListViewX;

    iget v2, p0, Landroid/widget/ListViewX$2;->val$delta:I

    const/4 v3, 0x0

    # invokes: Landroid/widget/ListViewX;->scaleHeight(IZ)V
    invoke-static {v1, v2, v3}, Landroid/widget/ListViewX;->access$300(Landroid/widget/ListViewX;IZ)V

    .line 1057
    return-void
.end method
