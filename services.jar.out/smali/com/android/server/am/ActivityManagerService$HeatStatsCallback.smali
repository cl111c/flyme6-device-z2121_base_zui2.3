.class Lcom/android/server/am/ActivityManagerService$HeatStatsCallback;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeatStatsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 2809
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$HeatStatsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public batteryNeedsCpuUpdate()V
    .locals 1

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HeatStatsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2814
    return-void
.end method

.method public batteryPowerChanged(Z)V
    .locals 1
    .param p1, "onBattery"    # Z

    .prologue
    .line 2820
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HeatStatsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2821
    return-void
.end method

.method public batterySendBroadcast(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2825
    return-void
.end method
