.class public interface abstract Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;
.super Ljava/lang/Object;
.source "ZuiFingerprintService_Delegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onPocketModeTriggered()V
.end method

.method public abstract onProcessCmd(ILandroid/os/Bundle;)V
.end method

.method public abstract onRequireEffectiveUserId(I)I
.end method
