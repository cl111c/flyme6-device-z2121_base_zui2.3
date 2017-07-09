.class public Lcom/android/server/pm/XuiApkInterceptor;
.super Ljava/lang/Object;
.source "XuiApkInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/XuiApkInterceptor$InstallPackageAlertUtils;,
        Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;,
        Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;,
        Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;
    }
.end annotation


# static fields
.field private static final DEBUG_ADB_FILTER:Z = true

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final DEFAULT_CONTAINER_PACKAGE:Ljava/lang/String; = "com.android.defcontainer"

.field private static final SHOW_XUI_STILL_INSTALL:I = 0x1

.field private static final SHOW_XUI_WANT_INSTALL:I = 0x0

.field static final TAG:Ljava/lang/String; = "XuiApkInterceptor"

.field private static final XUI_ADB_ACK_CMD:I = 0xaa

.field private static final XUI_ALLOW_ADB_INSTALL_CMD:I = 0x1

.field private static final XUI_EXIT_ADB_INSTALL_CMD:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTestApkWhiteList:[Ljava/lang/String;

.field private final mXuiDefContainerConn:Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;

.field private mXuiHandler:Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;

.field private mXuiThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/XuiApkInterceptor;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.exoplayer.playbacktests"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.os.xts"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android.playautoinstall.xts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.android.privacy.xts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.rlz.xts"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.google.android.webview.xts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.apps.youtube.testsuite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.core.vm-tests-tf"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.view.cts.accessibility"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.accounts.cts"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.alarmclock.cts"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.cts.appwidget"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.assist.cts"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.cts.jank"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.jobscheduler.cts.deviceside"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.cts.leanbackjank"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.midi.cts"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.opengl.cts"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "android.signature"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "android.app.cts.uiautomation"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "android.uiautomator"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "android.app.usage.cts"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "android.voiceinteraction.cts"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "android.voicesettings.cts"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "android.tests.devicesetup"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "android.core.tests.runner"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/pm/XuiApkInterceptor;->mTestApkWhiteList:[Ljava/lang/String;

    .line 149
    new-instance v0, Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;-><init>(Lcom/android/server/pm/XuiApkInterceptor;)V

    iput-object v0, p0, Lcom/android/server/pm/XuiApkInterceptor;->mXuiDefContainerConn:Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;

    .line 92
    iput-object p1, p0, Lcom/android/server/pm/XuiApkInterceptor;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/XuiApkInterceptor;Ljava/lang/String;Landroid/net/LocalSocket;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/XuiApkInterceptor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/LocalSocket;
    .param p3, "x3"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/XuiApkInterceptor;->showXuiSafeAlertDialog(Ljava/lang/String;Landroid/net/LocalSocket;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/XuiApkInterceptor;)Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/XuiApkInterceptor;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/pm/XuiApkInterceptor;->mXuiDefContainerConn:Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/XuiApkInterceptor;)Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/XuiApkInterceptor;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/pm/XuiApkInterceptor;->mXuiHandler:Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;

    return-object v0
.end method

.method private showXuiSafeAlertDialog(Ljava/lang/String;Landroid/net/LocalSocket;I)V
    .locals 10
    .param p1, "packageLabel"    # Ljava/lang/String;
    .param p2, "client"    # Landroid/net/LocalSocket;
    .param p3, "flags"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 458
    move-object v2, p2

    .line 459
    .local v2, "connect":Landroid/net/LocalSocket;
    move v3, p3

    .line 461
    .local v3, "local_flags":I
    const v0, 0x10405ea

    .line 462
    .local v0, "R_string_message_content_text_id":I
    iget-object v5, p0, Lcom/android/server/pm/XuiApkInterceptor;->mContext:Landroid/content/Context;

    const v6, 0x10405e8

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "R_string_message_id":Ljava/lang/String;
    if-ne v3, v9, :cond_0

    .line 465
    const v0, 0x10405eb

    .line 466
    iget-object v5, p0, Lcom/android/server/pm/XuiApkInterceptor;->mContext:Landroid/content/Context;

    const v6, 0x10405e9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 469
    :cond_0
    new-instance v5, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/pm/XuiApkInterceptor;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/android/server/pm/XuiApkInterceptor$2;

    invoke-direct {v6, p0, v3, v2}, Lcom/android/server/pm/XuiApkInterceptor$2;-><init>(Lcom/android/server/pm/XuiApkInterceptor;ILandroid/net/LocalSocket;)V

    invoke-virtual {v5, v0, v6}, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->setMessageContentText(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;

    move-result-object v5

    const v6, 0x10405ec

    new-instance v7, Lcom/android/server/pm/XuiApkInterceptor$1;

    invoke-direct {v7, p0, v2}, Lcom/android/server/pm/XuiApkInterceptor$1;-><init>(Lcom/android/server/pm/XuiApkInterceptor;Landroid/net/LocalSocket;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;

    move-result-object v5

    const v6, 0x10405e7

    invoke-virtual {v5, v6}, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->setTitle(I)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->create()Lcom/android/server/pm/XuiSafeAlertDialog;

    move-result-object v4

    .line 518
    .local v4, "mXuiSafeAlertDialog":Lcom/android/server/pm/XuiSafeAlertDialog;
    new-instance v5, Lcom/android/server/pm/XuiApkInterceptor$3;

    invoke-direct {v5, p0, v2}, Lcom/android/server/pm/XuiApkInterceptor$3;-><init>(Lcom/android/server/pm/XuiApkInterceptor;Landroid/net/LocalSocket;)V

    invoke-virtual {v4, v5}, Lcom/android/server/pm/XuiSafeAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 539
    invoke-virtual {v4}, Lcom/android/server/pm/XuiSafeAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 541
    invoke-virtual {v4}, Lcom/android/server/pm/XuiSafeAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 543
    invoke-virtual {v4, v8}, Lcom/android/server/pm/XuiSafeAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 545
    invoke-virtual {v4}, Lcom/android/server/pm/XuiSafeAlertDialog;->show()V

    .line 546
    const-string v5, "XuiApkInterceptor"

    const-string v6, "showXuiSafeAlertDialog!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void
.end method


# virtual methods
.method isUserInstalledApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, "com.google.android.xts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.cts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.core.tests.libcore.package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/XuiApkInterceptor;->mTestApkWhiteList:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    const-string v0, "TianynDebugRuntime : "

    const-string v1, "isUserInstalledApp false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    .line 112
    :cond_1
    const-string v0, "TianynDebugRuntime : "

    const-string v1, "isUserInstalledApp true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;

    iget-object v1, p0, Lcom/android/server/pm/XuiApkInterceptor;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;-><init>(Lcom/android/server/pm/XuiApkInterceptor;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->start()V

    .line 97
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "xui_adb_handlerthread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/XuiApkInterceptor;->mXuiThread:Landroid/os/HandlerThread;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/XuiApkInterceptor;->mXuiThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 99
    new-instance v0, Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;

    iget-object v1, p0, Lcom/android/server/pm/XuiApkInterceptor;->mXuiThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;-><init>(Lcom/android/server/pm/XuiApkInterceptor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/XuiApkInterceptor;->mXuiHandler:Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;

    .line 100
    return-void
.end method
