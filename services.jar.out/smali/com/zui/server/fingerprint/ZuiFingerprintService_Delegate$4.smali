.class Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$4;
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
    .line 202
    iput-object p1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$4;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 205
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v2, "alipays://platformapi/startapp?appId=20000056&source=outfield"

    .line 208
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 209
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$4;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    # getter for: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$500(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
