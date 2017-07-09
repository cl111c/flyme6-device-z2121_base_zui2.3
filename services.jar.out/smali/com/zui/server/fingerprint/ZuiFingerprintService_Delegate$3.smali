.class Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$3;
.super Ljava/lang/Object;
.source "ZuiFingerprintService_Delegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->processSmartFp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$3;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    iput-object p2, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$3;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 187
    iget-object v3, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$3;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$500(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$3;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 188
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 189
    iget-object v3, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$3;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$500(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x10a0091

    const v5, 0x10a008f

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 193
    .local v2, "options":Landroid/os/Bundle;
    :try_start_0
    iget-object v3, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$3;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$500(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v2    # "options":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 194
    .restart local v2    # "options":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
