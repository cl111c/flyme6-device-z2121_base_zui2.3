.class public Lcom/android/server/NetPluginDelegate;
.super Ljava/lang/Object;
.source "NetPluginDelegate.java"


# static fields
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnectivityExtension"

.field private static tetherExtensionClass:Ljava/lang/Class;

.field private static tetherExtensionObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    .line 48
    sput-object v0, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTetherStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .locals 6
    .param p0, "uidStats"    # Landroid/net/NetworkStats;
    .param p1, "devStats"    # Landroid/net/NetworkStats;
    .param p2, "xtStats"    # Landroid/net/NetworkStats;

    .prologue
    .line 53
    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadTetherExtJar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 55
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string v2, "getTetherStats"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/net/NetworkStats;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/net/NetworkStats;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/net/NetworkStats;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const-string v1, "ConnectivityExtension"

    const-string v2, "error in invoke method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadTetherExtJar()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 91
    const-string v3, "com.qualcomm.qti.tetherstatsextension.TetherStatsReporting"

    .line 92
    .local v3, "realProvider":Ljava/lang/String;
    const-string v4, "/system/framework/ConnectivityExt.jar"

    .line 94
    .local v4, "realProviderPath":Ljava/lang/String;
    sget-object v7, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v5

    .line 98
    :cond_1
    new-instance v7, Ljava/io/File;

    const-string v8, "/system/framework/ConnectivityExt.jar"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    .line 99
    .local v2, "pathExists":Z
    if-nez v2, :cond_2

    .line 100
    const-string v5, "ConnectivityExtension"

    const-string v7, "ConnectivityExt jar file not present"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 101
    goto :goto_0

    .line 104
    :cond_2
    sget-object v7, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    if-nez v7, :cond_0

    .line 107
    :try_start_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/ConnectivityExt.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 110
    .local v0, "classLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.qualcomm.qti.tetherstatsextension.TetherStatsReporting"

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    .line 111
    sget-object v7, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    sput-object v7, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v0    # "classLoader":Ldalvik/system/PathClassLoader;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const-string v5, "ConnectivityExtension"

    const-string v7, "unable to load ConnectivityExt jar"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 117
    goto :goto_0
.end method

.method public static setQuota(Ljava/lang/String;J)V
    .locals 7
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "quota"    # J

    .prologue
    .line 67
    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadTetherExtJar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string v2, "setQuota"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ConnectivityExtension"

    const-string v2, "Error calling setQuota Method on extension jar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUpstream(Landroid/net/Network;)V
    .locals 6
    .param p0, "net"    # Landroid/net/Network;

    .prologue
    .line 79
    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadTetherExtJar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string v2, "setUpstream"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/net/Network;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ConnectivityExtension"

    const-string v2, "Error calling setUpstream Method on extension jar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
