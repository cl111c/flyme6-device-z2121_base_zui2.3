.class Landroid/widget/SlideView$1;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SlideView;


# direct methods
.method constructor <init>(Landroid/widget/SlideView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Landroid/widget/SlideView$1;->this$0:Landroid/widget/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/SlideView$1;->this$0:Landroid/widget/SlideView;

    # getter for: Landroid/widget/SlideView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/SlideView;->access$000(Landroid/widget/SlideView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Landroid/widget/SlideView$1;->this$0:Landroid/widget/SlideView;

    # getter for: Landroid/widget/SlideView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/SlideView;->access$000(Landroid/widget/SlideView;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/widget/AnimTextView;

    sget-object v1, Landroid/widget/AnimTextView$AnimationType;->ROTATE:Landroid/widget/AnimTextView$AnimationType;

    invoke-virtual {v0, v1}, Landroid/widget/AnimTextView;->startMeshAnimation(Landroid/widget/AnimTextView$AnimationType;)V

    .line 102
    return-void
.end method
