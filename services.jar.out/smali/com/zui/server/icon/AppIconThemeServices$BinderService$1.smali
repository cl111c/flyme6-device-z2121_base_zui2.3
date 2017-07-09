.class Lcom/zui/server/icon/AppIconThemeServices$BinderService$1;
.super Landroid/os/Handler;
.source "AppIconThemeServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/icon/AppIconThemeServices$BinderService;
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
    .line 89
    iput-object p1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$1;->this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "msgData":Landroid/os/Bundle;
    const-string v3, "path"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "themePath":Ljava/lang/String;
    const-string v3, "change"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 96
    .local v1, "themeChange":Z
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 98
    :pswitch_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/zui/server/icon/AppIconThemeServices$BinderService$1$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/zui/server/icon/AppIconThemeServices$BinderService$1$1;-><init>(Lcom/zui/server/icon/AppIconThemeServices$BinderService$1;Ljava/lang/String;Z)V

    const-string v5, "themeChangeThread"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v3, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$1;->this$1:Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    # invokes: Lcom/zui/server/icon/AppIconThemeServices$BinderService;->postMessage(Ljava/lang/String;Z)V
    invoke-static {v3, v2, v1}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->access$100(Lcom/zui/server/icon/AppIconThemeServices$BinderService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
