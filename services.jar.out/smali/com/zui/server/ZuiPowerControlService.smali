.class public Lcom/zui/server/ZuiPowerControlService;
.super Lcom/android/server/SystemService;
.source "ZuiPowerControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/server/ZuiPowerControlService$PmlistFileObserver;,
        Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;
    }
.end annotation


# static fields
.field private static final ACTION_OVERHEAT_CLEAN_CHANGED:Ljava/lang/String; = "android.intent.action.OVERHEAT_CLEAN_CHANGED"

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final CPU_TEMP_SAMPLE_NUM:I = 0x5

.field private static final EXTRA_BG_RATIO_THRESHOLD:Ljava/lang/String; = "bgRatioThreshold"

.field private static final EXTRA_CHECK_INTERVAL:Ljava/lang/String; = "checkInterval"

.field private static final EXTRA_CLEAN:Ljava/lang/String; = "clean"

.field private static final EXTRA_CLEAN_POWER_THRESHOLD:Ljava/lang/String; = "cleanPowerThreshold"

.field private static final EXTRA_CLEAN_TIME_INTERVALS:Ljava/lang/String; = "cleanTimeIntervals"

.field private static final EXTRA_NET_SPEED_THRESHOLD:Ljava/lang/String; = "netSpeedThreshold"

.field private static final EXTRA_PRE_CLEAN_SAMPLE_INTERVAL:Ljava/lang/String; = "preCleanSampleInterval"

.field private static final MSG_CPU_BALANCE_PROCESS:I = 0x1

.field private static final MSG_OVERHEAT_CLEAN_MONITOR_TIMEOUT:I = 0x3

.field private static final MSG_SET_ENABLE_DISPLAY_BOOST:I = 0x4

.field private static final MSG_TSENS_TEMP_REPORT_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ZuiPowerControl"

.field private static final XUI_SYS_BUNDLE_KEY:Ljava/lang/String; = "xui_sys_bundle_key"

.field private static mCpuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mLimitFreqBigCore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mLimitFreqLittleCore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PROPERTY_ENABLE_BOOST_FOR_DISPLAY:Ljava/lang/String;

.field private final PROPERTY_MAX_ALLOWED_FRAME_DROP_CNT:Ljava/lang/String;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCPU_big_little_support:Z

.field private mContext:Landroid/content/Context;

.field private mCpuTemperatureChangeDuration:J

.field private final mCpuTemperatureObserver:Landroid/os/UEventObserver;

.field private mCpuTemperatureRecent:[I

.field private mCpuTemperatureRecentNum:I

.field private mCpuTemperatureSample:[I

.field private mDefaultCPUFreqBigCore:I

.field private mDefaultCPUFreqLittleCore:I

.field private mDefaultOverheatBgRatioThreshold:I

.field private mDefaultOverheatCheckInterval:J

.field private mDefaultOverheatCleanPowerThreshold:D

.field private mDefaultOverheatCleanTimeIntervals:[J

.field private mDefaultOverheatNetSpeedThreshold:J

.field private mDefaultOverheatPreCleanSampleInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mOverheatCleanEnabled:Z

.field private mOverheatCleanThreshold:I

.field private mOverheatMonitorEnabled:Z

.field private mOverheatMonitorSupported:Z

.field private mOverheatRecordEnabled:Z

.field private mOverheatRecordThreshold:I

.field private mOverheatUpdatesStopped:Z

.field private final mPMListFile:Ljava/lang/String;

.field private final mPMListFileUpdate:Ljava/lang/String;

.field private mPerfAppSwitch:Landroid/util/BoostFramework;

.field private mPerfAppSwitchParamList:[I

.field private mPmlistFileObserver:Landroid/os/FileObserver;

.field private final mService:Landroid/os/IBinder;

.field private mTsensStateMatchPath:Ljava/lang/String;

.field private mTsensTemperatureCoefficient:I

.field private mTsensTemperatureOverheatThreshold:I

.field private mTsensTemperatureOverheatThresholdPath:Ljava/lang/String;

.field private mTsensTemperaturePollInterval:J

.field private mTsensTemperaturePollIntervalPath:Ljava/lang/String;

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zui/server/ZuiPowerControlService;->mLimitFreqBigCore:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zui/server/ZuiPowerControlService;->mLimitFreqLittleCore:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zui/server/ZuiPowerControlService;->mCpuList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x5

    .line 198
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 74
    const-string v2, "/system/etc/pmlist.config"

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mPMListFile:Ljava/lang/String;

    .line 75
    const-string v2, "/data/pmlist.config"

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mPMListFileUpdate:Ljava/lang/String;

    .line 77
    iput-boolean v3, p0, Lcom/zui/server/ZuiPowerControlService;->mCPU_big_little_support:Z

    .line 79
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mPerfAppSwitch:Landroid/util/BoostFramework;

    .line 80
    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mPerfAppSwitchParamList:[I

    .line 82
    const-string v2, "sys.max_allowed_frame_drop_cnt"

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->PROPERTY_MAX_ALLOWED_FRAME_DROP_CNT:Ljava/lang/String;

    .line 83
    const-string v2, "sys.enable_boost_for_display"

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->PROPERTY_ENABLE_BOOST_FOR_DISPLAY:Ljava/lang/String;

    .line 84
    const/16 v2, 0x5dc

    iput v2, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultCPUFreqLittleCore:I

    .line 85
    const/16 v2, 0x834

    iput v2, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultCPUFreqBigCore:I

    .line 95
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mLock:Ljava/lang/Object;

    .line 130
    iput-boolean v3, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordEnabled:Z

    .line 131
    iput-boolean v3, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z

    .line 134
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureSample:[I

    .line 135
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecent:[I

    .line 507
    new-instance v2, Lcom/zui/server/ZuiPowerControlService$2;

    invoke-direct {v2, p0}, Lcom/zui/server/ZuiPowerControlService$2;-><init>(Lcom/zui/server/ZuiPowerControlService;)V

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mService:Landroid/os/IBinder;

    .line 550
    new-instance v2, Lcom/zui/server/ZuiPowerControlService$3;

    invoke-direct {v2, p0}, Lcom/zui/server/ZuiPowerControlService$3;-><init>(Lcom/zui/server/ZuiPowerControlService;)V

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureObserver:Landroid/os/UEventObserver;

    .line 199
    iput-object p1, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    .line 200
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "zui_power"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mWorker:Landroid/os/HandlerThread;

    .line 201
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 202
    new-instance v2, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;

    iget-object v3, p0, Lcom/zui/server/ZuiPowerControlService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/zui/server/ZuiPowerControlService$PowerWorkerHandler;-><init>(Lcom/zui/server/ZuiPowerControlService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;

    .line 206
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 208
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatMonitorSupported:Z

    .line 211
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperaturePollIntervalPath:Ljava/lang/String;

    .line 213
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThresholdPath:Ljava/lang/String;

    .line 215
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensStateMatchPath:Ljava/lang/String;

    .line 218
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureCoefficient:I

    .line 221
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperaturePollInterval:J

    .line 223
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v3, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureCoefficient:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThreshold:I

    .line 225
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v3, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureCoefficient:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordThreshold:I

    .line 227
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v3, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureCoefficient:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanThreshold:I

    .line 229
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureChangeDuration:J

    .line 232
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCheckInterval:J

    .line 234
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanPowerThreshold:D

    .line 236
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatPreCleanSampleInterval:J

    .line 238
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatNetSpeedThreshold:J

    .line 240
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatBgRatioThreshold:I

    .line 243
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 245
    .local v1, "intervals":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 246
    array-length v2, v1

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanTimeIntervals:[J

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanTimeIntervals:[J

    aget v3, v1, v0

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    aput-wide v4, v2, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v6, :cond_1

    .line 253
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureSample:[I

    iget v3, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThreshold:I

    aput v3, v2, v0

    .line 254
    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecent:[I

    iget v3, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThreshold:I

    aput v3, v2, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_1
    iget-wide v2, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureChangeDuration:J

    iget-wide v4, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperaturePollInterval:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecentNum:I

    .line 257
    iget v2, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecentNum:I

    if-le v2, v6, :cond_2

    .line 258
    iput v6, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecentNum:I

    .line 261
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/zui/server/ZuiPowerControlService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zui/server/ZuiPowerControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/zui/server/ZuiPowerControlService;->stopOverheatService()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/server/ZuiPowerControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensStateMatchPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/UEventObserver;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureObserver:Landroid/os/UEventObserver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zui/server/ZuiPowerControlService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/zui/server/ZuiPowerControlService;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/zui/server/ZuiPowerControlService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatUpdatesStopped:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/zui/server/ZuiPowerControlService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureSample:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/zui/server/ZuiPowerControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget v0, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecentNum:I

    return v0
.end method

.method static synthetic access$1600(Lcom/zui/server/ZuiPowerControlService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecent:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/zui/server/ZuiPowerControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget v0, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordThreshold:I

    return v0
.end method

.method static synthetic access$1800(Lcom/zui/server/ZuiPowerControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget v0, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanThreshold:I

    return v0
.end method

.method static synthetic access$1900(Lcom/zui/server/ZuiPowerControlService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordEnabled:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/zui/server/ZuiPowerControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zui/server/ZuiPowerControlService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/zui/server/ZuiPowerControlService;)Lcom/android/internal/app/IBatteryStats;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zui/server/ZuiPowerControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/zui/server/ZuiPowerControlService;)J
    .locals 2
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperaturePollInterval:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/zui/server/ZuiPowerControlService;)D
    .locals 2
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanPowerThreshold:D

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/zui/server/ZuiPowerControlService;)J
    .locals 2
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatPreCleanSampleInterval:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/zui/server/ZuiPowerControlService;)J
    .locals 2
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatNetSpeedThreshold:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/zui/server/ZuiPowerControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget v0, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatBgRatioThreshold:I

    return v0
.end method

.method static synthetic access$2600(Lcom/zui/server/ZuiPowerControlService;)[J
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanTimeIntervals:[J

    return-object v0
.end method

.method static synthetic access$2700(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/FileObserver;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService;->mPmlistFileObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/zui/server/ZuiPowerControlService;Landroid/os/FileObserver;)Landroid/os/FileObserver;
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;
    .param p1, "x1"    # Landroid/os/FileObserver;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/zui/server/ZuiPowerControlService;->mPmlistFileObserver:Landroid/os/FileObserver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zui/server/ZuiPowerControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/zui/server/ZuiPowerControlService;->sendOverheatCleanChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zui/server/ZuiPowerControlService;)J
    .locals 2
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCheckInterval:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/zui/server/ZuiPowerControlService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/zui/server/ZuiPowerControlService;->doEnableDisplayBoostForPkg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/zui/server/ZuiPowerControlService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatMonitorEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/zui/server/ZuiPowerControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatMonitorEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/zui/server/ZuiPowerControlService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zui/server/ZuiPowerControlService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/ZuiPowerControlService;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatMonitorSupported:Z

    return v0
.end method

.method private copyCpuList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "fileFrom"    # Ljava/lang/String;
    .param p2, "fileTo"    # Ljava/lang/String;

    .prologue
    .line 464
    const-string v8, "ZuiPowerControl"

    const-string v9, "copyCpuList begin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v4, 0x0

    .line 466
    .local v4, "in":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 467
    .local v6, "out":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 469
    const-string v8, "ZuiPowerControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not exists."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :goto_0
    return-void

    .line 473
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 475
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .local v7, "out":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 477
    .local v0, "bt":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_3

    .line 478
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 482
    .end local v0    # "bt":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 485
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    const-string v8, "ZuiPowerControl"

    const-string v9, "copyCpuList occurs error: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    if-eqz v4, :cond_1

    .line 489
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 495
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    .line 497
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 504
    :cond_2
    :goto_4
    const-string v8, "ZuiPowerControl"

    const-string v9, "copyCpuList finish"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "bt":[B
    .restart local v1    # "count":I
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 481
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 487
    if-eqz v5, :cond_4

    .line 489
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 495
    :cond_4
    :goto_5
    if-eqz v7, :cond_7

    .line 497
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 501
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 490
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 492
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 498
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 500
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 501
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 490
    .end local v0    # "bt":[B
    .end local v1    # "count":I
    .local v2, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 492
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 498
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 500
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 487
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v4, :cond_5

    .line 489
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 495
    :cond_5
    :goto_7
    if-eqz v6, :cond_6

    .line 497
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 501
    :cond_6
    :goto_8
    throw v8

    .line 490
    :catch_5
    move-exception v2

    .line 492
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 498
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 500
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 487
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    .line 482
    :catch_7
    move-exception v2

    goto :goto_2

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "bt":[B
    .restart local v1    # "count":I
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :cond_7
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private doEnableDisplayBoostForPkg(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 354
    sget-object v0, Lcom/zui/server/ZuiPowerControlService;->mLimitFreqBigCore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "ZuiPowerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable boost for display, package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v0, "sys.enable_boost_for_display"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_0
    const-string v0, "ZuiPowerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable boost for display, package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v0, "sys.enable_boost_for_display"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 710
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zui/server/ZuiPowerControlService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 711
    if-eqz p2, :cond_0

    :try_start_0
    move-object/from16 v0, p2

    array-length v12, v0

    if-eqz v12, :cond_0

    const-string v12, "-a"

    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 712
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/zui/server/ZuiPowerControlService;->mOverheatUpdatesStopped:Z

    if-eqz v12, :cond_1

    .line 713
    const-string v12, "  (OVERHEAT UPDATES STOPPED -- use \'reset\' to restart)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v12, 0x80

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 718
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string v12, "Current Overheat Service state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mOverheatMonitorSupported: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zui/server/ZuiPowerControlService;->mOverheatMonitorSupported:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mOverheatMonitorEnabled: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zui/server/ZuiPowerControlService;->mOverheatMonitorEnabled:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mTsensTemperaturePollInterval: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperaturePollInterval:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mTsensTemperatureOverheatThreshold: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThreshold:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mOverheatRecordThreshold: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordThreshold:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mOverheatCleanThreshold: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanThreshold:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mCpuTemperatureChangeDuration: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureChangeDuration:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mDefaultOverheatCheckInterval: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCheckInterval:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mDefaultOverheatCleanPowerThreshold: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanPowerThreshold:D

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mDefaultOverheatPreCleanSampleInterval: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatPreCleanSampleInterval:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mDefaultOverheatNetSpeedThreshold: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatNetSpeedThreshold:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mDefaultOverheatBgRatioThreshold: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatBgRatioThreshold:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 732
    const-string v12, "  mDefaultOverheatCleanTimeIntervals: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanTimeIntervals:[J

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanTimeIntervals:[J

    array-length v12, v12

    if-lez v12, :cond_2

    .line 734
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanTimeIntervals:[J

    array-length v12, v12

    if-ge v4, v12, :cond_2

    .line 735
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanTimeIntervals:[J

    aget-wide v14, v12, v4

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 738
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mOverheatRecordEnabled: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordEnabled:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mOverheatCleanEnabled: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    monitor-exit v13

    .line 822
    return-void

    .line 742
    :cond_4
    move-object/from16 v0, p2

    array-length v12, v0

    const/4 v14, 0x3

    if-ne v12, v14, :cond_11

    const-string v12, "set"

    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 743
    const/4 v12, 0x1

    aget-object v5, p2, v12

    .line 744
    .local v5, "key":Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v11, p2, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    .local v11, "value":Ljava/lang/String;
    const/4 v10, 0x1

    .line 747
    .local v10, "update":Z
    :try_start_1
    const-string v12, "pollInterval"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 748
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperaturePollInterval:J

    .line 779
    :cond_5
    :goto_2
    if-eqz v10, :cond_3

    .line 780
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 782
    .local v6, "ident":J
    const/4 v12, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/zui/server/ZuiPowerControlService;->mOverheatUpdatesStopped:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 784
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 787
    .end local v6    # "ident":J
    :catch_0
    move-exception v3

    .line 788
    .local v3, "ex":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad value: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 821
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v5    # "key":Ljava/lang/String;
    .end local v10    # "update":Z
    .end local v11    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v12

    .line 749
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v10    # "update":Z
    .restart local v11    # "value":Ljava/lang/String;
    :cond_6
    :try_start_5
    const-string v12, "reportTemp"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 750
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThreshold:I

    goto :goto_2

    .line 751
    :cond_7
    const-string v12, "recordTemp"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 752
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordThreshold:I

    goto :goto_2

    .line 753
    :cond_8
    const-string v12, "cleanTemp"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 754
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanThreshold:I

    goto :goto_2

    .line 755
    :cond_9
    const-string v12, "changeDuration"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 756
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v14, v12

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureChangeDuration:J

    goto :goto_2

    .line 757
    :cond_a
    const-string v12, "checkInterval"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 758
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCheckInterval:J

    goto/16 :goto_2

    .line 759
    :cond_b
    const-string v12, "cleanPower"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 760
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanPowerThreshold:D

    goto/16 :goto_2

    .line 761
    :cond_c
    const-string v12, "sampleInterval"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 762
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatPreCleanSampleInterval:J

    goto/16 :goto_2

    .line 763
    :cond_d
    const-string v12, "netSpeed"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 764
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatNetSpeedThreshold:J

    goto/16 :goto_2

    .line 765
    :cond_e
    const-string v12, "bgRatio"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 766
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatBgRatioThreshold:I

    goto/16 :goto_2

    .line 767
    :cond_f
    const-string v12, "cleanIntervals"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 768
    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 769
    .local v9, "strArray":[Ljava/lang/String;
    if-eqz v9, :cond_5

    array-length v12, v9

    if-lez v12, :cond_5

    .line 770
    array-length v12, v9

    new-array v12, v12, [J

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanTimeIntervals:[J

    .line 771
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    array-length v12, v9

    if-ge v4, v12, :cond_5

    .line 772
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanTimeIntervals:[J

    aget-object v14, v9, v4

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    aput-wide v14, v12, v4

    .line 771
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 776
    .end local v4    # "i":I
    .end local v9    # "strArray":[Ljava/lang/String;
    :cond_10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown overheat set option: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 784
    .restart local v6    # "ident":J
    :catchall_1
    move-exception v12

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 791
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "ident":J
    .end local v10    # "update":Z
    .end local v11    # "value":Ljava/lang/String;
    :cond_11
    :try_start_6
    move-object/from16 v0, p2

    array-length v12, v0

    const/4 v14, 0x1

    if-ne v12, v14, :cond_15

    const-string v12, "reset"

    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 792
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v6

    .line 794
    .restart local v6    # "ident":J
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/zui/server/ZuiPowerControlService;->mOverheatUpdatesStopped:Z

    if-eqz v12, :cond_14

    .line 795
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperaturePollIntervalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperaturePollInterval:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThresholdPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThreshold:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-direct/range {p0 .. p0}, Lcom/zui/server/ZuiPowerControlService;->stopOverheatService()V

    .line 800
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    const/4 v12, 0x5

    if-ge v4, v12, :cond_12

    .line 801
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureSample:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThreshold:I

    aput v14, v12, v4

    .line 802
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecent:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThreshold:I

    aput v14, v12, v4

    .line 800
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 804
    :cond_12
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureChangeDuration:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperaturePollInterval:J

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    long-to-int v12, v14

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecentNum:I

    .line 805
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecentNum:I

    const/4 v14, 0x5

    if-le v12, v14, :cond_13

    .line 806
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecentNum:I

    .line 809
    :cond_13
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/zui/server/ZuiPowerControlService;->mOverheatUpdatesStopped:Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 814
    .end local v4    # "i":I
    :cond_14
    :try_start_8
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 811
    :catch_1
    move-exception v2

    .line 812
    .local v2, "e":Ljava/io/IOException;
    :try_start_9
    const-string v12, "ZuiPowerControl"

    const-string v14, "failed to config tsens temperature properity "

    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 814
    :try_start_a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v12

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 817
    .end local v6    # "ident":J
    :cond_15
    const-string v12, "Dump current overheat state, or:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    const-string v12, "  set [pollInterval|reportTemp|recordTemp|cleanTemp|changeDuration|checkInterval|cleanPower|sampleInterval|netSpeed|bgRatio|cleanIntervals] <value>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    const-string v12, "  reset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1
.end method

.method private static getLimitFreqBigCore(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 427
    const-string v1, "[,]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "str":[Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, v0, v1

    return-object v1
.end method

.method private static getLimitFreqLittleCore(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 432
    const-string v1, "[,]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "str":[Ljava/lang/String;
    const/4 v1, 0x3

    aget-object v1, v0, v1

    return-object v1
.end method

.method private static getLimitPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string v1, "[,]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "str":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private static getLimitType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string v1, "[,]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "str":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private sendOverheatCleanChanged()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/server/ZuiPowerControlService$4;

    invoke-direct {v1, p0}, Lcom/zui/server/ZuiPowerControlService$4;-><init>(Lcom/zui/server/ZuiPowerControlService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 685
    return-void
.end method

.method private splitFileIntoList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 439
    const-string v6, "ZuiPowerControl"

    const-string v7, "file is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    const/4 v3, 0x0

    .line 442
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 446
    .local v5, "tempString":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 447
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 451
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "tempString":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    if-eqz v3, :cond_1

    .line 455
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 460
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-object v2

    .line 449
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "tempString":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 453
    if-eqz v4, :cond_4

    .line 455
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v3, v4

    .line 457
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 456
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v6

    move-object v3, v4

    .line 457
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 453
    .end local v5    # "tempString":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_3

    .line 455
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 457
    :cond_3
    :goto_4
    throw v6

    .line 456
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 453
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "tempString":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 450
    .end local v5    # "tempString":Ljava/lang/String;
    :catch_4
    move-exception v0

    goto :goto_1

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "tempString":Ljava/lang/String;
    :cond_4
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private stopOverheatService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 689
    iget-boolean v1, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordEnabled:Z

    if-eqz v1, :cond_0

    .line 690
    iput-boolean v3, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordEnabled:Z

    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/zui/server/ZuiPowerControlService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->setHeatState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z

    if-eqz v1, :cond_1

    .line 699
    iput-boolean v3, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z

    .line 700
    invoke-direct {p0}, Lcom/zui/server/ZuiPowerControlService;->sendOverheatCleanChanged()V

    .line 703
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 704
    iget-object v1, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureSample:[I

    iget v2, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThreshold:I

    aput v2, v1, v0

    .line 705
    iget-object v1, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecent:[I

    iget v2, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThreshold:I

    aput v2, v1, v0

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 707
    :cond_2
    return-void

    .line 693
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized doCPUBalanceForApp(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 325
    monitor-enter p0

    move-object v1, p1

    .line 328
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/zui/server/ZuiPowerControlService;->mPerfAppSwitch:Landroid/util/BoostFramework;

    invoke-virtual {v4}, Landroid/util/BoostFramework;->perfLockRelease()I

    move-result v2

    .line 329
    .local v2, "ret":I
    const-string v4, "ZuiPowerControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "perfLockRelease result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v4, p0, Lcom/zui/server/ZuiPowerControlService;->mPerfAppSwitchParamList:[I

    const/4 v5, 0x0

    const v6, 0x40804100

    aput v6, v4, v5

    .line 331
    iget-object v4, p0, Lcom/zui/server/ZuiPowerControlService;->mPerfAppSwitchParamList:[I

    const/4 v5, 0x2

    const v6, 0x40804000    # 4.0078125f

    aput v6, v4, v5

    .line 332
    sget-object v4, Lcom/zui/server/ZuiPowerControlService;->mLimitFreqBigCore:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    iget-object v5, p0, Lcom/zui/server/ZuiPowerControlService;->mPerfAppSwitchParamList:[I

    const/4 v6, 0x1

    sget-object v4, Lcom/zui/server/ZuiPowerControlService;->mLimitFreqLittleCore:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v5, v6

    .line 334
    iget-object v5, p0, Lcom/zui/server/ZuiPowerControlService;->mPerfAppSwitchParamList:[I

    const/4 v6, 0x3

    sget-object v4, Lcom/zui/server/ZuiPowerControlService;->mLimitFreqBigCore:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v5, v6

    .line 341
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    .line 343
    iget-object v4, p0, Lcom/zui/server/ZuiPowerControlService;->mPerfAppSwitchParamList:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    .end local v0    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v4, p0, Lcom/zui/server/ZuiPowerControlService;->mPerfAppSwitchParamList:[I

    const/4 v5, 0x1

    iget v6, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultCPUFreqLittleCore:I

    aput v6, v4, v5

    .line 337
    iget-object v4, p0, Lcom/zui/server/ZuiPowerControlService;->mPerfAppSwitchParamList:[I

    const/4 v5, 0x3

    iget v6, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultCPUFreqBigCore:I

    aput v6, v4, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 325
    .end local v2    # "ret":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 346
    .restart local v0    # "i":I
    .restart local v2    # "ret":I
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    const-string v4, "ZuiPowerControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPerfAppSwitch perfLockAcq params:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v4, p0, Lcom/zui/server/ZuiPowerControlService;->mPerfAppSwitch:Landroid/util/BoostFramework;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/zui/server/ZuiPowerControlService;->mPerfAppSwitchParamList:[I

    invoke-virtual {v4, v5, v6}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    monitor-exit p0

    return-void
.end method

.method public onBootPhase(I)V
    .locals 9
    .param p1, "phase"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 277
    const/16 v5, 0x226

    if-ne p1, v5, :cond_0

    .line 279
    iget-object v5, p0, Lcom/zui/server/ZuiPowerControlService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 281
    :try_start_0
    new-instance v2, Lcom/zui/server/ZuiPowerControlService$1;

    iget-object v6, p0, Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v6}, Lcom/zui/server/ZuiPowerControlService$1;-><init>(Lcom/zui/server/ZuiPowerControlService;Landroid/os/Handler;)V

    .line 297
    .local v2, "overheatobs":Landroid/database/ContentObserver;
    iget-object v6, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 298
    .local v1, "overheatResolver":Landroid/content/ContentResolver;
    const-string v6, "overheat_monitor_enable"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v1, v6, v7, v2, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 301
    iget-object v6, p0, Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "overheat_monitor_enable"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatMonitorEnabled:Z

    .line 303
    iget-boolean v3, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatMonitorSupported:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/zui/server/ZuiPowerControlService;->mOverheatMonitorEnabled:Z

    if-eqz v3, :cond_2

    .line 304
    iget-object v3, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureObserver:Landroid/os/UEventObserver;

    iget-object v4, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensStateMatchPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 309
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :try_start_1
    iget-object v3, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperaturePollIntervalPath:Ljava/lang/String;

    iget-wide v4, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperaturePollInterval:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThresholdPath:Ljava/lang/String;

    iget v4, p0, Lcom/zui/server/ZuiPowerControlService;->mTsensTemperatureOverheatThreshold:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    .end local v1    # "overheatResolver":Landroid/content/ContentResolver;
    .end local v2    # "overheatobs":Landroid/database/ContentObserver;
    :cond_0
    :goto_2
    return-void

    .restart local v1    # "overheatResolver":Landroid/content/ContentResolver;
    .restart local v2    # "overheatobs":Landroid/database/ContentObserver;
    :cond_1
    move v3, v4

    .line 301
    goto :goto_0

    .line 307
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureObserver:Landroid/os/UEventObserver;

    invoke-virtual {v3}, Landroid/os/UEventObserver;->stopObserving()V

    goto :goto_1

    .line 309
    .end local v1    # "overheatResolver":Landroid/content/ContentResolver;
    .end local v2    # "overheatobs":Landroid/database/ContentObserver;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 314
    .restart local v1    # "overheatResolver":Landroid/content/ContentResolver;
    .restart local v2    # "overheatobs":Landroid/database/ContentObserver;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "ZuiPowerControl"

    const-string v4, "failed to config tsens temperature properity "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "zui_power"

    iget-object v1, p0, Lcom/zui/server/ZuiPowerControlService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/zui/server/ZuiPowerControlService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 266
    invoke-virtual {p0}, Lcom/zui/server/ZuiPowerControlService;->setFpsHashMap()V

    .line 268
    new-instance v0, Lcom/zui/server/ZuiPowerControlService$PmlistFileObserver;

    const-string v1, "/data/pmlist.config"

    invoke-direct {v0, p0, v1}, Lcom/zui/server/ZuiPowerControlService$PmlistFileObserver;-><init>(Lcom/zui/server/ZuiPowerControlService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/server/ZuiPowerControlService;->mPmlistFileObserver:Landroid/os/FileObserver;

    .line 269
    iget-object v0, p0, Lcom/zui/server/ZuiPowerControlService;->mPmlistFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 271
    return-void
.end method

.method public declared-synchronized setFpsHashMap()V
    .locals 12

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/pmlist.config"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, "dataFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 371
    const-string v9, "/system/etc/pmlist.config"

    const-string v10, "/data/pmlist.config"

    invoke-direct {p0, v9, v10}, Lcom/zui/server/ZuiPowerControlService;->copyCpuList(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v9, "ZuiPowerControl"

    const-string v10, "fisrt boot, copy cpu config"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    const-string v9, "/data/pmlist.config"

    invoke-direct {p0, v9}, Lcom/zui/server/ZuiPowerControlService;->splitFileIntoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Lcom/zui/server/ZuiPowerControlService;->mCpuList:Ljava/util/List;

    .line 376
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget-object v9, Lcom/zui/server/ZuiPowerControlService;->mCpuList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 377
    sget-object v9, Lcom/zui/server/ZuiPowerControlService;->mCpuList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 378
    .local v7, "str":Ljava/lang/String;
    invoke-static {v7}, Lcom/zui/server/ZuiPowerControlService;->getLimitType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 379
    .local v8, "type":Ljava/lang/String;
    invoke-static {v7}, Lcom/zui/server/ZuiPowerControlService;->getLimitPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, "pkg":Ljava/lang/String;
    const-string v9, "setprop"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 382
    const-string v9, "sys.max_allowed_frame_drop_cnt"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 383
    invoke-static {v7}, Lcom/zui/server/ZuiPowerControlService;->getLimitFreqBigCore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "frameDropCntStr":Ljava/lang/String;
    const-string v9, "sys.max_allowed_frame_drop_cnt"

    invoke-static {v9, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v9, "ZuiPowerControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set pm.max_allowed_frame_drop_cnt:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v2    # "frameDropCntStr":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 390
    :cond_2
    invoke-static {v7}, Lcom/zui/server/ZuiPowerControlService;->getLimitFreqBigCore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    div-int/lit16 v3, v9, 0x3e8

    .line 391
    .local v3, "freqBigCore":I
    invoke-static {v7}, Lcom/zui/server/ZuiPowerControlService;->getLimitFreqLittleCore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    div-int/lit16 v4, v9, 0x3e8

    .line 392
    .local v4, "freqLittleCore":I
    const-string v9, "*"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 393
    iput v4, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultCPUFreqLittleCore:I

    .line 394
    iput v3, p0, Lcom/zui/server/ZuiPowerControlService;->mDefaultCPUFreqBigCore:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 410
    .end local v0    # "dataFile":Ljava/io/File;
    .end local v3    # "freqBigCore":I
    .end local v4    # "freqLittleCore":I
    .end local v5    # "i":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    monitor-exit p0

    return-void

    .line 398
    .restart local v0    # "dataFile":Ljava/io/File;
    .restart local v3    # "freqBigCore":I
    .restart local v4    # "freqLittleCore":I
    .restart local v5    # "i":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    .restart local v8    # "type":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v9, "add"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 400
    sget-object v9, Lcom/zui/server/ZuiPowerControlService;->mLimitFreqBigCore:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v9, Lcom/zui/server/ZuiPowerControlService;->mLimitFreqLittleCore:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 369
    .end local v0    # "dataFile":Ljava/io/File;
    .end local v3    # "freqBigCore":I
    .end local v4    # "freqLittleCore":I
    .end local v5    # "i":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 403
    .restart local v0    # "dataFile":Ljava/io/File;
    .restart local v3    # "freqBigCore":I
    .restart local v4    # "freqLittleCore":I
    .restart local v5    # "i":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    .restart local v8    # "type":Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v9, "del"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 405
    sget-object v9, Lcom/zui/server/ZuiPowerControlService;->mLimitFreqBigCore:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v9, Lcom/zui/server/ZuiPowerControlService;->mLimitFreqLittleCore:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
