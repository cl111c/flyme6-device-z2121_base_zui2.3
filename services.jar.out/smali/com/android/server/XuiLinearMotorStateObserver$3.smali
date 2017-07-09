.class Lcom/android/server/XuiLinearMotorStateObserver$3;
.super Landroid/os/UEventObserver;
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
    .line 173
    iput-object p1, p0, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 177
    const-string v1, "persist.sys.motor.state"

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "motorState":Ljava/lang/String;
    const-string v1, "XuiLinearMotorStateObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Linear Motor State UEVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v1, "pfault"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v1, "tfault"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    const-string v2, "pfault"

    # setter for: Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorCurrentState:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/XuiLinearMotorStateObserver;->access$002(Lcom/android/server/XuiLinearMotorStateObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    const-string v1, "persist.sys.motor.state"

    const-string v2, "pfault"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->sXuiConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/server/XuiLinearMotorStateObserver;->access$400()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 189
    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->sXuiConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/server/XuiLinearMotorStateObserver;->access$400()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/XuiLinearMotorStateObserver;->access$600(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    invoke-direct {v2, p0}, Lcom/android/server/XuiLinearMotorStateObserver$3$1;-><init>(Lcom/android/server/XuiLinearMotorStateObserver$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
