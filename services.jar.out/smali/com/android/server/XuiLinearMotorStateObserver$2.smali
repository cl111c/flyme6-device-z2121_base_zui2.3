.class Lcom/android/server/XuiLinearMotorStateObserver$2;
.super Landroid/content/BroadcastReceiver;
.source "XuiLinearMotorStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/XuiLinearMotorStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/XuiLinearMotorStateObserver;


# direct methods
.method constructor <init>(Lcom/android/server/XuiLinearMotorStateObserver;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/XuiLinearMotorStateObserver$2;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    const-string v2, "XuiLinearMotorStateObserver"

    const-string v3, "mLinearMotorPowerOffReceiver onReceive()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "function":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xui.zuk.linear.motor.power.off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/android/server/XuiLinearMotorStateObserver$2;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorNotificationId:I
    invoke-static {v2}, Lcom/android/server/XuiLinearMotorStateObserver;->access$100(Lcom/android/server/XuiLinearMotorStateObserver;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/server/XuiLinearMotorStateObserver$2;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/server/XuiLinearMotorStateObserver;->access$200(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/app/NotificationManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/XuiLinearMotorStateObserver$2;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorNotificationId:I
    invoke-static {v4}, Lcom/android/server/XuiLinearMotorStateObserver;->access$100(Lcom/android/server/XuiLinearMotorStateObserver;)I

    move-result v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 158
    iget-object v2, p0, Lcom/android/server/XuiLinearMotorStateObserver$2;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorNotificationId:I
    invoke-static {v2, v3}, Lcom/android/server/XuiLinearMotorStateObserver;->access$102(Lcom/android/server/XuiLinearMotorStateObserver;I)I

    .line 160
    :cond_0
    const-string v2, "XuiLinearMotorStateObserver"

    const-string v3, "mLinearMotorPowerOffReceiver: power off to repair the exception of the linear motor"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 162
    const-string v2, "persist.sys.motor.state"

    const-string v3, "tfault"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "XuiLinearMotorStateObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLinearMotorPowerOffReceiver: LINEAR_MOTOR_STATE_PERSISTENT_CONFIG_PROPERTY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "persist.sys.motor.state"

    const-string v5, "normal"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/server/XuiLinearMotorStateObserver$2;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    const-string v3, "/sys/class/power_supply/lenuk_battery/ship_mode"

    const-string v4, "1"

    # invokes: Lcom/android/server/XuiLinearMotorStateObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/XuiLinearMotorStateObserver;->access$300(Lcom/android/server/XuiLinearMotorStateObserver;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
