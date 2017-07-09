.class Lcom/android/server/XuiSystemServer$1;
.super Ljava/lang/Object;
.source "XuiSystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/XuiSystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/XuiSystemServer;


# direct methods
.method constructor <init>(Lcom/android/server/XuiSystemServer;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/XuiSystemServer$1;->this$0:Lcom/android/server/XuiSystemServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    const-string v0, "XuiSystemServer"

    const-string v1, "Update the charging state"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/server/XuiSystemServer$1;->this$0:Lcom/android/server/XuiSystemServer;

    invoke-virtual {v0}, Lcom/android/server/XuiSystemServer;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/XuiSystemServer$1;->this$0:Lcom/android/server/XuiSystemServer;

    invoke-virtual {v0}, Lcom/android/server/XuiSystemServer;->isLedEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/XuiSystemServer$1;->this$0:Lcom/android/server/XuiSystemServer;

    invoke-virtual {v0}, Lcom/android/server/XuiSystemServer;->showChargingLight()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/server/XuiSystemServer$1;->this$0:Lcom/android/server/XuiSystemServer;

    # getter for: Lcom/android/server/XuiSystemServer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/XuiSystemServer;->access$000(Lcom/android/server/XuiSystemServer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/XuiSystemServer$1;->this$0:Lcom/android/server/XuiSystemServer;

    iget-object v1, v1, Lcom/android/server/XuiSystemServer;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    return-void
.end method
