.class Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;
.super Landroid/os/Handler;
.source "ZuiPowerControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/ZuiPowerControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/ZuiPowerControlService;


# direct methods
.method public constructor <init>(Lcom/zui/server/ZuiPowerControlService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;->this$0:Lcom/zui/server/ZuiPowerControlService;

    .line 158
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 159
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 163
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 191
    const-string v2, "ZuiPowerControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 166
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;->this$0:Lcom/zui/server/ZuiPowerControlService;

    invoke-virtual {v2, v1}, Lcom/zui/server/ZuiPowerControlService;->doCPUBalanceForApp(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v1    # "pkgName":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$000(Lcom/zui/server/ZuiPowerControlService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # invokes: Lcom/zui/server/ZuiPowerControlService;->stopOverheatService()V
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$100(Lcom/zui/server/ZuiPowerControlService;)V

    .line 171
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 174
    :pswitch_2
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$000(Lcom/zui/server/ZuiPowerControlService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 175
    :try_start_1
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$200(Lcom/zui/server/ZuiPowerControlService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # invokes: Lcom/zui/server/ZuiPowerControlService;->sendOverheatCleanChanged()V
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$300(Lcom/zui/server/ZuiPowerControlService;)V

    .line 177
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$400(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, "message":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 179
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$400(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCheckInterval:J
    invoke-static {v4}, Lcom/zui/server/ZuiPowerControlService;->access$500(Lcom/zui/server/ZuiPowerControlService;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 183
    .end local v0    # "message":Landroid/os/Message;
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 181
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$400(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 187
    :pswitch_3
    iget-object v3, p0, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;->this$0:Lcom/zui/server/ZuiPowerControlService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/zui/server/ZuiPowerControlService;->doEnableDisplayBoostForPkg(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/zui/server/ZuiPowerControlService;->access$600(Lcom/zui/server/ZuiPowerControlService;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
