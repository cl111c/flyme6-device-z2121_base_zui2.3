.class Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$audioServiceF:Lcom/android/server/audio/AudioService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$themeServiceF:Lcom/android/server/ThemeService;

.field final synthetic val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/ThemeService;)V
    .locals 1

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    iput-object p4, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p5, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p6, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p7, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p8, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Lcom/android/server/audio/AudioService;

    iput-object p9, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p10, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    iput-object p11, p0, Lcom/android/server/SystemServer$2;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object p12, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    iput-object p13, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    iput-object p14, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$themeServiceF:Lcom/android/server/ThemeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1253
    const-string v1, "SystemServer"

    const-string v2, "Making services ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v1}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v1

    const/16 v2, 0x226

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1257
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mFirstBoot:Z
    invoke-static {v1}, Lcom/android/server/SystemServer;->access$100(Lcom/android/server/SystemServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1258
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1259
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 1260
    const/16 v1, 0x7df

    const/4 v2, 0x7

    const/16 v3, 0xb

    const/16 v4, 0xa

    const/16 v5, 0xc

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 1261
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1266
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :goto_0
    const-string v1, "SystemServer"

    const-string v2, "WebViewFactory preparation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer()V

    .line 1275
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1280
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1285
    :cond_1
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1290
    :cond_2
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1295
    :cond_3
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1300
    :cond_4
    :goto_5
    :try_start_6
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 1305
    :cond_5
    :goto_6
    :try_start_7
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Lcom/android/server/audio/AudioService;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->systemReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 1309
    :cond_6
    :goto_7
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    .line 1313
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v1}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1317
    :try_start_8
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemRunning()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 1322
    :cond_7
    :goto_8
    :try_start_9
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer$2;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 1327
    :cond_8
    :goto_9
    :try_start_a
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 1332
    :cond_9
    :goto_a
    :try_start_b
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v1}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 1337
    :cond_a
    :goto_b
    :try_start_c
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v1}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 1342
    :cond_b
    :goto_c
    :try_start_d
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v1, :cond_c

    .line 1343
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v1}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 1349
    :cond_c
    :goto_d
    :try_start_e
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v1, :cond_d

    .line 1350
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 1355
    :cond_d
    :goto_e
    :try_start_f
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v1}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 1361
    :cond_e
    :goto_f
    :try_start_10
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    .line 1366
    :cond_f
    :goto_10
    :try_start_11
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 1371
    :cond_10
    :goto_11
    :try_start_12
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    .line 1377
    :cond_11
    :goto_12
    :try_start_13
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v1}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    .line 1385
    :cond_12
    :goto_13
    :try_start_14
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$themeServiceF:Lcom/android/server/ThemeService;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$themeServiceF:Lcom/android/server/ThemeService;

    invoke-virtual {v1}, Lcom/android/server/ThemeService;->systemRunning()V

    .line 1386
    :cond_13
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Landroid/content/res/ThemeConfig;->getBootTheme(Landroid/content/ContentResolver;)Landroid/content/res/ThemeConfig;

    move-result-object v8

    .line 1388
    .local v8, "themeConfig":Landroid/content/res/ThemeConfig;
    invoke-virtual {v8}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v7

    .line 1389
    .local v7, "iconPkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v1}, Lcom/android/server/SystemServer;->access$400(Lcom/android/server/SystemServer;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageManagerService;->updateIconMapping(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    .line 1394
    .end local v7    # "iconPkg":Ljava/lang/String;
    .end local v8    # "themeConfig":Landroid/content/res/ThemeConfig;
    :goto_14
    return-void

    .line 1267
    :catch_0
    move-exception v6

    .line 1268
    .local v6, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "observing native crashes"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1276
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 1277
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "starting System UI"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1281
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v6

    .line 1282
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making Network Score Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1286
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v6

    .line 1287
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making Network Managment Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1291
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    .line 1292
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making Network Stats Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1296
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v6

    .line 1297
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making Network Policy Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1301
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v6

    .line 1302
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making Connectivity Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1306
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v6

    .line 1307
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying AudioService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1318
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v6

    .line 1319
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying WallpaperService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1323
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v6

    .line 1324
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying InputMethodService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1328
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v6

    .line 1329
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying Location Service running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 1333
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v6

    .line 1334
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying CountryDetectorService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1338
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v6

    .line 1339
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying NetworkTimeService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 1345
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v6

    .line 1346
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying CommonTimeManagementService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 1351
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v6

    .line 1352
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying TextServicesManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 1356
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v6

    .line 1357
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying AssetAtlasService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 1362
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v6

    .line 1363
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying InputManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 1367
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v6

    .line 1368
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying TelephonyRegistry running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 1372
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v6

    .line 1373
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying MediaRouterService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 1378
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v6

    .line 1379
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying MmsService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 1390
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v6

    .line 1391
    .restart local v6    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Icon Mapping failed"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v6}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14
.end method