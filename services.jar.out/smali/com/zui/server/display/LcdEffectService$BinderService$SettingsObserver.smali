.class Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LcdEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/display/LcdEffectService$BinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# static fields
.field private static final ZUK_SCREEN_ON_OFF:Ljava/lang/String; = "zuk_screen_on_off"


# instance fields
.field final synthetic this$1:Lcom/zui/server/display/LcdEffectService$BinderService;


# direct methods
.method public constructor <init>(Lcom/zui/server/display/LcdEffectService$BinderService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;->this$1:Lcom/zui/server/display/LcdEffectService$BinderService;

    .line 120
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 121
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    .line 124
    iget-object v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;->this$1:Lcom/zui/server/display/LcdEffectService$BinderService;

    iget-object v2, v2, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    # getter for: Lcom/zui/server/display/LcdEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zui/server/display/LcdEffectService;->access$000(Lcom/zui/server/display/LcdEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 125
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "zuk_screen_on_off"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 126
    .local v0, "ZUK_ScreenOnOff_Uri":Landroid/net/Uri;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 137
    const-string v4, "zuk_screen_on_off"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 138
    .local v0, "ZUK_ScreenOnOff_Uri":Landroid/net/Uri;
    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    iget-object v4, p0, Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;->this$1:Lcom/zui/server/display/LcdEffectService$BinderService;

    iget-object v4, v4, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    # getter for: Lcom/zui/server/display/LcdEffectService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zui/server/display/LcdEffectService;->access$000(Lcom/zui/server/display/LcdEffectService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 140
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, -0x1

    .line 142
    .local v3, "state":I
    :try_start_0
    const-string v4, "zuk_screen_on_off"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 149
    :goto_0
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 159
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "state":I
    :cond_0
    :goto_1
    return-void

    .line 145
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "state":I
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;->this$1:Lcom/zui/server/display/LcdEffectService$BinderService;

    iget-object v4, v4, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    # getter for: Lcom/zui/server/display/LcdEffectService;->mProductName:Ljava/lang/String;
    invoke-static {v4}, Lcom/zui/server/display/LcdEffectService;->access$100(Lcom/zui/server/display/LcdEffectService;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "k9"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;->this$1:Lcom/zui/server/display/LcdEffectService$BinderService;

    invoke-virtual {v4, v3}, Lcom/zui/server/display/LcdEffectService$BinderService;->handleScreenStateChanged_k9(I)V

    goto :goto_1

    .line 157
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "state":I
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    goto :goto_1
.end method

.method public stopObserve()V
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService$SettingsObserver;->this$1:Lcom/zui/server/display/LcdEffectService$BinderService;

    iget-object v1, v1, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    # getter for: Lcom/zui/server/display/LcdEffectService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zui/server/display/LcdEffectService;->access$000(Lcom/zui/server/display/LcdEffectService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 132
    return-void
.end method
