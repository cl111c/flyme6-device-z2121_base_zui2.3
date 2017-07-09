.class public final Lcom/android/server/XuiLinearMotorStateObserver;
.super Ljava/lang/Object;
.source "XuiLinearMotorStateObserver.java"


# static fields
.field private static final ACTION_LINEAR_MOTOR_POWER_OFF:Ljava/lang/String; = "xui.zuk.linear.motor.power.off"

.field private static final DEBUG:Z = true

.field private static final LINEAR_MOTOR_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/soc/7575000.i2c/i2c-1/1-005a"

.field public static final LINEAR_MOTOR_STATE_NORMAL:Ljava/lang/String; = "normal"

.field public static final LINEAR_MOTOR_STATE_PERMANENT_FAULT:Ljava/lang/String; = "pfault"

.field private static final LINEAR_MOTOR_STATE_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.motor.state"

.field public static final LINEAR_MOTOR_STATE_TEMPORARY_FAULT:Ljava/lang/String; = "tfault"

.field private static final TAG:Ljava/lang/String; = "XuiLinearMotorStateObserver"

.field private static final mDelayTime5Minute:I = 0x493e0

.field private static sXuiConfirmDialog:Landroid/app/AlertDialog;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLinearMotorCurrentState:Ljava/lang/String;

.field private mLinearMotorNotificationId:I

.field private final mLinearMotorPowerOffReceiver:Landroid/content/BroadcastReceiver;

.field private final mLinearMotorStateObserver:Landroid/os/UEventObserver;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v1, Lcom/android/server/XuiLinearMotorStateObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/XuiLinearMotorStateObserver$2;-><init>(Lcom/android/server/XuiLinearMotorStateObserver;)V

    iput-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorPowerOffReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v1, Lcom/android/server/XuiLinearMotorStateObserver$3;

    invoke-direct {v1, p0}, Lcom/android/server/XuiLinearMotorStateObserver$3;-><init>(Lcom/android/server/XuiLinearMotorStateObserver;)V

    iput-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorStateObserver:Landroid/os/UEventObserver;

    .line 97
    iput-object p1, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mHandler:Landroid/os/Handler;

    .line 99
    iget-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, "mLinearMotorFilter":Landroid/content/IntentFilter;
    const-string v1, "xui.zuk.linear.motor.power.off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorPowerOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorStateObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVPATH=/devices/soc/7575000.i2c/i2c-1/1-005a"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 107
    const-string v1, "persist.sys.motor.state"

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorCurrentState:Ljava/lang/String;

    .line 108
    const-string v1, "XuiLinearMotorStateObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "when boot complete, Linear Motor State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorCurrentState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/XuiLinearMotorStateObserver$1;

    invoke-direct {v2, p0}, Lcom/android/server/XuiLinearMotorStateObserver$1;-><init>(Lcom/android/server/XuiLinearMotorStateObserver;)V

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/XuiLinearMotorStateObserver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/XuiLinearMotorStateObserver;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorCurrentState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/XuiLinearMotorStateObserver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/XuiLinearMotorStateObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorCurrentState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/XuiLinearMotorStateObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/XuiLinearMotorStateObserver;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorNotificationId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/XuiLinearMotorStateObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/XuiLinearMotorStateObserver;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorNotificationId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/XuiLinearMotorStateObserver;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/XuiLinearMotorStateObserver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/XuiLinearMotorStateObserver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/XuiLinearMotorStateObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/server/XuiLinearMotorStateObserver;->sXuiConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 74
    sput-object p0, Lcom/android/server/XuiLinearMotorStateObserver;->sXuiConfirmDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/XuiLinearMotorStateObserver;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/XuiLinearMotorStateObserver;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/XuiLinearMotorStateObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fileContent"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, "osw":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v1    # "osw":Ljava/io/OutputStreamWriter;
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 132
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    if-eqz v2, :cond_2

    .line 140
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 141
    const/4 v1, 0x0

    .line 147
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "osw":Ljava/io/OutputStreamWriter;
    :cond_0
    :goto_0
    return-void

    .line 143
    .end local v1    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 146
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    if-eqz v1, :cond_0

    .line 140
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 141
    const/4 v1, 0x0

    goto :goto_0

    .line 143
    :catch_2
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    if-eqz v1, :cond_0

    .line 140
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 141
    const/4 v1, 0x0

    goto :goto_0

    .line 143
    :catch_4
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 139
    :goto_3
    if-eqz v1, :cond_1

    .line 140
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 141
    const/4 v1, 0x0

    .line 145
    :cond_1
    :goto_4
    throw v3

    .line 143
    :catch_5
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 135
    .end local v1    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 133
    .end local v1    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_1

    .end local v1    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :cond_2
    move-object v1, v2

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_0
.end method
