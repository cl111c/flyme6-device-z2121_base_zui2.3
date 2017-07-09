.class Lcom/android/server/XuiLinearMotorStateObserver$3$1$1;
.super Ljava/lang/Object;
.source "XuiLinearMotorStateObserver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/XuiLinearMotorStateObserver$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;


# direct methods
.method constructor <init>(Lcom/android/server/XuiLinearMotorStateObserver$3$1;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$1;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 202
    const-string v1, "XuiLinearMotorStateObserver"

    const-string v2, "power off to repair the exception of the linear motor"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 204
    const-string v1, "persist.sys.motor.state"

    const-string v2, "tfault"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "XuiLinearMotorStateObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "power off dialog: LINEAR_MOTOR_STATE_PERSISTENT_CONFIG_PROPERTY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.motor.state"

    const-string v4, "normal"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$1;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    iget-object v1, v1, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v1, v1, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    const-string v2, "/sys/class/power_supply/lenuk_battery/ship_mode"

    const-string v3, "1"

    # invokes: Lcom/android/server/XuiLinearMotorStateObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/XuiLinearMotorStateObserver;->access$300(Lcom/android/server/XuiLinearMotorStateObserver;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method
