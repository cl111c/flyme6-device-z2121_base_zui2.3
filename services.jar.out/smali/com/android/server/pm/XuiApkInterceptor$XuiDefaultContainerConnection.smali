.class Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;
.super Ljava/lang/Object;
.source "XuiApkInterceptor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/XuiApkInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XuiDefaultContainerConnection"
.end annotation


# instance fields
.field mXuiContainerService:Lcom/android/internal/app/IMediaContainerService;

.field final synthetic this$0:Lcom/android/server/pm/XuiApkInterceptor;


# direct methods
.method constructor <init>(Lcom/android/server/pm/XuiApkInterceptor;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 155
    const-string v0, "XuiApkInterceptor"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;->mXuiContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 157
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 160
    const-string v0, "XuiApkInterceptor"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method
