.class public final Lcom/zui/server/am/ZuiActivityManagerService_Delegate;
.super Ljava/lang/Object;
.source "ZuiActivityManagerService_Delegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/server/am/ZuiActivityManagerService_Delegate$SettingsObserver;,
        Lcom/zui/server/am/ZuiActivityManagerService_Delegate$Listener;
    }
.end annotation


# static fields
.field public static final PERSIT_ZUK_SHOWNAVBAR:Ljava/lang/String; = "persist_zuk_shownavbar"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/zui/server/am/ZuiActivityManagerService_Delegate$Listener;

.field private mSettingsObserver:Lcom/zui/server/am/ZuiActivityManagerService_Delegate$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate$SettingsObserver;

    iget-object v1, p0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/zui/server/am/ZuiActivityManagerService_Delegate$SettingsObserver;-><init>(Lcom/zui/server/am/ZuiActivityManagerService_Delegate;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->mSettingsObserver:Lcom/zui/server/am/ZuiActivityManagerService_Delegate$SettingsObserver;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/zui/server/am/ZuiActivityManagerService_Delegate;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/am/ZuiActivityManagerService_Delegate;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zui/server/am/ZuiActivityManagerService_Delegate;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/am/ZuiActivityManagerService_Delegate;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->updateNavBar(Landroid/net/Uri;)V

    return-void
.end method

.method private updateNavBar(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 55
    const-string v1, "persist_zuk_shownavbar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    .local v0, "URI_SHOW_NAV":Landroid/net/Uri;
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->mListener:Lcom/zui/server/am/ZuiActivityManagerService_Delegate$Listener;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->mListener:Lcom/zui/server/am/ZuiActivityManagerService_Delegate$Listener;

    invoke-interface {v1}, Lcom/zui/server/am/ZuiActivityManagerService_Delegate$Listener;->onAppWindowSizeChanged()V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public setWindowManagerListener(Lcom/zui/server/am/ZuiActivityManagerService_Delegate$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/zui/server/am/ZuiActivityManagerService_Delegate$Listener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->mListener:Lcom/zui/server/am/ZuiActivityManagerService_Delegate$Listener;

    .line 76
    iget-object v0, p0, Lcom/zui/server/am/ZuiActivityManagerService_Delegate;->mSettingsObserver:Lcom/zui/server/am/ZuiActivityManagerService_Delegate$SettingsObserver;

    invoke-virtual {v0}, Lcom/zui/server/am/ZuiActivityManagerService_Delegate$SettingsObserver;->observe()V

    .line 77
    return-void
.end method
