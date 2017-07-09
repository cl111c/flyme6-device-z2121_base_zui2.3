.class Lcom/android/server/pm/XuiApkInterceptor$3;
.super Ljava/lang/Object;
.source "XuiApkInterceptor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 518
    iput-object p1, p0, Lcom/android/server/pm/XuiApkInterceptor$3;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    iput-object p2, p0, Lcom/android/server/pm/XuiApkInterceptor$3;->val$connect:Landroid/net/LocalSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 521
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 523
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/XuiApkInterceptor$3;->val$connect:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 524
    .local v1, "out":Ljava/io/OutputStream;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 525
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 526
    const-string v2, "XuiApkInterceptor"

    const-string v3, "click key back and exit adb install!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v1    # "out":Ljava/io/OutputStream;
    :goto_0
    const-string v2, "XuiApkInterceptor"

    const-string v3, " Response: has completed the adb client\'s request: KeyEvent.KEYCODE_BACK  XUI_EXIT_ADB_INSTALL_CMD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 533
    const/4 v2, 0x1

    .line 535
    :cond_0
    return v2

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "XuiApkInterceptor"

    const-string v3, "when click key back and exit adb install, exception is occured: getOutputStream is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
