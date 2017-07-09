.class Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver$1;
.super Ljava/lang/Object;
.source "ZuiFingerprintService_Delegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;

.field final synthetic val$onOff:I


# direct methods
.method constructor <init>(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;I)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver$1;->this$1:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;

    iput p2, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver$1;->val$onOff:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 552
    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver$1;->val$onOff:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver$1;->this$1:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;

    iget-object v0, v0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    iget v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver$1;->val$onOff:I

    # setter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mLastScreenState:I
    invoke-static {v0, v1}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$702(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;I)I

    .line 554
    return-void
.end method
