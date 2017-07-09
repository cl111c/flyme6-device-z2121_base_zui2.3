.class Lcom/zui/server/icon/AppIconThemeServices$BinderService$3;
.super Landroid/content/BroadcastReceiver;
.source "AppIconThemeServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/icon/AppIconThemeServices$BinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;


# direct methods
.method constructor <init>(Lcom/zui/server/icon/AppIconThemeServices$BinderService;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$3;->this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 331
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "action":Ljava/lang/String;
    const-string v3, "AppIconThemeServices"

    const-string v4, "mThemeCenterReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v3, "CHANGE_THEME_PATH"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "themePath":Ljava/lang/String;
    const-string v3, "AppIconThemeServices"

    const-string v4, "mThemeCenterReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive themePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v3, "IS_CHANGE_THEME"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 341
    .local v1, "themeChange":Z
    const-string v3, "AppIconThemeServices"

    const-string v4, "mThemeCenterReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive themeChange = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v3, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$3;->this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    # invokes: Lcom/zui/server/icon/AppIconThemeServices$BinderService;->postMessage(Ljava/lang/String;Z)V
    invoke-static {v3, v2, v1}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->access$100(Lcom/zui/server/icon/AppIconThemeServices$BinderService;Ljava/lang/String;Z)V

    goto :goto_0
.end method
