.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .prologue
    .line 790
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 810
    const/16 v0, 0x265

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 797
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$302(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 806
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 28
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 815
    const-string v5, "Invalid event from daemon (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 816
    .local v13, "errorMessage":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 995
    :goto_0
    :pswitch_0
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 825
    :pswitch_1
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string v6, "Iface"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 826
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 828
    :cond_1
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "added"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 829
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 830
    const/4 v5, 0x1

    goto :goto_1

    .line 831
    :cond_2
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "removed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 832
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 833
    const/4 v5, 0x1

    goto :goto_1

    .line 834
    :cond_3
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "changed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 835
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    const-string v10, "up"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 836
    const/4 v5, 0x1

    goto :goto_1

    .line 837
    :cond_4
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "linkstate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 838
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    const-string v10, "up"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 839
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 841
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 848
    :pswitch_2
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_6

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string v6, "limit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 849
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 851
    :cond_7
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "alert"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 852
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 855
    :cond_8
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 862
    :pswitch_3
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x3

    if-lt v5, v6, :cond_9

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string v6, "IfaceMessage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 863
    :cond_9
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 865
    :cond_a
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v5, 0x4

    aget-object v5, p3, v5

    if-eqz v5, :cond_b

    .line 867
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x3

    aget-object v7, p3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceMessage(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 871
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 869
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceMessage(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    goto :goto_2

    .line 878
    :pswitch_4
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_c

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string v6, "IfaceClass"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 879
    :cond_c
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 881
    :cond_d
    const-wide/16 v8, 0x0

    .line 882
    .local v8, "timestampNanos":J
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_e

    .line 884
    const/4 v5, 0x4

    :try_start_0
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-wide v8

    .line 889
    :goto_3
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 890
    .local v19, "isActive":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v19, :cond_f

    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    :goto_4
    const/4 v10, 0x0

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJZ)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;IIJZ)V

    .line 893
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 887
    .end local v19    # "isActive":Z
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    goto :goto_3

    .line 890
    .restart local v19    # "isActive":Z
    :cond_f
    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    goto :goto_4

    .line 901
    .end local v8    # "timestampNanos":J
    .end local v19    # "isActive":Z
    :pswitch_5
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x7

    if-lt v5, v6, :cond_10

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string v6, "Address"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 902
    :cond_10
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 905
    :cond_11
    const/4 v5, 0x4

    aget-object v18, p3, v5

    .line 908
    .local v18, "iface":Ljava/lang/String;
    const/4 v5, 0x5

    :try_start_1
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 909
    .local v15, "flags":I
    const/4 v5, 0x6

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 910
    .local v23, "scope":I
    new-instance v4, Landroid/net/LinkAddress;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move/from16 v0, v23

    invoke-direct {v4, v5, v15, v0}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 917
    .local v4, "address":Landroid/net/LinkAddress;
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "updated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 918
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v5, v0, v4}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 922
    :goto_5
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 911
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v15    # "flags":I
    .end local v23    # "scope":I
    :catch_0
    move-exception v12

    .line 912
    .local v12, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v13, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 913
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v12

    .line 914
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v13, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 920
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "address":Landroid/net/LinkAddress;
    .restart local v15    # "flags":I
    .restart local v23    # "scope":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v5, v0, v4}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_5

    .line 931
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v15    # "flags":I
    .end local v18    # "iface":Ljava/lang/String;
    .end local v23    # "scope":I
    :pswitch_6
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_13

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string v6, "DnsInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string v6, "servers"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 935
    const/4 v5, 0x4

    :try_start_2
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v20

    .line 939
    .local v20, "lifetime":J
    const/4 v5, 0x5

    aget-object v5, p3, v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 940
    .local v24, "servers":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    move-wide/from16 v0, v20

    move-object/from16 v2, v24

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    invoke-static {v5, v6, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 942
    .end local v20    # "lifetime":J
    .end local v24    # "servers":[Ljava/lang/String;
    :cond_13
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 936
    :catch_2
    move-exception v12

    .line 937
    .local v12, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 949
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :pswitch_7
    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string v6, "Route"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ge v5, v6, :cond_15

    .line 950
    :cond_14
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 953
    :cond_15
    const/16 v27, 0x0

    .line 954
    .local v27, "via":Ljava/lang/String;
    const/4 v11, 0x0

    .line 955
    .local v11, "dev":Ljava/lang/String;
    const/16 v26, 0x1

    .line 956
    .local v26, "valid":Z
    const/16 v17, 0x4

    .local v17, "i":I
    :goto_6
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v0, p3

    array-length v6, v0

    if-ge v5, v6, :cond_1a

    if-eqz v26, :cond_1a

    .line 957
    aget-object v5, p3, v17

    const-string v6, "dev"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 958
    if-nez v11, :cond_16

    .line 959
    add-int/lit8 v5, v17, 0x1

    aget-object v11, p3, v5

    .line 956
    :goto_7
    add-int/lit8 v17, v17, 0x2

    goto :goto_6

    .line 961
    :cond_16
    const/16 v26, 0x0

    goto :goto_7

    .line 963
    :cond_17
    aget-object v5, p3, v17

    const-string v6, "via"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 964
    if-nez v27, :cond_18

    .line 965
    add-int/lit8 v5, v17, 0x1

    aget-object v27, p3, v5

    goto :goto_7

    .line 967
    :cond_18
    const/16 v26, 0x0

    goto :goto_7

    .line 970
    :cond_19
    const/16 v26, 0x0

    goto :goto_7

    .line 973
    :cond_1a
    if-eqz v26, :cond_1c

    .line 976
    const/16 v16, 0x0

    .line 977
    .local v16, "gateway":Ljava/net/InetAddress;
    if-eqz v27, :cond_1b

    :try_start_3
    invoke-static/range {v27 .. v27}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v16

    .line 978
    :cond_1b
    new-instance v22, Landroid/net/RouteInfo;

    new-instance v5, Landroid/net/IpPrefix;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-direct {v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1, v11}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 979
    .local v22, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x2

    aget-object v6, p3, v6

    move-object/from16 v0, v22

    # invokes: Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    invoke-static {v5, v6, v0}, Lcom/android/server/NetworkManagementService;->access$1500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 980
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 981
    .end local v22    # "route":Landroid/net/RouteInfo;
    :catch_3
    move-exception v5

    .line 983
    .end local v16    # "gateway":Ljava/net/InetAddress;
    :cond_1c
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 986
    .end local v11    # "dev":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v26    # "valid":Z
    .end local v27    # "via":Ljava/lang/String;
    :pswitch_8
    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 987
    .local v25, "uid":I
    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 989
    .local v14, "firstPacket":[B
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move/from16 v0, v25

    invoke-interface {v5, v0, v14}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 990
    :catch_4
    move-exception v5

    goto/16 :goto_0

    .line 885
    .end local v14    # "firstPacket":[B
    .end local v25    # "uid":I
    .restart local v8    # "timestampNanos":J
    :catch_5
    move-exception v5

    goto/16 :goto_3

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x258
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method
