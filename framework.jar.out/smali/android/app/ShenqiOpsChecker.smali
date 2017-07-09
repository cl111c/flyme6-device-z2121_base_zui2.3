.class public Landroid/app/ShenqiOpsChecker;
.super Ljava/lang/Object;
.source "ShenqiOpsChecker.java"


# static fields
.field private static final CHECKED_TAG:Ljava/lang/String; = "AFTER_CHECK"

.field private static final INSTALL_SHORTCUT_ACTION:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final TAG:Ljava/lang/String; = "ShenqiOpsChecker"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/app/ShenqiOpsChecker;->mContext:Landroid/content/Context;

    .line 25
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/app/ShenqiOpsChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method static synthetic access$000(Landroid/app/ShenqiOpsChecker;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/ShenqiOpsChecker;

    .prologue
    .line 16
    iget-object v0, p0, Landroid/app/ShenqiOpsChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/ShenqiOpsChecker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/app/ShenqiOpsChecker;

    .prologue
    .line 16
    iget-object v0, p0, Landroid/app/ShenqiOpsChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public checkIsCreateShortCutOp(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 28
    const-string v6, "AFTER_CHECK"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 29
    .local v3, "isAfterCheck":Z
    if-eqz v3, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v5

    .line 30
    :cond_1
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 33
    const-string v6, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 35
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 37
    .local v1, "callingUid":I
    move-object v2, p1

    .line 38
    .local v2, "createShortCutIntent":Landroid/content/Intent;
    new-instance v5, Landroid/app/ShenqiOpsChecker$1;

    invoke-direct {v5, p0, v1, v4, v2}, Landroid/app/ShenqiOpsChecker$1;-><init>(Landroid/app/ShenqiOpsChecker;ILjava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v5}, Landroid/app/ShenqiOpsChecker$1;->start()V

    .line 48
    const/4 v5, 0x1

    goto :goto_0
.end method
