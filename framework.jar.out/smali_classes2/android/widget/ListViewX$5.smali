.class Landroid/widget/ListViewX$5;
.super Ljava/lang/Object;
.source "ListViewX.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 2426
    iput-object p1, p0, Landroid/widget/ListViewX$5;->this$0:Landroid/widget/ListViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2433
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2441
    iget-object v0, p0, Landroid/widget/ListViewX$5;->this$0:Landroid/widget/ListViewX;

    const/4 v1, 0x0

    # setter for: Landroid/widget/ListViewX;->mFlinging:Z
    invoke-static {v0, v1}, Landroid/widget/ListViewX;->access$2402(Landroid/widget/ListViewX;Z)Z

    .line 2444
    iget-object v0, p0, Landroid/widget/ListViewX$5;->this$0:Landroid/widget/ListViewX;

    # invokes: Landroid/widget/ListViewX;->resetPullingMode()V
    invoke-static {v0}, Landroid/widget/ListViewX;->access$2500(Landroid/widget/ListViewX;)V

    .line 2445
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2437
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2429
    return-void
.end method
