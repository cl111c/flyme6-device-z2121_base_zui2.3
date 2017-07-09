.class Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZuiFingerprintService_Delegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# static fields
.field private static final ZUK_SCREEN_ON_OFF:Ljava/lang/String; = "zuk_screen_on_off"


# instance fields
.field final synthetic this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;


# direct methods
.method public constructor <init>(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    .line 473
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 474
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    .line 477
    iget-object v2, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$500(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 478
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "zuk_screen_on_off"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 479
    .local v0, "ZUK_ScreenOnOff_Uri":Landroid/net/Uri;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 483
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 12
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 493
    const-string v8, "zuk_screen_on_off"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 494
    .local v0, "ZUK_ScreenOnOff_Uri":Landroid/net/Uri;
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 495
    iget-object v8, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$500(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 496
    .local v5, "resolver":Landroid/content/ContentResolver;
    const/4 v7, -0x1

    .line 497
    .local v7, "state":I
    const/4 v2, 0x0

    .line 498
    .local v2, "fpUnlockStatus":I
    const/4 v6, -0x1

    .line 500
    .local v6, "screenOffUnlockStatus":I
    :try_start_0
    const-string v8, "zuk_screen_on_off"

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 503
    const-string v8, "FINGERPRINT_UNLOCK_DEVICE"

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 506
    const-string v8, "screen_off_fp_unlock_state"

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 513
    :goto_0
    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 574
    .end local v2    # "fpUnlockStatus":I
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "screenOffUnlockStatus":I
    .end local v7    # "state":I
    :cond_0
    :goto_1
    return-void

    .line 509
    .restart local v2    # "fpUnlockStatus":I
    .restart local v5    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "screenOffUnlockStatus":I
    .restart local v7    # "state":I
    :catch_0
    move-exception v1

    .line 510
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 516
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v3, v7

    .line 527
    .local v3, "onOff":I
    if-nez v2, :cond_3

    .line 528
    iget-object v8, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mListener:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;
    invoke-static {v8}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$600(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 529
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v4, "params":Landroid/os/Bundle;
    const-string v8, "key_display_status"

    invoke-virtual {v4, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    iget-object v8, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mListener:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;
    invoke-static {v8}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$600(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

    move-result-object v8

    invoke-interface {v8, v10, v4}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;->onProcessCmd(ILandroid/os/Bundle;)V

    .line 549
    .end local v4    # "params":Landroid/os/Bundle;
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$800(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver$1;

    invoke-direct {v9, p0, v3}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver$1;-><init>(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    if-ne v11, v3, :cond_0

    .line 562
    iget-object v8, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # setter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mAntiMisOpCount:I
    invoke-static {v8, v10}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$902(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;I)I

    .line 564
    iget-object v8, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorRegistered:Z
    invoke-static {v8}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$1000(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 565
    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PSensor unregister listener."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v8, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # setter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorRegistered:Z
    invoke-static {v8, v10}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$1002(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;Z)Z

    .line 567
    iget-object v8, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v8}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$1200(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/hardware/SensorManager;

    move-result-object v8

    iget-object v9, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mProximitySensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v9}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$1100(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/hardware/SensorEventListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1

    .line 533
    :cond_3
    if-ne v11, v2, :cond_2

    .line 534
    if-eq v11, v6, :cond_2

    .line 536
    if-nez v6, :cond_2

    .line 537
    if-eq v11, v3, :cond_2

    .line 539
    if-nez v3, :cond_2

    .line 540
    iget-object v8, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mListener:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;
    invoke-static {v8}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$600(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 541
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 542
    .restart local v4    # "params":Landroid/os/Bundle;
    const-string v8, "key_display_status"

    invoke-virtual {v4, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 543
    iget-object v8, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mListener:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;
    invoke-static {v8}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$600(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

    move-result-object v8

    invoke-interface {v8, v10, v4}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;->onProcessCmd(ILandroid/os/Bundle;)V

    goto :goto_2

    .line 572
    .end local v2    # "fpUnlockStatus":I
    .end local v3    # "onOff":I
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "screenOffUnlockStatus":I
    .end local v7    # "state":I
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    goto/16 :goto_1
.end method

.method public stopObserve()V
    .locals 2

    .prologue
    .line 486
    iget-object v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$500(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 487
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 488
    return-void
.end method
