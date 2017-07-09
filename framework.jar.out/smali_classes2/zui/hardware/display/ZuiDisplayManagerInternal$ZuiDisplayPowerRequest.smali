.class public Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;
.super Ljava/lang/Object;
.source "ZuiDisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/hardware/display/ZuiDisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZuiDisplayPowerRequest"
.end annotation


# instance fields
.field public actualBrightnessWhenUserSet:I

.field public newBrightnessWhenUserSet:I

.field public turningTemporaryScreenBrightness:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->actualBrightnessWhenUserSet:I

    .line 27
    iput v0, p0, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->newBrightnessWhenUserSet:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->turningTemporaryScreenBrightness:Z

    .line 29
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 1
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .prologue
    .line 32
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->actualBrightnessWhenUserSet:I

    iput v0, p0, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->actualBrightnessWhenUserSet:I

    .line 33
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->newBrightnessWhenUserSet:I

    iput v0, p0, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->newBrightnessWhenUserSet:I

    .line 34
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->turningTemporaryScreenBrightness:Z

    iput-boolean v0, p0, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->turningTemporaryScreenBrightness:Z

    .line 35
    return-void
.end method

.method public equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .prologue
    .line 38
    iget v0, p0, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->actualBrightnessWhenUserSet:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->actualBrightnessWhenUserSet:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->newBrightnessWhenUserSet:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->newBrightnessWhenUserSet:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->turningTemporaryScreenBrightness:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->turningTemporaryScreenBrightness:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", actualBrightnessWhenUserSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->actualBrightnessWhenUserSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newBrightnessWhenUserSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->newBrightnessWhenUserSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", turningTemporaryScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->turningTemporaryScreenBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
