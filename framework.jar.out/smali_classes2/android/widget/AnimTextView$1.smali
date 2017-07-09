.class Landroid/widget/AnimTextView$1;
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
    .line 184
    iput-object p1, p0, Landroid/widget/AnimTextView$1;->this$0:Landroid/widget/AnimTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 187
    iget-object v1, p0, Landroid/widget/AnimTextView$1;->this$0:Landroid/widget/AnimTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # invokes: Landroid/widget/AnimTextView;->updateMeshTweak(F)V
    invoke-static {v1, v0}, Landroid/widget/AnimTextView;->access$000(Landroid/widget/AnimTextView;F)V

    .line 188
    iget-object v0, p0, Landroid/widget/AnimTextView$1;->this$0:Landroid/widget/AnimTextView;

    invoke-virtual {v0}, Landroid/widget/AnimTextView;->invalidate()V

    .line 189
    return-void
.end method
