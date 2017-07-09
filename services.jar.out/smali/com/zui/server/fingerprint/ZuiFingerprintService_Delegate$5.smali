.class Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$5;
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


# direct methods
.method constructor <init>(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$5;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.tencent.mm.action.BIZSHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "LauncherUI.From.Scaner.Shortcut"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    iget-object v3, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$5;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$500(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x10a0091

    const v5, 0x10a008f

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 230
    .local v2, "options":Landroid/os/Bundle;
    :try_start_0
    iget-object v3, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$5;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$500(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
