.class public Lcom/zui/server/display/LcdEffectService$BinderService;
.super Lzui/hardware/display/ILcdEffectManager$Stub;
.source "LcdEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/display/LcdEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinderService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ERROR_FEATURE_NOT_SUPPORT:I = 0x2710

.field private static final QUERY_LOCK_STATUS_SATURATION:I = 0x0

.field private static final QUERY_LOCK_STATUS_TEMPERATURE:I = 0x1


# instance fields
.field private mCurSaturationMode:I

.field private mHandler:Landroid/os/Handler;

.field private mPPModeNumber:I

.field private mRestoreCabc:Ljava/lang/Runnable;

.field private mSettingsObserver:Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;

.field final synthetic this$0:Lcom/zui/server/display/LcdEffectService;


# direct methods
.method public constructor <init>(Lcom/zui/server/display/LcdEffectService;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 101
    iput-object p1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-direct {p0}, Lzui/hardware/display/ILcdEffectManager$Stub;-><init>()V

    .line 97
    iput v0, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mCurSaturationMode:I

    .line 98
    iput v0, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mPPModeNumber:I

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/zui/server/display/LcdEffectService$BinderService$1;

    invoke-direct {v0, p0}, Lcom/zui/server/display/LcdEffectService$BinderService$1;-><init>(Lcom/zui/server/display/LcdEffectService$BinderService;)V

    iput-object v0, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mRestoreCabc:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;

    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;-><init>(Lcom/zui/server/display/LcdEffectService$BinderService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mSettingsObserver:Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;

    .line 103
    iget-object v0, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mSettingsObserver:Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;

    invoke-virtual {v0}, Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;->observe()V

    .line 104
    return-void
.end method

.method private convertErrorCode(I)I
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 188
    :cond_0
    const/16 v0, 0x2710

    if-ne v0, p1, :cond_1

    .line 189
    const/4 v0, -0x3

    goto :goto_0

    .line 191
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isLockedByOther(I)Z
    .locals 3
    .param p1, "queryType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 201
    :pswitch_0
    invoke-virtual {p0}, Lcom/zui/server/display/LcdEffectService$BinderService;->getCareEyesStatus()I

    move-result v2

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAutoSunlightStatus()I
    .locals 2

    .prologue
    .line 436
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1}, Lcom/zui/server/display/LcdEffectService;->nativeGetAutoSunlightStatus()I

    move-result v0

    .line 437
    .local v0, "ret":I
    const/16 v1, 0x2710

    if-ne v1, v0, :cond_0

    .line 438
    const/4 v0, -0x3

    .line 440
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public getCabcStatus()I
    .locals 2

    .prologue
    .line 369
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1}, Lcom/zui/server/display/LcdEffectService;->nativeGetCabcStatus()I

    move-result v0

    .line 370
    .local v0, "ret":I
    const/16 v1, 0x2710

    if-ne v1, v0, :cond_0

    .line 371
    const/4 v0, -0x3

    .line 373
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public getCabcStatusInternal()I
    .locals 2

    .prologue
    .line 385
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1}, Lcom/zui/server/display/LcdEffectService;->nativeGetCabcStatusInternal()I

    move-result v0

    .line 386
    .local v0, "ret":I
    const/16 v1, 0x2710

    if-ne v1, v0, :cond_0

    .line 387
    const/4 v0, -0x3

    .line 389
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public getCareEyesStatus()I
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1}, Lcom/zui/server/display/LcdEffectService;->nativeGetCareEyesStatus()I

    move-result v0

    .line 346
    .local v0, "ret":I
    const/16 v1, 0x2710

    if-ne v1, v0, :cond_0

    .line 347
    const/4 v0, -0x3

    .line 349
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public getDisplayPPMode(I)I
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 483
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1, p1}, Lcom/zui/server/display/LcdEffectService;->nativeGetDisplayPPMode(I)I

    move-result v0

    .line 484
    .local v0, "ret":I
    const/16 v1, 0x2710

    if-ne v1, v0, :cond_0

    .line 485
    const/4 v0, -0x3

    .line 487
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public getImageEnhanceStatus()I
    .locals 2

    .prologue
    .line 452
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1}, Lcom/zui/server/display/LcdEffectService;->nativeGetImageEnhanceStatus()I

    move-result v0

    .line 453
    .local v0, "ret":I
    const/16 v1, 0x2710

    if-ne v1, v0, :cond_0

    .line 454
    const/4 v0, -0x3

    .line 456
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public getSaturationMode()I
    .locals 2

    .prologue
    .line 235
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1}, Lcom/zui/server/display/LcdEffectService;->nativeGetSaturationMode()I

    move-result v0

    .line 236
    .local v0, "ret":I
    const/16 v1, 0x2710

    if-ne v1, v0, :cond_0

    .line 237
    const/4 v0, -0x3

    .line 240
    .end local v0    # "ret":I
    :goto_0
    return v0

    .line 239
    .restart local v0    # "ret":I
    :cond_0
    iput v0, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mCurSaturationMode:I

    goto :goto_0
.end method

.method public getSunlightStatus()I
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1}, Lcom/zui/server/display/LcdEffectService;->nativeGetSunlightStatus()I

    move-result v0

    .line 414
    .local v0, "ret":I
    const/16 v1, 0x2710

    if-ne v1, v0, :cond_0

    .line 415
    const/4 v0, -0x3

    .line 417
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public getTemperatureMode()I
    .locals 2

    .prologue
    .line 262
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1}, Lcom/zui/server/display/LcdEffectService;->nativeGetTemperatureMode()I

    move-result v0

    .line 263
    .local v0, "ret":I
    const/16 v1, 0x2710

    if-ne v1, v0, :cond_0

    .line 264
    const/4 v0, -0x3

    .line 266
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public handleScreenStateChanged_k9(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 172
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mRestoreCabc:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mRestoreCabc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public queryPPModeNumber()I
    .locals 2

    .prologue
    .line 462
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1}, Lcom/zui/server/display/LcdEffectService;->nativeQueryPPModeNumber()I

    move-result v0

    .line 463
    .local v0, "ret":I
    const/16 v1, 0x2710

    if-ne v1, v0, :cond_0

    .line 464
    const/4 v0, -0x3

    .line 468
    .end local v0    # "ret":I
    :goto_0
    return v0

    .line 467
    .restart local v0    # "ret":I
    :cond_0
    iput v0, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mPPModeNumber:I

    goto :goto_0
.end method

.method public setAutoSunlightStatus(I)I
    .locals 2
    .param p1, "auto"    # I

    .prologue
    .line 423
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1, p1}, Lcom/zui/server/display/LcdEffectService;->nativeSetAutoSunlightStatus(I)I

    move-result v0

    .line 428
    .local v0, "ret":I
    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 429
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zui/server/display/LcdEffectService$BinderService;->setSunlightStatus(I)I

    .line 431
    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/server/display/LcdEffectService$BinderService;->convertErrorCode(I)I

    move-result v1

    return v1
.end method

.method public setCabcStatus(I)I
    .locals 3
    .param p1, "custom"    # I

    .prologue
    .line 355
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1, p1}, Lcom/zui/server/display/LcdEffectService;->nativeSetCabcStatus(I)I

    move-result v0

    .line 356
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    # getter for: Lcom/zui/server/display/LcdEffectService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zui/server/display/LcdEffectService;->access$000(Lcom/zui/server/display/LcdEffectService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "Settings.System.cabccustom"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/server/display/LcdEffectService$BinderService;->convertErrorCode(I)I

    move-result v1

    return v1
.end method

.method public setCabcStatusInternal(I)I
    .locals 2
    .param p1, "internal"    # I

    .prologue
    .line 379
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1, p1}, Lcom/zui/server/display/LcdEffectService;->nativeSetCabcStatusInternal(I)I

    move-result v0

    .line 380
    .local v0, "ret":I
    invoke-direct {p0, v0}, Lcom/zui/server/display/LcdEffectService$BinderService;->convertErrorCode(I)I

    move-result v1

    return v1
.end method

.method public setCareEyesStatus(I)I
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x2

    .line 272
    iget-object v4, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v4, p1}, Lcom/zui/server/display/LcdEffectService;->nativeSetCareEyesStatus(I)I

    move-result v1

    .line 276
    .local v1, "ret":I
    if-nez p1, :cond_0

    .line 277
    iget-object v4, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v4}, Lcom/zui/server/display/LcdEffectService;->nativeGetTemperatureMode()I

    move-result v3

    .line 278
    .local v3, "tmode":I
    iget-object v4, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v4}, Lcom/zui/server/display/LcdEffectService;->nativeGetSaturationMode()I

    move-result v2

    .line 279
    .local v2, "smode":I
    sparse-switch v2, :sswitch_data_0

    .line 324
    const-string v4, "LcdEffectService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCareEyesStatus, nativeGetSaturationMode() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v2    # "smode":I
    .end local v3    # "tmode":I
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 330
    move v0, p1

    .line 331
    .local v0, "careEyesStatus":I
    iget-object v4, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/zui/server/display/LcdEffectService$BinderService$2;

    invoke-direct {v5, p0, v0}, Lcom/zui/server/display/LcdEffectService$BinderService$2;-><init>(Lcom/zui/server/display/LcdEffectService$BinderService;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    .end local v0    # "careEyesStatus":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/zui/server/display/LcdEffectService$BinderService;->convertErrorCode(I)I

    move-result v4

    return v4

    .line 287
    .restart local v2    # "smode":I
    .restart local v3    # "tmode":I
    :sswitch_0
    iget-object v4, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v4, v2}, Lcom/zui/server/display/LcdEffectService;->nativeSetSaturationMode(I)I

    move-result v1

    .line 290
    if-ltz v3, :cond_0

    if-gt v3, v5, :cond_0

    .line 292
    iget-object v4, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v4, v3}, Lcom/zui/server/display/LcdEffectService;->nativeSetTemperatureMode(I)I

    move-result v1

    goto :goto_0

    .line 303
    :sswitch_1
    if-ltz v3, :cond_2

    if-gt v3, v5, :cond_2

    .line 305
    iget-object v4, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v4, v3}, Lcom/zui/server/display/LcdEffectService;->nativeSetTemperatureMode(I)I

    move-result v1

    .line 309
    :cond_2
    iget-object v4, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v4, v2}, Lcom/zui/server/display/LcdEffectService;->nativeSetSaturationMode(I)I

    move-result v1

    .line 310
    goto :goto_0

    .line 317
    :sswitch_2
    if-ltz v3, :cond_0

    if-gt v3, v5, :cond_0

    .line 319
    iget-object v4, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v4, v3}, Lcom/zui/server/display/LcdEffectService;->nativeSetTemperatureMode(I)I

    move-result v1

    goto :goto_0

    .line 279
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2710 -> :sswitch_2
    .end sparse-switch
.end method

.method public setDisplayPPMode(II)I
    .locals 2
    .param p1, "ppMode"    # I
    .param p2, "flag"    # I

    .prologue
    .line 474
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mPPModeNumber:I

    if-lt p1, v1, :cond_1

    .line 475
    :cond_0
    const/4 v1, -0x2

    .line 478
    :goto_0
    return v1

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1, p1, p2}, Lcom/zui/server/display/LcdEffectService;->nativeSetDisplayPPMode(II)I

    move-result v0

    .line 478
    .local v0, "ret":I
    invoke-direct {p0, v0}, Lcom/zui/server/display/LcdEffectService$BinderService;->convertErrorCode(I)I

    move-result v1

    goto :goto_0
.end method

.method public setImageEnhanceStatus(I)I
    .locals 2
    .param p1, "enhanceValue"    # I

    .prologue
    .line 446
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1, p1}, Lcom/zui/server/display/LcdEffectService;->nativeSetImageEnhanceStatus(I)I

    move-result v0

    .line 447
    .local v0, "ret":I
    invoke-direct {p0, v0}, Lcom/zui/server/display/LcdEffectService$BinderService;->convertErrorCode(I)I

    move-result v1

    return v1
.end method

.method public setSaturationMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, v0}, Lcom/zui/server/display/LcdEffectService$BinderService;->isLockedByOther(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    const/4 v3, -0x5

    .line 230
    :goto_0
    return v3

    .line 215
    :cond_0
    iget v3, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mCurSaturationMode:I

    if-eq p1, v3, :cond_1

    const/4 v0, 0x1

    .line 216
    .local v0, "modeChanged":Z
    :cond_1
    iget-object v3, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v3, p1}, Lcom/zui/server/display/LcdEffectService;->nativeSetSaturationMode(I)I

    move-result v1

    .line 217
    .local v1, "ret":I
    if-nez v1, :cond_2

    .line 218
    iput p1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mCurSaturationMode:I

    .line 219
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mCurSaturationMode:I

    if-nez v3, :cond_2

    .line 223
    iget-object v3, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v3}, Lcom/zui/server/display/LcdEffectService;->nativeGetTemperatureMode()I

    move-result v2

    .line 224
    .local v2, "tMode":I
    const/16 v3, 0x2710

    if-eq v3, v2, :cond_2

    .line 226
    iget-object v3, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v3, v2}, Lcom/zui/server/display/LcdEffectService;->nativeSetTemperatureMode(I)I

    .line 230
    .end local v2    # "tMode":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/zui/server/display/LcdEffectService$BinderService;->convertErrorCode(I)I

    move-result v3

    goto :goto_0
.end method

.method public setSunlightStatus(I)I
    .locals 3
    .param p1, "sunlightValue"    # I

    .prologue
    .line 399
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1, p1}, Lcom/zui/server/display/LcdEffectService;->nativeSetSunlightStatus(I)I

    move-result v0

    .line 400
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 405
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    # getter for: Lcom/zui/server/display/LcdEffectService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zui/server/display/LcdEffectService;->access$000(Lcom/zui/server/display/LcdEffectService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "Settings.System.LcdSunlight"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/server/display/LcdEffectService$BinderService;->convertErrorCode(I)I

    move-result v1

    return v1
.end method

.method public setTemperatureMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 246
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/zui/server/display/LcdEffectService$BinderService;->isLockedByOther(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/4 v1, -0x5

    .line 257
    :goto_0
    return v1

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    # getter for: Lcom/zui/server/display/LcdEffectService;->mProductName:Ljava/lang/String;
    invoke-static {v1}, Lcom/zui/server/display/LcdEffectService;->access$100(Lcom/zui/server/display/LcdEffectService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "z2_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mCurSaturationMode:I

    if-eqz v1, :cond_1

    .line 252
    const-string v1, "LcdEffectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTemperatureMode error: Current Saturation Mode is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mCurSaturationMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v1, -0x3

    goto :goto_0

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v1, p1}, Lcom/zui/server/display/LcdEffectService;->nativeSetTemperatureMode(I)I

    move-result v0

    .line 257
    .local v0, "ret":I
    invoke-direct {p0, v0}, Lcom/zui/server/display/LcdEffectService$BinderService;->convertErrorCode(I)I

    move-result v1

    goto :goto_0
.end method

.method public systemReady()V
    .locals 6

    .prologue
    const/16 v4, 0x2710

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 497
    iget-object v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v2}, Lcom/zui/server/display/LcdEffectService;->nativeInit()I

    .line 502
    const/4 v1, 0x0

    .line 507
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/zui/server/display/LcdEffectService$BinderService;->getCareEyesStatus()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v2, v3}, Lcom/zui/server/display/LcdEffectService;->nativeSetCareEyesStatus(I)I

    .line 518
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/zui/server/display/LcdEffectService$BinderService;->isLockedByOther(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v2}, Lcom/zui/server/display/LcdEffectService;->nativeGetSaturationMode()I

    move-result v1

    .line 520
    if-eq v4, v1, :cond_1

    if-ltz v1, :cond_1

    .line 521
    iput v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mCurSaturationMode:I

    .line 522
    iget v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mCurSaturationMode:I

    if-eqz v2, :cond_1

    .line 523
    iget-object v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v2, v1}, Lcom/zui/server/display/LcdEffectService;->nativeSetSaturationMode(I)I

    .line 528
    :cond_1
    invoke-direct {p0, v3}, Lcom/zui/server/display/LcdEffectService$BinderService;->isLockedByOther(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 529
    iget-object v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v2}, Lcom/zui/server/display/LcdEffectService;->nativeGetTemperatureMode()I

    move-result v1

    .line 530
    if-eq v4, v1, :cond_2

    if-ltz v1, :cond_2

    .line 531
    iget v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->mCurSaturationMode:I

    if-nez v2, :cond_2

    .line 532
    iget-object v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v2, v1}, Lcom/zui/server/display/LcdEffectService;->nativeSetTemperatureMode(I)I

    .line 548
    :cond_2
    iget-object v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v2, v3}, Lcom/zui/server/display/LcdEffectService;->nativeSetImageEnhanceStatus(I)I

    .line 553
    invoke-virtual {p0}, Lcom/zui/server/display/LcdEffectService$BinderService;->queryPPModeNumber()I

    .line 556
    iget-object v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    # getter for: Lcom/zui/server/display/LcdEffectService;->mProductName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zui/server/display/LcdEffectService;->access$100(Lcom/zui/server/display/LcdEffectService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "k9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 557
    invoke-virtual {p0, v5}, Lcom/zui/server/display/LcdEffectService$BinderService;->getDisplayPPMode(I)I

    move-result v0

    .line 558
    .local v0, "ppMode":I
    const-string v2, "LcdEffectService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force rest ppMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    invoke-virtual {v2, v0, v5}, Lcom/zui/server/display/LcdEffectService;->nativeSetDisplayPPMode(II)I

    .line 566
    .end local v0    # "ppMode":I
    :cond_3
    :goto_0
    return-void

    .line 560
    :cond_4
    iget-object v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    # getter for: Lcom/zui/server/display/LcdEffectService;->mProductName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zui/server/display/LcdEffectService;->access$100(Lcom/zui/server/display/LcdEffectService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "z2_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method
