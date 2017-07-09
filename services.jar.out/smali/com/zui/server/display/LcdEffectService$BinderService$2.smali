.class Lcom/zui/server/display/LcdEffectService$BinderService$2;
.super Ljava/lang/Object;
.source "LcdEffectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/server/display/LcdEffectService$BinderService;->setCareEyesStatus(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/server/display/LcdEffectService$BinderService;

.field final synthetic val$careEyesStatus:I


# direct methods
.method constructor <init>(Lcom/zui/server/display/LcdEffectService$BinderService;I)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/zui/server/display/LcdEffectService$BinderService$2;->this$1:Lcom/zui/server/display/LcdEffectService$BinderService;

    iput p2, p0, Lcom/zui/server/display/LcdEffectService$BinderService$2;->val$careEyesStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_CARE_EYES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CARE_EYES_STATUS"

    iget v2, p0, Lcom/zui/server/display/LcdEffectService$BinderService$2;->val$careEyesStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService$2;->this$1:Lcom/zui/server/display/LcdEffectService$BinderService;

    iget-object v1, v1, Lcom/zui/server/display/LcdEffectService$BinderService;->this$0:Lcom/zui/server/display/LcdEffectService;

    # getter for: Lcom/zui/server/display/LcdEffectService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zui/server/display/LcdEffectService;->access$000(Lcom/zui/server/display/LcdEffectService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 337
    return-void
.end method
