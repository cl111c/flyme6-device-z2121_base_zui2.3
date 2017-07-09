.class Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$1;
.super Ljava/lang/Object;
.source "ZuiFingerprintService_Delegate.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;


# direct methods
.method constructor <init>(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$1;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "snr"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 113
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$1;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$000(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 104
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$1;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    # setter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorDistance:F
    invoke-static {v0, v1}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$102(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;F)F

    .line 105
    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProximitySensor, mPSensorDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$1;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorDistance:F
    invoke-static {v2}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$100(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$1;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorCond:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$300(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 107
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$1;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$000(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    return-void
.end method
