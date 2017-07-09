.class public Landroid/provider/MultiSIMUtils;
.super Ljava/lang/Object;
.source "MultiSIMUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MultiSIMUtils"

.field protected static MAX_PHONE_COUNT_DS:I

.field private static mContext:Landroid/content/Context;

.field protected static multiSimConfig:Ljava/lang/String;

.field private static sInstance:Landroid/provider/MultiSIMUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/MultiSIMUtils;->multiSimConfig:Ljava/lang/String;

    .line 37
    const/4 v0, 0x2

    sput v0, Landroid/provider/MultiSIMUtils;->MAX_PHONE_COUNT_DS:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sput-object p1, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private getCurrentPhoneType(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "propVal":Ljava/lang/String;
    const-string v3, "gsm.current.phone-type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 95
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 97
    aget-object v1, v2, p1

    .line 100
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/provider/MultiSIMUtils;

    invoke-direct {v0, p0}, Landroid/provider/MultiSIMUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    .line 49
    :cond_0
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    return-object v0
.end method

.method public static getNetworkType(I)I
    .locals 6
    .param p0, "subscription"    # I

    .prologue
    const/4 v3, 0x0

    .line 247
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 249
    .local v1, "subId":[I
    :try_start_0
    sget-object v4, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 250
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 251
    const/4 v4, 0x0

    aget v4, v1, v4

    sget-object v5, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 261
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v3

    .line 256
    :catch_0
    move-exception v0

    .line 258
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 259
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 261
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method


# virtual methods
.method public deleteMessageFromIcc(II)Z
    .locals 8
    .param p1, "messageIndex"    # I
    .param p2, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    const/4 v7, 0x0

    .line 160
    .local v7, "success":Z
    const/16 v2, 0xaf

    new-array v5, v2, [B

    .line 161
    .local v5, "pdu":[B
    const/4 v2, -0x1

    invoke-static {v5, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 162
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 163
    .local v6, "subId":[I
    if-eqz v6, :cond_0

    array-length v2, v6

    if-nez v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 168
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    .line 169
    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_1
    move v1, v7

    .line 176
    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public endDulCall()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public getAllMessagesFromIcc(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 150
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 151
    :cond_0
    const/4 v2, 0x0

    .line 154
    :goto_0
    return-object v2

    .line 153
    :cond_1
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v2}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 154
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 12
    .param p1, "subscription"    # I

    .prologue
    const v5, 0x7fffffff

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, "location":Landroid/telephony/CellLocation;
    const-string v4, "MultiSIMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCellLocation subscription = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Phone type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getCurrentPhoneType(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez p1, :cond_4

    .line 109
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getCurrentPhoneType(I)I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 110
    const-string v4, "ril.p0.gsm"

    const-string v5, "-1_-1_-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "mStr":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "array":[Ljava/lang/String;
    const-string v4, "lac"

    aget-object v5, v0, v11

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string v4, "cid"

    aget-object v5, v0, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string v4, "psc"

    aget-object v5, v0, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    .end local v2    # "location":Landroid/telephony/CellLocation;
    invoke-direct {v2, v1}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    .line 145
    .end local v0    # "array":[Ljava/lang/String;
    .end local v3    # "mStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 116
    .restart local v2    # "location":Landroid/telephony/CellLocation;
    :cond_1
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getCurrentPhoneType(I)I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 117
    const-string v4, "ril.p0.cdma"

    const-string v6, "-1_-1_-1_-1_-1"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .restart local v3    # "mStr":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "array":[Ljava/lang/String;
    const-string v4, "baseStationId"

    aget-object v6, v0, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v6, "baseStationLatitude"

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v10, :cond_3

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_1
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v4, "baseStationLongitude"

    aget-object v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v10, :cond_2

    aget-object v5, v0, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_2
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string v4, "systemId"

    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v4, "networkId"

    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v2    # "location":Landroid/telephony/CellLocation;
    invoke-direct {v2, v1}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .restart local v2    # "location":Landroid/telephony/CellLocation;
    :cond_3
    move v4, v5

    .line 120
    goto :goto_1

    .line 126
    .end local v0    # "array":[Ljava/lang/String;
    .end local v3    # "mStr":Ljava/lang/String;
    :cond_4
    if-ne p1, v8, :cond_0

    .line 127
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getCurrentPhoneType(I)I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 128
    const-string v4, "ril.p1.gsm"

    const-string v5, "-1_-1_-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .restart local v3    # "mStr":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 130
    .restart local v0    # "array":[Ljava/lang/String;
    const-string v4, "lac"

    aget-object v5, v0, v11

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string v4, "cid"

    aget-object v5, v0, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string v4, "psc"

    aget-object v5, v0, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    .end local v2    # "location":Landroid/telephony/CellLocation;
    invoke-direct {v2, v1}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 134
    .end local v0    # "array":[Ljava/lang/String;
    .end local v3    # "mStr":Ljava/lang/String;
    .restart local v2    # "location":Landroid/telephony/CellLocation;
    :cond_5
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getCurrentPhoneType(I)I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 135
    const-string v4, "ril.p1.cdma"

    const-string v6, "-1_-1_-1_-1_-1"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .restart local v3    # "mStr":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 137
    .restart local v0    # "array":[Ljava/lang/String;
    const-string v4, "baseStationId"

    aget-object v6, v0, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v6, "baseStationLatitude"

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v10, :cond_7

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_2
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string v4, "baseStationLongitude"

    aget-object v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v10, :cond_6

    aget-object v5, v0, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_6
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v4, "systemId"

    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string v4, "networkId"

    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v2    # "location":Landroid/telephony/CellLocation;
    invoke-direct {v2, v1}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .restart local v2    # "location":Landroid/telephony/CellLocation;
    :cond_7
    move v4, v5

    .line 138
    goto :goto_2
.end method

.method public getDataSubscriberId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 352
    const/4 v1, 0x0

    .line 354
    .local v1, "subid":I
    :try_start_0
    sget-object v2, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 359
    :goto_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current data subid is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0, v1}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "MultiSIMUtils"

    const-string v3, "getDataSubscriberId error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "str":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 293
    const-string v1, "persist.gsm.imei1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_0
    :goto_0
    const-string v1, "MultiSIMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; imei = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-object v0

    .line 294
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 295
    const-string v1, "persist.gsm.imei2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEMMCID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "in":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .line 309
    .local v2, "line":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/sys/block/mmcblk0/device/cid"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v0    # "in":Ljava/io/DataInputStream;
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 314
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 318
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    :goto_0
    return-object v2

    .line 315
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 317
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_0

    .line 311
    :catch_1
    move-exception v3

    .line 314
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 315
    :catch_2
    move-exception v3

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v3

    .line 314
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 316
    :goto_3
    throw v3

    .line 315
    :catch_3
    move-exception v4

    goto :goto_3

    .line 313
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .line 311
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method public getMEID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    const-string v0, "persist.cdma.meid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, "type":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 271
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 272
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 273
    :cond_0
    const/4 v3, 0x0

    .line 279
    :goto_0
    return-object v3

    .line 275
    :cond_1
    if-eqz v0, :cond_2

    .line 276
    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v3, v2

    .line 279
    goto :goto_0
.end method

.method public getPhoneCount()I
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x1

    .line 58
    .local v0, "count":I
    const-string v1, "dsds"

    sget-object v2, Landroid/provider/MultiSIMUtils;->multiSimConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dsda"

    sget-object v2, Landroid/provider/MultiSIMUtils;->multiSimConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    sget v0, Landroid/provider/MultiSIMUtils;->MAX_PHONE_COUNT_DS:I

    .line 61
    :cond_1
    return v0
.end method

.method public getPhoneType(I)I
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 234
    const/4 v2, 0x0

    .line 235
    .local v2, "type":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 236
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 237
    .local v1, "subId":[I
    if-eqz v0, :cond_0

    .line 238
    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v2

    .line 240
    :cond_0
    return v2
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const-string v0, "qualcomm"

    return-object v0
.end method

.method public getSIMContactsUri(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    const-string v0, "content://icc/adn/subId/1"

    .line 216
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "content://icc/adn/subId/2"

    goto :goto_0
.end method

.method public getSIMSMSUri(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 204
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 205
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 206
    :cond_0
    const/4 v2, 0x0

    .line 209
    :goto_0
    return-object v2

    .line 208
    :cond_1
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v2}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 209
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getSmscAddressFromIcc()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 324
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 325
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 326
    :cond_0
    const/4 v3, 0x0

    .line 331
    :goto_0
    return-object v3

    .line 328
    :cond_1
    if-eqz v0, :cond_2

    .line 329
    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v3, v1

    .line 331
    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 6
    .param p1, "subscription"    # I

    .prologue
    const/4 v3, 0x0

    .line 335
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 337
    .local v2, "subId":[I
    :try_start_0
    const-string v4, "iphonesubinfo"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 338
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_0

    .line 346
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_0
    return-object v3

    .line 341
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_0
    const/4 v4, 0x0

    aget v4, v2, v4

    sget-object v5, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 342
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 344
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 346
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "state":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 85
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 88
    :cond_0
    return v1
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 6
    .param p1, "subscription"    # I

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 67
    .local v2, "subId":[I
    :try_start_0
    const-string v4, "iphonesubinfo"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 68
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_0

    .line 76
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_0
    return-object v3

    .line 71
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_0
    const/4 v4, 0x0

    aget v4, v2, v4

    sget-object v5, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 72
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 74
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 196
    .local v6, "subId":[I
    if-eqz v6, :cond_0

    array-length v1, v6

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-static {v1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, "smsManager":Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 200
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "subscription"    # I

    .prologue
    .line 183
    invoke-static {p6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 184
    .local v6, "subId":[I
    if-eqz v6, :cond_0

    array-length v1, v6

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-static {v1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, "smsManager":Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
