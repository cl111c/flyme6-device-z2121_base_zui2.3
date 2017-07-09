.class Lcom/zui/server/icon/AppIconThemeServices$BinderService$4;
.super Ljava/lang/Object;
.source "AppIconThemeServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/server/icon/AppIconThemeServices$BinderService;->handleThemeChange(Ljava/lang/String;Z)V
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
    .line 437
    iput-object p1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$4;->this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 440
    iget-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$4;->this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    # invokes: Lcom/zui/server/icon/AppIconThemeServices$BinderService;->parseIconMapFile()V
    invoke-static {v0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->access$300(Lcom/zui/server/icon/AppIconThemeServices$BinderService;)V

    .line 441
    iget-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$4;->this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mTimeStamp:J
    invoke-static {v0, v2, v3}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->access$402(Lcom/zui/server/icon/AppIconThemeServices$BinderService;J)J

    .line 442
    iget-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$4;->this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    const/4 v1, 0x1

    # invokes: Lcom/zui/server/icon/AppIconThemeServices$BinderService;->setIsReadyState(Z)V
    invoke-static {v0, v1}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->access$500(Lcom/zui/server/icon/AppIconThemeServices$BinderService;Z)V

    .line 443
    iget-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$4;->this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    # invokes: Lcom/zui/server/icon/AppIconThemeServices$BinderService;->sendSwitchCompleted()V
    invoke-static {v0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->access$600(Lcom/zui/server/icon/AppIconThemeServices$BinderService;)V

    .line 444
    return-void
.end method
