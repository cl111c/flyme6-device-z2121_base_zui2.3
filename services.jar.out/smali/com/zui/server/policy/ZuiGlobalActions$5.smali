.class Lcom/zui/server/policy/ZuiGlobalActions$5;
.super Ljava/lang/Object;
.source "ZuiGlobalActions.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/policy/ZuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/policy/ZuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/zui/server/policy/ZuiGlobalActions;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/zui/server/policy/ZuiGlobalActions$5;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "snr"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 405
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v2

    .line 388
    .local v0, "distance":F
    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions$5;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    const/4 v2, 0x1

    # setter for: Lcom/zui/server/policy/ZuiGlobalActions;->mLockShutdown:Z
    invoke-static {v1, v2}, Lcom/zui/server/policy/ZuiGlobalActions;->access$802(Lcom/zui/server/policy/ZuiGlobalActions;Z)Z

    .line 390
    const-string v1, "ProximitySensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distance > 5, distance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_0
    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions$5;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    invoke-static {v1}, Lcom/zui/server/policy/ZuiGlobalActions;->access$000(Lcom/zui/server/policy/ZuiGlobalActions;)Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions$5;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    invoke-static {v1}, Lcom/zui/server/policy/ZuiGlobalActions;->access$000(Lcom/zui/server/policy/ZuiGlobalActions;)Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/server/policy/ZuiGlobalActions$5;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mLockShutdown:Z
    invoke-static {v2}, Lcom/zui/server/policy/ZuiGlobalActions;->access$800(Lcom/zui/server/policy/ZuiGlobalActions;)Z

    move-result v2

    # invokes: Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->EnableBtn(Z)V
    invoke-static {v1, v2}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->access$900(Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;Z)V

    .line 400
    :cond_0
    return-void

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions$5;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # setter for: Lcom/zui/server/policy/ZuiGlobalActions;->mLockShutdown:Z
    invoke-static {v1, v2}, Lcom/zui/server/policy/ZuiGlobalActions;->access$802(Lcom/zui/server/policy/ZuiGlobalActions;Z)Z

    .line 393
    const-string v1, "ProximitySensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distance < 5, distance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
