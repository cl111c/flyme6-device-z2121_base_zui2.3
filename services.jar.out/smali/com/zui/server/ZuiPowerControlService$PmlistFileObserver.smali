.class Lcom/zui/server/ZuiPowerControlService$PmlistFileObserver;
.super Landroid/os/FileObserver;
.source "ZuiPowerControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/ZuiPowerControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PmlistFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/ZuiPowerControlService;


# direct methods
.method public constructor <init>(Lcom/zui/server/ZuiPowerControlService;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/zui/server/ZuiPowerControlService$PmlistFileObserver;->this$0:Lcom/zui/server/ZuiPowerControlService;

    .line 829
    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    .line 831
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 836
    const-string v1, "ZuiPowerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PmlistFileObserver onEvent path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    and-int/lit16 v0, p1, 0xfff

    .line 838
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 849
    :goto_0
    return-void

    .line 840
    :pswitch_0
    iget-object v1, p0, Lcom/zui/server/ZuiPowerControlService$PmlistFileObserver;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mPmlistFileObserver:Landroid/os/FileObserver;
    invoke-static {v1}, Lcom/zui/server/ZuiPowerControlService;->access$2700(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/FileObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 841
    iget-object v1, p0, Lcom/zui/server/ZuiPowerControlService$PmlistFileObserver;->this$0:Lcom/zui/server/ZuiPowerControlService;

    new-instance v2, Lcom/zui/server/ZuiPowerControlService$PmlistFileObserver;

    iget-object v3, p0, Lcom/zui/server/ZuiPowerControlService$PmlistFileObserver;->this$0:Lcom/zui/server/ZuiPowerControlService;

    const-string v4, "/data/pmlist.config"

    invoke-direct {v2, v3, v4}, Lcom/zui/server/ZuiPowerControlService$PmlistFileObserver;-><init>(Lcom/zui/server/ZuiPowerControlService;Ljava/lang/String;)V

    # setter for: Lcom/zui/server/ZuiPowerControlService;->mPmlistFileObserver:Landroid/os/FileObserver;
    invoke-static {v1, v2}, Lcom/zui/server/ZuiPowerControlService;->access$2702(Lcom/zui/server/ZuiPowerControlService;Landroid/os/FileObserver;)Landroid/os/FileObserver;

    .line 842
    iget-object v1, p0, Lcom/zui/server/ZuiPowerControlService$PmlistFileObserver;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mPmlistFileObserver:Landroid/os/FileObserver;
    invoke-static {v1}, Lcom/zui/server/ZuiPowerControlService;->access$2700(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/FileObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 843
    iget-object v1, p0, Lcom/zui/server/ZuiPowerControlService$PmlistFileObserver;->this$0:Lcom/zui/server/ZuiPowerControlService;

    invoke-virtual {v1}, Lcom/zui/server/ZuiPowerControlService;->setFpsHashMap()V

    goto :goto_0

    .line 838
    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
    .end packed-switch
.end method
