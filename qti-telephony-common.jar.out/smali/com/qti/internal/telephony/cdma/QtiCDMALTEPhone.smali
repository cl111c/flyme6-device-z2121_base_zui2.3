.class public Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;
.super Lcom/android/internal/telephony/cdma/CDMALTEPhone;
.source "QtiCDMALTEPhone.java"


# static fields
.field private static final EVENT_NV_CHAGED:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "QtiCDMALTEPhone"

.field private static final mNumPhones:I


# instance fields
.field mCdmaNVSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field mCdmaNVSubscriptionSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->mNumPhones:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 47
    iput v1, p0, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->mCdmaNVSubscriptionSource:I

    .line 54
    iget-object v0, p0, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1, v0, v2, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->mCdmaNVSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 56
    return-void
.end method

.method private handleCdmaNVSubscriptionSource(I)V
    .locals 3
    .param p1, "newSubscriptionSource"    # I

    .prologue
    .line 126
    const-string v0, "QtiCDMALTEPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCdmaNVSubscriptionSource:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->mCdmaNVSubscriptionSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newSubscriptionSource:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v0, p0, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->mCdmaNVSubscriptionSource:I

    if-eq p1, v0, :cond_0

    .line 129
    iput p1, p0, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->mCdmaNVSubscriptionSource:I

    .line 130
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->handleNVChange(I)V

    .line 132
    :cond_0
    return-void
.end method

.method private handleNVChange(I)V
    .locals 4
    .param p1, "newSubscriptionSource"    # I

    .prologue
    const/4 v0, 0x1

    .line 135
    if-ne p1, v0, :cond_0

    .line 136
    .local v0, "isNVReady":Z
    :goto_0
    const-string v1, "QtiCDMALTEPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleNVChanged: isNVReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v1

    iget v2, p0, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->mPhoneId:I

    invoke-virtual {v1, v0, v2}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateNVRecord(ZI)V

    .line 138
    return-void

    .line 135
    .end local v0    # "isNVReady":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 105
    const-string v0, "QtiCDMALTEPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleMessage: EVENT:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->handleMessage(Landroid/os/Message;)V

    .line 123
    :goto_0
    return-void

    .line 109
    :sswitch_0
    sget v0, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->mNumPhones:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->mCdmaNVSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->handleCdmaNVSubscriptionSource(I)V

    .line 112
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 116
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->handleNVChange(I)V

    goto :goto_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x1b -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    .locals 2
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    .line 82
    .local v0, "radioCapController":Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/qti/internal/telephony/cdma/QtiCDMALTEPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->radioCapabilityUpdated(ILcom/android/internal/telephony/RadioCapability;)V

    .line 90
    :cond_0
    return-void
.end method

.method public shutdownRadio()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->shutdownRadio()V

    .line 95
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "QtiCDMALTEPhone"

    const-string v1, "Shutdown Radio request"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->shutdownRequestReceived()V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v0, "QtiCDMALTEPhone"

    const-string v1, "QtiSubscriptionController instance is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
