.class public Lzui/hardware/display/LcdEffectManager;
.super Ljava/lang/Object;
.source "LcdEffectManager.java"


# static fields
.field public static final ACTION_CARE_EYES:Ljava/lang/String; = "ACTION_CARE_EYES"

.field public static final AUTO_SUNLIGHT_DISABLE:I = 0x0

.field public static final AUTO_SUNLIGHT_ENABLE:I = 0x1

.field public static final CABC_DISABLE:I = 0x0

.field public static final CABC_DISABLE_INTERNAL:I = 0x0

.field public static final CABC_ENABLE:I = 0x1

.field public static final CABC_ENABLE_INTERNAL:I = 0x1

.field public static final CARE_EYES_DISABLE:I = 0x0

.field public static final CARE_EYES_ENABLE:I = 0x1

.field public static final CARE_EYES_STATUS:Ljava/lang/String; = "CARE_EYES_STATUS"

.field public static final IMAGE_ENHANCE_DISABLE:I = 0x0

.field public static final IMAGE_ENHANCE_ENABLE:I = 0x1

.field public static final PPMODE_FLAG_ACTIVE:I = 0x1

.field public static final PPMODE_FLAG_BOOTUP:I = 0x2

.field private static final PPMODE_FLAG_MASK:I = 0x3

.field public static final PPMODE_MODE_BASE:I = 0x0

.field public static final RESULT_ERROR_FEATURE_NOT_SUPPORT:I = -0x3

.field public static final RESULT_ERROR_HAL:I = -0x1

.field public static final RESULT_ERROR_INVALID_PARAM:I = -0x2

.field public static final RESULT_ERROR_LOCKED_BY_OTHER:I = -0x5

.field public static final RESULT_ERROR_REMOTE_EXCEPTION:I = -0x4

.field public static final RESULT_OK:I = 0x0

.field public static final SATURATION_MODE_DEAULT:I = 0x0

.field public static final SATURATION_MODE_MAX:I = 0x1

.field public static final SATURATION_MODE_SRGB:I = 0x1

.field public static final SETTINGS_ITEM_CABC_CUSTOM:Ljava/lang/String; = "Settings.System.cabccustom"

.field public static final SETTINGS_ITEM_SUNLIGHT:Ljava/lang/String; = "Settings.System.LcdSunlight"

.field public static final SUNLIGHT_DISABLE:I = 0x0

.field public static final SUNLIGHT_ENABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LcdEffectManager"

.field public static final TEMPERATURE_MODE_DEAULT:I = 0x1

.field public static final TEMPERATURE_MODE_H_1:I = 0x2

.field public static final TEMPERATURE_MODE_L_1:I = 0x0

.field public static final TEMPERATURE_MODE_MAX:I = 0x2

.field public static final TEMPERATURE_MODE_MIN:I

.field private static mHandler:Landroid/os/Handler;

.field private static mInstance:Lzui/hardware/display/LcdEffectManager;

.field private static mService:Lzui/hardware/display/ILcdEffectManager;

.field private static ppmodeLock:Ljava/lang/Object;


# instance fields
.field private mRestoreCareEyes:Ljava/lang/Runnable;

.field private mRestoreImageEnhance:Ljava/lang/Runnable;

.field private mRestoreSaturation:Ljava/lang/Runnable;

.field private mRestoreSunlight:Ljava/lang/Runnable;

.field private mRestoreTemperature:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzui/hardware/display/LcdEffectManager;->ppmodeLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Lzui/hardware/display/LcdEffectManager$1;

    invoke-direct {v0}, Lzui/hardware/display/LcdEffectManager$1;-><init>()V

    sput-object v0, Lzui/hardware/display/LcdEffectManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Lzui/hardware/display/LcdEffectManager$2;

    invoke-direct {v0, p0}, Lzui/hardware/display/LcdEffectManager$2;-><init>(Lzui/hardware/display/LcdEffectManager;)V

    iput-object v0, p0, Lzui/hardware/display/LcdEffectManager;->mRestoreSaturation:Ljava/lang/Runnable;

    .line 255
    new-instance v0, Lzui/hardware/display/LcdEffectManager$3;

    invoke-direct {v0, p0}, Lzui/hardware/display/LcdEffectManager$3;-><init>(Lzui/hardware/display/LcdEffectManager;)V

    iput-object v0, p0, Lzui/hardware/display/LcdEffectManager;->mRestoreTemperature:Ljava/lang/Runnable;

    .line 298
    new-instance v0, Lzui/hardware/display/LcdEffectManager$4;

    invoke-direct {v0, p0}, Lzui/hardware/display/LcdEffectManager$4;-><init>(Lzui/hardware/display/LcdEffectManager;)V

    iput-object v0, p0, Lzui/hardware/display/LcdEffectManager;->mRestoreCareEyes:Ljava/lang/Runnable;

    .line 408
    new-instance v0, Lzui/hardware/display/LcdEffectManager$5;

    invoke-direct {v0, p0}, Lzui/hardware/display/LcdEffectManager$5;-><init>(Lzui/hardware/display/LcdEffectManager;)V

    iput-object v0, p0, Lzui/hardware/display/LcdEffectManager;->mRestoreSunlight:Ljava/lang/Runnable;

    .line 489
    new-instance v0, Lzui/hardware/display/LcdEffectManager$6;

    invoke-direct {v0, p0}, Lzui/hardware/display/LcdEffectManager$6;-><init>(Lzui/hardware/display/LcdEffectManager;)V

    iput-object v0, p0, Lzui/hardware/display/LcdEffectManager;->mRestoreImageEnhance:Ljava/lang/Runnable;

    return-void
.end method

.method public static getInstance()Lzui/hardware/display/LcdEffectManager;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lzui/hardware/display/LcdEffectManager;->mInstance:Lzui/hardware/display/LcdEffectManager;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lzui/hardware/display/LcdEffectManager;

    invoke-direct {v0}, Lzui/hardware/display/LcdEffectManager;-><init>()V

    sput-object v0, Lzui/hardware/display/LcdEffectManager;->mInstance:Lzui/hardware/display/LcdEffectManager;

    .line 93
    :cond_0
    sget-object v0, Lzui/hardware/display/LcdEffectManager;->mInstance:Lzui/hardware/display/LcdEffectManager;

    return-object v0
.end method

.method private static getService()Lzui/hardware/display/ILcdEffectManager;
    .locals 2

    .prologue
    .line 163
    sget-object v1, Lzui/hardware/display/LcdEffectManager;->mService:Lzui/hardware/display/ILcdEffectManager;

    if-eqz v1, :cond_0

    .line 164
    sget-object v1, Lzui/hardware/display/LcdEffectManager;->mService:Lzui/hardware/display/ILcdEffectManager;

    .line 169
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 167
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "lcd_effect"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 168
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Lzui/hardware/display/ILcdEffectManager$Stub;->asInterface(Landroid/os/IBinder;)Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    sput-object v1, Lzui/hardware/display/LcdEffectManager;->mService:Lzui/hardware/display/ILcdEffectManager;

    .line 169
    sget-object v1, Lzui/hardware/display/LcdEffectManager;->mService:Lzui/hardware/display/ILcdEffectManager;

    goto :goto_0
.end method


# virtual methods
.method public getAutoSunlightStatus()I
    .locals 4

    .prologue
    .line 445
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 447
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1}, Lzui/hardware/display/ILcdEffectManager;->getAutoSunlightStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 450
    :goto_0
    return v2

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in getAutoSunlightStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public getCabcStatus()I
    .locals 4

    .prologue
    .line 330
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 332
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1}, Lzui/hardware/display/ILcdEffectManager;->getCabcStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 335
    :goto_0
    return v2

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in getCabcStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public getCabcStatusInternal()I
    .locals 4

    .prologue
    .line 364
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 366
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1}, Lzui/hardware/display/ILcdEffectManager;->getCabcStatusInternal()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 369
    :goto_0
    return v2

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in getCabcStatusInternal"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public getCareEyesStatus()I
    .locals 4

    .prologue
    .line 288
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 290
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1}, Lzui/hardware/display/ILcdEffectManager;->getCareEyesStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 293
    :goto_0
    return v2

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in getCareEyesStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public getDisplayPPMode(I)I
    .locals 4
    .param p1, "flag"    # I

    .prologue
    .line 539
    and-int/lit8 v2, p1, 0x3

    if-nez v2, :cond_0

    .line 540
    const/4 v2, -0x2

    .line 549
    :goto_0
    return v2

    .line 542
    :cond_0
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 544
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    sget-object v3, Lzui/hardware/display/LcdEffectManager;->ppmodeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :try_start_1
    invoke-interface {v1, p1}, Lzui/hardware/display/ILcdEffectManager;->getDisplayPPMode(I)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 546
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in getDisplayPPMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public getImageEnhanceStatus()I
    .locals 4

    .prologue
    .line 479
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 481
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1}, Lzui/hardware/display/ILcdEffectManager;->getImageEnhanceStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 484
    :goto_0
    return v2

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in getImageEnhanceStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public getSaturationMode()I
    .locals 4

    .prologue
    .line 198
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 200
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1}, Lzui/hardware/display/ILcdEffectManager;->getSaturationMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 203
    :goto_0
    return v2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in getSaturationMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public getSunlightStatus()I
    .locals 4

    .prologue
    .line 398
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 400
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1}, Lzui/hardware/display/ILcdEffectManager;->getSunlightStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 403
    :goto_0
    return v2

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in getSunlightStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public getTemperatureMode()I
    .locals 4

    .prologue
    .line 245
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 247
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1}, Lzui/hardware/display/ILcdEffectManager;->getTemperatureMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 250
    :goto_0
    return v2

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in getTemperatureMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public noteScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 126
    const-string v0, "LcdEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteScreenState, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public queryPPModeNumber()I
    .locals 4

    .prologue
    .line 502
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 504
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    sget-object v3, Lzui/hardware/display/LcdEffectManager;->ppmodeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :try_start_1
    invoke-interface {v1}, Lzui/hardware/display/ILcdEffectManager;->queryPPModeNumber()I

    move-result v2

    monitor-exit v3

    .line 509
    :goto_0
    return v2

    .line 506
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in queryPPModeNumber"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public setAutoSunlightStatus(I)I
    .locals 4
    .param p1, "auto"    # I

    .prologue
    .line 427
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 428
    const/4 v2, -0x2

    .line 436
    :goto_0
    return v2

    .line 431
    :cond_0
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 433
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1, p1}, Lzui/hardware/display/ILcdEffectManager;->setAutoSunlightStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in setAutoSunlightStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public setCabcStatus(I)I
    .locals 4
    .param p1, "custom"    # I

    .prologue
    .line 312
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 313
    const/4 v2, -0x2

    .line 321
    :goto_0
    return v2

    .line 316
    :cond_0
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 318
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1, p1}, Lzui/hardware/display/ILcdEffectManager;->setCabcStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in setCabcStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public setCabcStatusInternal(I)I
    .locals 4
    .param p1, "internal"    # I

    .prologue
    .line 346
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 347
    const/4 v2, -0x2

    .line 355
    :goto_0
    return v2

    .line 350
    :cond_0
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 352
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1, p1}, Lzui/hardware/display/ILcdEffectManager;->setCabcStatusInternal(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in setCabcStatusInternal"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public setCareEyesStatus(I)I
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 270
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_0

    .line 271
    const/4 v2, -0x2

    .line 279
    :goto_0
    return v2

    .line 274
    :cond_0
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 276
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1, p1}, Lzui/hardware/display/ILcdEffectManager;->setCareEyesStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in setCareEyesStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public setDisplayPPMode(II)I
    .locals 4
    .param p1, "ppMode"    # I
    .param p2, "flag"    # I

    .prologue
    .line 519
    and-int/lit8 v2, p2, 0x3

    if-nez v2, :cond_0

    .line 520
    const/4 v2, -0x2

    .line 530
    :goto_0
    return v2

    .line 523
    :cond_0
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 525
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    sget-object v3, Lzui/hardware/display/LcdEffectManager;->ppmodeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :try_start_1
    invoke-interface {v1, p1, p2}, Lzui/hardware/display/ILcdEffectManager;->setDisplayPPMode(II)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in setDisplayPPMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public setImageEnhanceStatus(I)I
    .locals 4
    .param p1, "enhanceValue"    # I

    .prologue
    .line 461
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 462
    const/4 v2, -0x2

    .line 470
    :goto_0
    return v2

    .line 465
    :cond_0
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 467
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1, p1}, Lzui/hardware/display/ILcdEffectManager;->setImageEnhanceStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in setImageEnhanceStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public setSaturationMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 180
    if-ltz p1, :cond_0

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 181
    :cond_0
    const/4 v2, -0x2

    .line 189
    :goto_0
    return v2

    .line 184
    :cond_1
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 186
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1, p1}, Lzui/hardware/display/ILcdEffectManager;->setSaturationMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in setSaturationMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public setSunlightStatus(I)I
    .locals 4
    .param p1, "sunlightValue"    # I

    .prologue
    .line 380
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 381
    const/4 v2, -0x2

    .line 389
    :goto_0
    return v2

    .line 384
    :cond_0
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 386
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1, p1}, Lzui/hardware/display/ILcdEffectManager;->setSunlightStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in setSunlightStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public setTemperatureMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 227
    if-ltz p1, :cond_0

    const/4 v2, 0x2

    if-le p1, v2, :cond_1

    .line 228
    :cond_0
    const/4 v2, -0x2

    .line 236
    :goto_0
    return v2

    .line 231
    :cond_1
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getService()Lzui/hardware/display/ILcdEffectManager;

    move-result-object v1

    .line 233
    .local v1, "service":Lzui/hardware/display/ILcdEffectManager;
    :try_start_0
    invoke-interface {v1, p1}, Lzui/hardware/display/ILcdEffectManager;->setTemperatureMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "LcdEffectManager"

    const-string v3, "Dead object in setTemperatureMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    const/4 v2, -0x4

    goto :goto_0
.end method
