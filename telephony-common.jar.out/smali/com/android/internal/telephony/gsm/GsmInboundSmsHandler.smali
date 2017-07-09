.class public Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "GsmInboundSmsHandler.java"


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 52
    const-string v1, "GsmInboundSmsHandler"

    invoke-static {p1, p3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 54
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 55
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 56
    return-void
.end method

.method private isFakeBaseStation()Z
    .locals 25

    .prologue
    .line 146
    const/4 v4, 0x0

    .line 147
    .local v4, "isFakeBaseStation":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    .line 148
    .local v20, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v13

    .line 149
    .local v13, "slot":I
    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v15

    .line 151
    .local v15, "subid":[I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getVoiceNetworkType:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v15, v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " PhoneId: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 152
    const/16 v21, 0x0

    aget v21, v15, v21

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v21

    const/16 v22, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 161
    const v21, 0xc351

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/TelephonyManager;->nvReadItem(I)Ljava/lang/String;

    move-result-object v12

    .line 163
    .local v12, "nv":Ljava/lang/String;
    if-eqz v12, :cond_5

    const-string v21, ""

    move-object/from16 v0, v21

    if-eq v12, v0, :cond_5

    .line 164
    const-string v21, ","

    const/16 v22, 0x14

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 165
    .local v14, "strNVArr":[Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "get NV50001: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " NVLength: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v14

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 166
    array-length v0, v14

    move/from16 v21, v0

    const/16 v22, 0x14

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 167
    const-string v21, "persist.radio.msim.stackid_0"

    const-string v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 168
    .local v3, "flexMap":I
    if-nez v3, :cond_2

    .line 169
    if-nez v13, :cond_1

    .line 170
    const/16 v21, 0x0

    aget-object v18, v14, v21

    .line 171
    .local v18, "timeStr":Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v5, v14, v21

    .line 172
    .local v5, "lacStr":Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v10, v14, v21

    .line 173
    .local v10, "neighCellCfgStr":Ljava/lang/String;
    const/16 v21, 0x3

    aget-object v11, v14, v21

    .line 174
    .local v11, "neighCellNumStr":Ljava/lang/String;
    const/16 v21, 0x4

    aget-object v16, v14, v21

    .line 175
    .local v16, "supportGprsStr":Ljava/lang/String;
    const/16 v21, 0x5

    aget-object v9, v14, v21

    .line 176
    .local v9, "miniAccLevelStr":Ljava/lang/String;
    const/16 v21, 0x6

    aget-object v2, v14, v21

    .line 177
    .local v2, "CellReOffsetStr":Ljava/lang/String;
    const/16 v21, 0x7

    aget-object v7, v14, v21

    .line 210
    .local v7, "locUpdateTimerStr":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "gsm_sms_dot_infor"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "get from NV locUpdateTimer:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 215
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 217
    .local v6, "locUpdateTimer":I
    if-lez v6, :cond_4

    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v6, v0, :cond_4

    .line 218
    const-string v21, "This is a fause base station SMS:locUpdateTimer is 1-3"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 219
    const/4 v4, 0x1

    .line 241
    .end local v2    # "CellReOffsetStr":Ljava/lang/String;
    .end local v3    # "flexMap":I
    .end local v5    # "lacStr":Ljava/lang/String;
    .end local v6    # "locUpdateTimer":I
    .end local v7    # "locUpdateTimerStr":Ljava/lang/String;
    .end local v9    # "miniAccLevelStr":Ljava/lang/String;
    .end local v10    # "neighCellCfgStr":Ljava/lang/String;
    .end local v11    # "neighCellNumStr":Ljava/lang/String;
    .end local v12    # "nv":Ljava/lang/String;
    .end local v14    # "strNVArr":[Ljava/lang/String;
    .end local v16    # "supportGprsStr":Ljava/lang/String;
    .end local v18    # "timeStr":Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 179
    .restart local v3    # "flexMap":I
    .restart local v12    # "nv":Ljava/lang/String;
    .restart local v14    # "strNVArr":[Ljava/lang/String;
    :cond_1
    const/16 v21, 0xa

    aget-object v18, v14, v21

    .line 180
    .restart local v18    # "timeStr":Ljava/lang/String;
    const/16 v21, 0xb

    aget-object v5, v14, v21

    .line 181
    .restart local v5    # "lacStr":Ljava/lang/String;
    const/16 v21, 0xc

    aget-object v10, v14, v21

    .line 182
    .restart local v10    # "neighCellCfgStr":Ljava/lang/String;
    const/16 v21, 0xd

    aget-object v11, v14, v21

    .line 183
    .restart local v11    # "neighCellNumStr":Ljava/lang/String;
    const/16 v21, 0xe

    aget-object v16, v14, v21

    .line 184
    .restart local v16    # "supportGprsStr":Ljava/lang/String;
    const/16 v21, 0xf

    aget-object v9, v14, v21

    .line 185
    .restart local v9    # "miniAccLevelStr":Ljava/lang/String;
    const/16 v21, 0x10

    aget-object v2, v14, v21

    .line 186
    .restart local v2    # "CellReOffsetStr":Ljava/lang/String;
    const/16 v21, 0x11

    aget-object v7, v14, v21

    .restart local v7    # "locUpdateTimerStr":Ljava/lang/String;
    goto/16 :goto_0

    .line 189
    .end local v2    # "CellReOffsetStr":Ljava/lang/String;
    .end local v5    # "lacStr":Ljava/lang/String;
    .end local v7    # "locUpdateTimerStr":Ljava/lang/String;
    .end local v9    # "miniAccLevelStr":Ljava/lang/String;
    .end local v10    # "neighCellCfgStr":Ljava/lang/String;
    .end local v11    # "neighCellNumStr":Ljava/lang/String;
    .end local v16    # "supportGprsStr":Ljava/lang/String;
    .end local v18    # "timeStr":Ljava/lang/String;
    :cond_2
    if-nez v13, :cond_3

    .line 190
    const/16 v21, 0xa

    aget-object v18, v14, v21

    .line 191
    .restart local v18    # "timeStr":Ljava/lang/String;
    const/16 v21, 0xb

    aget-object v5, v14, v21

    .line 192
    .restart local v5    # "lacStr":Ljava/lang/String;
    const/16 v21, 0xc

    aget-object v10, v14, v21

    .line 193
    .restart local v10    # "neighCellCfgStr":Ljava/lang/String;
    const/16 v21, 0xd

    aget-object v11, v14, v21

    .line 194
    .restart local v11    # "neighCellNumStr":Ljava/lang/String;
    const/16 v21, 0xe

    aget-object v16, v14, v21

    .line 195
    .restart local v16    # "supportGprsStr":Ljava/lang/String;
    const/16 v21, 0xf

    aget-object v9, v14, v21

    .line 196
    .restart local v9    # "miniAccLevelStr":Ljava/lang/String;
    const/16 v21, 0x10

    aget-object v2, v14, v21

    .line 197
    .restart local v2    # "CellReOffsetStr":Ljava/lang/String;
    const/16 v21, 0x11

    aget-object v7, v14, v21

    .restart local v7    # "locUpdateTimerStr":Ljava/lang/String;
    goto/16 :goto_0

    .line 199
    .end local v2    # "CellReOffsetStr":Ljava/lang/String;
    .end local v5    # "lacStr":Ljava/lang/String;
    .end local v7    # "locUpdateTimerStr":Ljava/lang/String;
    .end local v9    # "miniAccLevelStr":Ljava/lang/String;
    .end local v10    # "neighCellCfgStr":Ljava/lang/String;
    .end local v11    # "neighCellNumStr":Ljava/lang/String;
    .end local v16    # "supportGprsStr":Ljava/lang/String;
    .end local v18    # "timeStr":Ljava/lang/String;
    :cond_3
    const/16 v21, 0x0

    aget-object v18, v14, v21

    .line 200
    .restart local v18    # "timeStr":Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v5, v14, v21

    .line 201
    .restart local v5    # "lacStr":Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v10, v14, v21

    .line 202
    .restart local v10    # "neighCellCfgStr":Ljava/lang/String;
    const/16 v21, 0x3

    aget-object v11, v14, v21

    .line 203
    .restart local v11    # "neighCellNumStr":Ljava/lang/String;
    const/16 v21, 0x4

    aget-object v16, v14, v21

    .line 204
    .restart local v16    # "supportGprsStr":Ljava/lang/String;
    const/16 v21, 0x5

    aget-object v9, v14, v21

    .line 205
    .restart local v9    # "miniAccLevelStr":Ljava/lang/String;
    const/16 v21, 0x6

    aget-object v2, v14, v21

    .line 206
    .restart local v2    # "CellReOffsetStr":Ljava/lang/String;
    const/16 v21, 0x7

    aget-object v7, v14, v21

    .restart local v7    # "locUpdateTimerStr":Ljava/lang/String;
    goto/16 :goto_0

    .line 222
    .restart local v6    # "locUpdateTimer":I
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "get from NV time:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " neighCellCfg:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " supportGprs:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " miniAccLevel:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 224
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 225
    .local v17, "switchTime":I
    const-string v21, "ril.p0.gsm.time_threshold"

    const-string v22, "30"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 226
    .local v19, "timeThreshold":I
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 227
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 228
    .local v8, "miniAccLevel":I
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v8, v0, :cond_0

    const-string v21, "0"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "0"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_0

    .line 229
    const-string v21, "This is a fause base station"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 230
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 238
    .end local v2    # "CellReOffsetStr":Ljava/lang/String;
    .end local v3    # "flexMap":I
    .end local v5    # "lacStr":Ljava/lang/String;
    .end local v6    # "locUpdateTimer":I
    .end local v7    # "locUpdateTimerStr":Ljava/lang/String;
    .end local v8    # "miniAccLevel":I
    .end local v9    # "miniAccLevelStr":Ljava/lang/String;
    .end local v10    # "neighCellCfgStr":Ljava/lang/String;
    .end local v11    # "neighCellNumStr":Ljava/lang/String;
    .end local v14    # "strNVArr":[Ljava/lang/String;
    .end local v16    # "supportGprsStr":Ljava/lang/String;
    .end local v17    # "switchTime":I
    .end local v18    # "timeStr":Ljava/lang/String;
    .end local v19    # "timeThreshold":I
    :cond_5
    const-string v21, "get NV50001 fail is null "

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 75
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V

    .line 76
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->start()V

    .line 77
    return-object v0
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .prologue
    .line 301
    packed-switch p0, :pswitch_data_0

    .line 310
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 305
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 277
    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 8
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 99
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 101
    .local v2, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    const-string v4, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    return v5

    .line 109
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v3

    .line 111
    .local v3, "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v5

    goto :goto_0

    .line 114
    .end local v3    # "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_2
    const/4 v0, 0x0

    .line 115
    .local v0, "handled":Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 116
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    .line 117
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 124
    :cond_3
    :goto_2
    if-nez v0, :cond_0

    .line 128
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v4, v7, :cond_7

    .line 132
    const/4 v5, 0x3

    goto :goto_0

    :cond_4
    move v4, v6

    .line 118
    goto :goto_1

    .line 119
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    .line 121
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v4, v6

    goto :goto_3

    .line 136
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->isFakeBaseStation()Z

    move-result v1

    .line 137
    .local v1, "isFBS":Z
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "fake_base_station"

    if-ne v1, v5, :cond_8

    :goto_4
    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFakeBaseStation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v5

    goto/16 :goto_0

    :cond_8
    move v5, v6

    .line 137
    goto :goto_4
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 66
    const-string v0, "unregistered for 3GPP SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 67
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    .line 68
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 289
    const-string v0, "onUpdatePhoneObject: dispose of old CellBroadcastHandler and make a new one"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 293
    return-void
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 4
    .param p1, "voicemailCount"    # I

    .prologue
    const/4 v3, 0x1

    .line 247
    if-gez p1, :cond_1

    .line 248
    const/4 p1, -0x1

    .line 255
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 257
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 259
    .local v0, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_2

    .line 260
    const-string v1, "updateMessageWaitingIndicator: updating SIM Records"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, v3, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    .line 265
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->storeVoiceMailCount()V

    .line 266
    return-void

    .line 249
    .end local v0    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    .line 252
    const/16 p1, 0xff

    goto :goto_0

    .line 263
    .restart local v0    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    const-string v1, "updateMessageWaitingIndicator: SIM Records not found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
