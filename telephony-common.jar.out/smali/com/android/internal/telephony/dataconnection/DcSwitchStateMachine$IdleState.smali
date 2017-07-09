.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v2, "IdleState: enter"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mResponseMsg:Landroid/os/Message;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$602(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)Landroid/os/Message;

    .line 97
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v2, "DctController is not ready"

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 107
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 183
    const/4 v6, 0x0

    .line 186
    .local v6, "retVal":Z
    :goto_0
    return v6

    .line 109
    .end local v6    # "retVal":Z
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;

    .line 110
    .local v1, "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;->request:Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 111
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v9, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;->responseMessage:Landroid/os/Message;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mResponseMsg:Landroid/os/Message;
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$602(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)Landroid/os/Message;

    .line 112
    const-string v8, "DcSwitchStateMachine.IdleState: REQ_CONNECT"

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 113
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IdleState: REQ_CONNECT, apnRequest="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 114
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 115
    const/4 v6, 0x1

    .line 116
    .restart local v6    # "retVal":Z
    goto :goto_0

    .line 120
    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v1    # "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    .end local v6    # "retVal":Z
    :sswitch_1
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "AttachingState: REQ_DISCONNECT_ALL"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 125
    const/4 v6, 0x1

    .line 126
    .restart local v6    # "retVal":Z
    goto :goto_0

    .line 131
    .end local v6    # "retVal":Z
    :sswitch_2
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    .line 132
    .local v7, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    .line 133
    .local v3, "ddsSubId":I
    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 136
    .local v2, "ddsPhoneId":I
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "IdleState: EVENT_DATA_ATTACHED"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DctController;->isDataAllowedOnPhoneId(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 141
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "IdleState: DDS sub reported ATTACHed in IDLE state"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 146
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v8, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    .line 147
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 156
    :goto_1
    const/4 v6, 0x1

    .line 157
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 151
    .end local v6    # "retVal":Z
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "IdleState: attached sub is different from ap layer, may be set detache."

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 152
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    .line 153
    .local v5, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v8, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const v10, 0x43003

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v4, v9}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 154
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "IdleState: ignore ATATCHed event as data is not allowed"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 161
    .end local v2    # "ddsPhoneId":I
    .end local v3    # "ddsSubId":I
    .end local v5    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v7    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :sswitch_3
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "IdleState: Receive invalid event EVENT_CONNECTED!"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 163
    const/4 v6, 0x1

    .line 164
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 169
    .end local v6    # "retVal":Z
    :sswitch_4
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v10, "EVENT_DATA_DISALLOWED, data not allowed in no dds sub."

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 170
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v9

    if-nez v9, :cond_1

    move v4, v8

    .line 171
    .local v4, "otherPhoneId":I
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const v11, 0x43001

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v4, v8, v10}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowedToOtherPhoneId(IZLandroid/os/Message;)V

    .line 173
    const/4 v6, 0x1

    .line 174
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 176
    .end local v4    # "otherPhoneId":I
    .end local v6    # "retVal":Z
    :sswitch_5
    const/4 v6, 0x1

    .line 177
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x43000 -> :sswitch_3
        0x43001 -> :sswitch_5
        0x43003 -> :sswitch_4
        0x44000 -> :sswitch_0
        0x44002 -> :sswitch_1
        0x44007 -> :sswitch_2
    .end sparse-switch
.end method
