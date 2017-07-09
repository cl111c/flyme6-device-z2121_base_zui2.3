.class Lcom/zui/server/display/ZuiDisplayPowerController$1;
.super Ljava/lang/Object;
.source "ZuiDisplayPowerController.java"

# interfaces
.implements Lcom/zui/server/display/ZuiBrightnessChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/display/ZuiDisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/display/ZuiDisplayPowerController;


# direct methods
.method constructor <init>(Lcom/zui/server/display/ZuiDisplayPowerController;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/zui/server/display/ZuiDisplayPowerController$1;->this$0:Lcom/zui/server/display/ZuiDisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrightnessChanged(I)V
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    .line 208
    iget-object v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController$1;->this$0:Lcom/zui/server/display/ZuiDisplayPowerController;

    # getter for: Lcom/zui/server/display/ZuiDisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zui/server/display/ZuiDisplayPowerController;->access$000(Lcom/zui/server/display/ZuiDisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController$1;->this$0:Lcom/zui/server/display/ZuiDisplayPowerController;

    # getter for: Lcom/zui/server/display/ZuiDisplayPowerController;->mStates:Lcom/zui/server/display/ZuiDisplayPowerController$States;
    invoke-static {v1}, Lcom/zui/server/display/ZuiDisplayPowerController;->access$100(Lcom/zui/server/display/ZuiDisplayPowerController;)Lcom/zui/server/display/ZuiDisplayPowerController$States;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zui/server/display/ZuiDisplayPowerController$States;->mUpdateDataBase:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 209
    iget-object v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController$1;->this$0:Lcom/zui/server/display/ZuiDisplayPowerController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBrightnessChanged, brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/zui/server/display/ZuiDisplayPowerController;->Zlogd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/zui/server/display/ZuiDisplayPowerController;->access$200(Lcom/zui/server/display/ZuiDisplayPowerController;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/zui/server/display/ZuiDisplayPowerController$1;->this$0:Lcom/zui/server/display/ZuiDisplayPowerController;

    # getter for: Lcom/zui/server/display/ZuiDisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zui/server/display/ZuiDisplayPowerController;->access$000(Lcom/zui/server/display/ZuiDisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 217
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method
