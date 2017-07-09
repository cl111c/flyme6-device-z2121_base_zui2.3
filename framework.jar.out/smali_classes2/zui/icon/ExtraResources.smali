.class public Lzui/icon/ExtraResources;
.super Ljava/lang/Object;
.source "ExtraResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/icon/ExtraResources$ResourceName;
    }
.end annotation


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "ExtraResources"

.field private static SPLIT:Ljava/lang/String;

.field private static final THEME_ICON_BG_NAME:[Ljava/lang/String;

.field private static mAppIconThemeService:Lzui/icon/IAppIconThemeService;

.field private static mAppIconThemeServiceLock:Ljava/lang/Object;

.field private static mThemeBgBitmap:[Landroid/graphics/Bitmap;

.field private static mTimeStamp:J

.field private static mZipFile:Ljava/util/zip/ZipFile;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static sIconCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lzui/icon/ExtraResources$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIconHeight:I

.field private static final sIconPaint:Landroid/graphics/Paint;

.field private static sIconSHeight:I

.field private static sIconSWidth:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzui/icon/ExtraResources;->mAppIconThemeServiceLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lzui/icon/ExtraResources;->sCanvas:Landroid/graphics/Canvas;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lzui/icon/ExtraResources;->sOldBounds:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lzui/icon/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    aput-object v3, v0, v4

    aput-object v3, v0, v5

    aput-object v3, v0, v6

    sput-object v0, Lzui/icon/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "theme_appbg"

    aput-object v1, v0, v4

    const-string v1, "theme_appfg"

    aput-object v1, v0, v5

    const-string v1, "theme_appmask"

    aput-object v1, v0, v6

    sput-object v0, Lzui/icon/ExtraResources;->THEME_ICON_BG_NAME:[Ljava/lang/String;

    .line 49
    sput v2, Lzui/icon/ExtraResources;->sIconWidth:I

    .line 50
    sput v2, Lzui/icon/ExtraResources;->sIconHeight:I

    .line 51
    sput v2, Lzui/icon/ExtraResources;->sIconSWidth:I

    .line 52
    sput v2, Lzui/icon/ExtraResources;->sIconSHeight:I

    .line 53
    const-wide/16 v0, -0x1

    sput-wide v0, Lzui/icon/ExtraResources;->mTimeStamp:J

    .line 54
    const-string v0, ";"

    sput-object v0, Lzui/icon/ExtraResources;->SPLIT:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lzui/icon/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    .line 143
    sput-object v3, Lzui/icon/ExtraResources;->mZipFile:Ljava/util/zip/ZipFile;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    return-void
.end method

.method private static checkThemeChange()V
    .locals 6

    .prologue
    .line 203
    sget-object v4, Lzui/icon/ExtraResources;->mAppIconThemeService:Lzui/icon/IAppIconThemeService;

    if-nez v4, :cond_1

    .line 221
    .local v2, "timeStamp":J
    :cond_0
    :goto_0
    return-void

    .line 207
    .end local v2    # "timeStamp":J
    :cond_1
    :try_start_0
    sget-object v4, Lzui/icon/ExtraResources;->mAppIconThemeService:Lzui/icon/IAppIconThemeService;

    invoke-interface {v4}, Lzui/icon/IAppIconThemeService;->getTimeStamp()J

    move-result-wide v2

    .line 208
    .restart local v2    # "timeStamp":J
    sget-wide v4, Lzui/icon/ExtraResources;->mTimeStamp:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Lzui/icon/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 210
    sget-object v4, Lzui/icon/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 211
    sget-object v4, Lzui/icon/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    sget-object v4, Lzui/icon/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 209
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    :cond_3
    invoke-static {}, Lzui/icon/ExtraResources;->cleanCachedIcon()V

    .line 216
    sput-wide v2, Lzui/icon/ExtraResources;->mTimeStamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static cleanCachedIcon()V
    .locals 2

    .prologue
    .line 470
    sget-object v1, Lzui/icon/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 471
    :try_start_0
    sget-object v0, Lzui/icon/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 472
    monitor-exit v1

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static creatThemeIconBgBitmapIfNeed()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 145
    sget-object v11, Lzui/icon/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    if-eqz v11, :cond_1

    sget-object v11, Lzui/icon/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v11, v11, v12

    if-eqz v11, :cond_1

    .line 200
    .local v1, "i":I
    .local v9, "success":Z
    :cond_0
    :goto_0
    return-void

    .line 148
    .end local v1    # "i":I
    .end local v9    # "success":Z
    :cond_1
    const/4 v9, 0x1

    .line 149
    .restart local v9    # "success":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v11, Lzui/icon/ExtraResources;->THEME_ICON_BG_NAME:[Ljava/lang/String;

    array-length v11, v11

    if-ge v1, v11, :cond_0

    .line 150
    sget-object v11, Lzui/icon/ExtraResources;->THEME_ICON_BG_NAME:[Ljava/lang/String;

    aget-object v3, v11, v1

    .line 151
    .local v3, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 152
    .local v8, "result":Ljava/lang/String;
    sget-object v11, Lzui/icon/ExtraResources;->THEME_ICON_BG_NAME:[Ljava/lang/String;

    aget-object v8, v11, v1

    .line 155
    :try_start_0
    sget-object v11, Lzui/icon/ExtraResources;->mAppIconThemeService:Lzui/icon/IAppIconThemeService;

    invoke-interface {v11, v3}, Lzui/icon/IAppIconThemeService;->getThemeIconInfoByFileName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 162
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 163
    sget-object v11, Lzui/icon/ExtraResources;->SPLIT:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "out":[Ljava/lang/String;
    array-length v11, v4

    const/4 v12, 0x3

    if-eq v11, v12, :cond_2

    .line 165
    const/4 v9, 0x0

    .line 166
    goto :goto_0

    .line 156
    .end local v4    # "out":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    const/4 v9, 0x0

    .line 159
    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "out":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 171
    .local v2, "ins":Ljava/io/InputStream;
    const/4 v11, 0x0

    :try_start_1
    aget-object v7, v4, v11

    .line 172
    .local v7, "outZipPath":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v6, v4, v11

    .line 173
    .local v6, "outFilePath":Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 174
    .local v5, "outDensity":I
    sget-object v11, Lzui/icon/ExtraResources;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v11, :cond_3

    .line 175
    new-instance v11, Ljava/util/zip/ZipFile;

    invoke-direct {v11, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    sput-object v11, Lzui/icon/ExtraResources;->mZipFile:Ljava/util/zip/ZipFile;

    .line 177
    :cond_3
    sget-object v11, Lzui/icon/ExtraResources;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v11, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    .line 178
    .local v10, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v10, :cond_4

    .line 179
    sget-object v11, Lzui/icon/ExtraResources;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v11, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 180
    sget-object v11, Lzui/icon/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v12

    aput-object v12, v11, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :cond_4
    if-eqz v2, :cond_5

    .line 189
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 149
    .end local v2    # "ins":Ljava/io/InputStream;
    .end local v4    # "out":[Ljava/lang/String;
    .end local v5    # "outDensity":I
    .end local v6    # "outFilePath":Ljava/lang/String;
    .end local v7    # "outZipPath":Ljava/lang/String;
    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    .restart local v2    # "ins":Ljava/io/InputStream;
    .restart local v4    # "out":[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 183
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    const/4 v9, 0x0

    .line 188
    if-eqz v2, :cond_0

    .line 189
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 190
    :catch_2
    move-exception v11

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 188
    if-eqz v2, :cond_6

    .line 189
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 196
    :cond_6
    :goto_3
    throw v11

    .line 190
    .restart local v5    # "outDensity":I
    .restart local v6    # "outFilePath":Ljava/lang/String;
    .restart local v7    # "outZipPath":Ljava/lang/String;
    .restart local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v11

    goto :goto_2

    .end local v5    # "outDensity":I
    .end local v6    # "outFilePath":Ljava/lang/String;
    .end local v7    # "outZipPath":Ljava/lang/String;
    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_4
    move-exception v12

    goto :goto_3
.end method

.method private static createAppIconThemeServicesIfNeeded()V
    .locals 6

    .prologue
    .line 59
    sget-object v2, Lzui/icon/ExtraResources;->mAppIconThemeServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 60
    :try_start_0
    sget-object v1, Lzui/icon/ExtraResources;->mAppIconThemeService:Lzui/icon/IAppIconThemeService;

    if-eqz v1, :cond_0

    .line 61
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string v1, "AppIconThemeServices"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lzui/icon/IAppIconThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lzui/icon/IAppIconThemeService;

    move-result-object v1

    sput-object v1, Lzui/icon/ExtraResources;->mAppIconThemeService:Lzui/icon/IAppIconThemeService;

    .line 66
    sget-object v1, Lzui/icon/ExtraResources;->mAppIconThemeService:Lzui/icon/IAppIconThemeService;

    invoke-interface {v1}, Lzui/icon/IAppIconThemeService;->getTimeStamp()J

    move-result-wide v4

    sput-wide v4, Lzui/icon/ExtraResources;->mTimeStamp:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 68
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "ExtraResources"

    const-string v3, "createAppIconThemeServicesIfNeeded"

    const-string v4, "failed"

    invoke-static {v1, v3, v4}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    const/4 v1, 0x0

    sput-object v1, Lzui/icon/ExtraResources;->mAppIconThemeService:Lzui/icon/IAppIconThemeService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static createIconBitmap(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 26
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bg"    # Landroid/graphics/Bitmap;
    .param p3, "fg"    # Landroid/graphics/Bitmap;
    .param p4, "mask"    # Landroid/graphics/Bitmap;

    .prologue
    .line 254
    sget-object v22, Lzui/icon/ExtraResources;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v22

    .line 255
    :try_start_0
    const-string v21, "ExtraResources"

    const-string v23, "createIconBitmap"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "icon="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget v21, Lzui/icon/ExtraResources;->sIconWidth:I

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 257
    invoke-static/range {p0 .. p0}, Lzui/icon/ExtraResources;->initStatics(Landroid/content/res/Resources;)V

    .line 260
    :cond_0
    sget v20, Lzui/icon/ExtraResources;->sIconWidth:I

    .line 261
    .local v20, "width":I
    sget v10, Lzui/icon/ExtraResources;->sIconHeight:I

    .line 263
    .local v10, "height":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 264
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v14, v0

    .line 265
    .local v14, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 266
    invoke-virtual {v14, v10}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 275
    .end local v14    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 276
    .local v16, "sourceWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 277
    .local v15, "sourceHeight":I
    if-lez v16, :cond_2

    if-lez v15, :cond_2

    .line 284
    const/4 v13, 0x0

    .line 285
    .local v13, "lessBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 286
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v0, v1, v10, v2}, Lzui/icon/ExtraResources;->lessenBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 289
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v11

    .line 298
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "lessBitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    sget v18, Lzui/icon/ExtraResources;->sIconSWidth:I

    .line 299
    .local v18, "textureWidth":I
    sget v17, Lzui/icon/ExtraResources;->sIconSHeight:I

    .line 301
    .local v17, "textureHeight":I
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 303
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    sget-object v8, Lzui/icon/ExtraResources;->sCanvas:Landroid/graphics/Canvas;

    .line 304
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 306
    sub-int v21, v18, v20

    div-int/lit8 v12, v21, 0x2

    .line 307
    .local v12, "left":I
    sub-int v21, v17, v10

    div-int/lit8 v19, v21, 0x2

    .line 308
    .local v19, "top":I
    sget-object v21, Lzui/icon/ExtraResources;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 309
    add-int v21, v12, v20

    add-int v23, v19, v10

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v23

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :try_start_1
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 317
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/GradientDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    .local v4, "bd":Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 331
    .local v7, "bm":Landroid/graphics/Bitmap;
    const-string v21, "ExtraResources"

    const-string v23, "createIconBitmap"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "bm="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v21, "ExtraResources"

    const-string v23, "createIconBitmap"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "bm.getHeight="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v21, "ExtraResources"

    const-string v23, "createIconBitmap"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "bm.getWidth="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    int-to-float v0, v12

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v8, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 335
    if-eqz p4, :cond_5

    .line 336
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 338
    :cond_3
    const/16 v21, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 341
    :cond_4
    sget-object v21, Lzui/icon/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    new-instance v23, Landroid/graphics/PorterDuffXfermode;

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v23 .. v24}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 343
    const/16 v21, 0x0

    const/16 v23, 0x0

    sget-object v24, Lzui/icon/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p4

    move/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 345
    :cond_5
    sget-object v21, Lzui/icon/ExtraResources;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 346
    if-eqz p2, :cond_8

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    .line 349
    :cond_6
    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 352
    :cond_7
    sget-object v21, Lzui/icon/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    new-instance v23, Landroid/graphics/PorterDuffXfermode;

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v23 .. v24}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 354
    const/16 v21, 0x0

    const/16 v23, 0x0

    sget-object v24, Lzui/icon/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 356
    :cond_8
    if-eqz p3, :cond_b

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 359
    :cond_9
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 364
    :cond_a
    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 366
    :cond_b
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 368
    monitor-exit v22

    .end local v4    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "bm":Landroid/graphics/Bitmap;
    :goto_3
    return-object v5

    .line 267
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "left":I
    .end local v15    # "sourceHeight":I
    .end local v16    # "sourceWidth":I
    .end local v17    # "textureHeight":I
    .end local v18    # "textureWidth":I
    .end local v19    # "top":I
    :cond_c
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 269
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 270
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 271
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v21

    if-nez v21, :cond_1

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 369
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "height":I
    .end local v20    # "width":I
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v21

    .line 291
    .restart local v10    # "height":I
    .restart local v13    # "lessBitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "sourceHeight":I
    .restart local v16    # "sourceWidth":I
    .restart local v20    # "width":I
    :cond_d
    :try_start_3
    invoke-static/range {p1 .. p1}, Lzui/icon/ExtraResources;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v0, v1, v10, v2}, Lzui/icon/ExtraResources;->lessenBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 293
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v11

    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 320
    .end local v13    # "lessBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "left":I
    .restart local v17    # "textureHeight":I
    .restart local v18    # "textureWidth":I
    .restart local v19    # "top":I
    :cond_e
    :try_start_4
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v4    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_2

    .line 322
    .end local v4    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v9

    .line 323
    .local v9, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    const/4 v5, 0x0

    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 397
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 398
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 400
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Lzui/icon/ExtraResources;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 408
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 414
    const/4 v3, 0x1

    invoke-static {v0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 418
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 420
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 423
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 429
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_1
    return-object v0

    .line 408
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v2

    .line 426
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static getCachedIcon(Lzui/icon/ExtraResources$ResourceName;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "name"    # Lzui/icon/ExtraResources$ResourceName;

    .prologue
    .line 433
    sget-object v3, Lzui/icon/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 434
    :try_start_0
    const-string v2, "ExtraResources"

    const-string v4, "getCachedIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sIconCache.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lzui/icon/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v2, Lzui/icon/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 436
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 437
    const-string v2, "ExtraResources"

    const-string v4, "getCachedIcon"

    const-string v5, "wr != null"

    invoke-static {v2, v4, v5}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 439
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 440
    const-string v2, "ExtraResources"

    const-string v4, "getCachedIcon"

    const-string v5, "state != null"

    invoke-static {v2, v4, v5}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v3

    .line 460
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v2

    .line 450
    .restart local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    sget-object v2, Lzui/icon/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    .line 460
    const/4 v2, 0x0

    goto :goto_0

    .line 459
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getDrawableFromXuiTheme(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-static {}, Lzui/icon/ExtraResources;->createAppIconThemeServicesIfNeeded()V

    .line 83
    sget-object v10, Lzui/icon/ExtraResources;->mAppIconThemeService:Lzui/icon/IAppIconThemeService;

    if-nez v10, :cond_1

    .line 84
    const-string v10, "ExtraResources"

    const-string v11, "getDrawableFromXuiTheme"

    const-string v12, "mAppIconThemeService == null"

    invoke-static {v10, v11, v12}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    iget-object v10, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "inResourcePath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 93
    .local v8, "result":Ljava/lang/String;
    :try_start_0
    sget-object v10, Lzui/icon/ExtraResources;->mAppIconThemeService:Lzui/icon/IAppIconThemeService;

    invoke-interface {v10, p1, v2}, Lzui/icon/IAppIconThemeService;->getThemeIconInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 99
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 100
    sget-object v10, Lzui/icon/ExtraResources;->SPLIT:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "out":[Ljava/lang/String;
    array-length v10, v4

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 104
    const/4 v3, 0x0

    .line 107
    .local v3, "ins":Ljava/io/InputStream;
    const/4 v10, 0x0

    :try_start_1
    aget-object v7, v4, v10

    .line 108
    .local v7, "outZipPath":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v6, v4, v10

    .line 109
    .local v6, "outFilePath":Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 114
    .local v5, "outDensity":I
    sget-object v10, Lzui/icon/ExtraResources;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v10, :cond_2

    .line 115
    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    sput-object v10, Lzui/icon/ExtraResources;->mZipFile:Ljava/util/zip/ZipFile;

    .line 117
    :cond_2
    sget-object v10, Lzui/icon/ExtraResources;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v10, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 118
    .local v9, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v9, :cond_3

    .line 119
    sget-object v10, Lzui/icon/ExtraResources;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v10, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 120
    iput v5, p2, Landroid/util/TypedValue;->density:I

    .line 121
    invoke-static {p0, p2, v3, v2}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 129
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 130
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v10

    goto :goto_0

    .line 95
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "ins":Ljava/io/InputStream;
    .end local v4    # "out":[Ljava/lang/String;
    .end local v5    # "outDensity":I
    .end local v6    # "outFilePath":Ljava/lang/String;
    .end local v7    # "outZipPath":Ljava/lang/String;
    .end local v9    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "ins":Ljava/io/InputStream;
    .restart local v4    # "out":[Ljava/lang/String;
    .restart local v5    # "outDensity":I
    .restart local v6    # "outFilePath":Ljava/lang/String;
    .restart local v7    # "outZipPath":Ljava/lang/String;
    .restart local v9    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    if-eqz v3, :cond_0

    .line 130
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 131
    :catch_2
    move-exception v10

    goto :goto_0

    .line 125
    .end local v5    # "outDensity":I
    .end local v6    # "outFilePath":Ljava/lang/String;
    .end local v7    # "outZipPath":Ljava/lang/String;
    .end local v9    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v1

    .line 126
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    if-eqz v3, :cond_0

    .line 130
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 131
    :catch_4
    move-exception v10

    goto :goto_0

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 129
    if-eqz v3, :cond_4

    .line 130
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 137
    :cond_4
    :goto_1
    throw v10

    .line 131
    :catch_5
    move-exception v11

    goto :goto_1
.end method

.method private static getShapeDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 228
    if-nez p1, :cond_0

    .line 240
    :goto_0
    return-object v1

    .line 231
    :cond_0
    invoke-static {}, Lzui/icon/ExtraResources;->createAppIconThemeServicesIfNeeded()V

    .line 232
    sget-object v2, Lzui/icon/ExtraResources;->mAppIconThemeService:Lzui/icon/IAppIconThemeService;

    if-nez v2, :cond_1

    .line 233
    const-string v2, "ExtraResources"

    const-string v3, "getShapeDrawable"

    const-string v4, "mAppIconThemeService == null"

    invoke-static {v2, v3, v4}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {}, Lzui/icon/ExtraResources;->creatThemeIconBgBitmapIfNeed()V

    .line 238
    sget-object v2, Lzui/icon/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lzui/icon/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sget-object v4, Lzui/icon/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {p0, p1, v2, v3, v4}, Lzui/icon/ExtraResources;->createIconBitmap(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 240
    .local v1, "db":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0
.end method

.method public static getXuiDrawable(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 479
    const-string v7, "ExtraResources"

    const-string v8, "getXuiDrawable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "resid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 481
    .local v0, "costTime":J
    invoke-static {}, Lzui/icon/ExtraResources;->checkThemeChange()V

    .line 482
    new-instance v4, Lzui/icon/ExtraResources$ResourceName;

    invoke-direct {v4, p1, p2}, Lzui/icon/ExtraResources$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 483
    .local v4, "name":Lzui/icon/ExtraResources$ResourceName;
    invoke-static {v4}, Lzui/icon/ExtraResources;->getCachedIcon(Lzui/icon/ExtraResources$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 484
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v0, v8, v0

    .line 486
    const-string v7, "ExtraResources"

    const-string v8, "getXuiDrawable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "from cach costTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 506
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .line 489
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 490
    .local v6, "value":Landroid/util/TypedValue;
    const/4 v7, 0x1

    invoke-virtual {p0, p2, v6, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 491
    const-string v7, "ExtraResources"

    const-string v8, "getXuiDrawable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "original resource path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {p0, p1, v6}, Lzui/icon/ExtraResources;->getDrawableFromXuiTheme(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 493
    if-nez v2, :cond_1

    .line 494
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 495
    invoke-static {p0, v2}, Lzui/icon/ExtraResources;->getShapeDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 496
    .local v5, "shapeDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 497
    const/4 v2, 0x0

    .line 498
    move-object v2, v5

    .line 501
    .end local v5    # "shapeDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz v2, :cond_2

    .line 502
    invoke-static {v4, v2}, Lzui/icon/ExtraResources;->putCachedIcon(Lzui/icon/ExtraResources$ResourceName;Landroid/graphics/drawable/Drawable;)V

    .line 504
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v0, v8, v0

    .line 505
    const-string v7, "ExtraResources"

    const-string v8, "getXuiDrawable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "normal costTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 506
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private static initStatics(Landroid/content/res/Resources;)V
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 245
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const v1, 0x105013c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lzui/icon/ExtraResources;->sIconWidth:I

    .line 246
    const v1, 0x105013d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lzui/icon/ExtraResources;->sIconHeight:I

    .line 248
    const v1, 0x105013e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lzui/icon/ExtraResources;->sIconSWidth:I

    .line 249
    const v1, 0x105013f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lzui/icon/ExtraResources;->sIconSHeight:I

    .line 250
    return-void
.end method

.method private static lessenBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I
    .param p3, "needRecycle"    # Z

    .prologue
    const/4 v1, 0x0

    .line 374
    if-nez p0, :cond_1

    .line 375
    const/4 v7, 0x0

    .line 393
    :cond_0
    :goto_0
    return-object v7

    .line 376
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 377
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 379
    .local v4, "h":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 380
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 382
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 383
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 384
    const-string v0, "ExtraResources"

    const-string v2, "lessenBitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "destWidth:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v6}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "ExtraResources"

    const-string v2, "lessenBitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "destHeight:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v6}, Lzui/icon/XuiAppIconThemeLog;->log_debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 388
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 390
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static putCachedIcon(Lzui/icon/ExtraResources$ResourceName;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "name"    # Lzui/icon/ExtraResources$ResourceName;
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 464
    sget-object v1, Lzui/icon/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 465
    :try_start_0
    sget-object v0, Lzui/icon/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    monitor-exit v1

    .line 467
    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
