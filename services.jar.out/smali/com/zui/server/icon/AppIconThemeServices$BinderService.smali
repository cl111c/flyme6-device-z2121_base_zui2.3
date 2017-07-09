.class public Lcom/zui/server/icon/AppIconThemeServices$BinderService;
.super Lzui/icon/IAppIconThemeService$Stub;
.source "AppIconThemeServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/icon/AppIconThemeServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinderService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;
    }
.end annotation


# instance fields
.field private final MIN_CP_THEME_TIME:I

.field private final MSG_DELAY_TIME:I

.field private final MSG_PARSE_THEME:I

.field private final MSG_SWITCH_THEME:I

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconMapLock:Ljava/lang/Object;

.field private mIsReady:Z

.field private mIsReadyLock:Ljava/lang/Object;

.field private mIsSwitching:Z

.field private mPath:Ljava/lang/String;

.field private final mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeStamp:J

.field private mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

.field private mZipFileLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/zui/server/icon/AppIconThemeServices;


# direct methods
.method public constructor <init>(Lcom/zui/server/icon/AppIconThemeServices;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 119
    iput-object p1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->this$0:Lcom/zui/server/icon/AppIconThemeServices;

    invoke-direct {p0}, Lzui/icon/IAppIconThemeService$Stub;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIsReadyLock:Ljava/lang/Object;

    .line 73
    iput-boolean v2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIsReady:Z

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIconMap:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIconMapLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFileLock:Ljava/lang/Object;

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mTimeStamp:J

    .line 84
    const/16 v0, 0x2710

    iput v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->MSG_SWITCH_THEME:I

    .line 85
    const/16 v0, 0x2711

    iput v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->MSG_PARSE_THEME:I

    .line 86
    const/16 v0, 0xc8

    iput v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->MSG_DELAY_TIME:I

    .line 87
    const/16 v0, 0x12c

    iput v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->MIN_CP_THEME_TIME:I

    .line 88
    iput-boolean v2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIsSwitching:Z

    .line 89
    new-instance v0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$1;

    invoke-direct {v0, p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService$1;-><init>(Lcom/zui/server/icon/AppIconThemeServices$BinderService;)V

    iput-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mHandler:Landroid/os/Handler;

    .line 328
    new-instance v0, Lcom/zui/server/icon/AppIconThemeServices$BinderService$3;

    invoke-direct {v0, p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService$3;-><init>(Lcom/zui/server/icon/AppIconThemeServices$BinderService;)V

    iput-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    iput-object p2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mContext:Landroid/content/Context;

    .line 122
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/server/icon/AppIconThemeServices$BinderService$2;

    invoke-direct {v1, p0, p1}, Lcom/zui/server/icon/AppIconThemeServices$BinderService$2;-><init>(Lcom/zui/server/icon/AppIconThemeServices$BinderService;Lcom/zui/server/icon/AppIconThemeServices;)V

    const-string v2, "preWork"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/zui/server/icon/AppIconThemeServices$BinderService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/icon/AppIconThemeServices$BinderService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->handleThemeChange(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/server/icon/AppIconThemeServices$BinderService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/icon/AppIconThemeServices$BinderService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->postMessage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/server/icon/AppIconThemeServices$BinderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->parseIconMapFile()V

    return-void
.end method

.method static synthetic access$402(Lcom/zui/server/icon/AppIconThemeServices$BinderService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/icon/AppIconThemeServices$BinderService;
    .param p1, "x1"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/zui/server/icon/AppIconThemeServices$BinderService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/icon/AppIconThemeServices$BinderService;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->setIsReadyState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/zui/server/icon/AppIconThemeServices$BinderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->sendSwitchCompleted()V

    return-void
.end method

.method private getCopyDelayTime(Ljava/lang/String;)J
    .locals 10
    .param p1, "themePath"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 361
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "file":Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 363
    .local v2, "size":D
    const-wide/16 v4, 0x12c

    .line 365
    .local v4, "time":J
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v8

    div-double v2, v6, v8

    .line 369
    :cond_0
    double-to-long v6, v2

    mul-long/2addr v6, v4

    add-long/2addr v4, v6

    .line 371
    const-wide/16 v6, 0xbb8

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 372
    const-wide/16 v4, 0xbb8

    .line 375
    :cond_1
    return-wide v4
.end method

.method private final getIconsFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 505
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/icons.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "iconsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    .end local v0    # "iconsFile":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "iconsFile":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getMapFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIconMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIconMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    .local v0, "newName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 162
    monitor-exit v2

    .line 167
    .end local v0    # "newName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "newName":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    move-object v0, p1

    goto :goto_0

    .line 168
    .end local v0    # "newName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getThemeFileInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "inPackageName"    # Ljava/lang/String;
    .param p2, "inResoucePath"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v12, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v12

    .line 245
    :try_start_0
    iget-object v11, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    if-nez v11, :cond_0

    .line 246
    const/4 v11, 0x0

    monitor-exit v12

    .line 319
    :goto_0
    return-object v11

    .line 248
    :cond_0
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 251
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 266
    :cond_2
    :try_start_2
    const-string v11, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v6, v11, 0x1

    .line 267
    .local v6, "indexSplit":I
    const/4 v11, -0x1

    if-ne v6, v11, :cond_3

    .line 268
    const/4 v11, 0x0

    goto :goto_0

    .line 270
    :cond_3
    new-instance v8, Ljava/lang/StringBuffer;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 272
    .local v8, "nameBuf":Ljava/lang/StringBuffer;
    const-string v11, "."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 273
    const/4 v11, -0x1

    if-ne v6, v11, :cond_4

    .line 274
    const/4 v11, 0x0

    goto :goto_0

    .line 277
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const-string v12, ""

    invoke-virtual {v8, v6, v11, v12}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "."

    const-string v14, "_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "__"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "fileName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->getMapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    const/4 v9, 0x0

    .line 283
    .local v9, "outDensity":I
    const/4 v10, 0x0

    .line 284
    .local v10, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v4, 0x0

    .line 285
    .local v4, "filePath":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    # getter for: Lcom/zui/server/icon/AppIconThemeServices;->sOptimalDensities:[I
    invoke-static {}, Lcom/zui/server/icon/AppIconThemeServices;->access$200()[I

    move-result-object v11

    array-length v11, v11

    if-ge v5, v11, :cond_7

    .line 286
    # getter for: Lcom/zui/server/icon/AppIconThemeServices;->sOptimalDensities:[I
    invoke-static {}, Lcom/zui/server/icon/AppIconThemeServices;->access$200()[I

    move-result-object v11

    aget v11, v11, v5

    invoke-static {v11}, Lcom/zui/server/icon/ThemeDensityUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "densitySuffix":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "res/drawable"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, "name":Ljava/lang/String;
    iget-object v12, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 291
    :try_start_3
    iget-object v11, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    if-nez v11, :cond_6

    .line 292
    const/4 v11, 0x0

    monitor-exit v12

    goto/16 :goto_0

    .line 295
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 316
    .end local v1    # "densitySuffix":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "indexSplit":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "nameBuf":Ljava/lang/StringBuffer;
    .end local v9    # "outDensity":I
    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 294
    .restart local v1    # "densitySuffix":Ljava/lang/String;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "filePath":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "indexSplit":I
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "nameBuf":Ljava/lang/StringBuffer;
    .restart local v9    # "outDensity":I
    .restart local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_6
    :try_start_5
    iget-object v11, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    invoke-virtual {v11, v7}, Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    .line 295
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 296
    if-eqz v10, :cond_8

    .line 297
    move-object v4, v7

    .line 298
    :try_start_6
    # getter for: Lcom/zui/server/icon/AppIconThemeServices;->sOptimalDensities:[I
    invoke-static {}, Lcom/zui/server/icon/AppIconThemeServices;->access$200()[I

    move-result-object v11

    aget v9, v11, v5

    .line 313
    .end local v1    # "densitySuffix":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_7
    if-eqz v4, :cond_5

    .line 314
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v11

    goto/16 :goto_0

    .line 285
    .restart local v1    # "densitySuffix":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private getThemePathFromSetting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getThemeZipFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 529
    const/4 v1, 0x0

    .line 530
    .local v1, "zipFile":Ljava/io/File;
    invoke-direct {p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->getThemePathFromSetting()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 532
    new-instance v1, Ljava/io/File;

    .end local v1    # "zipFile":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .restart local v1    # "zipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 545
    :cond_0
    :goto_0
    return-object v2

    .line 537
    :cond_1
    invoke-direct {p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->parseXuiThemeConfig()Ljava/lang/String;

    move-result-object v0

    .line 538
    if-eqz v0, :cond_0

    .line 541
    new-instance v1, Ljava/io/File;

    .end local v1    # "zipFile":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .restart local v1    # "zipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 543
    goto :goto_0
.end method

.method private final getXuiThemeConfigFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 517
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/xui_theme_config.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleThemeChange(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "themeChange"    # Z

    .prologue
    .line 404
    const/4 v1, 0x0

    .line 405
    .local v1, "mIsChangeSuccess":Z
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->setIsReadyState(Z)V

    .line 406
    iget-object v4, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v4

    .line 408
    :try_start_0
    iget-object v3, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    if-eqz v3, :cond_0

    .line 409
    iget-object v3, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    invoke-virtual {v3}, Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    .line 415
    const/4 v2, 0x0

    .line 416
    .local v2, "ziPath":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 418
    const-string v2, "/data/xuitheme.zip"

    .line 423
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 424
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mPath:Ljava/lang/String;

    .line 435
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    if-eqz v1, :cond_1

    .line 437
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/zui/server/icon/AppIconThemeServices$BinderService$4;

    invoke-direct {v4, p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService$4;-><init>(Lcom/zui/server/icon/AppIconThemeServices$BinderService;)V

    const-string v5, "parseIconMapFile"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 447
    :cond_1
    return-void

    .line 420
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->getThemeZipFilePath()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 427
    :cond_3
    :try_start_3
    iput-object v2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mPath:Ljava/lang/String;

    .line 428
    new-instance v3, Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0, v5}, Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;-><init>(Lcom/zui/server/icon/AppIconThemeServices$BinderService;Ljava/io/File;)V

    iput-object v3, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 429
    const/4 v1, 0x1

    goto :goto_2

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 435
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ziPath":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 411
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private isReady()Z
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIsReadyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIsReady:Z

    monitor-exit v1

    return v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private killLauncher()V
    .locals 3

    .prologue
    .line 463
    iget-object v1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 465
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v1, "com.xui.launcher"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method private final parseIconMapFile()V
    .locals 17

    .prologue
    .line 565
    const/4 v2, 0x0

    .line 566
    .local v2, "fileInputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v14

    .line 567
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    if-nez v13, :cond_1

    .line 568
    monitor-exit v14

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    const-string v15, "res/xml/icons.xml"

    invoke-virtual {v13, v15}, Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 571
    .local v12, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v12, :cond_2

    .line 573
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    invoke-virtual {v13, v12}, Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 574
    const-string v13, "AppIconThemeServices"

    const-string v15, "parseIconMapFile"

    const-string v16, "get icons.xml from zipFile"

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    .line 581
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .local v3, "fileInputStream":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 582
    if-nez v3, :cond_b

    .line 583
    invoke-direct/range {p0 .. p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->getIconsFile()Ljava/io/File;

    move-result-object v5

    .line 584
    .local v5, "iconsFile":Ljava/io/File;
    if-nez v5, :cond_3

    move-object v2, v3

    .line 585
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 577
    .end local v5    # "iconsFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v3, v2

    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 581
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .end local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v13

    :goto_2
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13

    .line 588
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v5    # "iconsFile":Ljava/io/File;
    .restart local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 589
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    :try_start_5
    const-string v13, "AppIconThemeServices"

    const-string v14, "parseIconMapFile"

    const-string v15, "get icons.xml from /system/etc/icons.xml"

    invoke-static {v13, v14, v15}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 596
    .end local v5    # "iconsFile":Ljava/io/File;
    :goto_3
    if-eqz v2, :cond_0

    .line 599
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 600
    .local v4, "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 602
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v13, 0x0

    :try_start_6
    invoke-interface {v8, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 605
    :cond_4
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v13, 0x2

    if-eq v11, v13, :cond_5

    const/4 v13, 0x1

    if-ne v11, v13, :cond_4

    .line 609
    :cond_5
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 611
    .local v7, "outerDepth":I
    :cond_6
    :goto_4
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_9

    const/4 v13, 0x3

    if-ne v11, v13, :cond_7

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v7, :cond_9

    .line 613
    :cond_7
    const/4 v13, 0x3

    if-eq v11, v13, :cond_6

    const/4 v13, 0x4

    if-eq v11, v13, :cond_6

    .line 618
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 620
    .local v9, "tagName":Ljava/lang/String;
    const-string v13, "drawable"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 621
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v8, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 622
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 623
    const/4 v13, 0x4

    if-ne v11, v13, :cond_6

    .line 624
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 625
    .local v10, "text":Ljava/lang/String;
    if-eqz v10, :cond_6

    const-string v13, "@drawable/"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 626
    const/16 v13, 0xa

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 632
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "outerDepth":I
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_1
    move-exception v1

    .line 633
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 635
    if-eqz v2, :cond_8

    .line 637
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 643
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->updateThemesMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 592
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .end local v4    # "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v5    # "iconsFile":Ljava/io/File;
    :catch_2
    move-exception v1

    move-object v2, v3

    .line 593
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 635
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "iconsFile":Ljava/io/File;
    .restart local v4    # "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "outerDepth":I
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "type":I
    :cond_9
    if-eqz v2, :cond_8

    .line 637
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    .line 638
    :catch_3
    move-exception v1

    .line 639
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 638
    .end local v7    # "outerDepth":I
    .end local v11    # "type":I
    .local v1, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 639
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 635
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    if-eqz v2, :cond_a

    .line 637
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 640
    :cond_a
    :goto_7
    throw v13

    .line 638
    :catch_5
    move-exception v1

    .line 639
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 592
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "iconsFile":Ljava/io/File;
    :catch_6
    move-exception v1

    goto :goto_6

    .line 581
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .end local v5    # "iconsFile":Ljava/io/File;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v13

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :cond_b
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method private parseXuiThemeConfig()Ljava/lang/String;
    .locals 13

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->getXuiThemeConfigFile()Ljava/io/File;

    move-result-object v4

    .line 648
    .local v4, "inFile":Ljava/io/File;
    if-nez v4, :cond_1

    .line 649
    const/4 v8, 0x0

    .line 699
    :cond_0
    :goto_0
    return-object v8

    .line 652
    :cond_1
    const/4 v2, 0x0

    .line 653
    .local v2, "fileInputStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 655
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .local v3, "fileInputStream":Ljava/io/InputStream;
    const/4 v11, 0x0

    :try_start_1
    invoke-interface {v7, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 660
    :cond_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 664
    :cond_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 666
    .local v6, "outerDepth":I
    :cond_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v6, :cond_6

    .line 668
    :cond_5
    const/4 v11, 0x3

    if-eq v10, v11, :cond_4

    const/4 v11, 0x4

    if-eq v10, v11, :cond_4

    .line 673
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 675
    .local v9, "tagName":Ljava/lang/String;
    const-string v11, "category"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 676
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 677
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_4

    const-string v11, "launcher"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 678
    const/4 v11, 0x0

    const-string v12, "file"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 680
    .local v8, "path":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "defResId"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "defResId":Ljava/lang/String;
    invoke-direct {p0, v8, v0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->setThemeValueToSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 691
    if-eqz v3, :cond_0

    .line 693
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 694
    :catch_0
    move-exception v1

    .line 695
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 691
    .end local v0    # "defResId":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_9

    .line 693
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 699
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .end local v6    # "outerDepth":I
    .end local v10    # "type":I
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    :cond_7
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 694
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v6    # "outerDepth":I
    .restart local v10    # "type":I
    :catch_1
    move-exception v1

    .line 695
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 696
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 688
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "outerDepth":I
    .end local v10    # "type":I
    :catch_2
    move-exception v11

    .line 691
    :goto_2
    if-eqz v2, :cond_7

    .line 693
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 694
    :catch_3
    move-exception v1

    .line 695
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 691
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_3
    if-eqz v2, :cond_8

    .line 693
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 696
    :cond_8
    :goto_4
    throw v11

    .line 694
    :catch_4
    move-exception v1

    .line 695
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 691
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 688
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v11

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_2

    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v6    # "outerDepth":I
    .restart local v10    # "type":I
    :cond_9
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private postMessage(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "themeChange"    # Z

    .prologue
    const/16 v5, 0x2710

    .line 379
    const-wide/16 v2, 0x0

    .line 382
    .local v2, "delayTime":J
    iget-object v4, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    iget-boolean v4, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIsSwitching:Z

    if-eqz v4, :cond_0

    .line 384
    const-wide/16 v2, 0xc8

    .line 385
    iget-object v4, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 395
    .local v1, "m":Landroid/os/Message;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 396
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "path"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v4, "change"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 398
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 399
    iget-object v4, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 400
    return-void

    .line 387
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIsSwitching:Z

    .line 388
    invoke-direct {p0, p2}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->startThemeChangeService(Z)V

    .line 389
    if-eqz p2, :cond_1

    .line 390
    invoke-direct {p0, p1}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->getCopyDelayTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 392
    :cond_1
    iget-object v4, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x2711

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "m":Landroid/os/Message;
    goto :goto_0
.end method

.method private registerThemeChangedReceiver()V
    .locals 3

    .prologue
    .line 323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.xui.launcher.CHANGETHEME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    return-void
.end method

.method private sendSwitchCompleted()V
    .locals 1

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->killLauncher()V

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIsSwitching:Z

    .line 460
    return-void
.end method

.method private setIsReadyState(Z)V
    .locals 2
    .param p1, "isReady"    # Z

    .prologue
    .line 134
    iget-object v1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIsReadyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iput-boolean p1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIsReady:Z

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setThemeValueToSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 559
    iget-object v1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 560
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "XUI_LAUNCHER_THEME_PATH"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 561
    const-string v1, "XUI_LAUNCHER_THEME_ID"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 562
    return-void
.end method

.method private startThemeChangeService(Z)V
    .locals 2
    .param p1, "start"    # Z

    .prologue
    .line 353
    if-eqz p1, :cond_0

    .line 354
    const-string v0, "ctl.start"

    const-string v1, "cpthemeicon"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    const-string v0, "ctl.stop"

    const-string v1, "cpthemeicon"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final updateThemesMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIconMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIconMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    iget-object v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mIconMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 155
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getThemeIconInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "inPackageName"    # Ljava/lang/String;
    .param p2, "inResoucePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 178
    const-string v2, "AppIconThemeServices"

    const-string v3, "getThemeIconInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-object v1

    .line 183
    :cond_1
    if-eqz p1, :cond_2

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 186
    :cond_2
    if-eqz p2, :cond_3

    .line 187
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 189
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->getThemeFileInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeIconInfoByFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 201
    const-string v9, "AppIconThemeServices"

    const-string v10, "getThemeIconInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fileName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->isReady()Z

    move-result v9

    if-nez v9, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object v8

    .line 206
    :cond_1
    const/4 v6, 0x0

    .line 208
    .local v6, "path":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->getMapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 209
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 210
    const/4 v5, 0x0

    .line 211
    .local v5, "outDensity":I
    const/4 v7, 0x0

    .line 212
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v2, 0x0

    .line 213
    .local v2, "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    # getter for: Lcom/zui/server/icon/AppIconThemeServices;->sOptimalDensities:[I
    invoke-static {}, Lcom/zui/server/icon/AppIconThemeServices;->access$200()[I

    move-result-object v9

    array-length v9, v9

    if-ge v3, v9, :cond_2

    .line 214
    # getter for: Lcom/zui/server/icon/AppIconThemeServices;->sOptimalDensities:[I
    invoke-static {}, Lcom/zui/server/icon/AppIconThemeServices;->access$200()[I

    move-result-object v9

    aget v9, v9, v3

    invoke-static {v9}, Lcom/zui/server/icon/ThemeDensityUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "densitySuffix":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "res/drawable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :try_start_1
    iget-object v9, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    if-nez v9, :cond_3

    .line 220
    monitor-exit v10

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 230
    .end local v0    # "densitySuffix":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "outDensity":I
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 222
    .restart local v0    # "densitySuffix":Ljava/lang/String;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "outDensity":I
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    :try_start_3
    iget-object v9, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    invoke-virtual {v9, v4}, Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 223
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    if-eqz v7, :cond_4

    .line 225
    :try_start_4
    # getter for: Lcom/zui/server/icon/AppIconThemeServices;->sOptimalDensities:[I
    invoke-static {}, Lcom/zui/server/icon/AppIconThemeServices;->access$200()[I

    move-result-object v9

    aget v5, v9, v3

    .line 226
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v6

    .line 227
    goto :goto_2

    .line 213
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 498
    iget-wide v0, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mTimeStamp:J

    return-wide v0
.end method

.method public openIconResource()V
    .locals 6

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->getThemeZipFilePath()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "ziPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    :goto_0
    return-void

    .line 474
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->setIsReadyState(Z)V

    .line 475
    iput-object v1, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mPath:Ljava/lang/String;

    .line 477
    :try_start_0
    iget-object v3, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :try_start_1
    iget-object v2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    if-eqz v2, :cond_1

    .line 479
    iget-object v2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    invoke-virtual {v2}, Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;->close()V

    .line 480
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    .line 482
    :cond_1
    new-instance v2, Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p0, v4}, Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;-><init>(Lcom/zui/server/icon/AppIconThemeServices$BinderService;Ljava/io/File;)V

    iput-object v2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mZipFile:Lcom/zui/server/icon/AppIconThemeServices$BinderService$MyZipFile;

    .line 483
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    :goto_1
    invoke-direct {p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->parseIconMapFile()V

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->mTimeStamp:J

    .line 489
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->setIsReadyState(Z)V

    .line 490
    invoke-direct {p0}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;->registerThemeChangedReceiver()V

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
