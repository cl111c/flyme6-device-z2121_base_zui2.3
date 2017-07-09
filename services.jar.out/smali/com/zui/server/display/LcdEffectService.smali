.class public Lcom/zui/server/display/LcdEffectService;
.super Lcom/android/server/SystemService;
.source "LcdEffectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/server/display/LcdEffectService$BinderService;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mProductName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "LcdEffectService"

    iput-object v0, p0, Lcom/zui/server/display/LcdEffectService;->TAG:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/zui/server/display/LcdEffectService;->mContext:Landroid/content/Context;

    .line 32
    const-string v0, "ro.build.product"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/server/display/LcdEffectService;->mProductName:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/zui/server/display/LcdEffectService;->mProductName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/server/display/LcdEffectService;->mProductName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/zui/server/display/LcdEffectService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/display/LcdEffectService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zui/server/display/LcdEffectService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zui/server/display/LcdEffectService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/display/LcdEffectService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zui/server/display/LcdEffectService;->mProductName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method native nativeFinalize()V
.end method

.method native nativeGetAutoSunlightStatus()I
.end method

.method native nativeGetCabcStatus()I
.end method

.method native nativeGetCabcStatusInternal()I
.end method

.method native nativeGetCareEyesStatus()I
.end method

.method native nativeGetDisplayPPMode(I)I
.end method

.method native nativeGetImageEnhanceStatus()I
.end method

.method native nativeGetSaturationMode()I
.end method

.method native nativeGetSunlightStatus()I
.end method

.method native nativeGetTemperatureMode()I
.end method

.method native nativeInit()I
.end method

.method native nativeQueryPPModeNumber()I
.end method

.method native nativeSetAutoSunlightStatus(I)I
.end method

.method native nativeSetCabcStatus(I)I
.end method

.method native nativeSetCabcStatusInternal(I)I
.end method

.method native nativeSetCareEyesStatus(I)I
.end method

.method native nativeSetDisplayPPMode(II)I
.end method

.method native nativeSetImageEnhanceStatus(I)I
.end method

.method native nativeSetSaturationMode(I)I
.end method

.method native nativeSetSunlightStatus(I)I
.end method

.method native nativeSetTemperatureMode(I)I
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/zui/server/display/LcdEffectService$BinderService;

    invoke-direct {v0, p0}, Lcom/zui/server/display/LcdEffectService$BinderService;-><init>(Lcom/zui/server/display/LcdEffectService;)V

    .line 39
    .local v0, "binderService":Lcom/zui/server/display/LcdEffectService$BinderService;
    const-string v2, "lcd_effect"

    invoke-virtual {p0, v2, v0}, Lcom/zui/server/display/LcdEffectService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 41
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 42
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/zui/server/display/LcdEffectService$1;

    invoke-direct {v2, p0, v0}, Lcom/zui/server/display/LcdEffectService$1;-><init>(Lcom/zui/server/display/LcdEffectService;Lcom/zui/server/display/LcdEffectService$BinderService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method
