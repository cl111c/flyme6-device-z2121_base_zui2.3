.class Landroid/widget/ProgressBar$2;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0

    .prologue
    .line 1401
    iput-object p1, p0, Landroid/widget/ProgressBar$2;->this$0:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Landroid/widget/ProgressBar$2;->this$0:Landroid/widget/ProgressBar;

    # invokes: Landroid/widget/ProgressBar;->cancelProgressAnimation()V
    invoke-static {v0}, Landroid/widget/ProgressBar;->access$800(Landroid/widget/ProgressBar;)V

    .line 1404
    iget-object v0, p0, Landroid/widget/ProgressBar$2;->this$0:Landroid/widget/ProgressBar;

    # getter for: Landroid/widget/ProgressBar;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/ProgressBar;->access$600(Landroid/widget/ProgressBar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ProgressBar$2;->this$0:Landroid/widget/ProgressBar;

    # getter for: Landroid/widget/ProgressBar;->mAnimEvent:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/widget/ProgressBar;->access$900(Landroid/widget/ProgressBar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1405
    return-void
.end method
