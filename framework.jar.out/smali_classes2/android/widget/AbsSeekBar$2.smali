.class Landroid/widget/AbsSeekBar$2;
.super Ljava/lang/Object;
.source "AbsSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsSeekBar;


# direct methods
.method constructor <init>(Landroid/widget/AbsSeekBar;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Landroid/widget/AbsSeekBar$2;->this$0:Landroid/widget/AbsSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Landroid/widget/AbsSeekBar$2;->this$0:Landroid/widget/AbsSeekBar;

    # invokes: Landroid/widget/AbsSeekBar;->cancelBreath()V
    invoke-static {v0}, Landroid/widget/AbsSeekBar;->access$100(Landroid/widget/AbsSeekBar;)V

    .line 889
    iget-object v0, p0, Landroid/widget/AbsSeekBar$2;->this$0:Landroid/widget/AbsSeekBar;

    iget-object v1, p0, Landroid/widget/AbsSeekBar$2;->this$0:Landroid/widget/AbsSeekBar;

    # getter for: Landroid/widget/AbsSeekBar;->mBreathCycleTime:I
    invoke-static {v1}, Landroid/widget/AbsSeekBar;->access$200(Landroid/widget/AbsSeekBar;)I

    move-result v1

    # invokes: Landroid/widget/AbsSeekBar;->postBreath(I)V
    invoke-static {v0, v1}, Landroid/widget/AbsSeekBar;->access$300(Landroid/widget/AbsSeekBar;I)V

    .line 891
    return-void
.end method
