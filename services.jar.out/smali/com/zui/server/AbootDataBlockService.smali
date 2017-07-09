.class public Lcom/zui/server/AbootDataBlockService;
.super Lcom/android/server/SystemService;
.source "AbootDataBlockService.java"


# static fields
.field private static final ABOOT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.aboot.block"

.field public static final DIGEST_SIZE_BYTES:I = 0x0

.field private static final MAGIC_SIZE:I = 0xd

.field private static final MAX_DATA_BLOCK_SIZE:I = 0x200

.field private static final PARTITION_TYPE_MARKER:Ljava/lang/String; = "ANDROID-ABOOT!"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowedUid:I

.field private mBlockDeviceSize:J

.field private final mContext:Landroid/content/Context;

.field private final mDataBlockFile:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/zui/server/AbootDataBlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zui/server/AbootDataBlockService;->mLock:Ljava/lang/Object;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/server/AbootDataBlockService;->mAllowedUid:I

    .line 98
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zui/server/AbootDataBlockService;->mBlockDeviceSize:J

    .line 237
    new-instance v0, Lcom/zui/server/AbootDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/zui/server/AbootDataBlockService$1;-><init>(Lcom/zui/server/AbootDataBlockService;)V

    iput-object v0, p0, Lcom/zui/server/AbootDataBlockService;->mService:Landroid/os/IBinder;

    .line 102
    iput-object p1, p0, Lcom/zui/server/AbootDataBlockService;->mContext:Landroid/content/Context;

    .line 103
    const-string v0, "ro.aboot.block"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/server/AbootDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lcom/zui/server/AbootDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/server/AbootDataBlockService;->mBlockDeviceSize:J

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/server/AbootDataBlockService;->getAllowedUid(I)I

    move-result v0

    iput v0, p0, Lcom/zui/server/AbootDataBlockService;->mAllowedUid:I

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/zui/server/AbootDataBlockService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/AbootDataBlockService;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/zui/server/AbootDataBlockService;->enforceUid(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/server/AbootDataBlockService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/AbootDataBlockService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/zui/server/AbootDataBlockService;->enforceChecksumValidity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/zui/server/AbootDataBlockService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/AbootDataBlockService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zui/server/AbootDataBlockService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zui/server/AbootDataBlockService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/AbootDataBlockService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zui/server/AbootDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zui/server/AbootDataBlockService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/AbootDataBlockService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zui/server/AbootDataBlockService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zui/server/AbootDataBlockService;Ljava/io/DataInputStream;)I
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/AbootDataBlockService;
    .param p1, "x1"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/zui/server/AbootDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/zui/server/AbootDataBlockService;)J
    .locals 2
    .param p0, "x0"    # Lcom/zui/server/AbootDataBlockService;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/zui/server/AbootDataBlockService;->mBlockDeviceSize:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/zui/server/AbootDataBlockService;)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/AbootDataBlockService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/zui/server/AbootDataBlockService;->enforceOemUnlockPermission()V

    return-void
.end method

.method static synthetic access$800(Lcom/zui/server/AbootDataBlockService;)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/AbootDataBlockService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/zui/server/AbootDataBlockService;->enforceIsOwner()V

    return-void
.end method

.method static synthetic access$900(Lcom/zui/server/AbootDataBlockService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zui/server/AbootDataBlockService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/zui/server/AbootDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method private doGetOemUnlockEnabled()Z
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 176
    sget-object v9, Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;

    const-string v10, "[wwq] doGetOemUnlockEnabled call in."

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v9, p0, Lcom/zui/server/AbootDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10405d9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "type":Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string v9, "prop"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 182
    const-string v9, "ro.boot.lock"

    const-string v10, "unknow"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "state":Ljava/lang/String;
    sget-object v9, Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[wwq][By Prop] Bootloader lock state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v9, "unlocked"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "relocked"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move v7, v8

    .line 219
    .end local v4    # "state":Ljava/lang/String;
    :cond_1
    :goto_0
    return v7

    .line 193
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/zui/server/AbootDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .local v2, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    iget-object v9, p0, Lcom/zui/server/AbootDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    :try_start_2
    const-string v10, "ANDROID-ABOOT!"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    new-array v0, v10, [B

    .line 202
    .local v0, "blockid":[B
    iget-wide v10, p0, Lcom/zui/server/AbootDataBlockService;->mBlockDeviceSize:J

    const-wide/16 v12, 0x200

    sub-long/2addr v10, v12

    invoke-virtual {v2, v10, v11}, Ljava/io/DataInputStream;->skip(J)J

    .line 203
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 204
    const-string v10, "ANDROID-ABOOT!"

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_5

    .line 205
    const-wide/16 v10, 0x2

    invoke-virtual {v2, v10, v11}, Ljava/io/DataInputStream;->skip(J)J

    .line 206
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/zui/server/AbootDataBlockService;->readLE(I)I

    move-result v6

    .line 207
    .local v6, "unlocked":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/zui/server/AbootDataBlockService;->readLE(I)I

    move-result v3

    .line 208
    .local v3, "relocked":I
    sget-object v10, Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[wwq] PARTITION_TYPE_MARKER match, unlocked: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", relocked: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-nez v6, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    :goto_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move v7, v8

    goto :goto_0

    .line 194
    .end local v0    # "blockid":[B
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .end local v3    # "relocked":I
    .end local v6    # "unlocked":I
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v8, Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "partition "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/zui/server/AbootDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not available"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "blockid":[B
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    .restart local v3    # "relocked":I
    .restart local v6    # "unlocked":I
    :cond_4
    move v8, v7

    .line 209
    goto :goto_1

    .line 211
    .end local v3    # "relocked":I
    .end local v6    # "unlocked":I
    :cond_5
    :try_start_3
    sget-object v8, Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[wwq] PARTITION_TYPE_MARKER NOT match, error magic: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "blockid":[B
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 215
    :catch_1
    move-exception v1

    .line 216
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v8, Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;

    const-string v9, "unable to access aboot partition"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 219
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7
.end method

.method private enforceChecksumValidity()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method private enforceIsOwner()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the Owner is allowed to change OEM unlock state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    return-void
.end method

.method private enforceOemUnlockPermission()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zui/server/AbootDataBlockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OEM_UNLOCK_STATE"

    const-string v2, "Can\'t access OEM unlock state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method private enforceUid(I)V
    .locals 3
    .param p1, "callingUid"    # I

    .prologue
    .line 135
    iget v0, p0, Lcom/zui/server/AbootDataBlockService;->mAllowedUid:I

    if-eq p1, v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed to access PST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    return-void
.end method

.method private getAllowedUid(I)I
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    .line 109
    iget-object v4, p0, Lcom/zui/server/AbootDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10405e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "allowedPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/zui/server/AbootDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 112
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, -0x1

    .line 114
    .local v1, "allowedUid":I
    :try_start_0
    invoke-virtual {v3, v0, p1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 119
    :goto_0
    return v1

    .line 115
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not able to find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBlockDeviceSize()J
    .locals 6

    .prologue
    .line 163
    iget-object v1, p0, Lcom/zui/server/AbootDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-wide v2, p0, Lcom/zui/server/AbootDataBlockService;->mBlockDeviceSize:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/zui/server/AbootDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zui/server/AbootDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zui/server/AbootDataBlockService;->mBlockDeviceSize:J

    .line 167
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-wide v0, p0, Lcom/zui/server/AbootDataBlockService;->mBlockDeviceSize:J

    return-wide v0

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    .locals 4
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-wide v2, p0, Lcom/zui/server/AbootDataBlockService;->mBlockDeviceSize:J

    long-to-int v2, v2

    add-int/lit16 v2, v2, -0x200

    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 149
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 152
    const-string v2, "ANDROID-ABOOT!"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 153
    .local v0, "blockid":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 154
    const-string v2, "ANDROID-ABOOT!"

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 155
    const/16 v1, 0x200

    .line 159
    .local v1, "totalDataSize":I
    :goto_0
    return v1

    .line 157
    .end local v1    # "totalDataSize":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "totalDataSize":I
    goto :goto_0
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method

.method private readLE(I)I
    .locals 2
    .param p1, "valBE"    # I

    .prologue
    .line 225
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 227
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 228
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 229
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 230
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 231
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/zui/server/AbootDataBlockService;->enforceChecksumValidity()Z

    .line 125
    const-string v0, "aboot_data_block"

    iget-object v1, p0, Lcom/zui/server/AbootDataBlockService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/zui/server/AbootDataBlockService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 126
    return-void
.end method
