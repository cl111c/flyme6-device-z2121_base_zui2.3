.class Lcom/android/server/am/BatteryStatsService$2;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryStatsService;->setHeatState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;

.field final synthetic val$plugType:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;I)V
    .locals 0

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$2;->val$plugType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService;->mHeatStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 1294
    :try_start_0
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$2;->val$plugType:I

    if-nez v0, :cond_0

    const/4 v7, 0x1

    .line 1295
    .local v7, "onBattery":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mHeatStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    if-ne v0, v7, :cond_1

    .line 1298
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mHeatStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x3

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$2;->val$plugType:I

    const/16 v4, 0x32

    const/16 v5, 0x12c

    const/16 v6, 0xfa0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIII)V

    .line 1299
    monitor-exit v8

    .line 1309
    :goto_1
    return-void

    .line 1294
    .end local v7    # "onBattery":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1301
    .restart local v7    # "onBattery":Z
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1305
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    const-string v1, "battery-state"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 1306
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService;->mHeatStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 1307
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mHeatStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x3

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$2;->val$plugType:I

    const/16 v4, 0x32

    const/16 v5, 0x12c

    const/16 v6, 0xfa0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIII)V

    .line 1308
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1301
    .end local v7    # "onBattery":Z
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
