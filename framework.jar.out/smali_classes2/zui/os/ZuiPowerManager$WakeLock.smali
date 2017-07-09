.class public Lzui/os/ZuiPowerManager$WakeLock;
.super Ljava/lang/Object;
.source "ZuiPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/os/ZuiPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WakeLock"
.end annotation


# instance fields
.field final synthetic this$0:Lzui/os/ZuiPowerManager;


# direct methods
.method public constructor <init>(Lzui/os/ZuiPowerManager;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lzui/os/ZuiPowerManager$WakeLock;->this$0:Lzui/os/ZuiPowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquire_l(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lzui/os/ZuiPowerManager$WakeLock;->this$0:Lzui/os/ZuiPowerManager;

    iget-boolean v0, v0, Lzui/os/ZuiPowerManager;->mIsRow:Z

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "Checkin Service"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lzui/os/ZuiPowerManager$WakeLock;->this$0:Lzui/os/ZuiPowerManager;

    iget-object v0, v0, Lzui/os/ZuiPowerManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    if-eqz p3, :cond_0

    const-string v0, "*sync*/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lzui/os/ZuiPowerManager$WakeLock;->this$0:Lzui/os/ZuiPowerManager;

    iget-object v0, v0, Lzui/os/ZuiPowerManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public release_l(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lzui/os/ZuiPowerManager$WakeLock;->this$0:Lzui/os/ZuiPowerManager;

    iget-boolean v0, v0, Lzui/os/ZuiPowerManager;->mIsRow:Z

    if-nez v0, :cond_1

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "Checkin Service"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    const-string v0, "*sync*/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
