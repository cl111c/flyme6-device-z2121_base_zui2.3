.class public final Lcom/android/server/XuiBatteryService;
.super Ljava/lang/Object;
.source "XuiBatteryService.java"


# static fields
.field private static final PERCENT_10:I = 0xa

.field private static final PERCENT_5:I = 0x5

.field private static final TAG:Ljava/lang/String; = "XuiBatteryService"

.field private static final sNofityLowPowerLevel:[I


# instance fields
.field private mBatteryLight:Lcom/android/server/lights/Light;

.field private mBatteryProps:Landroid/os/BatteryProperties;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastBatteryLevel:I

.field private mLastPlugType:I

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private final mLock:Ljava/lang/Object;

.field private mPlugType:I

.field private mPluggedInSoundId:I

.field private mPluggedInSoundStreamId:I

.field private mPluggedInSoundVolume:F

.field private mPluggedInSounds:Landroid/media/SoundPool;

.field pluggedInDefaultAttenuation:I

.field private pluggedInSound:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/XuiBatteryService;->sNofityLowPowerLevel:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0xa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/BatteryService$Led;Landroid/os/Handler;Lcom/android/internal/app/IBatteryStats;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "led"    # Lcom/android/server/BatteryService$Led;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "batterystats"    # Lcom/android/internal/app/IBatteryStats;
    .param p5, "lock"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/XuiBatteryService;->mLastPlugType:I

    .line 50
    const-string v0, "/system/media/audio/ui/charge.ogg"

    iput-object v0, p0, Lcom/android/server/XuiBatteryService;->pluggedInSound:Ljava/lang/String;

    .line 52
    const/4 v0, -0x6

    iput v0, p0, Lcom/android/server/XuiBatteryService;->pluggedInDefaultAttenuation:I

    .line 61
    iput-object p1, p0, Lcom/android/server/XuiBatteryService;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/server/XuiBatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 63
    iput-object p3, p0, Lcom/android/server/XuiBatteryService;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p4, p0, Lcom/android/server/XuiBatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 65
    iput-object p5, p0, Lcom/android/server/XuiBatteryService;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/server/XuiBatteryService;->mPluggedInSounds:Landroid/media/SoundPool;

    .line 67
    iget-object v0, p0, Lcom/android/server/XuiBatteryService;->mPluggedInSounds:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/server/XuiBatteryService;->pluggedInSound:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/XuiBatteryService;->mPluggedInSoundId:I

    .line 68
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iget v2, p0, Lcom/android/server/XuiBatteryService;->pluggedInDefaultAttenuation:I

    int-to-float v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/server/XuiBatteryService;->mPluggedInSoundVolume:F

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/XuiBatteryService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/XuiBatteryService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/XuiBatteryService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/XuiBatteryService;)Lcom/android/server/BatteryService$Led;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/XuiBatteryService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/XuiBatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/XuiBatteryService;)Landroid/os/BatteryProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/XuiBatteryService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/XuiBatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/XuiBatteryService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/XuiBatteryService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/XuiBatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method playChargingSound()V
    .locals 7

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/XuiBatteryService;->mPluggedInSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/server/XuiBatteryService;->mPluggedInSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 56
    iget-object v0, p0, Lcom/android/server/XuiBatteryService;->mPluggedInSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/server/XuiBatteryService;->mPluggedInSoundId:I

    iget v2, p0, Lcom/android/server/XuiBatteryService;->mPluggedInSoundVolume:F

    iget v3, p0, Lcom/android/server/XuiBatteryService;->mPluggedInSoundVolume:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/server/XuiBatteryService;->mPluggedInSoundStreamId:I

    .line 57
    const-string v0, "XuiBatteryService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playChargingSound mPluggedInSoundStreamId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/XuiBatteryService;->mPluggedInSoundStreamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public processValuesLocked(IIILandroid/os/BatteryProperties;)V
    .locals 10
    .param p1, "plugType"    # I
    .param p2, "lastPlugType"    # I
    .param p3, "lastBatteryLevel"    # I
    .param p4, "batteryProps"    # Landroid/os/BatteryProperties;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 87
    iput p1, p0, Lcom/android/server/XuiBatteryService;->mPlugType:I

    .line 88
    iput p2, p0, Lcom/android/server/XuiBatteryService;->mLastPlugType:I

    .line 89
    iput p3, p0, Lcom/android/server/XuiBatteryService;->mLastBatteryLevel:I

    .line 90
    iput-object p4, p0, Lcom/android/server/XuiBatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    .line 91
    iget v6, p0, Lcom/android/server/XuiBatteryService;->mPlugType:I

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/server/XuiBatteryService;->sNofityLowPowerLevel:[I

    iget-object v7, p0, Lcom/android/server/XuiBatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v6, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/server/XuiBatteryService;->mLastBatteryLevel:I

    iget-object v7, p0, Lcom/android/server/XuiBatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryLevel:I

    add-int/lit8 v7, v7, 0x1

    if-ne v6, v7, :cond_0

    .line 94
    iget-object v6, p0, Lcom/android/server/XuiBatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/XuiBatteryService$2;

    invoke-direct {v7, p0}, Lcom/android/server/XuiBatteryService$2;-><init>(Lcom/android/server/XuiBatteryService;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    :cond_0
    iget v6, p0, Lcom/android/server/XuiBatteryService;->mPlugType:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/server/XuiBatteryService;->mLastPlugType:I

    if-nez v6, :cond_1

    .line 106
    iget-object v6, p0, Lcom/android/server/XuiBatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/XuiBatteryService$3;

    invoke-direct {v7, p0}, Lcom/android/server/XuiBatteryService$3;-><init>(Lcom/android/server/XuiBatteryService;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    :cond_1
    const-string v0, "batter_low_value"

    .line 126
    .local v0, "BATTER_LOW_VALUE":Ljava/lang/String;
    const-string v2, "supper_power_auto_switch_state"

    .line 127
    .local v2, "SUPPER_POWER_AUTO_SWITCH_STATE":Ljava/lang/String;
    const-string v1, "supper_power_auto_enable"

    .line 128
    .local v1, "SUPPER_POWER_AUTO_ENABLE":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/XuiBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "batter_low_value"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 129
    .local v5, "lowPowerValue":I
    if-eq v5, v8, :cond_3

    .line 131
    iget-object v6, p0, Lcom/android/server/XuiBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "supper_power_auto_switch_state"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 132
    .local v4, "lowPowerMode":I
    iget-object v6, p0, Lcom/android/server/XuiBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "supper_power_auto_enable"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 133
    .local v3, "lowPowerEnable":I
    const-string v6, "XuiBatteryService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lowPowerValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lowPowerMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lowPowerEnable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-ne v4, v9, :cond_2

    iget-object v6, p0, Lcom/android/server/XuiBatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    if-gt v6, v5, :cond_2

    if-eq v3, v9, :cond_2

    .line 138
    iget-object v6, p0, Lcom/android/server/XuiBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "supper_power_auto_enable"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    iget-object v6, p0, Lcom/android/server/XuiBatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/XuiBatteryService$4;

    invoke-direct {v7, p0}, Lcom/android/server/XuiBatteryService$4;-><init>(Lcom/android/server/XuiBatteryService;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    :cond_2
    if-ne v3, v9, :cond_3

    iget-object v6, p0, Lcom/android/server/XuiBatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    if-le v6, v5, :cond_3

    .line 153
    iget-object v6, p0, Lcom/android/server/XuiBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "supper_power_auto_enable"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    iget-object v6, p0, Lcom/android/server/XuiBatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/XuiBatteryService$5;

    invoke-direct {v7, p0}, Lcom/android/server/XuiBatteryService$5;-><init>(Lcom/android/server/XuiBatteryService;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    .end local v3    # "lowPowerEnable":I
    .end local v4    # "lowPowerMode":I
    :cond_3
    return-void
.end method

.method public setupContentObserver()V
    .locals 5

    .prologue
    .line 72
    new-instance v0, Lcom/android/server/XuiBatteryService$1;

    iget-object v2, p0, Lcom/android/server/XuiBatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/XuiBatteryService$1;-><init>(Lcom/android/server/XuiBatteryService;Landroid/os/Handler;)V

    .line 80
    .local v0, "ledsObs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/XuiBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 81
    .local v1, "ledsResolver":Landroid/content/ContentResolver;
    const-string v2, "CHARGING_LIGHT_PULSE"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 84
    return-void
.end method

.method public updateLightsLocked(IILcom/android/server/lights/Light;)Z
    .locals 6
    .param p1, "level"    # I
    .param p2, "status"    # I
    .param p3, "batteryLight"    # Lcom/android/server/lights/Light;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 172
    iput-object p3, p0, Lcom/android/server/XuiBatteryService;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 173
    iget-object v1, p0, Lcom/android/server/XuiBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CHARGING_LIGHT_PULSE"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 174
    .local v0, "enabeLeds":I
    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    if-ne p2, v5, :cond_2

    :cond_0
    if-ne v0, v4, :cond_2

    .line 176
    if-ne p2, v5, :cond_1

    .line 178
    const-string v1, "XuiBatteryService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full battery level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/android/server/XuiBatteryService;->mBatteryLight:Lcom/android/server/lights/Light;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 189
    :goto_0
    return v4

    .line 182
    :cond_1
    const-string v1, "XuiBatteryService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charging battery level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/android/server/XuiBatteryService;->mBatteryLight:Lcom/android/server/lights/Light;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/android/server/XuiBatteryService;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0
.end method
