.class public Lzui/service/persistentdata/AbootDataBlockManager;
.super Ljava/lang/Object;
.source "AbootDataBlockManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lzui/service/persistentdata/AbootDataBlockManager;

.field private static mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lzui/service/persistentdata/AbootDataBlockManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lzui/service/persistentdata/AbootDataBlockManager;
    .locals 4

    .prologue
    .line 47
    sget-object v2, Lzui/service/persistentdata/AbootDataBlockManager;->mInstance:Lzui/service/persistentdata/AbootDataBlockManager;

    if-nez v2, :cond_0

    .line 48
    const-string v2, "aboot_data_block"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 49
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;

    move-result-object v0

    .line 51
    .local v0, "abootDataBlockService":Landroid/service/persistentdata/IPersistentDataBlockService;
    if-eqz v0, :cond_1

    .line 52
    new-instance v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-direct {v2, v0}, Landroid/service/persistentdata/PersistentDataBlockManager;-><init>(Landroid/service/persistentdata/IPersistentDataBlockService;)V

    sput-object v2, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 53
    new-instance v2, Lzui/service/persistentdata/AbootDataBlockManager;

    invoke-direct {v2}, Lzui/service/persistentdata/AbootDataBlockManager;-><init>()V

    sput-object v2, Lzui/service/persistentdata/AbootDataBlockManager;->mInstance:Lzui/service/persistentdata/AbootDataBlockManager;

    .line 54
    sget-object v2, Lzui/service/persistentdata/AbootDataBlockManager;->TAG:Ljava/lang/String;

    const-string v3, "getInstance ok! Creat"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v2, Lzui/service/persistentdata/AbootDataBlockManager;->mInstance:Lzui/service/persistentdata/AbootDataBlockManager;

    :goto_0
    return-object v2

    .line 57
    :cond_1
    sget-object v2, Lzui/service/persistentdata/AbootDataBlockManager;->TAG:Ljava/lang/String;

    const-string v3, "getInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDataBlockSize()I
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v0, :cond_0

    .line 99
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->TAG:Ljava/lang/String;

    const-string v1, "getDataBlockSize failed, mPDBM is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, -0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getDataBlockSize()I

    move-result v0

    goto :goto_0
.end method

.method public getMaximumDataBlockSize()J
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->TAG:Ljava/lang/String;

    const-string v1, "getMaximumDataBlockSize failed, mPDBM is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-wide/16 v0, -0x1

    .line 115
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getMaximumDataBlockSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getOemUnlockEnabled()Z
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->TAG:Ljava/lang/String;

    const-string v1, "getOemUnlockEnabled failed, mPDBM is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public read()[B
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->TAG:Ljava/lang/String;

    const-string v1, "read failed, mPDBM is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->read()[B

    move-result-object v0

    goto :goto_0
.end method

.method public setOemUnlockEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 133
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOemUnlockEnabled failed, mPDBM is null, enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    .line 137
    return-void
.end method

.method public wipe()V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->TAG:Ljava/lang/String;

    const-string v1, "wipe failed, mPDBM is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 127
    return-void
.end method

.method public write([B)I
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 74
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write failed, mPDBM is null, data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, -0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lzui/service/persistentdata/AbootDataBlockManager;->mPDBM:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->write([B)I

    move-result v0

    goto :goto_0
.end method
