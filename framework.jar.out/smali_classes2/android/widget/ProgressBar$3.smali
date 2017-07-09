.class Landroid/widget/ProgressBar$3;
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
    .line 1408
    iput-object p1, p0, Landroid/widget/ProgressBar$3;->this$0:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Landroid/widget/ProgressBar$3;->this$0:Landroid/widget/ProgressBar;

    # invokes: Landroid/widget/ProgressBar;->scaleProgressAlpha()V
    invoke-static {v0}, Landroid/widget/ProgressBar;->access$1000(Landroid/widget/ProgressBar;)V

    .line 1411
    return-void
.end method
