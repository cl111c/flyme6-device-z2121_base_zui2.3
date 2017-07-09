.class public Lcom/zui/server/policy/ZuiGlobalActions;
.super Ljava/lang/Object;
.source "ZuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ZuiGlobalActions"

.field private static final XLOG_SHUTDOWN_ACTION:Ljava/lang/String; = "CLICK"

.field private static final XLOG_SHUTDOWN_CATEGORY:Ljava/lang/String; = "SHUTDOWN_UI"

.field private static final XLOG_SHUTDOWN_LABEL_CANCEL:Ljava/lang/String; = "CANCEL"

.field private static final XLOG_SHUTDOWN_LABEL_REBOOT:Ljava/lang/String; = "REBOOT"

.field private static final XLOG_SHUTDOWN_LABEL_SHUTDOWN:Ljava/lang/String; = "SHUTDOWN"

.field private static final XLOG_SHUTDOWN_VALUE_AUTO:I = 0x0

.field private static final XLOG_SHUTDOWN_VALUE_BY_USER:I = 0x1


# instance fields
.field private mAutoDismissed:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mHandler:Landroid/os/Handler;

.field private mLockShutdown:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mRebootListener:Landroid/view/View$OnClickListener;

.field private mRebootOrShutdown:Z

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mShutdownListener:Landroid/view/View$OnClickListener;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private mZuiDcUtils:Lzui/util/ZuiDataCollectorUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v1, Lzui/util/ZuiDataCollectorUtils;

    invoke-direct {v1}, Lzui/util/ZuiDataCollectorUtils;-><init>()V

    iput-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mZuiDcUtils:Lzui/util/ZuiDataCollectorUtils;

    .line 69
    iput-boolean v2, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mRebootOrShutdown:Z

    .line 70
    iput-boolean v2, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mAutoDismissed:Z

    .line 78
    iput-boolean v2, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mLockShutdown:Z

    .line 80
    new-instance v1, Lcom/zui/server/policy/ZuiGlobalActions$1;

    invoke-direct {v1, p0}, Lcom/zui/server/policy/ZuiGlobalActions$1;-><init>(Lcom/zui/server/policy/ZuiGlobalActions;)V

    iput-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v1, Lcom/zui/server/policy/ZuiGlobalActions$2;

    invoke-direct {v1, p0}, Lcom/zui/server/policy/ZuiGlobalActions$2;-><init>(Lcom/zui/server/policy/ZuiGlobalActions;)V

    iput-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    new-instance v1, Lcom/zui/server/policy/ZuiGlobalActions$3;

    invoke-direct {v1, p0}, Lcom/zui/server/policy/ZuiGlobalActions$3;-><init>(Lcom/zui/server/policy/ZuiGlobalActions;)V

    iput-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mRebootListener:Landroid/view/View$OnClickListener;

    .line 191
    new-instance v1, Lcom/zui/server/policy/ZuiGlobalActions$4;

    invoke-direct {v1, p0}, Lcom/zui/server/policy/ZuiGlobalActions$4;-><init>(Lcom/zui/server/policy/ZuiGlobalActions;)V

    iput-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mShutdownListener:Landroid/view/View$OnClickListener;

    .line 383
    new-instance v1, Lcom/zui/server/policy/ZuiGlobalActions$5;

    invoke-direct {v1, p0}, Lcom/zui/server/policy/ZuiGlobalActions$5;-><init>(Lcom/zui/server/policy/ZuiGlobalActions;)V

    iput-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 121
    iput-object p1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 123
    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/zui/server/policy/ZuiGlobalActions;)Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zui/server/policy/ZuiGlobalActions;Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;)Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions;
    .param p1, "x1"    # Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zui/server/policy/ZuiGlobalActions;)Lzui/util/ZuiDataCollectorUtils;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mZuiDcUtils:Lzui/util/ZuiDataCollectorUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zui/server/policy/ZuiGlobalActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zui/server/policy/ZuiGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mAutoDismissed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/zui/server/policy/ZuiGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mAutoDismissed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zui/server/policy/ZuiGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/zui/server/policy/ZuiGlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$500(Lcom/zui/server/policy/ZuiGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mRebootOrShutdown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/zui/server/policy/ZuiGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mRebootOrShutdown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/zui/server/policy/ZuiGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/zui/server/policy/ZuiGlobalActions;->startQuickBoot()V

    return-void
.end method

.method static synthetic access$700(Lcom/zui/server/policy/ZuiGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zui/server/policy/ZuiGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mLockShutdown:Z

    return v0
.end method

.method static synthetic access$802(Lcom/zui/server/policy/ZuiGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mLockShutdown:Z

    return p1
.end method

.method private awakenIfNecessary()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleShow()V
    .locals 6

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/zui/server/policy/ZuiGlobalActions;->awakenIfNecessary()V

    .line 229
    new-instance v0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    iget-object v2, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mRebootListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mShutdownListener:Landroid/view/View$OnClickListener;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;-><init>(Lcom/zui/server/policy/ZuiGlobalActions;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/zui/server/policy/ZuiGlobalActions;)V

    iput-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    .line 230
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    invoke-virtual {v0}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 232
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    invoke-virtual {v0}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->show()V

    .line 233
    return-void
.end method

.method private startQuickBoot()V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.action.QUICKBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public InitProximitySensor()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mSensorMgr:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 137
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mSensorMgr:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mProximitySensor:Landroid/hardware/Sensor;

    .line 138
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 140
    :cond_0
    return-void
.end method

.method public ReleaseProximitySensor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 147
    iput-object v2, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 148
    iput-object v2, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mProximitySensor:Landroid/hardware/Sensor;

    .line 150
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 153
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    invoke-virtual {v0}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->dismiss()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mDialog:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    .line 157
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    return-void

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/zui/server/policy/ZuiGlobalActions;->handleShow()V

    goto :goto_0
.end method
