.class public Lzui/os/ZuiPowerManager;
.super Ljava/lang/Object;
.source "ZuiPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/os/ZuiPowerManager$WakeLock;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field mIsRow:Z

.field final mService:Landroid/os/IPowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lzui/os/ZuiPowerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/os/ZuiPowerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPowerManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lzui/os/ZuiPowerManager;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lzui/os/ZuiPowerManager;->mService:Landroid/os/IPowerManager;

    .line 31
    iput-object p3, p0, Lzui/os/ZuiPowerManager;->mHandler:Landroid/os/Handler;

    .line 33
    const-string v0, "row"

    const-string v1, "ro.config.zuk.region"

    const-string v2, "prc"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lzui/os/ZuiPowerManager;->mIsRow:Z

    .line 34
    return-void
.end method
