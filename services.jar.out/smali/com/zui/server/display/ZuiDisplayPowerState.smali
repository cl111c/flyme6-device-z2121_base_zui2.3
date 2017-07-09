.class public Lcom/zui/server/display/ZuiDisplayPowerState;
.super Ljava/lang/Object;
.source "ZuiDisplayPowerState.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TAG_ZUK_AUTO_BRIGHTNESS:Ljava/lang/String;

.field private static final ZUI_DEBUG:Z


# instance fields
.field private mBrightnessChangedListener:Lcom/zui/server/display/ZuiBrightnessChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-class v0, Lcom/zui/server/display/ZuiDisplayPowerState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/server/display/ZuiDisplayPowerState;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/server/display/ZuiDisplayPowerState;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zuk_auto_brightness"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/server/display/ZuiDisplayPowerState;->TAG_ZUK_AUTO_BRIGHTNESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Zlogd(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method

.method private clampScreenBrightness_internal(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 69
    const/4 v0, 0x1

    const/16 v1, 0xff

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private getNewBacklight(I)I
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 42
    const v2, 0x3b83126f    # 0.004f

    int-to-float v3, p1

    mul-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v2, v3

    const v3, 0x3c985f07    # 0.0186f

    int-to-float v4, p1

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x3fa6a7f0    # 1.302f

    add-float v1, v2, v3

    .line 43
    .local v1, "tmp":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 44
    .local v0, "newLevel":I
    invoke-direct {p0, v0}, Lcom/zui/server/display/ZuiDisplayPowerState;->clampScreenBrightness_internal(I)I

    move-result v0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNewBacklight, level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zui/server/display/ZuiDisplayPowerState;->Zlogd(Ljava/lang/String;)V

    .line 46
    return v0
.end method


# virtual methods
.method public requestDisplayState(Lcom/android/server/display/DisplayBlanker;II)V
    .locals 4
    .param p1, "blanker"    # Lcom/android/server/display/DisplayBlanker;
    .param p2, "state"    # I
    .param p3, "backlight"    # I

    .prologue
    .line 57
    invoke-direct {p0, p3}, Lcom/zui/server/display/ZuiDisplayPowerState;->clampScreenBrightness_internal(I)I

    move-result v0

    .line 59
    .local v0, "brightness":I
    invoke-direct {p0, p3}, Lcom/zui/server/display/ZuiDisplayPowerState;->getNewBacklight(I)I

    move-result v1

    .line 60
    .local v1, "newbacklight":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backlight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newbacklight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zui/server/display/ZuiDisplayPowerState;->Zlogd(Ljava/lang/String;)V

    .line 62
    invoke-interface {p1, p2, v1}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(II)V

    .line 63
    iget-object v2, p0, Lcom/zui/server/display/ZuiDisplayPowerState;->mBrightnessChangedListener:Lcom/zui/server/display/ZuiBrightnessChangedListener;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/zui/server/display/ZuiDisplayPowerState;->mBrightnessChangedListener:Lcom/zui/server/display/ZuiBrightnessChangedListener;

    invoke-interface {v2, v0}, Lcom/zui/server/display/ZuiBrightnessChangedListener;->onBrightnessChanged(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public setBrightnessChangedListener_ZUK(Lcom/zui/server/display/ZuiBrightnessChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zui/server/display/ZuiBrightnessChangedListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zui/server/display/ZuiDisplayPowerState;->mBrightnessChangedListener:Lcom/zui/server/display/ZuiBrightnessChangedListener;

    .line 54
    return-void
.end method
