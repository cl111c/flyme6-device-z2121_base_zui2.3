.class public Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;
.super Ljava/lang/Object;
.source "ZuiFingerprintService_Delegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;,
        Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;
    }
.end annotation


# static fields
.field private static final FINGERPRINT_UNLOCK_DEVICE:Ljava/lang/String; = "FINGERPRINT_UNLOCK_DEVICE"

.field private static final KEYGUARD_SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final MAX_MIS_OP_COUNT:I = 0x64

.field private static final SAFECENTER_APPLOCK_PACKAGE:Ljava/lang/String; = "com.zui.safecenter"

.field private static final SCREEN_OFF_FP_UNLOCK_STATE:Ljava/lang/String; = "screen_off_fp_unlock_state"

.field private static final TAG:Ljava/lang/String;

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final mCanUseFingerprintList:[Ljava/lang/String;

.field private static final mPaymentAppsList:[Ljava/lang/String;

.field private static final mResetFailedAttemptsList:[Ljava/lang/String;


# instance fields
.field private mAntiMisOpCount:I

.field private mContext:Landroid/content/Context;

.field private mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastScreenState:I

.field private mListener:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

.field private mPSensorCond:Ljava/util/concurrent/locks/Condition;

.field private mPSensorDistance:F

.field private mPSensorLock:Ljava/util/concurrent/locks/Lock;

.field private mPSensorRegistered:Z

.field private mProductName:Ljava/lang/String;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    const-class v0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    .line 59
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.zui.safecenter"

    aput-object v1, v0, v2

    sput-object v0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mCanUseFingerprintList:[Ljava/lang/String;

    .line 64
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.zui.safecenter"

    aput-object v1, v0, v2

    sput-object v0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mResetFailedAttemptsList:[Ljava/lang/String;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    aput-object v1, v0, v2

    const-string v1, "com.eg.android.AlipayGphone"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPaymentAppsList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/fingerprint/FingerprintUtils;Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "fingerprintUtils"    # Lcom/android/server/fingerprint/FingerprintUtils;
    .param p4, "listener"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorRegistered:Z

    .line 93
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorDistance:F

    .line 94
    iput v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mAntiMisOpCount:I

    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorLock:Ljava/util/concurrent/locks/Lock;

    .line 96
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorCond:Ljava/util/concurrent/locks/Condition;

    .line 99
    new-instance v0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$1;

    invoke-direct {v0, p0}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$1;-><init>(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)V

    iput-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 463
    iput v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mLastScreenState:I

    .line 126
    iput-object p1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mHandler:Landroid/os/Handler;

    .line 128
    iput-object p3, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    .line 129
    iput-object p4, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mListener:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

    .line 139
    const-string v0, "ro.build.product"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mProductName:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mProductName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mProductName:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mProductName:Ljava/lang/String;

    const-string v1, "k9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;

    iget-object v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;-><init>(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mSettingsObserver:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;

    .line 144
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mSettingsObserver:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;

    invoke-virtual {v0}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$SettingsObserver;->observe()V

    .line 148
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ZuiFingerprintService.HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mHandlerThread:Landroid/os/HandlerThread;

    .line 149
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 150
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 152
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mSensorMgr:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mProximitySensor:Landroid/hardware/Sensor;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)F
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    .prologue
    .line 52
    iget v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorDistance:F

    return v0
.end method

.method static synthetic access$1000(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorRegistered:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorRegistered:Z

    return p1
.end method

.method static synthetic access$102(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;F)F
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;
    .param p1, "x1"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorDistance:F

    return p1
.end method

.method static synthetic access$1100(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mSensorMgr:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorCond:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->processSmartFp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mListener:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mLastScreenState:I

    return p1
.end method

.method static synthetic access$800(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mAntiMisOpCount:I

    return p1
.end method

.method private inResetFailedAttemptsList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 363
    sget-object v0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mResetFailedAttemptsList:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private processSmartFp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "behavior"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSmartFp, behavior = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string v0, "openApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$3;

    invoke-direct {v1, p0, p2}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$3;-><init>(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 200
    :cond_2
    const-string v0, "alipayQRCode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$4;

    invoke-direct {v1, p0}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$4;-><init>(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 217
    :cond_3
    const-string v0, "wxScanner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$5;

    invoke-direct {v1, p0}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$5;-><init>(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public canUseFingerprint(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "foregroundOnly"    # Z

    .prologue
    .line 156
    sget-object v0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mCanUseFingerprintList:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public handleAcquired_Auth(ILjava/lang/String;)Z
    .locals 5
    .param p1, "acquiredInfo"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 247
    sget-object v2, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAcquired(Authentication), acquiredInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", opPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 266
    :goto_0
    return v0

    .line 251
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->isSystemUI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mLastScreenState:I

    if-nez v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 253
    iget-boolean v2, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorRegistered:Z

    if-nez v2, :cond_1

    .line 254
    sget-object v2, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v3, "PSensor register listener."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 258
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorDistance:F

    .line 259
    iput-boolean v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorRegistered:Z

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x44e
        :pswitch_0
    .end packed-switch
.end method

.method public handleFailedAttempt(Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "inLockMode"    # Z

    .prologue
    const/16 v8, 0x64

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 292
    invoke-virtual {p0, p1}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->isSystemUI(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    iget v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mLastScreenState:I

    if-eqz v5, :cond_2

    .line 341
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 343
    iget-object v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mProductName:Ljava/lang/String;

    const-string v6, "k9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 344
    invoke-virtual {p0, p1}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->isSystemUI(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mLastScreenState:I

    if-nez v5, :cond_1

    .line 345
    iget-object v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mListener:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

    if-eqz v5, :cond_1

    .line 346
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v3, "params":Landroid/os/Bundle;
    const-string v5, "key_display_status"

    iget v6, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mLastScreenState:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    iget-object v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mListener:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

    invoke-interface {v5, v4, v3}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;->onProcessCmd(ILandroid/os/Bundle;)V

    .line 355
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_1
    :goto_1
    return v4

    .line 298
    :cond_2
    sget-object v5, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAntiMisOpCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mAntiMisOpCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", MAX_MIS_OP_COUNT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mAntiMisOpCount:I

    if-ge v5, v8, :cond_6

    .line 300
    iget-boolean v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorRegistered:Z

    if-eqz v5, :cond_4

    .line 301
    iget-object v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 303
    iget v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorDistance:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_3

    .line 305
    const-wide/16 v0, 0x7d0

    .line 306
    .local v0, "PSENSOR_WAIT_MS_TIME":J
    :try_start_0
    iget-object v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorCond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 307
    sget-object v5, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v6, "condition wait time out(> 2000 ms)."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0    # "PSENSOR_WAIT_MS_TIME":J
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 315
    sget-object v5, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v6, "PSensor unregister listener."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iput-boolean v4, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorRegistered:Z

    .line 317
    iget-object v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 321
    :cond_4
    iget v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorDistance:F

    cmpg-float v5, v9, v5

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPSensorDistance:F

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 322
    iget-object v5, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mListener:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

    if-eqz v5, :cond_5

    .line 323
    iget v4, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mAntiMisOpCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mAntiMisOpCount:I

    .line 329
    iget-object v4, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mListener:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

    invoke-interface {v4}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;->onPocketModeTriggered()V

    .line 330
    const/4 v4, 0x1

    goto :goto_1

    .line 309
    .restart local v0    # "PSENSOR_WAIT_MS_TIME":J
    :catch_0
    move-exception v2

    .line 310
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v5, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v6, "PSensorCond.await() Exception!!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 332
    .end local v0    # "PSENSOR_WAIT_MS_TIME":J
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_5
    sget-object v5, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v6, "Pocket Mode is Working, but mListener is null!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    :cond_6
    sget-object v5, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAntiMisOpCount >= MAX_MIS_OP_COUNT, value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mAntiMisOpCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public isSystemUI(Ljava/lang/String;)Z
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 359
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onAuthenticationSucceeded(Ljava/lang/String;Ljava/util/List;I)V
    .locals 6
    .param p1, "caller"    # Ljava/lang/String;
    .param p3, "fpId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    const-string v4, "com.android.systemui"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 162
    .local v1, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-ne p3, v4, :cond_0

    .line 163
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getBehavior()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "behavior":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getPkgName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$2;

    invoke-direct {v5, p0, v0, v3}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$2;-><init>(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    .end local v0    # "behavior":Ljava/lang/String;
    .end local v1    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public preprocessStartAuthentication(Ljava/lang/String;)Z
    .locals 4
    .param p1, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 374
    sget-object v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mPaymentAppsList:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;

    const v2, 0x1040600

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 378
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 381
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->inResetFailedAttemptsList(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public processCmd(Landroid/hardware/fingerprint/IFingerprintDaemon;ILandroid/os/Bundle;)I
    .locals 12
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;
    .param p2, "cmdId"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, -0x1

    .line 392
    if-nez p1, :cond_0

    .line 393
    sget-object v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v10, "processCmd: no fingerprintd!"

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_0
    return v0

    .line 397
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 455
    sget-object v0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processCmd: unknown cmdId, cmdId = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :pswitch_0
    if-nez p3, :cond_1

    .line 400
    sget-object v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v10, "notifyDisplayStatus failed, params = null!"

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :cond_1
    const/4 v6, -0x1

    .line 405
    .local v6, "defValue":I
    const-string v1, "key_display_status"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 406
    .local v8, "on":I
    if-ne v0, v8, :cond_2

    .line 407
    sget-object v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v10, "notifyDisplayStatus, get value failed, key = KEY_DISPLAY_STATUS."

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :cond_2
    :try_start_0
    sget-object v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyDisplayStatus, on = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-interface {p1, v8}, Landroid/hardware/fingerprint/IFingerprintDaemon;->notifyDisplayStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v7

    .line 415
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v10, "notifyDisplayStatus failed"

    invoke-static {v1, v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .end local v6    # "defValue":I
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "on":I
    :pswitch_1
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->selftest()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 421
    :catch_1
    move-exception v7

    .line 422
    .restart local v7    # "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v10, "startSelftest failed"

    invoke-static {v1, v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .end local v7    # "e":Landroid/os/RemoteException;
    :pswitch_2
    :try_start_2
    invoke-interface {p1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->checkerboardtest()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    goto :goto_0

    .line 428
    :catch_2
    move-exception v7

    .line 429
    .restart local v7    # "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v10, "startCheckerboardtest failed"

    invoke-static {v1, v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v7    # "e":Landroid/os/RemoteException;
    :pswitch_3
    if-nez p3, :cond_3

    .line 434
    sget-object v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v10, "UPDATE_SMART_FINGERPRINT failed, params = null!"

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    :cond_3
    iget-object v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    if-nez v1, :cond_4

    .line 438
    sget-object v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v10, "UPDATE_SMART_FINGERPRINT failed, mFingerprintUtils = null!"

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 441
    :cond_4
    iget-object v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mListener:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

    if-nez v1, :cond_5

    .line 442
    sget-object v1, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->TAG:Ljava/lang/String;

    const-string v10, "UPDATE_SMART_FINGERPRINT failed, mListener = null!"

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 446
    :cond_5
    const-string v0, "key_smart_fp_fingerid"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 447
    .local v2, "fingerId":I
    const-string v0, "key_smart_fp_userid"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 448
    .local v9, "userId":I
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mListener:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;

    invoke-interface {v0, v9}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$Listener;->onRequireEffectiveUserId(I)I

    move-result v3

    .line 449
    .local v3, "effectiveUserId":I
    const-string v0, "key_smart_fp_behavior"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "behavior":Ljava/lang/String;
    const-string v0, "key_smart_fp_pkgname"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintUtils;->updateSmartFpBehaviorForUser(Landroid/content/Context;IILjava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto/16 :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
