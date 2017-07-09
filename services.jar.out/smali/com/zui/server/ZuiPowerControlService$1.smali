.class Lcom/zui/server/ZuiPowerControlService$1;
.super Landroid/database/ContentObserver;
.source "ZuiPowerControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/server/ZuiPowerControlService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/ZuiPowerControlService;


# direct methods
.method constructor <init>(Lcom/zui/server/ZuiPowerControlService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/zui/server/ZuiPowerControlService$1;->this$0:Lcom/zui/server/ZuiPowerControlService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 284
    iget-object v1, p0, Lcom/zui/server/ZuiPowerControlService$1;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/zui/server/ZuiPowerControlService;->access$000(Lcom/zui/server/ZuiPowerControlService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$1;->this$0:Lcom/zui/server/ZuiPowerControlService;

    iget-object v3, p0, Lcom/zui/server/ZuiPowerControlService$1;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zui/server/ZuiPowerControlService;->access$800(Lcom/zui/server/ZuiPowerControlService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "overheat_monitor_enable"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    # setter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatMonitorEnabled:Z
    invoke-static {v2, v0}, Lcom/zui/server/ZuiPowerControlService;->access$702(Lcom/zui/server/ZuiPowerControlService;Z)Z

    .line 287
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService$1;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatMonitorSupported:Z
    invoke-static {v0}, Lcom/zui/server/ZuiPowerControlService;->access$900(Lcom/zui/server/ZuiPowerControlService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService$1;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatMonitorEnabled:Z
    invoke-static {v0}, Lcom/zui/server/ZuiPowerControlService;->access$700(Lcom/zui/server/ZuiPowerControlService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService$1;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureObserver:Landroid/os/UEventObserver;
    invoke-static {v0}, Lcom/zui/server/ZuiPowerControlService;->access$1100(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/UEventObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$1;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mTsensStateMatchPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$1000(Lcom/zui/server/ZuiPowerControlService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 294
    :goto_1
    monitor-exit v1

    .line 295
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService$1;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureObserver:Landroid/os/UEventObserver;
    invoke-static {v0}, Lcom/zui/server/ZuiPowerControlService;->access$1100(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/UEventObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 292
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService$1;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # invokes: Lcom/zui/server/ZuiPowerControlService;->stopOverheatService()V
    invoke-static {v0}, Lcom/zui/server/ZuiPowerControlService;->access$100(Lcom/zui/server/ZuiPowerControlService;)V

    goto :goto_1

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
