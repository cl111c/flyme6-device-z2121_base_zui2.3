.class Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$message:Ljava/lang/CharSequence;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$progress:I

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$5;->val$message:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mProgressDialog:Lzui/app/ZuiShutdownProgressDialog;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$100(Lcom/android/server/power/ShutdownThread;)Lzui/app/ZuiShutdownProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mProgressDialog:Lzui/app/ZuiShutdownProgressDialog;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$100(Lcom/android/server/power/ShutdownThread;)Lzui/app/ZuiShutdownProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ShutdownThread$5;->val$progress:I

    invoke-virtual {v0, v1}, Lzui/app/ZuiShutdownProgressDialog;->setProgress(I)V

    .line 564
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$5;->val$message:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mProgressDialog:Lzui/app/ZuiShutdownProgressDialog;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$100(Lcom/android/server/power/ShutdownThread;)Lzui/app/ZuiShutdownProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$5;->val$message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lzui/app/ZuiShutdownProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 568
    :cond_0
    return-void
.end method