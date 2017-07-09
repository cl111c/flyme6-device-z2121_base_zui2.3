.class public Lcom/qti/internal/telephony/gsm/QtiGSMPhone;
.super Lcom/android/internal/telephony/gsm/GSMPhone;
.source "QtiGSMPhone.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QtiGSMPhone"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    .locals 2
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    .line 73
    .local v0, "radioCapController":Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/qti/internal/telephony/gsm/QtiGSMPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->radioCapabilityUpdated(ILcom/android/internal/telephony/RadioCapability;)V

    .line 81
    :cond_0
    return-void
.end method

.method public shutdownRadio()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->shutdownRadio()V

    .line 86
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "QtiGSMPhone"

    const-string v1, "Shutdown Radio request"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->shutdownRequestReceived()V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v0, "QtiGSMPhone"

    const-string v1, "QtiSubscriptionController instance is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
