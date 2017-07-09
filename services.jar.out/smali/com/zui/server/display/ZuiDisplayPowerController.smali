.class public Lcom/zui/server/display/ZuiDisplayPowerController;
.super Ljava/lang/Object;
.source "ZuiDisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/server/display/ZuiDisplayPowerController$Listener;,
        Lcom/zui/server/display/ZuiDisplayPowerController$States;
    }
.end annotation


# static fields
.field public static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x32

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_ZUK_AUTO_BRIGHTNESS:Ljava/lang/String;

.field private static final ZUI_DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLEM:Lzui/hardware/display/LcdEffectManager;

.field private mScreenBrightnessRangeMaximum:I

.field private mScreenBrightnessRangeMinimum:I

.field private mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

.field private final mZuiBrightnessChangedListener:Lcom/zui/server/display/ZuiBrightnessChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lcom/zui/server/display/ZuiDisplayPowerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/server/display/ZuiDisplayPowerController;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/server/display/ZuiDisplayPowerController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zuk_auto_brightness"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/server/display/ZuiDisplayPowerController;->TAG_ZUK_AUTO_BRIGHTNESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/zui/server/display/ZuiDisplayPowerController$States;

    invoke-direct {v0, p0}, Lcom/zui/server/display/ZuiDisplayPowerController$States;-><init>(Lcom/zui/server/display/ZuiDisplayPowerController;)V

    iput-object v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    .line 205
    new-instance v0, Lcom/zui/server/display/ZuiDisplayPowerController$1;

    invoke-direct {v0, p0}, Lcom/zui/server/display/ZuiDisplayPowerController$1;-><init>(Lcom/zui/server/display/ZuiDisplayPowerController;)V

    iput-object v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mZuiBrightnessChangedListener:Lcom/zui/server/display/ZuiBrightnessChangedListener;

    return-void
.end method

.method private RedirectBrightness_ZUK(III)I
    .locals 5
    .param p1, "b"    # I
    .param p2, "zuk"    # I
    .param p3, "auto"    # I

    .prologue
    const/16 v1, 0xff

    const/4 v4, -0x1

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RedirectBrightness_ZUK, b = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", zuk = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", auto = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zui/server/display/ZuiDisplayPowerController;->Zlogd(Ljava/lang/String;)V

    .line 302
    const/4 v0, -0x1

    .line 306
    .local v0, "value":I
    if-eq p2, v4, :cond_0

    if-eq p1, v4, :cond_0

    if-ne p3, v4, :cond_1

    .line 307
    :cond_0
    move v0, p3

    .line 335
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RedirectBrightness_ZUK, b = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zuk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", auto = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ==> value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/server/display/ZuiDisplayPowerController;->Zlogd(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, v0}, Lcom/zui/server/display/ZuiDisplayPowerController;->clampScreenBrightness_internal(I)I

    move-result v0

    .line 341
    invoke-direct {p0, p3}, Lcom/zui/server/display/ZuiDisplayPowerController;->saveCurrentAutoBrightnessFromSensor(I)V

    .line 343
    return v0

    .line 309
    :cond_1
    if-gt p3, p1, :cond_6

    .line 310
    if-nez p1, :cond_2

    .line 311
    move v0, p2

    goto :goto_0

    .line 312
    :cond_2
    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 313
    if-ne p3, v1, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 314
    :cond_4
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 318
    mul-int v1, p2, p3

    div-int v0, v1, p1

    goto :goto_0

    .line 321
    :cond_5
    sget-object v1, Lcom/zui/server/display/ZuiDisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RedirectBrightness_ZUK, b = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", zuk = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", auto = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 327
    :cond_6
    if-ne p1, v1, :cond_7

    .line 328
    const/16 v0, 0xff

    goto/16 :goto_0

    .line 330
    :cond_7
    mul-int/lit16 v1, p3, 0xff

    mul-int v2, p2, p3

    sub-int/2addr v1, v2

    mul-int/lit16 v2, p2, 0xff

    add-int/2addr v1, v2

    mul-int/lit16 v2, p1, 0xff

    sub-int/2addr v1, v2

    rsub-int v2, p1, 0xff

    div-int v0, v1, v2

    goto/16 :goto_0
.end method

.method private Zlogd(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/zui/server/display/ZuiDisplayPowerController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/display/ZuiDisplayPowerController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zui/server/display/ZuiDisplayPowerController;)Lcom/zui/server/display/ZuiDisplayPowerController$States;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/display/ZuiDisplayPowerController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zui/server/display/ZuiDisplayPowerController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/display/ZuiDisplayPowerController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/zui/server/display/ZuiDisplayPowerController;->Zlogd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/server/display/ZuiDisplayPowerController;)Lzui/hardware/display/LcdEffectManager;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/display/ZuiDisplayPowerController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zui/server/display/ZuiDisplayPowerController;III)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/display/ZuiDisplayPowerController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/server/display/ZuiDisplayPowerController;->automaticCabcAdjustment(III)V

    return-void
.end method

.method private automaticCabcAdjustment(III)V
    .locals 3
    .param p1, "custom"    # I
    .param p2, "internal"    # I
    .param p3, "brightness"    # I

    .prologue
    const/16 v0, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 223
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    if-ne v1, p1, :cond_3

    .line 227
    if-lt p3, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 228
    iget-object v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v0, v2}, Lzui/hardware/display/LcdEffectManager;->setCabcStatusInternal(I)I

    goto :goto_0

    .line 229
    :cond_2
    if-ge p3, v0, :cond_0

    if-nez p2, :cond_0

    .line 230
    iget-object v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v0, v1}, Lzui/hardware/display/LcdEffectManager;->setCabcStatusInternal(I)I

    goto :goto_0

    .line 234
    :cond_3
    if-nez p1, :cond_0

    .line 235
    if-ne p2, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v0, v2}, Lzui/hardware/display/LcdEffectManager;->setCabcStatusInternal(I)I

    goto :goto_0
.end method

.method private clampScreenBrightness_internal(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 358
    iget v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private initSettingsObserver()V
    .locals 5

    .prologue
    .line 244
    iget-object v3, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 246
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v3, "Settings.System.cabccustom"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 247
    .local v0, "cabcInternalUri":Landroid/net/Uri;
    new-instance v2, Lcom/zui/server/display/ZuiDisplayPowerController$2;

    iget-object v3, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v0}, Lcom/zui/server/display/ZuiDisplayPowerController$2;-><init>(Lcom/zui/server/display/ZuiDisplayPowerController;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 262
    .local v2, "observer":Landroid/database/ContentObserver;
    const-string v3, "Settings.System.cabccustom"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    return-void
.end method

.method private saveCurrentAutoBrightnessFromSensor(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 347
    iget-object v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 350
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "actual_brightness_from_sensor"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 355
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method


# virtual methods
.method public animateScreenBrightness(I)I
    .locals 6
    .param p1, "target"    # I

    .prologue
    .line 269
    move v2, p1

    .line 270
    .local v2, "old_target":I
    invoke-direct {p0, p1}, Lcom/zui/server/display/ZuiDisplayPowerController;->clampScreenBrightness_internal(I)I

    move-result p1

    .line 271
    if-eq v2, p1, :cond_0

    .line 272
    sget-object v3, Lcom/zui/server/display/ZuiDisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert INVALID brightness = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] to ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    if-eqz v3, :cond_1

    .line 282
    iget-object v3, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v3}, Lzui/hardware/display/LcdEffectManager;->getCabcStatus()I

    move-result v0

    .line 283
    .local v0, "custom":I
    iget-object v3, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v3}, Lzui/hardware/display/LcdEffectManager;->getCabcStatusInternal()I

    move-result v1

    .line 284
    .local v1, "internal":I
    invoke-direct {p0, v0, v1, p1}, Lcom/zui/server/display/ZuiDisplayPowerController;->automaticCabcAdjustment(III)V

    .line 287
    .end local v0    # "custom":I
    .end local v1    # "internal":I
    :cond_1
    return p1
.end method

.method public animateScreenBrightness_Hook(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/zui/server/display/ZuiDisplayPowerController$Listener;)V
    .locals 3
    .param p1, "brightness"    # I
    .param p2, "powerRequest"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p3, "listener"    # Lcom/zui/server/display/ZuiDisplayPowerController$Listener;

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "rate":I
    iget-boolean v1, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->turningTemporaryScreenBrightness:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iget-boolean v1, v1, Lcom/zui/server/display/ZuiDisplayPowerController$States;->newBrightnessWhenUserSetChanged:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iget-boolean v1, v1, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnToManual:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iget-boolean v1, v1, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnFromDim:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iget-boolean v1, v1, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnToDim:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iget-boolean v1, v1, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnOnScreenFromOff:Z

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    invoke-interface {p3, p1, v0}, Lcom/zui/server/display/ZuiDisplayPowerController$Listener;->doAnimateScreenBrightness(II)V

    .line 170
    return-void

    .line 165
    :cond_1
    iget v1, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->newBrightnessWhenUserSet:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v0, 0x96

    :goto_1
    goto :goto_0

    :cond_2
    const/16 v0, 0x97

    goto :goto_1
.end method

.method public getAutomaticScreenBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;IILcom/zui/server/display/ZuiAutomaticBrightnessController;)I
    .locals 3
    .param p1, "powerRequest"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "powerBrightness"    # I
    .param p3, "autoBrightness"    # I
    .param p4, "automaticBrightnessController"    # Lcom/zui/server/display/ZuiAutomaticBrightnessController;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "brightness":I
    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->turningTemporaryScreenBrightness:Z

    if-eqz v1, :cond_0

    .line 105
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    invoke-direct {p0, v1}, Lcom/zui/server/display/ZuiDisplayPowerController;->clampScreenBrightness_internal(I)I

    move-result v0

    .line 136
    :goto_0
    return v0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iget-boolean v1, v1, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnToAuto:Z

    if-eqz v1, :cond_2

    .line 112
    move v0, p2

    .line 116
    invoke-virtual {p4, v0}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->setAutomaticScreenBrightness_FromOutside(I)V

    .line 125
    :goto_1
    iget-object v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iget-boolean v1, v1, Lcom/zui/server/display/ZuiDisplayPowerController$States;->newBrightnessWhenUserSetChanged:Z

    if-eqz v1, :cond_1

    .line 126
    invoke-direct {p0, v0}, Lcom/zui/server/display/ZuiDisplayPowerController;->clampScreenBrightness_internal(I)I

    move-result v1

    iput v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->actualBrightnessWhenUserSet:I

    .line 130
    :cond_1
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->actualBrightnessWhenUserSet:I

    iget v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->newBrightnessWhenUserSet:I

    invoke-direct {p0, v1, v2, v0}, Lcom/zui/server/display/ZuiDisplayPowerController;->RedirectBrightness_ZUK(III)I

    move-result v0

    goto :goto_0

    .line 122
    :cond_2
    move v0, p3

    goto :goto_1
.end method

.method public initialize(Lcom/zui/server/display/ZuiDisplayPowerState;)V
    .locals 1
    .param p1, "powerState"    # Lcom/zui/server/display/ZuiDisplayPowerState;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mZuiBrightnessChangedListener:Lcom/zui/server/display/ZuiBrightnessChangedListener;

    invoke-virtual {p1, v0}, Lcom/zui/server/display/ZuiDisplayPowerState;->setBrightnessChangedListener_ZUK(Lcom/zui/server/display/ZuiBrightnessChangedListener;)V

    .line 202
    return-void
.end method

.method public resetPowerStates()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    invoke-virtual {v0}, Lcom/zui/server/display/ZuiDisplayPowerController$States;->reset()V

    .line 77
    return-void
.end method

.method public storePowerStates_l(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 7
    .param p1, "powerRequest"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "pendingRequestLocked"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    iget-object v3, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->newBrightnessWhenUserSet:I

    iget v4, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->newBrightnessWhenUserSet:I

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/zui/server/display/ZuiDisplayPowerController$States;->newBrightnessWhenUserSetChanged:Z

    .line 87
    iget-object v3, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iget-boolean v4, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eq v0, v4, :cond_1

    iget-boolean v0, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnToManual:Z

    .line 89
    iget-object v3, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iget-boolean v4, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eq v0, v4, :cond_2

    iget-boolean v0, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnToAuto:Z

    .line 91
    iget-object v3, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v5, v0, :cond_3

    iget v0, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v5, v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, v3, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnToDim:Z

    .line 93
    iget-object v3, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v5, v0, :cond_4

    iget v0, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v5, v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, v3, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnFromDim:Z

    .line 95
    iget-object v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iget v3, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v6, v3, :cond_5

    iget v3, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v6, v3, :cond_5

    :goto_5
    iput-boolean v1, v0, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnOnScreenFromOff:Z

    .line 97
    return-void

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    :cond_1
    move v0, v2

    .line 87
    goto :goto_1

    :cond_2
    move v0, v2

    .line 89
    goto :goto_2

    :cond_3
    move v0, v2

    .line 91
    goto :goto_3

    :cond_4
    move v0, v2

    .line 93
    goto :goto_4

    :cond_5
    move v1, v2

    .line 95
    goto :goto_5
.end method

.method public updateDataBaseFlag(Z)V
    .locals 1
    .param p1, "shouldUpdate"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;

    iput-boolean p1, v0, Lcom/zui/server/display/ZuiDisplayPowerController$States;->mUpdateDataBase:Z

    .line 141
    return-void
.end method

.method public zuiInit(Landroid/content/Context;Landroid/os/Handler;Lcom/zui/server/display/ZuiAutomaticBrightnessController;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "automaticBrightnessController"    # Lcom/zui/server/display/ZuiAutomaticBrightnessController;
    .param p4, "minBrightness"    # I
    .param p5, "maxBrightness"    # I

    .prologue
    .line 176
    iput-object p1, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mHandler:Landroid/os/Handler;

    .line 178
    iput p4, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 179
    iput p5, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 180
    if-eqz p3, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 183
    .local v2, "resources":Landroid/content/res/Resources;
    const v4, 0x10e00c7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 185
    .local v1, "autoSunlightTriggerEnableLux":I
    const v4, 0x10e00c8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 187
    .local v0, "autoSunlightTriggerDisableStopLux":I
    const v4, 0x10e00c9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 190
    .local v3, "triggerDisableTimeSlice":I
    invoke-static {}, Lzui/hardware/display/LcdEffectManager;->getInstance()Lzui/hardware/display/LcdEffectManager;

    move-result-object v4

    iput-object v4, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    .line 191
    iget-object v4, p0, Lcom/zui/server/display/ZuiDisplayPowerController;->mLEM:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {p3, v4, v1, v0, v3}, Lcom/zui/server/display/ZuiAutomaticBrightnessController;->setLcdEffectParams(Lzui/hardware/display/LcdEffectManager;III)V

    .line 197
    .end local v0    # "autoSunlightTriggerDisableStopLux":I
    .end local v1    # "autoSunlightTriggerEnableLux":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "triggerDisableTimeSlice":I
    :cond_0
    invoke-direct {p0}, Lcom/zui/server/display/ZuiDisplayPowerController;->initSettingsObserver()V

    .line 198
    return-void
.end method
