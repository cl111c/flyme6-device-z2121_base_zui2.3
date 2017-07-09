.class Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;
.super Ljava/lang/Object;
.source "ZuiAutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/display/ZuiAutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 259
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    .line 235
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    # getter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensorEnabled:Z
    invoke-static {v1}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$000(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v4

    .line 237
    .local v0, "distance":F
    # getter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous proximity\'s state was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    # getter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLastProximity:I
    invoke-static {v3}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$200(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    # getter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximityThreshold:F
    invoke-static {v1}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$300(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    const/4 v2, 0x1

    # setter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximity:I
    invoke-static {v1, v2}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$402(Lcom/zui/server/display/ZuiAutomaticBrightnessController;I)I

    .line 240
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    # getter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$600(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    # getter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->MSG_UPDATE_AMBIENT_LUX:I
    invoke-static {v2}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$500(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    # getter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Proximty Positive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    iget-object v2, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    # getter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximity:I
    invoke-static {v2}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$400(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)I

    move-result v2

    # setter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLastProximity:I
    invoke-static {v1, v2}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$202(Lcom/zui/server/display/ZuiAutomaticBrightnessController;I)I

    .line 254
    .end local v0    # "distance":F
    :cond_0
    return-void

    .line 242
    .restart local v0    # "distance":F
    :cond_1
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    # getter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximityThreshold:F
    invoke-static {v1}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$300(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    # setter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximity:I
    invoke-static {v1, v4}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$402(Lcom/zui/server/display/ZuiAutomaticBrightnessController;I)I

    .line 244
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximityNegativeTime:J
    invoke-static {v1, v2, v3}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$702(Lcom/zui/server/display/ZuiAutomaticBrightnessController;J)J

    .line 245
    # getter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Proximty Negative"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    const/4 v2, -0x1

    # setter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximity:I
    invoke-static {v1, v2}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$402(Lcom/zui/server/display/ZuiAutomaticBrightnessController;I)I

    .line 248
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;->this$0:Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximityNegativeTime:J
    invoke-static {v1, v2, v3}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$702(Lcom/zui/server/display/ZuiAutomaticBrightnessController;J)J

    .line 249
    # getter for: Lcom/zui/server/display/ZuiAutomaticBrightnessController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proximty Unknown, distance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
