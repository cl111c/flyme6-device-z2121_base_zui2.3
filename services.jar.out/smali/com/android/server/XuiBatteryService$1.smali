.class Lcom/android/server/XuiBatteryService$1;
.super Landroid/database/ContentObserver;
.source "XuiBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/XuiBatteryService;->setupContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/XuiBatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/XuiBatteryService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/XuiBatteryService$1;->this$0:Lcom/android/server/XuiBatteryService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/XuiBatteryService$1;->this$0:Lcom/android/server/XuiBatteryService;

    # getter for: Lcom/android/server/XuiBatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/XuiBatteryService;->access$000(Lcom/android/server/XuiBatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/server/XuiBatteryService$1;->this$0:Lcom/android/server/XuiBatteryService;

    # getter for: Lcom/android/server/XuiBatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v0}, Lcom/android/server/XuiBatteryService;->access$100(Lcom/android/server/XuiBatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
