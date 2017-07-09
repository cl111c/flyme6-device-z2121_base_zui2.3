.class Lcom/zui/server/icon/AppIconThemeServices$BinderService$1$1;
.super Ljava/lang/Object;
.source "AppIconThemeServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/server/icon/AppIconThemeServices$BinderService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zui/server/icon/AppIconThemeServices$BinderService$1;

.field final synthetic val$themeChange:Z

.field final synthetic val$themePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/server/icon/AppIconThemeServices$BinderService$1;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$1$1;->this$2:Lcom/zui/server/icon/AppIconThemeServices$BinderService$1;

    iput-object p2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$1$1;->val$themePath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$1$1;->val$themeChange:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$1$1;->this$2:Lcom/zui/server/icon/AppIconThemeServices$BinderService$1;

    iget-object v0, v0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$1;->this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    iget-object v1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$1$1;->val$themePath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$1$1;->val$themeChange:Z

    # invokes: Lcom/zui/server/icon/AppIconThemeServices$BinderService;->handleThemeChange(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->access$000(Lcom/zui/server/icon/AppIconThemeServices$BinderService;Ljava/lang/String;Z)V

    .line 102
    return-void
.end method
