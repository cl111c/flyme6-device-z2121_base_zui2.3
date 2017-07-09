.class public final Lcom/android/server/XuiSystemServer;
.super Ljava/lang/Object;
.source "XuiSystemServer.java"


# static fields
.field static final CHECK_DELAY:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "XuiSystemServer"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field final mWriteRunner:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lcom/android/server/XuiSystemServer$1;

    invoke-direct {v0, p0}, Lcom/android/server/XuiSystemServer$1;-><init>(Lcom/android/server/XuiSystemServer;)V

    iput-object v0, p0, Lcom/android/server/XuiSystemServer;->mWriteRunner:Ljava/lang/Runnable;

    .line 23
    const-string v0, "XuiSystemServer"

    const-string v1, "XuiSystemServer instantiated !"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/XuiSystemServer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/XuiSystemServer;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/server/XuiSystemServer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method getCharingCapacity()I
    .locals 8

    .prologue
    .line 104
    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 105
    .local v0, "batteryCapacity":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v3, "file":Ljava/io/File;
    const-string v4, ""

    .line 108
    .local v4, "strCapacity":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v3, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    const-string v5, "XuiSystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCharingCapacity len "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 114
    :goto_0
    const/4 v1, 0x0

    .line 116
    .local v1, "capacity":I
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 120
    :goto_1
    const-string v5, "XuiSystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isChargingFull capacity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v1

    .line 111
    .end local v1    # "capacity":I
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "XuiSystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCharingCapacity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "capacity":I
    :catch_1
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v5, "XuiSystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCharingCapacity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method isCharging()Z
    .locals 10

    .prologue
    .line 57
    const-string v0, "/sys/class/power_supply/ac/online"

    .line 58
    .local v0, "AC_ONLINE":Ljava/lang/String;
    const-string v1, "/sys/class/power_supply/usb/online"

    .line 61
    .local v1, "USB_ONLINE":Ljava/lang/String;
    const/4 v5, 0x0

    .line 62
    .local v5, "isAcOnline":I
    const/4 v6, 0x0

    .line 64
    .local v6, "isUsbOnline":I
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .local v3, "inAc":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    add-int/lit8 v5, v7, -0x30

    .line 68
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    .end local v3    # "inAc":Ljava/io/FileReader;
    :goto_0
    :try_start_3
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 78
    .local v4, "inUsb":Ljava/io/FileReader;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->read()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    add-int/lit8 v6, v7, -0x30

    .line 80
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 88
    .end local v4    # "inUsb":Ljava/io/FileReader;
    :goto_1
    const-string v7, "XuiSystemServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCharging state isAcOnline "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isUsbOnline "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    add-int v7, v5, v6

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_2
    return v7

    .line 68
    .restart local v3    # "inAc":Ljava/io/FileReader;
    :catchall_0
    move-exception v7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    throw v7
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 70
    .end local v3    # "inAc":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v7, "XuiSystemServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCharging state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 73
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "XuiSystemServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCharging state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "inUsb":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    throw v7
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 82
    .end local v4    # "inUsb":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .line 83
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v7, "XuiSystemServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCharging state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 84
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 85
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "XuiSystemServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCharging state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 89
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v7, 0x0

    goto :goto_2
.end method

.method isLedEnable()Z
    .locals 3

    .prologue
    .line 93
    const-string v1, "persist.sys.leds.enabled"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "XuiSystemServer"

    const-string v2, "isLedEnable enable true "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x1

    .line 99
    :goto_0
    return v1

    .line 98
    :cond_0
    const-string v1, "XuiSystemServer"

    const-string v2, "isLedEnable enable false "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method

.method showChargingLight()V
    .locals 6

    .prologue
    .line 125
    const-string v1, "/sys/class/leds/led:rgb_red/brightness"

    .line 126
    .local v1, "ZUK_RED_LED_FILE":Ljava/lang/String;
    const-string v0, "/sys/class/leds/led:rgb_green/brightness"

    .line 127
    .local v0, "ZUK_GREEN_LED_FILE":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/XuiSystemServer;->getCharingCapacity()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_0

    .line 129
    :try_start_0
    const-string v3, "30"

    invoke-static {v1, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v3, "XuiSystemServer"

    const-string v4, "showChargingLight red light"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "XuiSystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showChargingLight red light "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v3, "30"

    invoke-static {v0, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v3, "XuiSystemServer"

    const-string v4, "showChargingLight green light"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 139
    :catch_1
    move-exception v2

    .line 140
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "XuiSystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showChargingLight green light "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startLeds()V
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/server/XuiSystemServer;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/XuiSystemServer;->isLedEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/XuiSystemServer;->showChargingLight()V

    .line 49
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XuiSystemServer"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/XuiSystemServer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    iget-object v0, p0, Lcom/android/server/XuiSystemServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/XuiSystemServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/XuiSystemServer;->mHandler:Landroid/os/Handler;

    .line 53
    iget-object v0, p0, Lcom/android/server/XuiSystemServer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/XuiSystemServer;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    return-void
.end method

.method public startPowerOffCharging()V
    .locals 5

    .prologue
    .line 27
    const-string v3, "XuiSystemServer"

    const-string v4, "XuiSystemServer startPowerOffCharging !"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v3, "ro.boot.mode"

    const-string v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "kBootMode":Ljava/lang/String;
    const-string v3, "sys.boot.mode"

    const-string v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "sysBootMode":Ljava/lang/String;
    const/4 v1, -0x1

    .line 31
    .local v1, "sBootMode":I
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    move-object v0, v2

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    const-string v3, "usb_chg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "dc_chg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    :cond_1
    const/4 v1, 0x1

    .line 38
    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 39
    invoke-virtual {p0}, Lcom/android/server/XuiSystemServer;->startLeds()V

    .line 40
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 43
    :cond_3
    return-void
.end method
