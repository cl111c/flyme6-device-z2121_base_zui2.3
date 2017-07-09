.class Lcom/zui/server/display/LcdEffectService$1;
.super Ljava/lang/Object;
.source "LcdEffectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/server/display/LcdEffectService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/display/LcdEffectService;

.field final synthetic val$binderService:Lcom/zui/server/display/LcdEffectService$BinderService;


# direct methods
.method constructor <init>(Lcom/zui/server/display/LcdEffectService;Lcom/zui/server/display/LcdEffectService$BinderService;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zui/server/display/LcdEffectService$1;->this$0:Lcom/zui/server/display/LcdEffectService;

    iput-object p2, p0, Lcom/zui/server/display/LcdEffectService$1;->val$binderService:Lcom/zui/server/display/LcdEffectService$BinderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zui/server/display/LcdEffectService$1;->val$binderService:Lcom/zui/server/display/LcdEffectService$BinderService;

    invoke-virtual {v0}, Lcom/zui/server/display/LcdEffectService$BinderService;->systemReady()V

    .line 46
    return-void
.end method
