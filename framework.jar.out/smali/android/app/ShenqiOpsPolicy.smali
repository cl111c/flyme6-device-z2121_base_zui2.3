.class public Landroid/app/ShenqiOpsPolicy;
.super Ljava/lang/Object;
.source "ShenqiOpsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ShenqiOpsPolicy$PermsData;,
        Landroid/app/ShenqiOpsPolicy$PolicyFileObserver;
    }
.end annotation


# static fields
.field private static final ACCESS_CALENDAR:Ljava/lang/String; = "access_calendar"

.field private static final ACCESS_CALL_LOG:Ljava/lang/String; = "access_call_log"

.field private static final ACCESS_CONTACTS:Ljava/lang/String; = "access_contacts"

.field public static final ACCESS_GALLERY:Ljava/lang/String; = "access_gallery"

.field private static final ACCESS_MMS:Ljava/lang/String; = "access_mms"

.field private static final ACCESS_SMS:Ljava/lang/String; = "access_sms"

.field private static final BLACK_LIST_FOR_SYSAPP_ALERT_WINDOW:[Ljava/lang/String;

.field public static final BLUETOOTH_CHANGE:Ljava/lang/String; = "bluetooth_change"

.field public static final BODY_SENSORS:Ljava/lang/String; = "body_sensors"

.field private static final CALL:Ljava/lang/String; = "call"

.field private static final CAMERA:Ljava/lang/String; = "camera"

.field public static final CREAT_SHORTCUT:Ljava/lang/String; = "create_shortcut"

.field public static final DATA_CONNECT:Ljava/lang/String; = "data_connect"

.field private static final DEBUG:Z = false

.field private static final DEVICE_INFO:Ljava/lang/String; = "device_info"

.field public static final FLOATING_WINDOW:Ljava/lang/String; = "floating_window"

.field public static final GET_ACCOUNTS:Ljava/lang/String; = "get_accounts"

.field public static final GET_PHONE_NUMBER:Ljava/lang/String; = "get_phone_number"

.field private static final LAN_EN:Ljava/lang/String; = "en"

.field private static final LAN_ZH:Ljava/lang/String; = "zh-rCN"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final ONEDAY_MILLIS:J = 0x5265c00L

.field private static final OP_ACCESS_GALLERY:I = 0x3e

.field private static final OP_BLUETOOTH_CHANGE:I = 0x31

.field private static final OP_BODY_SENSORS:I = 0x48

.field private static final OP_CALL_PHONE:I = 0xd

.field private static final OP_CAMERA:I = 0x1a

.field private static final OP_COARSE_LOCATION:I = 0x0

.field private static final OP_CREAT_SHORTCUT:I = 0x3d

.field private static final OP_DATA_CONNECT:I = 0x3b

.field private static final OP_DELETE_CALL_LOG:I = 0x3a

.field private static final OP_DELETE_CONTACTS:I = 0x39

.field private static final OP_DELETE_MMS:I = 0x38

.field private static final OP_DELETE_SMS:I = 0x37

.field private static final OP_FINE_LOCATION:I = 0x1

.field private static final OP_FLOATING_WINDOW:I = 0x18

.field private static final OP_GET_ACCOUNTS:I = 0x4e

.field private static final OP_GET_DEVICE_INFO:I = 0x3c

.field private static final OP_GET_PHONE_NUMBER:I = 0x3f

.field private static final OP_GPS:I = 0x2

.field private static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field private static final OP_MONITOR_LOCATION:I = 0x29

.field private static final OP_NEIGHBORING_CELLS:I = 0xc

.field private static final OP_POST_NOTIFICATION:I = 0xb

.field private static final OP_READ_CALENDAR:I = 0x8

.field private static final OP_READ_CALL_LOG:I = 0x6

.field private static final OP_READ_CONTACTS:I = 0x4

.field private static final OP_READ_EXTERNAL_STORAGE:I = 0x4b

.field private static final OP_READ_ICC_SMS:I = 0x15

.field private static final OP_READ_MMS:I = 0x33

.field private static final OP_READ_SMS:I = 0xe

.field private static final OP_RECORD_AUDIO:I = 0x1b

.field private static final OP_SEND_MMS:I = 0x32

.field private static final OP_SEND_SMS:I = 0x14

.field private static final OP_WIFI:I = 0x30

.field private static final OP_WIFI_SCAN:I = 0xa

.field private static final OP_WRITE_CALENDAR:I = 0x9

.field private static final OP_WRITE_CALL_LOG:I = 0x7

.field private static final OP_WRITE_CONTACTS:I = 0x5

.field private static final OP_WRITE_EXTERNAL_STORAGE:I = 0x4c

.field private static final OP_WRITE_ICC_SMS:I = 0x16

.field private static final OP_WRITE_MMS:I = 0x34

.field private static final OP_WRITE_SETTINGS:I = 0x17

.field private static final OP_WRITE_SMS:I = 0xf

.field private static final POLICY_STATE_ALLOWED:I = 0x1

.field private static final POLICY_STATE_ASK:I = 0x2

.field private static final POLICY_STATE_DENY:I = 0x4

.field private static final POLICY_STATE_NEED_ALLOW:I = 0x3

.field private static final POLICY_STATE_NO_REQUEST:I = 0x0

.field private static final POST_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read_external_storage"

.field private static final RECORD_AUDIO:Ljava/lang/String; = "record_audio"

.field private static final SEND_MMS:Ljava/lang/String; = "send_mms"

.field private static final SEND_SMS:Ljava/lang/String; = "send_sms"

.field public static final SHENQI_DEFAULT_POLICY_DIR:Ljava/lang/String; = "/data/system/"

.field public static final SHENQI_DEFAULT_POLICY_FILE:Ljava/lang/String; = "/data/system/shenqi_appops_policy.xml"

.field public static final SHENQI_DEFAULT_POLICY_NAME:Ljava/lang/String; = "shenqi_appops_policy.xml"

.field public static final SHENQI_STATIC_POLICY_FILE:Ljava/lang/String; = "/system/etc/shenqi_appops_policy.xml"

.field private static final SYSTEM_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShenqiOpsPolicy"

.field private static final THIRD_APP:I = 0x0

.field private static final WHITE_LIST_FOR_ALL_OP:[Ljava/lang/String;

.field private static final WHITE_LIST_FOR_GET_ACCOUNTS:[Ljava/lang/String;

.field private static final WHITE_LIST_FOR_OP_ALERT_WINDOW:[Ljava/lang/String;

.field private static final WHITE_LIST_FOR_SINGLE_OP:[Ljava/lang/String;

.field public static final WIFI:Ljava/lang/String; = "wifi"

.field public static final WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "write_external_storage"

.field public static final WRITE_SETTINGS:Ljava/lang/String; = "write_settings"

.field private static final WifiChangeAction:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"


# instance fields
.field allDefaultMode:I

.field mContext:Landroid/content/Context;

.field private mDefaultMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mFile:Ljava/io/File;

.field private mOpToAlias:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPkgPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ShenqiOpsPolicy$PermsData;",
            ">;>;"
        }
    .end annotation
.end field

.field mPolicyDirectoryObserver:Landroid/os/FileObserver;

.field mPolicyFileObserver:Landroid/os/FileObserver;

.field noPolicyFile:Z

.field policyFileReadSuccess:Z

.field private sOpToPerm:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.cts.media"

    aput-object v1, v0, v3

    const-string v1, "com.android.cts.location"

    aput-object v1, v0, v4

    const-string v1, "com.android.cts.location2"

    aput-object v1, v0, v5

    const-string v1, "com.android.cts.provider"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "com.android.cts.managedprofile"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.cts.app.stub"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.cts.graphics2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.cts.webkit"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.cts.telephony"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.cts.hardware"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.google.android.xts.telecom"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.cts.permission2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.cts.mediastress"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.android.cts.net"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.android.cts.permission"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.cts.accessibilityservice"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.android.cts.verifier"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.cts.robot"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "android.tests.devicesetup"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.android.cts.telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.android.cts.bluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.android.cts.netlegacy22.permission"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.google.android.xts.location"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "android.camera.cts"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.android.cts.deviceandprofileowner"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/ShenqiOpsPolicy;->WHITE_LIST_FOR_ALL_OP:[Ljava/lang/String;

    .line 74
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.zui.xlog"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/ShenqiOpsPolicy;->WHITE_LIST_FOR_SINGLE_OP:[Ljava/lang/String;

    .line 77
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.zui.email"

    aput-object v1, v0, v3

    const-string v1, "com.zui.usercenter"

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/ShenqiOpsPolicy;->WHITE_LIST_FOR_GET_ACCOUNTS:[Ljava/lang/String;

    .line 81
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.sohu.inputmethod.sogou.zui"

    aput-object v1, v0, v3

    const-string v1, "com.sogou.wallpaper"

    aput-object v1, v0, v4

    const-string v1, "cmccwm.mobilemusic"

    aput-object v1, v0, v5

    sput-object v0, Landroid/app/ShenqiOpsPolicy;->WHITE_LIST_FOR_OP_ALERT_WINDOW:[Ljava/lang/String;

    .line 86
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "sina.mobile.tianqitong"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/ShenqiOpsPolicy;->BLACK_LIST_FOR_SYSAPP_ALERT_WINDOW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Landroid/app/ShenqiOpsPolicy;->allDefaultMode:I

    .line 40
    iput-boolean v0, p0, Landroid/app/ShenqiOpsPolicy;->noPolicyFile:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ShenqiOpsPolicy;->policyFileReadSuccess:Z

    .line 227
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/shenqi_appops_policy.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ShenqiOpsPolicy;->mFile:Ljava/io/File;

    .line 228
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/shenqi_appops_policy.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ShenqiOpsPolicy;->mFile:Ljava/io/File;

    .line 231
    :cond_0
    iput-object p1, p0, Landroid/app/ShenqiOpsPolicy;->mContext:Landroid/content/Context;

    .line 232
    invoke-direct {p0}, Landroid/app/ShenqiOpsPolicy;->initOpToPerm()V

    .line 233
    invoke-direct {p0}, Landroid/app/ShenqiOpsPolicy;->initOpToOpAlias()V

    .line 234
    invoke-virtual {p0}, Landroid/app/ShenqiOpsPolicy;->readPolicy()V

    .line 235
    iget-boolean v0, p0, Landroid/app/ShenqiOpsPolicy;->policyFileReadSuccess:Z

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/shenqi_appops_policy.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ShenqiOpsPolicy;->mFile:Ljava/io/File;

    .line 237
    invoke-virtual {p0}, Landroid/app/ShenqiOpsPolicy;->readPolicy()V

    .line 239
    :cond_1
    return-void
.end method

.method private checkIfConcernedOp(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 484
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 485
    .local v0, "result":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAppType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 779
    const/4 v1, 0x0

    .line 780
    .local v1, "appType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 781
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Landroid/app/ShenqiOpsPolicy;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 783
    :try_start_0
    iget-object v3, p0, Landroid/app/ShenqiOpsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 788
    :goto_0
    if-eqz v0, :cond_0

    .line 789
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x9

    if-eqz v3, :cond_1

    .line 790
    const-string/jumbo v1, "system-app"

    .line 798
    :cond_0
    :goto_1
    return-object v1

    .line 785
    :catch_0
    move-exception v2

    .line 786
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_0

    .line 792
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string/jumbo v1, "user-app"

    goto :goto_1

    .line 796
    :cond_2
    const-string v3, "ShenqiOpsPolicy"

    const-string v4, "Context is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getPerms(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ShenqiOpsPolicy$PermsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    invoke-virtual {p0}, Landroid/app/ShenqiOpsPolicy;->getPolicy()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 736
    .local v0, "perms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ShenqiOpsPolicy$PermsData;>;"
    if-nez v0, :cond_0

    .line 737
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "perms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ShenqiOpsPolicy$PermsData;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 738
    .restart local v0    # "perms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ShenqiOpsPolicy$PermsData;>;"
    invoke-virtual {p0}, Landroid/app/ShenqiOpsPolicy;->getPolicy()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    :cond_0
    return-object v0
.end method

.method private initOpToOpAlias()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v0, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 269
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0x37

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .restart local v0    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0x33

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0x34

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0x38

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .restart local v0    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0x39

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .restart local v0    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .restart local v0    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 311
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0x29

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .restart local v0    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    return-void
.end method

.method private initOpToPerm()V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    .line 328
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "call"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const-string/jumbo v2, "send_sms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string/jumbo v2, "send_mms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x15

    const-string v2, "access_sms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 333
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "access_sms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x16

    const-string v2, "access_sms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "access_sms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string v2, "access_sms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string v2, "access_mms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string v2, "access_mms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x38

    const-string v2, "access_mms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "access_contacts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "access_contacts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x39

    const-string v2, "access_contacts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "access_call_log"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "access_call_log"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x3a

    const-string v2, "access_call_log"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "access_calendar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "access_calendar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string v2, "device_info"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x1a

    const-string v2, "camera"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x1b

    const-string/jumbo v2, "record_audio"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x3b

    const-string v2, "data_connect"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x17

    const-string/jumbo v2, "write_settings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string v2, "bluetooth_change"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x18

    const-string v2, "floating_window"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string v2, "create_shortcut"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string v2, "access_gallery"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string v2, "get_phone_number"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string v2, "get_accounts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 386
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x48

    const-string v2, "body_sensors"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 387
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x4b

    const-string/jumbo v2, "read_external_storage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string/jumbo v2, "write_external_storage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    return-void
.end method

.method private opToPerm(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 488
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 489
    invoke-direct {p0}, Landroid/app/ShenqiOpsPolicy;->initOpToPerm()V

    .line 491
    :cond_0
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->sOpToPerm:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private opsModeToState(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 394
    packed-switch p1, :pswitch_data_0

    .line 402
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 396
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 398
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 400
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private readApplicationPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 588
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 591
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    if-ne v2, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 592
    :cond_1
    if-eq v2, v6, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 595
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 597
    invoke-direct {p0, p1}, Landroid/app/ShenqiOpsPolicy;->readPkgPolicy(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 599
    :cond_2
    const-string v3, "ShenqiOpsPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <application>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 605
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private readDefaultPolicy(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 684
    const-string/jumbo v2, "perms"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    :goto_0
    return-void

    .line 687
    :cond_0
    const-string/jumbo v2, "name"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "permsName":Ljava/lang/String;
    const-string/jumbo v2, "permission"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ShenqiOpsPolicy;->stringToMode(Ljava/lang/String;)I

    move-result v0

    .line 693
    .local v0, "mode":I
    iget-object v2, p0, Landroid/app/ShenqiOpsPolicy;->mDefaultMode:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 694
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/app/ShenqiOpsPolicy;->mDefaultMode:Ljava/util/HashMap;

    .line 696
    :cond_1
    iget-object v2, p0, Landroid/app/ShenqiOpsPolicy;->mDefaultMode:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private readNotePolicy(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/ShenqiOpsPolicy$PermsData;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permData"    # Landroid/app/ShenqiOpsPolicy$PermsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 675
    if-nez p2, :cond_0

    .line 679
    :goto_0
    return-void

    .line 676
    :cond_0
    const-string/jumbo v2, "lan"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "lan":Ljava/lang/String;
    const-string/jumbo v2, "value"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "note":Ljava/lang/String;
    invoke-virtual {p2, v0, v1}, Landroid/app/ShenqiOpsPolicy$PermsData;->setNote(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readPermsPolicy(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ShenqiOpsPolicy$PermsData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "permsData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ShenqiOpsPolicy$PermsData;>;"
    const/4 v8, 0x0

    const/4 v10, 0x3

    .line 641
    if-nez p2, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    const-string/jumbo v7, "name"

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 645
    .local v3, "permName":Ljava/lang/String;
    const-string/jumbo v7, "permission"

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 646
    .local v4, "sMode":Ljava/lang/String;
    invoke-static {v4}, Landroid/app/ShenqiOpsPolicy;->stringToMode(Ljava/lang/String;)I

    move-result v0

    .line 648
    .local v0, "mode":I
    if-nez v3, :cond_2

    .line 649
    const-string v7, "ShenqiOpsPolicy"

    const-string v8, "Perms name is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 652
    :cond_2
    new-instance v2, Landroid/app/ShenqiOpsPolicy$PermsData;

    invoke-direct {v2, p0, v3, v0}, Landroid/app/ShenqiOpsPolicy$PermsData;-><init>(Landroid/app/ShenqiOpsPolicy;Ljava/lang/String;I)V

    .line 653
    .local v2, "permData":Landroid/app/ShenqiOpsPolicy$PermsData;
    invoke-virtual {p2, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 658
    .local v1, "outerDepth":I
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    if-ne v6, v10, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_0

    .line 659
    :cond_4
    if-eq v6, v10, :cond_3

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    .line 662
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 663
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "note"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 664
    invoke-direct {p0, p1, v2}, Landroid/app/ShenqiOpsPolicy;->readNotePolicy(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/ShenqiOpsPolicy$PermsData;)V

    goto :goto_1

    .line 666
    :cond_5
    const-string v7, "ShenqiOpsPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <pkg>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method private readPkgPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x3

    .line 608
    const-string/jumbo v7, "name"

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "packageName":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 636
    :cond_0
    return-void

    .line 612
    :cond_1
    const-string/jumbo v7, "type"

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "appType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 615
    move-object v1, v3

    .line 616
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/app/ShenqiOpsPolicy;->getPerms(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 617
    .local v4, "permsData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ShenqiOpsPolicy$PermsData;>;"
    if-eqz v4, :cond_0

    .line 621
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 624
    .local v2, "outerDepth":I
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    if-ne v6, v10, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_0

    .line 625
    :cond_3
    if-eq v6, v10, :cond_2

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    .line 628
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 629
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "perms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 630
    invoke-direct {p0, p1, v4}, Landroid/app/ShenqiOpsPolicy;->readPermsPolicy(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_0

    .line 632
    :cond_4
    const-string v7, "ShenqiOpsPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <pkg>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method private stateToOpsMode(II)I
    .locals 2
    .param p1, "state"    # I
    .param p2, "currentMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 406
    move v0, p2

    .line 407
    .local v0, "noChangeMode":I
    packed-switch p1, :pswitch_data_0

    .line 419
    .end local v0    # "noChangeMode":I
    :goto_0
    :pswitch_0
    return v0

    .restart local v0    # "noChangeMode":I
    :pswitch_1
    move v0, v1

    .line 411
    goto :goto_0

    .line 413
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 415
    goto :goto_0

    .line 417
    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static stringToMode(Ljava/lang/String;)I
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 699
    if-nez p0, :cond_0

    .line 703
    const/4 v0, 0x0

    .line 706
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getDefaultMode(IILjava/lang/String;)I
    .locals 12
    .param p1, "code"    # I
    .param p2, "currentMode"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x18

    const/4 v9, 0x0

    .line 441
    move v5, p2

    .line 442
    .local v5, "oldMode":I
    const/16 v10, 0x2b

    if-ne p1, v10, :cond_2

    .line 443
    sget-object v0, Landroid/app/ShenqiOpsPolicy;->WHITE_LIST_FOR_SINGLE_OP:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v8, v0, v2

    .line 444
    .local v8, "whiteItem":Ljava/lang/String;
    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v5, v9

    .line 481
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "oldMode":I
    .end local v8    # "whiteItem":Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 443
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "oldMode":I
    .restart local v8    # "whiteItem":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v8    # "whiteItem":Ljava/lang/String;
    :cond_2
    if-ne p1, v11, :cond_4

    .line 449
    sget-object v0, Landroid/app/ShenqiOpsPolicy;->WHITE_LIST_FOR_OP_ALERT_WINDOW:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v8, v0, v2

    .line 450
    .restart local v8    # "whiteItem":Ljava/lang/String;
    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v5, v9

    .line 451
    goto :goto_1

    .line 449
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 454
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v8    # "whiteItem":Ljava/lang/String;
    :cond_4
    const/16 v10, 0x4e

    if-ne p1, v10, :cond_6

    .line 455
    sget-object v0, Landroid/app/ShenqiOpsPolicy;->WHITE_LIST_FOR_GET_ACCOUNTS:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_6

    aget-object v8, v0, v2

    .line 456
    .restart local v8    # "whiteItem":Ljava/lang/String;
    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v5, v9

    .line 457
    goto :goto_1

    .line 455
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 461
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v8    # "whiteItem":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, p1}, Landroid/app/ShenqiOpsPolicy;->checkIfConcernedOp(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 463
    sget-object v0, Landroid/app/ShenqiOpsPolicy;->WHITE_LIST_FOR_ALL_OP:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_4
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 464
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 467
    .end local v4    # "name":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, p3}, Landroid/app/ShenqiOpsPolicy;->getAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 468
    .local v7, "type":Ljava/lang/String;
    const-string/jumbo v9, "system-app"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 469
    sget-object v0, Landroid/app/ShenqiOpsPolicy;->BLACK_LIST_FOR_SYSAPP_ALERT_WINDOW:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 470
    .local v1, "blackName":Ljava/lang/String;
    if-ne p1, v11, :cond_8

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 471
    const-string v9, "ShenqiOpsPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " op:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ignored by blacklist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 469
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 477
    .end local v1    # "blackName":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, p2}, Landroid/app/ShenqiOpsPolicy;->opsModeToState(I)I

    move-result v9

    invoke-virtual {p0, p1, v9, p3}, Landroid/app/ShenqiOpsPolicy;->getDefaultState(IILjava/lang/String;)I

    move-result v6

    .line 478
    .local v6, "state":I
    if-ltz v6, :cond_0

    .line 481
    invoke-direct {p0, v6, p2}, Landroid/app/ShenqiOpsPolicy;->stateToOpsMode(II)I

    move-result v5

    goto/16 :goto_1
.end method

.method public getDefaultState(IILjava/lang/String;)I
    .locals 5
    .param p1, "code"    # I
    .param p2, "currentState"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 423
    move v3, p2

    .line 424
    .local v3, "noChangeState":I
    iget-boolean v4, p0, Landroid/app/ShenqiOpsPolicy;->noPolicyFile:Z

    if-eqz v4, :cond_1

    .line 438
    .end local v3    # "noChangeState":I
    :cond_0
    :goto_0
    return v3

    .line 425
    .restart local v3    # "noChangeState":I
    :cond_1
    invoke-direct {p0, p1}, Landroid/app/ShenqiOpsPolicy;->checkIfConcernedOp(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 428
    invoke-virtual {p0, p1, p3}, Landroid/app/ShenqiOpsPolicy;->getPermData(ILjava/lang/String;)Landroid/app/ShenqiOpsPolicy$PermsData;

    move-result-object v0

    .line 429
    .local v0, "data":Landroid/app/ShenqiOpsPolicy$PermsData;
    if-nez v0, :cond_3

    .line 430
    invoke-direct {p0, p1}, Landroid/app/ShenqiOpsPolicy;->opToPerm(I)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ShenqiOpsPolicy;->mDefaultMode:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 432
    iget-object v4, p0, Landroid/app/ShenqiOpsPolicy;->mDefaultMode:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 433
    iget-object v4, p0, Landroid/app/ShenqiOpsPolicy;->mDefaultMode:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 435
    :cond_2
    iget v3, p0, Landroid/app/ShenqiOpsPolicy;->allDefaultMode:I

    goto :goto_0

    .line 437
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    iget v2, v0, Landroid/app/ShenqiOpsPolicy$PermsData;->mMode:I

    .local v2, "mode":I
    move v3, v2

    .line 438
    goto :goto_0
.end method

.method public getNote(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 744
    invoke-virtual {p0, p1, p2}, Landroid/app/ShenqiOpsPolicy;->getPermData(ILjava/lang/String;)Landroid/app/ShenqiOpsPolicy$PermsData;

    move-result-object v0

    .line 745
    .local v0, "data":Landroid/app/ShenqiOpsPolicy$PermsData;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "lan":Ljava/lang/String;
    const-string v2, "CN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    const-string/jumbo v1, "zh-rCN"

    .line 749
    :cond_0
    const-string v2, "ShenqiOpsPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the language tag is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 751
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/ShenqiOpsPolicy$PermsData;->getNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getOpCodeAlias(I)[I
    .locals 7
    .param p1, "op"    # I

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v4, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    if-nez v4, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object v3

    .line 243
    :cond_1
    iget-object v4, p0, Landroid/app/ShenqiOpsPolicy;->mOpToAlias:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 244
    .local v0, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v4, "ShenqiOpsPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "op:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " alias:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz v0, :cond_0

    .line 246
    const/4 v3, 0x0

    .line 248
    .local v3, "ops":[I
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 249
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 250
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ShenqiOpsPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR in get op codes alias:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOpModeLocked(ILjava/lang/String;)I
    .locals 5
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-virtual {p0, p1, p2}, Landroid/app/ShenqiOpsPolicy;->getPermData(ILjava/lang/String;)Landroid/app/ShenqiOpsPolicy$PermsData;

    move-result-object v3

    .line 719
    .local v3, "permData":Landroid/app/ShenqiOpsPolicy$PermsData;
    if-nez v3, :cond_0

    .line 720
    invoke-direct {p0, p1}, Landroid/app/ShenqiOpsPolicy;->opToPerm(I)Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "perm":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ShenqiOpsPolicy;->mDefaultMode:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "mode":I
    move v1, v0

    .line 725
    .end local v0    # "mode":I
    .end local v2    # "perm":Ljava/lang/String;
    .local v1, "mode":I
    :goto_0
    return v1

    .line 724
    .end local v1    # "mode":I
    :cond_0
    iget v0, v3, Landroid/app/ShenqiOpsPolicy$PermsData;->mMode:I

    .restart local v0    # "mode":I
    move v1, v0

    .line 725
    .end local v0    # "mode":I
    .restart local v1    # "mode":I
    goto :goto_0
.end method

.method public getPermData(ILjava/lang/String;)Landroid/app/ShenqiOpsPolicy$PermsData;
    .locals 3
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 729
    invoke-direct {p0, p2}, Landroid/app/ShenqiOpsPolicy;->getPerms(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 730
    .local v1, "permData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ShenqiOpsPolicy$PermsData;>;"
    invoke-direct {p0, p1}, Landroid/app/ShenqiOpsPolicy;->opToPerm(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ShenqiOpsPolicy$PermsData;

    .line 731
    .local v0, "data":Landroid/app/ShenqiOpsPolicy$PermsData;
    return-object v0
.end method

.method public getPolicy()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ShenqiOpsPolicy$PermsData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->mPkgPolicy:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ShenqiOpsPolicy;->mPkgPolicy:Ljava/util/HashMap;

    .line 712
    :cond_0
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->mPkgPolicy:Ljava/util/HashMap;

    return-object v0
.end method

.method public readPolicy()V
    .locals 13

    .prologue
    .line 499
    iget-object v10, p0, Landroid/app/ShenqiOpsPolicy;->mFile:Ljava/io/File;

    monitor-enter v10

    .line 501
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v9, p0, Landroid/app/ShenqiOpsPolicy;->mFile:Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    .local v4, "stream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 510
    .local v5, "success":Z
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 511
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 513
    const/4 v5, 0x1

    .line 515
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 518
    :cond_1
    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    .line 519
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "no start tag found"

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 554
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v9, "ShenqiOpsPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/app/ShenqiOpsPolicy;->policyFileReadSuccess:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 573
    if-nez v5, :cond_2

    .line 574
    :try_start_3
    iget-object v9, p0, Landroid/app/ShenqiOpsPolicy;->mPkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 577
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 581
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_5
    monitor-exit v10

    .line 582
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .end local v5    # "success":Z
    :goto_1
    return-void

    .line 502
    :catch_1
    move-exception v0

    .line 503
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v9, "ShenqiOpsPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Shenqi App ops policy file ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/app/ShenqiOpsPolicy;->mFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") not found; Skipping."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/ShenqiOpsPolicy;->noPolicyFile:Z

    .line 506
    monitor-exit v10

    goto :goto_1

    .line 581
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v9

    .line 522
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "success":Z
    .restart local v8    # "type":I
    :cond_3
    :try_start_6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 524
    .local v1, "outerDepth":I
    :cond_4
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_d

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v1, :cond_d

    .line 525
    :cond_5
    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    .line 530
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 531
    .local v6, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "user-app"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 532
    const/4 v9, 0x0

    const-string/jumbo v11, "permission"

    invoke-interface {v3, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/app/ShenqiOpsPolicy;->stringToMode(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Landroid/app/ShenqiOpsPolicy;->allDefaultMode:I

    .line 533
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 535
    .local v2, "outerDepth2":I
    :cond_6
    :goto_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_4

    .line 536
    :cond_7
    const/4 v9, 0x3

    if-eq v8, v9, :cond_6

    const/4 v9, 0x4

    if-eq v8, v9, :cond_6

    .line 540
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 541
    .local v7, "tagName2":Ljava/lang/String;
    const-string/jumbo v9, "perms"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 542
    invoke-direct {p0, v3, v7}, Landroid/app/ShenqiOpsPolicy;->readDefaultPolicy(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 557
    .end local v1    # "outerDepth":I
    .end local v2    # "outerDepth2":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "tagName2":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_2
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_7
    const-string v9, "ShenqiOpsPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/app/ShenqiOpsPolicy;->policyFileReadSuccess:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 573
    if-nez v5, :cond_8

    .line 574
    :try_start_8
    iget-object v9, p0, Landroid/app/ShenqiOpsPolicy;->mPkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 577
    :cond_8
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 578
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .line 545
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_9
    :try_start_a
    const-string v9, "application"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 546
    invoke-direct {p0, v3}, Landroid/app/ShenqiOpsPolicy;->readApplicationPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2

    .line 560
    .end local v1    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_4
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_b
    const-string v9, "ShenqiOpsPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/app/ShenqiOpsPolicy;->policyFileReadSuccess:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 573
    if-nez v5, :cond_a

    .line 574
    :try_start_c
    iget-object v9, p0, Landroid/app/ShenqiOpsPolicy;->mPkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 577
    :cond_a
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 578
    :catch_5
    move-exception v9

    goto/16 :goto_0

    .line 548
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_b
    :try_start_e
    const-string v9, "ShenqiOpsPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <appops-policy>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    .line 563
    .end local v1    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_6
    move-exception v0

    .line 564
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_f
    const-string v9, "ShenqiOpsPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/app/ShenqiOpsPolicy;->policyFileReadSuccess:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 573
    if-nez v5, :cond_c

    .line 574
    :try_start_10
    iget-object v9, p0, Landroid/app/ShenqiOpsPolicy;->mPkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 577
    :cond_c
    :try_start_11
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 578
    :catch_7
    move-exception v9

    goto/16 :goto_0

    .line 573
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_d
    if-nez v5, :cond_e

    .line 574
    :try_start_12
    iget-object v9, p0, Landroid/app/ShenqiOpsPolicy;->mPkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 577
    :cond_e
    :try_start_13
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_0

    .line 578
    :catch_8
    move-exception v9

    goto/16 :goto_0

    .line 566
    .end local v1    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_9
    move-exception v0

    .line 567
    .local v0, "e":Ljava/io/IOException;
    :try_start_14
    const-string v9, "ShenqiOpsPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/app/ShenqiOpsPolicy;->policyFileReadSuccess:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 573
    if-nez v5, :cond_f

    .line 574
    :try_start_15
    iget-object v9, p0, Landroid/app/ShenqiOpsPolicy;->mPkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 577
    :cond_f
    :try_start_16
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_0

    .line 578
    :catch_a
    move-exception v9

    goto/16 :goto_0

    .line 569
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_17
    const-string v9, "ShenqiOpsPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/app/ShenqiOpsPolicy;->policyFileReadSuccess:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 573
    if-nez v5, :cond_10

    .line 574
    :try_start_18
    iget-object v9, p0, Landroid/app/ShenqiOpsPolicy;->mPkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 577
    :cond_10
    :try_start_19
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_0

    .line 578
    :catch_c
    move-exception v9

    goto/16 :goto_0

    .line 573
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_1
    move-exception v9

    if-nez v5, :cond_11

    .line 574
    :try_start_1a
    iget-object v11, p0, Landroid/app/ShenqiOpsPolicy;->mPkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 577
    :cond_11
    :try_start_1b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 579
    :goto_4
    :try_start_1c
    throw v9
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 578
    .local v0, "e":Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v9

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_e
    move-exception v11

    goto :goto_4
.end method

.method public startWathcingPolicyFile()V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Landroid/app/ShenqiOpsPolicy$PolicyFileObserver;

    const-string v1, "/data/system/"

    invoke-direct {v0, p0, v1}, Landroid/app/ShenqiOpsPolicy$PolicyFileObserver;-><init>(Landroid/app/ShenqiOpsPolicy;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ShenqiOpsPolicy;->mPolicyDirectoryObserver:Landroid/os/FileObserver;

    .line 221
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy;->mPolicyDirectoryObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 222
    const-string v0, "ShenqiOpsPolicy"

    const-string/jumbo v1, "startWatching dir:/data/system/"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method
