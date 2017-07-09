.class Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 199
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 200
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 204
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 206
    :pswitch_0
    const-string v3, "BluetoothManagerService"

    const-string v4, "MESSAGE_AIRPLANE_MODE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    monitor-enter v4

    .line 208
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-nez v3, :cond_0

    .line 212
    add-int/lit8 v1, v1, 0x1

    .line 213
    const-wide/16 v6, 0x12c

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 263
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 216
    .restart local v1    # "i":I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static {v3, v5, v6}, Lcom/android/server/BluetoothManagerService;->access$700(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 217
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v5, 0x2

    # invokes: Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    invoke-static {v3, v5}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;I)V

    .line 226
    .end local v1    # "i":I
    :cond_1
    :goto_2
    const/16 v2, 0xa

    .line 227
    .local v2, "st":I
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_2

    .line 229
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 234
    :cond_2
    :goto_3
    :try_start_3
    const-string v3, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 238
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    const/4 v3, 0x0

    :try_start_4
    # setter for: Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1002(I)I

    .line 240
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, v3, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 241
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 242
    const/16 v3, 0xf

    if-ne v2, v3, :cond_5

    .line 245
    :try_start_5
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 246
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    .line 247
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v3, v5}, Lcom/android/server/BluetoothManagerService;->access$1102(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 262
    :cond_3
    :goto_4
    :try_start_6
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mHandleAirplaneModeOff:Z
    invoke-static {v3, v5}, Lcom/android/server/BluetoothManagerService;->access$902(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 263
    monitor-exit v4

    goto/16 :goto_0

    .line 219
    .end local v2    # "st":I
    :cond_4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mHandleAirplaneModeOff:Z
    invoke-static {v3, v5}, Lcom/android/server/BluetoothManagerService;->access$902(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 221
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static {v3, v5, v6}, Lcom/android/server/BluetoothManagerService;->access$700(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 222
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    invoke-static {v3, v5}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;I)V

    goto :goto_2

    .line 230
    .restart local v2    # "st":I
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string v5, "Unable to call getState"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3

    .line 249
    :catch_1
    move-exception v0

    .line 250
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string v5, "Unable to call onBrEdrDown"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 252
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    .line 254
    const-string v3, "BluetoothManagerService"

    const-string v5, "Calling disable"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)V

    goto :goto_4

    .line 257
    :cond_6
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 259
    const-string v3, "BluetoothManagerService"

    const-string v5, "Calling enable"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService$AirplaneModeChangedHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z
    invoke-static {v5}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;)Z

    move-result v5

    # invokes: Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    invoke-static {v3, v5}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 204
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
