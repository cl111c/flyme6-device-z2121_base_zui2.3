.class Landroid/widget/AnimTextView$2;
.super Ljava/lang/Object;
.source "AnimTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AnimTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AnimTextView;


# direct methods
.method constructor <init>(Landroid/widget/AnimTextView;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Landroid/widget/AnimTextView$2;->this$0:Landroid/widget/AnimTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 196
    .local v0, "input":F
    iget-object v1, p0, Landroid/widget/AnimTextView$2;->this$0:Landroid/widget/AnimTextView;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    const/high16 v3, 0x428c0000    # 70.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/AnimTextView;->setRotationY(F)V

    .line 197
    iget-object v1, p0, Landroid/widget/AnimTextView$2;->this$0:Landroid/widget/AnimTextView;

    # invokes: Landroid/widget/AnimTextView;->updateMeshRotate(F)V
    invoke-static {v1, v0}, Landroid/widget/AnimTextView;->access$100(Landroid/widget/AnimTextView;F)V

    .line 198
    iget-object v1, p0, Landroid/widget/AnimTextView$2;->this$0:Landroid/widget/AnimTextView;

    invoke-virtual {v1}, Landroid/widget/AnimTextView;->invalidate()V

    .line 199
    return-void
.end method
