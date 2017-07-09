.class Lcom/zui/server/policy/ZuiGlobalActions$3;
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
    .line 166
    iput-object p1, p0, Lcom/zui/server/policy/ZuiGlobalActions$3;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$3;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mZuiDcUtils:Lzui/util/ZuiDataCollectorUtils;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$100(Lcom/zui/server/policy/ZuiGlobalActions;)Lzui/util/ZuiDataCollectorUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$3;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    const/4 v1, 0x1

    # setter for: Lcom/zui/server/policy/ZuiGlobalActions;->mRebootOrShutdown:Z
    invoke-static {v0, v1}, Lcom/zui/server/policy/ZuiGlobalActions;->access$502(Lcom/zui/server/policy/ZuiGlobalActions;Z)Z

    .line 172
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$3;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mZuiDcUtils:Lzui/util/ZuiDataCollectorUtils;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$100(Lcom/zui/server/policy/ZuiGlobalActions;)Lzui/util/ZuiDataCollectorUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions$3;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zui/server/policy/ZuiGlobalActions;->access$200(Lcom/zui/server/policy/ZuiGlobalActions;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "SHUTDOWN_UI"

    const-string v4, "CLICK"

    const-string v5, "REBOOT"

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lzui/util/ZuiDataCollectorUtils;->trackXuiSysEvent(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$3;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$000(Lcom/zui/server/policy/ZuiGlobalActions;)Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    :cond_1
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v8

    .line 183
    .local v8, "pm":Landroid/os/IPowerManager;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v8, v0, v1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v8    # "pm":Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v7

    .line 185
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "ZuiGlobalActions"

    const-string v1, "PowerManager service died!"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
