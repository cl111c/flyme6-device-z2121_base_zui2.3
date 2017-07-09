.class Lcom/zui/server/display/ZuiDisplayPowerController$2;
.super Landroid/database/ContentObserver;
.source "ZuiDisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/server/display/ZuiDisplayPowerController;->initSettingsObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/display/ZuiDisplayPowerController;

.field final synthetic val$cabcInternalUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/zui/server/display/ZuiDisplayPowerController;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/zui/server/display/ZuiDisplayPowerController$2;->this$0:Lcom/zui/server/display/ZuiDisplayPowerController;

    iput-object p3, p0, Lcom/zui/server/display/ZuiDisplayPowerController$2;->val$cabcInternalUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 249
    iget-object v4, p0, Lcom/zui/server/display/ZuiDisplayPowerController$2;->val$cabcInternalUri:Landroid/net/Uri;

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    iget-object v4, p0, Lcom/zui/server/display/ZuiDisplayPowerController$2;->this$0:Lcom/zui/server/display/ZuiDisplayPowerController;

    # getter for: Lcom/zui/server/display/ZuiDisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zui/server/display/ZuiDisplayPowerController;->access$000(Lcom/zui/server/display/ZuiDisplayPowerController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 251
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v4, "Settings.System.cabccustom"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 254
    .local v2, "custom":I
    iget-object v4, p0, Lcom/zui/server/display/ZuiDisplayPowerController$2;->this$0:Lcom/zui/server/display/ZuiDisplayPowerController;

    # getter for: Lcom/zui/server/display/ZuiDisplayPowerController;->mLEM:Lzui/hardware/display/LcdEffectManager;
    invoke-static {v4}, Lcom/zui/server/display/ZuiDisplayPowerController;->access$300(Lcom/zui/server/display/ZuiDisplayPowerController;)Lzui/hardware/display/LcdEffectManager;

    move-result-object v4

    invoke-virtual {v4}, Lzui/hardware/display/LcdEffectManager;->getCabcStatusInternal()I

    move-result v3

    .line 255
    .local v3, "internal":I
    const-string v4, "screen_brightness"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, "brightness":I
    iget-object v4, p0, Lcom/zui/server/display/ZuiDisplayPowerController$2;->this$0:Lcom/zui/server/display/ZuiDisplayPowerController;

    # invokes: Lcom/zui/server/display/ZuiDisplayPowerController;->automaticCabcAdjustment(III)V
    invoke-static {v4, v2, v3, v0}, Lcom/zui/server/display/ZuiDisplayPowerController;->access$400(Lcom/zui/server/display/ZuiDisplayPowerController;III)V

    .line 259
    .end local v0    # "brightness":I
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "custom":I
    .end local v3    # "internal":I
    :cond_0
    return-void
.end method
