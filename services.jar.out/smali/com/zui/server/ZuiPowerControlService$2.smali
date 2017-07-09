.class Lcom/zui/server/ZuiPowerControlService$2;
.super Lzui/power/IZuiPowerControlService$Stub;
.source "ZuiPowerControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/ZuiPowerControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/ZuiPowerControlService;


# direct methods
.method constructor <init>(Lcom/zui/server/ZuiPowerControlService;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/zui/server/ZuiPowerControlService$2;->this$0:Lcom/zui/server/ZuiPowerControlService;

    invoke-direct {p0}, Lzui/power/IZuiPowerControlService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cpuBalanceControl(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 512
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 513
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 514
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 515
    iget-object v1, p0, Lcom/zui/server/ZuiPowerControlService$2;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zui/server/ZuiPowerControlService;->access$400(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 516
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService$2;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zui/server/ZuiPowerControlService;->access$800(Lcom/zui/server/ZuiPowerControlService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump zui_power service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService$2;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # invokes: Lcom/zui/server/ZuiPowerControlService;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    invoke-static {v0, p2, p3}, Lcom/zui/server/ZuiPowerControlService;->access$1200(Lcom/zui/server/ZuiPowerControlService;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public gpuBalanceControl(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 521
    return-void
.end method

.method public setEnableDisplayBoostForPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 527
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 528
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 529
    iget-object v1, p0, Lcom/zui/server/ZuiPowerControlService$2;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zui/server/ZuiPowerControlService;->access$400(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 530
    return-void
.end method
