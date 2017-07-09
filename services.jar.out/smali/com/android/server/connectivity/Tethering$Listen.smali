.class Lcom/android/server/connectivity/Tethering$Listen;
.super Landroid/os/Handler;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listen"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field wifiSavedState:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 2102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/Tethering$Listen;->wifiSavedState:I

    .line 2103
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$Listen;->mContext:Landroid/content/Context;

    .line 2104
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$Listen;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2105
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$Listen;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$Listen;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2106
    return-void
.end method


# virtual methods
.method forceListen()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2117
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$Listen;->removeMessages(I)V

    .line 2118
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$Listen;->sendEmptyMessage(I)Z

    .line 2119
    const-string v0, "Tethering"

    const-string v1, "***leo*** release lock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$Listen;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2121
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2132
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$Listen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_saved_state"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/Tethering$Listen;->wifiSavedState:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2136
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$Listen;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 2137
    iget v0, p0, Lcom/android/server/connectivity/Tethering$Listen;->wifiSavedState:I

    if-ne v0, v3, :cond_0

    .line 2138
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$Listen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2139
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$Listen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_saved_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2141
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$Listen;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2142
    const-string v0, "Tethering"

    const-string v1, "***leo*** release lock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    return-void

    .line 2133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method pause()V
    .locals 2

    .prologue
    .line 2124
    const-string v0, "Tethering"

    const-string v1, "***leo*** release lock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$Listen;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$Listen;->removeMessages(I)V

    .line 2127
    return-void
.end method

.method resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2109
    const-string v0, "Tethering"

    const-string v1, "***leo*** acquire lock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$Listen;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2111
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Tethering$Listen;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2112
    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/connectivity/Tethering$Listen;->sendEmptyMessageDelayed(IJ)Z

    .line 2114
    :cond_0
    return-void
.end method
