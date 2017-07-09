.class Lcom/android/server/pm/XuiApkInterceptor$2;
.super Ljava/lang/Object;
.source "XuiApkInterceptor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/XuiApkInterceptor;->showXuiSafeAlertDialog(Ljava/lang/String;Landroid/net/LocalSocket;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/XuiApkInterceptor;

.field final synthetic val$connect:Landroid/net/LocalSocket;

.field final synthetic val$local_flags:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/XuiApkInterceptor;ILandroid/net/LocalSocket;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/server/pm/XuiApkInterceptor$2;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    iput p2, p0, Lcom/android/server/pm/XuiApkInterceptor$2;->val$local_flags:I

    iput-object p3, p0, Lcom/android/server/pm/XuiApkInterceptor$2;->val$connect:Landroid/net/LocalSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 474
    iget v3, p0, Lcom/android/server/pm/XuiApkInterceptor$2;->val$local_flags:I

    if-nez v3, :cond_1

    .line 475
    const-string v3, "XuiApkInterceptor"

    const-string v4, "xui want install dialog handler."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 477
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 478
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 479
    iget-object v3, p0, Lcom/android/server/pm/XuiApkInterceptor$2;->val$connect:Landroid/net/LocalSocket;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 480
    iget-object v3, p0, Lcom/android/server/pm/XuiApkInterceptor$2;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    # getter for: Lcom/android/server/pm/XuiApkInterceptor;->mXuiHandler:Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;
    invoke-static {v3}, Lcom/android/server/pm/XuiApkInterceptor;->access$200(Lcom/android/server/pm/XuiApkInterceptor;)Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 494
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 495
    return-void

    .line 481
    :cond_1
    iget v3, p0, Lcom/android/server/pm/XuiApkInterceptor$2;->val$local_flags:I

    if-ne v3, v5, :cond_0

    .line 483
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/XuiApkInterceptor$2;->val$connect:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 484
    .local v2, "out":Ljava/io/OutputStream;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 485
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 486
    const-string v3, "XuiApkInterceptor"

    const-string v4, "xui still install dialog handler."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v2    # "out":Ljava/io/OutputStream;
    :goto_1
    const-string v3, "XuiApkInterceptor"

    const-string v4, " Response: has completed the adb client\'s request: setMessageContentText  XUI_ALLOW_ADB_INSTALL_CMD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "XuiApkInterceptor"

    const-string v4, "when xui still install dialog handler, exception is occured: getOutputStream is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
