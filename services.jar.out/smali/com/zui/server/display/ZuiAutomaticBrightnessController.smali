.class public Lcom/zui/server/display/ZuiAutomaticBrightnessController;
.super Ljava/lang/Object;
.source "ZuiAutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/server/display/ZuiAutomaticBrightnessController$Listener;
    }
.end annotation


# static fields
.field protected static final AMBIENT_LIGHT_HORIZON:I = 0x1388

.field protected static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.2f

.field protected static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0xbb8

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_POSITIVE_TO_NEGATIVE_DEBOUNCE:J = 0x5dcL

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_ZUK_AUTO_BRIGHTNESS:Ljava/lang/String;

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static mHardlightThresholdBottom:F

.field private static mHardlightThresholdUp:F

.field private static mLcdTimeSlice:F


# instance fields
.field private MSG_UPDATE_AMBIENT_LUX:I

.field private mEnhanceValue:I

.field private mHandler:Landroid/os/Handler;

.field private mHardLightModeTime:J

.field private mIsHardLightMode:Z

.field private mLEM:Lzui/hardware/display/LcdEffectManager;

.field private mLastProximity:I

.field private mListener:Lcom/zui/server/display/ZuiAutomaticBrightnessController$Listener;

.field private mProximity:I

.field private mProximityNegativeTime:J

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSunlightReleased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-class v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zuk_auto_brightness"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->TAG_ZUK_AUTO_BRIGHTNESS:Ljava/lang/String;

    .line 101
    const/high16 v0, 0x44fa0000    # 2000.0f

    sput v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLcdTimeSlice:F

    .line 103
    const v0, 0x46c35000    # 25000.0f

    sput v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHardlightThresholdUp:F

    .line 104
    const v0, 0x466a6000    # 15000.0f

    sput v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHardlightThresholdBottom:F

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v2, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->MSG_UPDATE_AMBIENT_LUX:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    .line 105
    iput-boolean v3, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mIsHardLightMode:Z

    .line 106
    iput-boolean v3, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mSunlightReleased:Z

    .line 107
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHardLightModeTime:J

    .line 109
    iput v3, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mEnhanceValue:I

    .line 222
    iput v2, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximity:I

    .line 224
    iput v2, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLastProximity:I

    .line 232
    new-instance v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;

    invoke-direct {v0, p0}, Lcom/zui/server/display/ZuiAutomaticBrightnessController$1;-><init>(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)V

    iput-object v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    .prologue
    .line 26
    iget v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLastProximity:I

    return v0
.end method

.method static synthetic access$202(Lcom/zui/server/display/ZuiAutomaticBrightnessController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/display/ZuiAutomaticBrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLastProximity:I

    return p1
.end method

.method static synthetic access$300(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)F
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    .prologue
    .line 26
    iget v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$400(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    .prologue
    .line 26
    iget v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximity:I

    return v0
.end method

.method static synthetic access$402(Lcom/zui/server/display/ZuiAutomaticBrightnessController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/display/ZuiAutomaticBrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximity:I

    return p1
.end method

.method static synthetic access$500(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    .prologue
    .line 26
    iget v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->MSG_UPDATE_AMBIENT_LUX:I

    return v0
.end method

.method static synthetic access$600(Lcom/zui/server/display/ZuiAutomaticBrightnessController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/zui/server/display/ZuiAutomaticBrightnessController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/display/ZuiAutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximityNegativeTime:J

    return-wide p1
.end method

.method private setProximitySensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    if-eqz p1, :cond_0

    .line 264
    iget-boolean v2, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensorEnabled:Z

    if-nez v2, :cond_1

    .line 265
    iput-boolean v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensorEnabled:Z

    .line 266
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 268
    sget-object v1, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->TAG:Ljava/lang/String;

    const-string v2, "enable prox sensor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return v0

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    .line 273
    iput-boolean v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensorEnabled:Z

    .line 274
    iget-object v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 275
    sget-object v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->TAG:Ljava/lang/String;

    const-string v2, "disable prox sensor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 279
    goto :goto_0
.end method


# virtual methods
.method public configure(ZZ)Z
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "dozing"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    if-nez p1, :cond_0

    .line 76
    iget-boolean v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mSunlightReleased:Z

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v0, v2}, Lzui/hardware/display/LcdEffectManager;->setSunlightStatus(I)I

    .line 81
    iput-boolean v2, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mIsHardLightMode:Z

    .line 82
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHardLightModeTime:J

    .line 85
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mSunlightReleased:Z

    .line 87
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->setProximitySensorEnabled(Z)Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    .line 85
    goto :goto_0

    :cond_2
    move v1, v2

    .line 87
    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsHardLightMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mIsHardLightMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public handleImageEnhance(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 155
    sget v1, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHardlightThresholdUp:F

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 157
    .local v0, "enable":I
    :goto_0
    iget v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mEnhanceValue:I

    if-eq v0, v1, :cond_0

    .line 158
    iput v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mEnhanceValue:I

    .line 159
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v1, v0}, Lzui/hardware/display/LcdEffectManager;->setImageEnhanceStatus(I)I

    .line 161
    :cond_0
    return-void

    .line 155
    .end local v0    # "enable":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleLightSensorEvent_ZUK(JF)Z
    .locals 7
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v0, 0x1

    .line 132
    iget v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximity:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLastProximity:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximity:I

    if-eq v1, v0, :cond_1

    iget-wide v2, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximityNegativeTime:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->handleImageEnhance(JF)V

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->handleSunlightScreen(JF)V

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleSunlightScreen(JF)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "hardLightModeChanged":Z
    sget v1, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHardlightThresholdUp:F

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_3

    .line 167
    iget-boolean v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mIsHardLightMode:Z

    if-nez v1, :cond_2

    .line 169
    iput-wide p1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHardLightModeTime:J

    .line 170
    const/4 v0, 0x1

    .line 184
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 185
    iget-boolean v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mIsHardLightMode:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mIsHardLightMode:Z

    .line 186
    sget-object v1, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsHardLightMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mIsHardLightMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v1}, Lzui/hardware/display/LcdEffectManager;->getAutoSunlightStatus()I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 189
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    iget-boolean v4, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mIsHardLightMode:Z

    if-eqz v4, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Lzui/hardware/display/LcdEffectManager;->setSunlightStatus(I)I

    .line 201
    :cond_1
    :goto_3
    return-void

    .line 173
    :cond_2
    iput-wide p1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHardLightModeTime:J

    goto :goto_0

    .line 175
    :cond_3
    sget v1, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHardlightThresholdBottom:F

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_0

    .line 176
    iget-boolean v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mIsHardLightMode:Z

    if-eqz v1, :cond_0

    .line 177
    iget-wide v4, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHardLightModeTime:J

    long-to-float v1, v4

    sget v4, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLcdTimeSlice:F

    add-float/2addr v1, v4

    long-to-float v4, p1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 179
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHardLightModeTime:J

    .line 180
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v1, v3

    .line 185
    goto :goto_1

    :cond_5
    move v2, v3

    .line 189
    goto :goto_2

    .line 192
    :cond_6
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v1}, Lzui/hardware/display/LcdEffectManager;->getSunlightStatus()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v1, v3}, Lzui/hardware/display/LcdEffectManager;->setSunlightStatus(I)I

    goto :goto_3
.end method

.method public setAutomaticScreenBrightness_FromOutside(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mListener:Lcom/zui/server/display/ZuiAutomaticBrightnessController$Listener;

    invoke-interface {v0, p1}, Lcom/zui/server/display/ZuiAutomaticBrightnessController$Listener;->setAutomaticScreenBrightness(I)V

    .line 96
    return-void
.end method

.method public setLcdEffectParams(Lzui/hardware/display/LcdEffectManager;III)V
    .locals 1
    .param p1, "lem"    # Lzui/hardware/display/LcdEffectManager;
    .param p2, "hardlightThresholdUp"    # I
    .param p3, "hardlightThresholdBottom"    # I
    .param p4, "lcdTimeSlice"    # I

    .prologue
    .line 116
    iput-object p1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    .line 117
    int-to-float v0, p2

    sput v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHardlightThresholdUp:F

    .line 118
    int-to-float v0, p3

    sput v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHardlightThresholdBottom:F

    .line 119
    int-to-float v0, p4

    sput v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLcdTimeSlice:F

    .line 120
    iget-object v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v0}, Lzui/hardware/display/LcdEffectManager;->getImageEnhanceStatus()I

    move-result v0

    iput v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mEnhanceValue:I

    .line 121
    return-void
.end method

.method public zuiInit(Landroid/hardware/SensorManager;Landroid/os/Handler;ILcom/zui/server/display/ZuiAutomaticBrightnessController$Listener;)V
    .locals 3
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "msgUpdateAmbientLuxId"    # I
    .param p4, "listener"    # Lcom/zui/server/display/ZuiAutomaticBrightnessController$Listener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    iput-object p2, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mHandler:Landroid/os/Handler;

    .line 55
    iput p3, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->MSG_UPDATE_AMBIENT_LUX:I

    .line 56
    iput-object p4, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mListener:Lcom/zui/server/display/ZuiAutomaticBrightnessController$Listener;

    .line 59
    iget-object v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 60
    iget-object v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximityThreshold:F

    .line 63
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensorEnabled:Z

    .line 64
    sget-object v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get default proximity sensor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prox Threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->mProximityThreshold:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method
