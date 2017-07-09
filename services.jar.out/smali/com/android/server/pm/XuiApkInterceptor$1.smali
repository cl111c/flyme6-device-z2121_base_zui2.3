.class Lcom/android/server/pm/XuiApkInterceptor$1;
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


# direct methods
.method constructor <init>(Lcom/android/server/pm/XuiApkInterceptor;Landroid/net/LocalSocket;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/server/pm/XuiApkInterceptor$1;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    iput-object p2, p0, Lcom/android/server/pm/XuiApkInterceptor$1;->val$connect:Landroid/net/LocalSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 501
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/XuiApkInterceptor$1;->val$connect:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 502
    .local v1, "out":Ljava/io/OutputStream;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 503
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 504
    const-string v2, "XuiApkInterceptor"

    const-string v3, "exit adb install , and enter safe center introduce activity!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v1    # "out":Ljava/io/OutputStream;
    :goto_0
    const-string v2, "XuiApkInterceptor"

    const-string v3, " Response: has completed the adb client\'s request: setPositiveButton  XUI_EXIT_ADB_INSTALL_CMD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v2, p0, Lcom/android/server/pm/XuiApkInterceptor$1;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    # getter for: Lcom/android/server/pm/XuiApkInterceptor;->mXuiHandler:Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;
    invoke-static {v2}, Lcom/android/server/pm/XuiApkInterceptor;->access$200(Lcom/android/server/pm/XuiApkInterceptor;)Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 511
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 512
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "XuiApkInterceptor"

    const-string v3, "when exit adb install , and enter safe center introduce activity, exception is occured: getOutputStream is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
