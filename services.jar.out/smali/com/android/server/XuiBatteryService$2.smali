.class Lcom/android/server/XuiBatteryService$2;
.super Ljava/lang/Object;
.source "XuiBatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/XuiBatteryService;->processValuesLocked(IIILandroid/os/BatteryProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/XuiBatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/XuiBatteryService;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/XuiBatteryService$2;->this$0:Lcom/android/server/XuiBatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    const-string v1, "XuiBatteryService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send android.intent.action.BATTERY_LOW_XUI, notifyLowPower: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/XuiBatteryService$2;->this$0:Lcom/android/server/XuiBatteryService;

    # getter for: Lcom/android/server/XuiBatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/XuiBatteryService;->access$200(Lcom/android/server/XuiBatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_LOW_XUI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "statusIntent":Landroid/content/Intent;
    const-string v1, "notifyLowPowerValue"

    iget-object v2, p0, Lcom/android/server/XuiBatteryService$2;->this$0:Lcom/android/server/XuiBatteryService;

    # getter for: Lcom/android/server/XuiBatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/XuiBatteryService;->access$200(Lcom/android/server/XuiBatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/android/server/XuiBatteryService$2;->this$0:Lcom/android/server/XuiBatteryService;

    # getter for: Lcom/android/server/XuiBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/XuiBatteryService;->access$300(Lcom/android/server/XuiBatteryService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 102
    return-void
.end method
