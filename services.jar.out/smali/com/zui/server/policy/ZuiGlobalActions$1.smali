.class Lcom/zui/server/policy/ZuiGlobalActions$1;
.super Landroid/os/Handler;
.source "ZuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/policy/ZuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/policy/ZuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/zui/server/policy/ZuiGlobalActions;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zui/server/policy/ZuiGlobalActions$1;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$1;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$000(Lcom/zui/server/policy/ZuiGlobalActions;)Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$1;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$000(Lcom/zui/server/policy/ZuiGlobalActions;)Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$1;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mZuiDcUtils:Lzui/util/ZuiDataCollectorUtils;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$100(Lcom/zui/server/policy/ZuiGlobalActions;)Lzui/util/ZuiDataCollectorUtils;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$1;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mZuiDcUtils:Lzui/util/ZuiDataCollectorUtils;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$100(Lcom/zui/server/policy/ZuiGlobalActions;)Lzui/util/ZuiDataCollectorUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions$1;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zui/server/policy/ZuiGlobalActions;->access$200(Lcom/zui/server/policy/ZuiGlobalActions;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "SHUTDOWN_UI"

    const-string v4, "CLICK"

    const-string v5, "CANCEL"

    invoke-virtual/range {v0 .. v6}, Lzui/util/ZuiDataCollectorUtils;->trackXuiSysEvent(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$1;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    const/4 v1, 0x1

    # setter for: Lcom/zui/server/policy/ZuiGlobalActions;->mAutoDismissed:Z
    invoke-static {v0, v1}, Lcom/zui/server/policy/ZuiGlobalActions;->access$302(Lcom/zui/server/policy/ZuiGlobalActions;Z)Z

    .line 92
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$1;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$000(Lcom/zui/server/policy/ZuiGlobalActions;)Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->dismiss()V

    .line 93
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$1;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # setter for: Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    invoke-static {v0, v2}, Lcom/zui/server/policy/ZuiGlobalActions;->access$002(Lcom/zui/server/policy/ZuiGlobalActions;Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;)Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    .line 94
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$1;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # setter for: Lcom/zui/server/policy/ZuiGlobalActions;->mAutoDismissed:Z
    invoke-static {v0, v6}, Lcom/zui/server/policy/ZuiGlobalActions;->access$302(Lcom/zui/server/policy/ZuiGlobalActions;Z)Z

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$1;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # invokes: Lcom/zui/server/policy/ZuiGlobalActions;->handleShow()V
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$400(Lcom/zui/server/policy/ZuiGlobalActions;)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
