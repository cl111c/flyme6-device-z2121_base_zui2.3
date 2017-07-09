.class Lcom/zui/server/AbootDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "AbootDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/AbootDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/AbootDataBlockService;


# direct methods
.method constructor <init>(Lcom/zui/server/AbootDataBlockService;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v2, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # getter for: Lcom/zui/server/AbootDataBlockService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zui/server/AbootDataBlockService;->access$1000(Lcom/zui/server/AbootDataBlockService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "android.permission.ACCESS_PDB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    # invokes: Lcom/zui/server/AbootDataBlockService;->enforceUid(I)V
    invoke-static {v2, v4}, Lcom/zui/server/AbootDataBlockService;->access$000(Lcom/zui/server/AbootDataBlockService;I)V

    .line 323
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # getter for: Lcom/zui/server/AbootDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v5}, Lcom/zui/server/AbootDataBlockService;->access$200(Lcom/zui/server/AbootDataBlockService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .local v1, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    iget-object v2, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # getter for: Lcom/zui/server/AbootDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/zui/server/AbootDataBlockService;->access$400(Lcom/zui/server/AbootDataBlockService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    :try_start_2
    iget-object v2, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # invokes: Lcom/zui/server/AbootDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    invoke-static {v2, v1}, Lcom/zui/server/AbootDataBlockService;->access$500(Lcom/zui/server/AbootDataBlockService;Ljava/io/DataInputStream;)I

    move-result v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    :goto_0
    return v2

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/AbootDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "partition not available"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 326
    goto :goto_0

    .line 332
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 333
    :catch_1
    move-exception v0

    .line 334
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    # getter for: Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/AbootDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "error reading data block size"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 337
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move v2, v3

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public getMaximumDataBlockSize()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x200

    .line 343
    iget-object v2, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # getter for: Lcom/zui/server/AbootDataBlockService;->mBlockDeviceSize:J
    invoke-static {v2}, Lcom/zui/server/AbootDataBlockService;->access$600(Lcom/zui/server/AbootDataBlockService;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getOemUnlockEnabled()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # invokes: Lcom/zui/server/AbootDataBlockService;->enforceOemUnlockPermission()V
    invoke-static {v0}, Lcom/zui/server/AbootDataBlockService;->access$700(Lcom/zui/server/AbootDataBlockService;)V

    .line 311
    iget-object v0, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # invokes: Lcom/zui/server/AbootDataBlockService;->doGetOemUnlockEnabled()Z
    invoke-static {v0}, Lcom/zui/server/AbootDataBlockService;->access$900(Lcom/zui/server/AbootDataBlockService;)Z

    move-result v0

    return v0
.end method

.method public read()[B
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 245
    iget-object v6, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    # invokes: Lcom/zui/server/AbootDataBlockService;->enforceUid(I)V
    invoke-static {v6, v7}, Lcom/zui/server/AbootDataBlockService;->access$000(Lcom/zui/server/AbootDataBlockService;I)V

    .line 246
    iget-object v6, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # invokes: Lcom/zui/server/AbootDataBlockService;->enforceChecksumValidity()Z
    invoke-static {v6}, Lcom/zui/server/AbootDataBlockService;->access$100(Lcom/zui/server/AbootDataBlockService;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 247
    new-array v0, v8, [B

    .line 285
    :goto_0
    return-object v0

    .line 252
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # getter for: Lcom/zui/server/AbootDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/zui/server/AbootDataBlockService;->access$200(Lcom/zui/server/AbootDataBlockService;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    .local v2, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    iget-object v6, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # getter for: Lcom/zui/server/AbootDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/zui/server/AbootDataBlockService;->access$400(Lcom/zui/server/AbootDataBlockService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    :try_start_2
    iget-object v6, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # invokes: Lcom/zui/server/AbootDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    invoke-static {v6, v2}, Lcom/zui/server/AbootDataBlockService;->access$500(Lcom/zui/server/AbootDataBlockService;Ljava/io/DataInputStream;)I

    move-result v4

    .line 262
    .local v4, "totalDataSize":I
    if-nez v4, :cond_1

    .line 263
    const/4 v6, 0x0

    new-array v0, v6, [B

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/AbootDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .end local v4    # "totalDataSize":I
    :catch_1
    move-exception v1

    .line 254
    .local v1, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/AbootDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "aboot partition not available?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 255
    goto :goto_0

    .line 266
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "totalDataSize":I
    :cond_1
    :try_start_4
    new-array v0, v4, [B

    .line 267
    .local v0, "data":[B
    iget-object v6, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # getter for: Lcom/zui/server/AbootDataBlockService;->mBlockDeviceSize:J
    invoke-static {v6}, Lcom/zui/server/AbootDataBlockService;->access$600(Lcom/zui/server/AbootDataBlockService;)J

    move-result-wide v8

    const-wide/16 v10, 0x200

    sub-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Ljava/io/DataInputStream;->skip(J)J

    .line 268
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    .line 269
    .local v3, "read":I
    if-ge v3, v4, :cond_2

    .line 271
    # getter for: Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/AbootDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to read entire data block. bytes read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_1
    move-object v0, v5

    .line 285
    goto/16 :goto_0

    .line 283
    :catch_2
    move-exception v1

    .line 284
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/AbootDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 275
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 282
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 283
    :catch_3
    move-exception v1

    .line 284
    .restart local v1    # "e":Ljava/io/IOException;
    # getter for: Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/AbootDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 276
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "read":I
    .end local v4    # "totalDataSize":I
    :catchall_0
    move-exception v6

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 277
    :catch_4
    move-exception v1

    .line 278
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_a
    # getter for: Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/AbootDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "failed to read data"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 282
    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :goto_2
    move-object v0, v5

    .line 285
    goto/16 :goto_0

    .line 283
    :catch_5
    move-exception v1

    .line 284
    # getter for: Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/AbootDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 281
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 282
    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 285
    :goto_3
    throw v5

    .line 283
    :catch_6
    move-exception v1

    .line 284
    .restart local v1    # "e":Ljava/io/IOException;
    # getter for: Lcom/zui/server/AbootDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/zui/server/AbootDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setOemUnlockEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 296
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # invokes: Lcom/zui/server/AbootDataBlockService;->enforceOemUnlockPermission()V
    invoke-static {v0}, Lcom/zui/server/AbootDataBlockService;->access$700(Lcom/zui/server/AbootDataBlockService;)V

    .line 300
    iget-object v0, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # invokes: Lcom/zui/server/AbootDataBlockService;->enforceIsOwner()V
    invoke-static {v0}, Lcom/zui/server/AbootDataBlockService;->access$800(Lcom/zui/server/AbootDataBlockService;)V

    .line 302
    iget-object v0, p0, Lcom/zui/server/AbootDataBlockService$1;->this$0:Lcom/zui/server/AbootDataBlockService;

    # getter for: Lcom/zui/server/AbootDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/zui/server/AbootDataBlockService;->access$400(Lcom/zui/server/AbootDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 305
    :try_start_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public wipe()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public write([B)I
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    const/4 v0, -0x1

    return v0
.end method
