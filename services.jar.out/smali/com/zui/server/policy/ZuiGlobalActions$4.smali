.class Lcom/zui/server/policy/ZuiGlobalActions$4;
.super Ljava/lang/Object;
.source "ZuiGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 191
    iput-object p1, p0, Lcom/zui/server/policy/ZuiGlobalActions$4;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 194
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$4;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mZuiDcUtils:Lzui/util/ZuiDataCollectorUtils;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$100(Lcom/zui/server/policy/ZuiGlobalActions;)Lzui/util/ZuiDataCollectorUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$4;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # setter for: Lcom/zui/server/policy/ZuiGlobalActions;->mRebootOrShutdown:Z
    invoke-static {v0, v6}, Lcom/zui/server/policy/ZuiGlobalActions;->access$502(Lcom/zui/server/policy/ZuiGlobalActions;Z)Z

    .line 196
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$4;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mZuiDcUtils:Lzui/util/ZuiDataCollectorUtils;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$100(Lcom/zui/server/policy/ZuiGlobalActions;)Lzui/util/ZuiDataCollectorUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions$4;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zui/server/policy/ZuiGlobalActions;->access$200(Lcom/zui/server/policy/ZuiGlobalActions;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "SHUTDOWN_UI"

    const-string v4, "CLICK"

    const-string v5, "SHUTDOWN"

    invoke-virtual/range {v0 .. v6}, Lzui/util/ZuiDataCollectorUtils;->trackXuiSysEvent(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$4;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$000(Lcom/zui/server/policy/ZuiGlobalActions;)Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$4;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$000(Lcom/zui/server/policy/ZuiGlobalActions;)Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->dismiss()V

    .line 203
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$4;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # setter for: Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    invoke-static {v0, v2}, Lcom/zui/server/policy/ZuiGlobalActions;->access$002(Lcom/zui/server/policy/ZuiGlobalActions;Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;)Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$4;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$200(Lcom/zui/server/policy/ZuiGlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_quickboot"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_2

    move v7, v6

    .line 207
    .local v7, "quickbootEnabled":Z
    :goto_0
    if-eqz v7, :cond_3

    .line 208
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$4;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # invokes: Lcom/zui/server/policy/ZuiGlobalActions;->startQuickBoot()V
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$600(Lcom/zui/server/policy/ZuiGlobalActions;)V

    .line 213
    :goto_1
    return-void

    .end local v7    # "quickbootEnabled":Z
    :cond_2
    move v7, v8

    .line 205
    goto :goto_0

    .line 212
    .restart local v7    # "quickbootEnabled":Z
    :cond_3
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$4;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$700(Lcom/zui/server/policy/ZuiGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_1
.end method
