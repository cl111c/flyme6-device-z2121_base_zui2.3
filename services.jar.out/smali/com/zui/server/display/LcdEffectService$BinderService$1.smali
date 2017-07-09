.class Lcom/zui/server/display/LcdEffectService$BinderService$1;
.super Ljava/lang/Object;
.source "LcdEffectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/display/LcdEffectService$BinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/server/display/LcdEffectService$BinderService;


# direct methods
.method constructor <init>(Lcom/zui/server/display/LcdEffectService$BinderService;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/zui/server/display/LcdEffectService$BinderService$1;->this$1:Lcom/zui/server/display/LcdEffectService$BinderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zui/server/display/LcdEffectService$BinderService$1;->this$1:Lcom/zui/server/display/LcdEffectService$BinderService;

    iget-object v1, p0, Lcom/zui/server/display/LcdEffectService$BinderService$1;->this$1:Lcom/zui/server/display/LcdEffectService$BinderService;

    invoke-virtual {v1}, Lcom/zui/server/display/LcdEffectService$BinderService;->getCabcStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/server/display/LcdEffectService$BinderService;->setCabcStatus(I)I

    .line 112
    return-void
.end method
