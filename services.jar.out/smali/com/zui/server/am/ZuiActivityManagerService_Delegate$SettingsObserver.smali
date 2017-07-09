.class Lcom/zui/server/am/ZuiActivityManagerService_Delegate$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZuiActivityManagerService_Delegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/am/ZuiActivityManagerService_Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/am/ZuiActivityManagerService_Delegate;


# direct methods
.method constructor <init>(Lcom/zui/server/am/ZuiActivityManagerService_Delegate;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/am/ZuiActivityManagerService_Delegate;

    .line 40
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 41
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 44
    iget-object v1, p0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/am/ZuiActivityManagerService_Delegate;

    # getter for: Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->access$000(Lcom/zui/server/am/ZuiActivityManagerService_Delegate;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 45
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "persist_zuk_shownavbar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 47
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate$SettingsObserver;->this$0:Lcom/zui/server/am/ZuiActivityManagerService_Delegate;

    # invokes: Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->updateNavBar(Landroid/net/Uri;)V
    invoke-static {v0, p2}, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->access$100(Lcom/zui/server/am/ZuiActivityManagerService_Delegate;Landroid/net/Uri;)V

    .line 51
    return-void
.end method
