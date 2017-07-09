.class public Lcom/android/internal/telephony/infocollect/InfoCollector;
.super Ljava/lang/Object;
.source "InfoCollector.java"


# static fields
.field private static final PLMN_TABLE_TYPE1:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE2:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE3:[Ljava/lang/String;

.field private static final PROJECT_SIM_NUM:I

.field private static final SIM_ABSENT:I = 0xff

.field private static final SIM_OP_INFO_OP01:I = 0x20

.field private static final SIM_OP_INFO_OP02:I = 0x30

.field private static final SIM_OP_INFO_OP03:I = 0x40

.field private static final SIM_OP_INFO_OVERSEA:I = 0x10

.field private static final SIM_OP_INFO_UNKNOWN:I = 0x0

.field private static final SIM_TYPE_CSIM:I = 0x2

.field private static final SIM_TYPE_OTHER:I = 0x0

.field private static final SIM_TYPE_RUIM:I = 0x1

.field private static final SIM_TYPE_SIM:I = 0x1

.field private static final SIM_TYPE_USIM:I = 0x2

.field private static final SLOT_0:I = 0x0

.field private static final SLOT_1:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InfoCollector"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/internal/telephony/infocollect/InfoCollector;


# instance fields
.field private destinateType:I

.field private orignalType:I

.field private simOpInfo:[I

.field private simSwitching:Z

.field private simType:[I

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->PROJECT_SIM_NUM:I

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "898600"

    aput-object v1, v0, v2

    const-string v1, "898602"

    aput-object v1, v0, v3

    const-string v1, "898607"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "898601"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->PLMN_TABLE_TYPE2:[Ljava/lang/String;

    .line 51
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "898603"

    aput-object v1, v0, v2

    const-string v1, "898611"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v3, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->orignalType:I

    .line 42
    iput v3, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->destinateType:I

    .line 64
    sget v1, Lcom/android/internal/telephony/infocollect/InfoCollector;->PROJECT_SIM_NUM:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    .line 65
    sget v1, Lcom/android/internal/telephony/infocollect/InfoCollector;->PROJECT_SIM_NUM:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/infocollect/InfoCollector;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 68
    iget-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aput v3, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simSwitching:Z

    .line 71
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/infocollect/InfoCollector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sput-object p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->mContext:Landroid/content/Context;

    .line 57
    sget-object v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->sInstance:Lcom/android/internal/telephony/infocollect/InfoCollector;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/internal/telephony/infocollect/InfoCollector;

    invoke-direct {v0}, Lcom/android/internal/telephony/infocollect/InfoCollector;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->sInstance:Lcom/android/internal/telephony/infocollect/InfoCollector;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->sInstance:Lcom/android/internal/telephony/infocollect/InfoCollector;

    return-object v0
.end method

.method private initSimTypeAndOpInfo([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "iccIds"    # [Ljava/lang/String;
    .param p2, "mtype"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 74
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    array-length v4, v4

    new-array v2, v4, [Ljava/lang/String;

    .line 75
    .local v2, "strIccId":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    array-length v4, v4

    new-array v3, v4, [Ljava/lang/String;

    .line 77
    .local v3, "strSimType":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_b

    .line 78
    aget-object v4, p2, v0

    aput-object v4, v3, v0

    .line 79
    aget-object v4, v3, v0

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 80
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aput v9, v4, v0

    .line 90
    :goto_1
    const-string v4, "InfoCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SimType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", simType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    aget-object v1, p1, v0

    .line 93
    .local v1, "iccid":Ljava/lang/String;
    const-string v4, ""

    aput-object v4, v2, v0

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    const/4 v4, 0x6

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 97
    :cond_0
    const-string v4, "InfoCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v4, "898600"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "898602"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "898607"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 100
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    const/16 v5, 0x20

    aput v5, v4, v0

    .line 77
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 81
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_3
    aget-object v4, v3, v0

    const-string v5, "USIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 82
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aput v7, v4, v0

    goto/16 :goto_1

    .line 83
    :cond_4
    aget-object v4, v3, v0

    const-string v5, "RUIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 84
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aput v9, v4, v0

    goto/16 :goto_1

    .line 85
    :cond_5
    aget-object v4, v3, v0

    const-string v5, "CSIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 86
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aput v7, v4, v0

    goto/16 :goto_1

    .line 88
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aput v8, v4, v0

    goto/16 :goto_1

    .line 101
    .restart local v1    # "iccid":Ljava/lang/String;
    :cond_7
    const-string v4, "898601"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 102
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    const/16 v5, 0x30

    aput v5, v4, v0

    goto :goto_2

    .line 103
    :cond_8
    const-string v4, "898603"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "898611"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 105
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    const/16 v5, 0x40

    aput v5, v4, v0

    goto :goto_2

    .line 106
    :cond_a
    aget-object v4, v2, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 107
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    const/16 v5, 0x10

    aput v5, v4, v0

    goto :goto_2

    .line 110
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_b
    const-string v4, "InfoCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimInfo(simOpInfo): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v4, "InfoCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimInfo(simType): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public static isFeatureOpen()Z
    .locals 2

    .prologue
    .line 183
    const-string v0, "ro.lenovo.datamining"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public endSimSwitch()V
    .locals 10

    .prologue
    .line 132
    iget-boolean v6, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simSwitching:Z

    if-eqz v6, :cond_0

    .line 133
    const-wide/16 v4, 0x0

    .line 134
    .local v4, "regTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->startTime:J

    sub-long v2, v6, v8

    .line 135
    .local v2, "durationTime":J
    const-string v6, "InfoCollector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "endSimSwitch... orignalType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->orignalType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " destinateType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->destinateType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " durationTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.sim.avator"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "data":Landroid/os/Bundle;
    const-string v6, "num"

    const-string v7, "A207"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v6, "oCardType"

    iget v7, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->orignalType:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v6, "nCardType"

    iget v7, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->destinateType:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v6, "rdyTime"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v6, "regTime"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v6, "xui_sys_bundle_key"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 147
    sget-object v6, Lcom/android/internal/telephony/infocollect/InfoCollector;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 148
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simSwitching:Z

    .line 150
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "durationTime":J
    .end local v4    # "regTime":J
    :cond_0
    return-void
.end method

.method public simTypeCollect([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11
    .param p1, "iccid"    # [Ljava/lang/String;
    .param p2, "mType"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/infocollect/InfoCollector;->initSimTypeAndOpInfo([Ljava/lang/String;[Ljava/lang/String;)V

    .line 154
    iget-object v6, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aget v7, v7, v9

    or-int v4, v6, v7

    .line 155
    .local v4, "sim1Type":I
    iget-object v6, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v6, v6, v10

    iget-object v7, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aget v7, v7, v10

    or-int v5, v6, v7

    .line 156
    .local v5, "sim2Type":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    .line 158
    .local v1, "hasSim1":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    .line 160
    .local v2, "hasSim2":Z
    if-nez v1, :cond_0

    .line 161
    const/16 v4, 0xff

    .line 163
    :cond_0
    if-nez v2, :cond_1

    .line 164
    const/16 v5, 0xff

    .line 167
    :cond_1
    const-string v6, "InfoCollector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simTypeCollect... sim1Type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sim2Type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.sim.avator"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, "data":Landroid/os/Bundle;
    const-string v6, "num"

    const-string v7, "A208"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v6, "cardType1"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v6, "cardType2"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v6, "iccid1"

    aget-object v7, p1, v9

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v6, "iccid2"

    aget-object v7, p1, v10

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v6, "xui_sys_bundle_key"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 178
    sget-object v6, Lcom/android/internal/telephony/infocollect/InfoCollector;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 180
    return-void
.end method

.method public startSimSwitch(I)V
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 115
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 116
    .local v0, "slotId":I
    iput-boolean v3, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simSwitching:Z

    .line 117
    if-nez v0, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aget v2, v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->orignalType:I

    .line 119
    iget-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aget v2, v2, v4

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->destinateType:I

    .line 125
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->startTime:J

    .line 126
    const-string v1, "InfoCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSimSwitch... startTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->startTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " orignalType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->orignalType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destinateType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->destinateType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 120
    :cond_1
    if-ne v0, v3, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aget v2, v2, v4

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->orignalType:I

    .line 122
    iget-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aget v2, v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->destinateType:I

    goto :goto_0
.end method
