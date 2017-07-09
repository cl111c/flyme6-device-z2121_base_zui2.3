.class Lcom/android/server/policy/PhoneWindowManager$HomeLongPressTimeout;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HomeLongPressTimeout"
.end annotation


# instance fields
.field private mDeviceId:I

.field private mScanCode:I

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 3330
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$HomeLongPressTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$HomeLongPressTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeLongPressPending:Z

    if-eqz v0, :cond_0

    .line 3337
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$HomeLongPressTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeLongPressPending:Z

    .line 3338
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$HomeLongPressTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 3340
    # ++operator for: Lcom/android/server/policy/PhoneWindowManager;->longPressNumber:I
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3604()I

    .line 3342
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$HomeLongPressTimeout;->mScanCode:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 3343
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$HomeLongPressTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$HomeLongPressTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mHomeButtonLongPressBehavior:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3700(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$HomeLongPressTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mHomeDownKeyTime:J
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$3800(Lcom/android/server/policy/PhoneWindowManager;)J

    move-result-wide v2

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->handleHomeKey(Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$3900(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;J)V

    .line 3348
    :cond_0
    :goto_0
    return-void

    .line 3345
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$HomeLongPressTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$HomeLongPressTimeout;->mDeviceId:I

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4000(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setLongPressOptions(II)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "scanCode"    # I

    .prologue
    .line 3351
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$HomeLongPressTimeout;->mDeviceId:I

    .line 3352
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$HomeLongPressTimeout;->mScanCode:I

    .line 3353
    return-void
.end method
