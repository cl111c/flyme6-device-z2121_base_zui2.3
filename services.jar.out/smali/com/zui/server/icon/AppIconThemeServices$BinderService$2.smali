.class Lcom/zui/server/icon/AppIconThemeServices$BinderService$2;
.super Ljava/lang/Object;
.source "AppIconThemeServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/server/icon/AppIconThemeServices$BinderService;-><init>(Lcom/zui/server/icon/AppIconThemeServices;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;

.field final synthetic val$this$0:Lcom/zui/server/icon/AppIconThemeServices;


# direct methods
.method constructor <init>(Lcom/zui/server/icon/AppIconThemeServices$BinderService;Lcom/zui/server/icon/AppIconThemeServices;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$2;->this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    iput-object p2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$2;->val$this$0:Lcom/zui/server/icon/AppIconThemeServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$2;->this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    invoke-virtual {v0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->openIconResource()V

    .line 126
    return-void
.end method
