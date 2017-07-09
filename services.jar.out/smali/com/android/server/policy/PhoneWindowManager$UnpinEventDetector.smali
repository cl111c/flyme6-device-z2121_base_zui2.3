.class Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnpinEventDetector"
.end annotation


# static fields
.field private static final STATE_DETECT:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_UNPIN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager.UnpinEventDetector"

.field private static final UNPIN_DISPATCH_DELAY_MILLIS:I = 0xc8


# instance fields
.field private final mUnpinRunnable:Ljava/lang/Runnable;

.field private mUnpinState:I

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1

    .prologue
    .line 8208
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8217
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    .line 8352
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManager$1;

    .prologue
    .line 8208
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;

    .prologue
    .line 8208
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;
    .param p1, "x1"    # I

    .prologue
    .line 8208
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->setState(I)V

    return-void
.end method

.method private cancelPendingUnpinAction()V
    .locals 2

    .prologue
    .line 8348
    const-string v0, "WindowManager.UnpinEventDetector"

    const-string v1, "cancelPendingUnpinAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8349
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8350
    return-void
.end method

.method private getUnpinActionLongPressDelay()J
    .locals 2

    .prologue
    .line 8343
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method private setState(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 8319
    const-string v0, "WindowManager.UnpinEventDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), old state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8320
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    .line 8321
    return-void
.end method

.method private triggerUnpinActionTimer()V
    .locals 4

    .prologue
    .line 8325
    const-string v0, "WindowManager.UnpinEventDetector"

    const-string v1, "triggerUnpinActionTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8326
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->getUnpinActionLongPressDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8327
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;I)J
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 8289
    const-string v4, "WindowManager.UnpinEventDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptKeyBeforeDispatching("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8291
    const-string v4, "WindowManager.UnpinEventDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current unpin state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8292
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    packed-switch v4, :pswitch_data_0

    .line 8313
    :cond_0
    :goto_0
    :pswitch_0
    return-wide v2

    .line 8297
    :pswitch_1
    const-string v1, "WindowManager.UnpinEventDetector"

    const-string v2, "wait a little while for unpin action"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8298
    const-wide/16 v2, 0xc8

    goto :goto_0

    .line 8300
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 8301
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 8302
    .local v0, "down":Z
    :goto_1
    if-nez v0, :cond_1

    .line 8303
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->setState(I)V

    .line 8306
    :cond_1
    const-string v2, "WindowManager.UnpinEventDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unpin feature consumes KeyEvent.KEYCODE_BACK "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_3

    const-string v1, "down"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8308
    const-wide/16 v2, -0x1

    goto :goto_0

    .end local v0    # "down":Z
    :cond_2
    move v0, v1

    .line 8301
    goto :goto_1

    .line 8306
    .restart local v0    # "down":Z
    :cond_3
    const-string v1, "up"

    goto :goto_2

    .line 8292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 8221
    const-string v9, "WindowManager.UnpinEventDetector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interceptKeyBeforeQueueing("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8222
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_1

    move v0, v7

    .line 8224
    .local v0, "down":Z
    :goto_0
    const-string v9, "WindowManager.UnpinEventDetector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current unpin state is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8225
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    packed-switch v9, :pswitch_data_0

    .line 8285
    :cond_0
    :goto_1
    return-void

    .end local v0    # "down":Z
    :cond_1
    move v0, v8

    .line 8222
    goto :goto_0

    .line 8227
    .restart local v0    # "down":Z
    :pswitch_0
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v9}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    .line 8228
    .local v6, "screenOn":Z
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v4

    .line 8231
    .local v4, "keyguardOn":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 8236
    .local v5, "pinOn":Z
    if-nez v6, :cond_2

    .line 8238
    const-string v7, "WindowManager.UnpinEventDetector"

    const-string v8, "screen off ,do nothing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8232
    .end local v5    # "pinOn":Z
    :catch_0
    move-exception v1

    .line 8233
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "WindowManager.UnpinEventDetector"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 8239
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v5    # "pinOn":Z
    :cond_2
    if-eqz v4, :cond_3

    .line 8241
    const-string v7, "WindowManager.UnpinEventDetector"

    const-string v8, "keyguard on, do nothing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8242
    :cond_3
    if-nez v5, :cond_4

    .line 8244
    const-string v7, "WindowManager.UnpinEventDetector"

    const-string v8, "pin off , do nothing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8246
    :cond_4
    if-eqz v0, :cond_9

    .line 8247
    const/high16 v9, 0x20000000

    and-int/2addr v9, p2

    if-eqz v9, :cond_5

    move v3, v7

    .line 8248
    .local v3, "interactive":Z
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_6

    move v2, v7

    .line 8249
    .local v2, "fallback":Z
    :goto_3
    if-nez v3, :cond_7

    .line 8251
    const-string v7, "WindowManager.UnpinEventDetector"

    const-string v8, "not interactive, do nothing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "fallback":Z
    .end local v3    # "interactive":Z
    :cond_5
    move v3, v8

    .line 8247
    goto :goto_2

    .restart local v3    # "interactive":Z
    :cond_6
    move v2, v8

    .line 8248
    goto :goto_3

    .line 8252
    .restart local v2    # "fallback":Z
    :cond_7
    if-eqz v2, :cond_8

    .line 8254
    const-string v7, "WindowManager.UnpinEventDetector"

    const-string v8, "fallback, do nothing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8256
    :cond_8
    invoke-direct {p0, v7}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->setState(I)V

    .line 8257
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->triggerUnpinActionTimer()V

    goto :goto_1

    .line 8261
    .end local v2    # "fallback":Z
    .end local v3    # "interactive":Z
    :cond_9
    const-string v7, "WindowManager.UnpinEventDetector"

    const-string v8, "why receive up key before down key?"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8266
    .end local v4    # "keyguardOn":Z
    .end local v5    # "pinOn":Z
    .end local v6    # "screenOn":Z
    :pswitch_1
    if-eqz v0, :cond_a

    .line 8268
    const-string v7, "WindowManager.UnpinEventDetector"

    const-string v8, "why receive down key before up key?"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8270
    :cond_a
    monitor-enter p0

    .line 8271
    :try_start_1
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->mUnpinState:I

    if-ne v8, v7, :cond_b

    .line 8272
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->setState(I)V

    .line 8273
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->cancelPendingUnpinAction()V

    .line 8275
    :cond_b
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 8279
    :pswitch_2
    if-eqz v0, :cond_0

    .line 8281
    const-string v7, "WindowManager.UnpinEventDetector"

    const-string v8, "why receive down key before up key?"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public triggerUnpinAction()V
    .locals 3

    .prologue
    .line 8332
    const-string v1, "WindowManager.UnpinEventDetector"

    const-string v2, "triggerUnpinAction()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8334
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->onUnpinEvent()V

    .line 8335
    const-string v1, "WindowManager.UnpinEventDetector"

    const-string v2, "dispatch unpin event complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8339
    :goto_0
    return-void

    .line 8336
    :catch_0
    move-exception v0

    .line 8337
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager.UnpinEventDetector"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
