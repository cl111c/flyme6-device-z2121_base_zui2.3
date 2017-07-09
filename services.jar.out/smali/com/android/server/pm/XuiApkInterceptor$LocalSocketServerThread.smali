.class Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;
.super Ljava/lang/Thread;
.source "XuiApkInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/XuiApkInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalSocketServerThread"
.end annotation


# static fields
.field private static final LOCAL_SOCKET_NAME:Ljava/lang/String; = "adb.safecenter.server"


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/pm/XuiApkInterceptor;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/XuiApkInterceptor;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->mContext:Landroid/content/Context;

    .line 206
    return-void
.end method

.method private connectToServiceForXui()Z
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    const-string v3, "XuiApkInterceptor"

    const-string v4, "Trying to bind to XuiDefaultContainerConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/android/server/pm/XuiApkInterceptor;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 212
    .local v0, "service":Landroid/content/Intent;
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 213
    iget-object v3, p0, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    # getter for: Lcom/android/server/pm/XuiApkInterceptor;->mXuiDefContainerConn:Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;
    invoke-static {v4}, Lcom/android/server/pm/XuiApkInterceptor;->access$100(Lcom/android/server/pm/XuiApkInterceptor;)Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 219
    :goto_0
    return v1

    .line 218
    :cond_0
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    move v1, v2

    .line 219
    goto :goto_0
.end method

.method private disconnectServiceXui()V
    .locals 2

    .prologue
    .line 223
    const-string v0, "XuiApkInterceptor"

    const-string v1, "disconnectServiceXui "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    # getter for: Lcom/android/server/pm/XuiApkInterceptor;->mXuiDefContainerConn:Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/pm/XuiApkInterceptor;->access$100(Lcom/android/server/pm/XuiApkInterceptor;)Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 226
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 227
    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    .prologue
    .line 232
    const/16 v26, 0x0

    .line 233
    .local v26, "server":Landroid/net/LocalServerSocket;
    const/4 v15, 0x0

    .line 234
    .local v15, "mInputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 235
    .local v8, "connect":Landroid/net/LocalSocket;
    const/16 v25, 0x0

    .line 238
    .local v25, "readString":Ljava/lang/String;
    :try_start_0
    new-instance v27, Landroid/net/LocalServerSocket;

    const-string v29, "adb.safecenter.server"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    .end local v26    # "server":Landroid/net/LocalServerSocket;
    .local v27, "server":Landroid/net/LocalServerSocket;
    :goto_0
    :try_start_1
    const-string v29, "XuiApkInterceptor"

    const-string v32, "wait for new adb client coming!"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual/range {v27 .. v27}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v8

    .line 245
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v10

    .line 246
    .local v10, "cre":Landroid/net/Credentials;
    const-string v29, "XuiApkInterceptor"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "accept adb client socket uid: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v10}, Landroid/net/Credentials;->getUid()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 249
    const/4 v9, 0x0

    .line 250
    .local v9, "count":I
    :goto_1
    if-nez v9, :cond_0

    .line 251
    invoke-virtual {v15}, Ljava/io/InputStream;->available()I

    move-result v9

    goto :goto_1

    .line 253
    :cond_0
    new-array v5, v9, [B

    .line 254
    .local v5, "buf":[B
    invoke-virtual {v15, v5}, Ljava/io/InputStream;->read([B)I

    .line 255
    const-string v29, "XuiApkInterceptor"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "frome the adb, datas: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :try_start_2
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 260
    .local v17, "out":Ljava/io/OutputStream;
    const/16 v29, 0xaa

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 261
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    .line 262
    const-string v29, "XuiApkInterceptor"

    const-string v32, " Response: Ack adb"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    .end local v17    # "out":Ljava/io/OutputStream;
    :goto_2
    const/16 v22, 0x0

    .line 270
    .local v22, "packagePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 271
    .local v4, "apkName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 272
    .local v12, "fromeAdbDatas":Ljava/lang/String;
    const/4 v14, 0x0

    .line 275
    .local v14, "fromeAdbDatasTmp":Ljava/lang/String;
    :try_start_3
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    .end local v12    # "fromeAdbDatas":Ljava/lang/String;
    .local v13, "fromeAdbDatas":Ljava/lang/String;
    const/16 v29, 0x8

    :try_start_4
    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    const-string v32, "\""

    const-string v33, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v14

    move-object v12, v13

    .line 282
    .end local v13    # "fromeAdbDatas":Ljava/lang/String;
    .restart local v12    # "fromeAdbDatas":Ljava/lang/String;
    :goto_3
    move-object/from16 v22, v14

    .line 283
    :try_start_5
    const-string v29, "XuiApkInterceptor"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "packagePath: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 285
    .local v28, "sourceFile":Ljava/io/File;
    const/16 v23, 0x0

    .line 286
    .local v23, "parsed":Landroid/content/pm/PackageParser$PackageLite;
    const/16 v21, 0x0

    .line 287
    .local v21, "packageName":Ljava/lang/String;
    const/16 v20, 0x0

    .line 290
    .local v20, "packageLabel":Ljava/lang/String;
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->connectToServiceForXui()Z

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x1388

    add-long v30, v32, v34

    .line 292
    .local v30, "timeout":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 293
    .local v18, "now":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/pm/XuiApkInterceptor;->mXuiDefContainerConn:Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;
    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/XuiApkInterceptor;->access$100(Lcom/android/server/pm/XuiApkInterceptor;)Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;->mXuiContainerService:Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    cmp-long v29, v18, v30

    if-gez v29, :cond_1

    .line 294
    const-wide/16 v32, 0x1f4

    invoke-static/range {v32 .. v33}, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 296
    .end local v18    # "now":J
    .end local v30    # "timeout":J
    :catch_0
    move-exception v29

    .line 299
    :cond_1
    const/16 v24, 0x0

    .line 301
    .local v24, "pkgLite":Landroid/content/pm/PackageInfoLite;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/pm/XuiApkInterceptor;->mXuiDefContainerConn:Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;
    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/XuiApkInterceptor;->access$100(Lcom/android/server/pm/XuiApkInterceptor;)Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;->mXuiContainerService:Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/pm/XuiApkInterceptor;->mXuiDefContainerConn:Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;
    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/XuiApkInterceptor;->access$100(Lcom/android/server/pm/XuiApkInterceptor;)Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/pm/XuiApkInterceptor$XuiDefaultContainerConnection;->mXuiContainerService:Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v29, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v24

    .line 303
    const-string v29, "XuiApkInterceptor"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "start pkgLite: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 305
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfoLite;->packageLabel:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->disconnectServiceXui()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 318
    :goto_5
    :try_start_8
    const-string v29, "XuiApkInterceptor"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " apk packageName is "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/pm/XuiApkInterceptor;->isUserInstalledApp(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v29

    if-nez v29, :cond_2

    .line 323
    :try_start_9
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 324
    .restart local v17    # "out":Ljava/io/OutputStream;
    const/16 v29, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 325
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 330
    .end local v17    # "out":Ljava/io/OutputStream;
    :goto_6
    :try_start_a
    const-string v29, "XuiApkInterceptor"

    const-string v32, " Response: has completed the adb client\'s request: CTS, GTS debug"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_2
    if-eqz v21, :cond_b

    .line 334
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/XuiApkInterceptor$InstallPackageAlertUtils;->isPackageInBlackList(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 335
    const-string v29, "XuiApkInterceptor"

    const-string v32, "InstallPackageAlertUtils.isPackageInBlackList is true."

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v29, "XuiApkInterceptor"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "packageName: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " packageLabel: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object v7, v8

    .line 340
    .local v7, "client":Landroid/net/LocalSocket;
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 341
    .local v16, "msg":Landroid/os/Message;
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 342
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 343
    move-object/from16 v0, v16

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 344
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v29, "package_label"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/XuiApkInterceptor$LocalSocketServerThread;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/pm/XuiApkInterceptor;->mXuiHandler:Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;
    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/XuiApkInterceptor;->access$200(Lcom/android/server/pm/XuiApkInterceptor;)Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 376
    .end local v4    # "apkName":Ljava/lang/String;
    .end local v5    # "buf":[B
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v7    # "client":Landroid/net/LocalSocket;
    .end local v9    # "count":I
    .end local v10    # "cre":Landroid/net/Credentials;
    .end local v12    # "fromeAdbDatas":Ljava/lang/String;
    .end local v14    # "fromeAdbDatasTmp":Ljava/lang/String;
    .end local v16    # "msg":Landroid/os/Message;
    .end local v20    # "packageLabel":Ljava/lang/String;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "packagePath":Ljava/lang/String;
    .end local v23    # "parsed":Landroid/content/pm/PackageParser$PackageLite;
    .end local v24    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v28    # "sourceFile":Ljava/io/File;
    :catch_1
    move-exception v11

    move-object/from16 v26, v27

    .line 377
    .end local v27    # "server":Landroid/net/LocalServerSocket;
    .local v11, "e":Ljava/io/IOException;
    .restart local v26    # "server":Landroid/net/LocalServerSocket;
    :goto_7
    :try_start_b
    const-string v29, "XuiApkInterceptor"

    const-string v32, "error: safe center server is failed! "

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 381
    if-eqz v8, :cond_3

    .line 383
    :try_start_c
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 388
    :cond_3
    :goto_8
    if-eqz v26, :cond_4

    .line 390
    :try_start_d
    invoke-virtual/range {v26 .. v26}, Landroid/net/LocalServerSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 395
    :cond_4
    :goto_9
    if-eqz v15, :cond_5

    .line 397
    :try_start_e
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 404
    :cond_5
    :goto_a
    return-void

    .line 263
    .end local v11    # "e":Ljava/io/IOException;
    .end local v26    # "server":Landroid/net/LocalServerSocket;
    .restart local v5    # "buf":[B
    .restart local v9    # "count":I
    .restart local v10    # "cre":Landroid/net/Credentials;
    .restart local v27    # "server":Landroid/net/LocalServerSocket;
    :catch_2
    move-exception v11

    .line 264
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_f
    const-string v29, "XuiApkInterceptor"

    const-string v32, "error: parse apk failed, packageName is null, and getOutputStream is null"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 381
    .end local v5    # "buf":[B
    .end local v9    # "count":I
    .end local v10    # "cre":Landroid/net/Credentials;
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v29

    move-object/from16 v26, v27

    .end local v27    # "server":Landroid/net/LocalServerSocket;
    .restart local v26    # "server":Landroid/net/LocalServerSocket;
    :goto_b
    if-eqz v8, :cond_6

    .line 383
    :try_start_10
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 388
    :cond_6
    :goto_c
    if-eqz v26, :cond_7

    .line 390
    :try_start_11
    invoke-virtual/range {v26 .. v26}, Landroid/net/LocalServerSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 395
    :cond_7
    :goto_d
    if-eqz v15, :cond_8

    .line 397
    :try_start_12
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    .line 400
    :cond_8
    :goto_e
    throw v29

    .line 277
    .end local v26    # "server":Landroid/net/LocalServerSocket;
    .restart local v4    # "apkName":Ljava/lang/String;
    .restart local v5    # "buf":[B
    .restart local v9    # "count":I
    .restart local v10    # "cre":Landroid/net/Credentials;
    .restart local v12    # "fromeAdbDatas":Ljava/lang/String;
    .restart local v14    # "fromeAdbDatasTmp":Ljava/lang/String;
    .restart local v22    # "packagePath":Ljava/lang/String;
    .restart local v27    # "server":Landroid/net/LocalServerSocket;
    :catch_3
    move-exception v11

    .line 278
    .local v11, "e":Ljava/lang/Exception;
    :goto_f
    :try_start_13
    const-string v29, "XuiApkInterceptor"

    const-string v32, "error : java.lang.ArrayIndexOutOfBoundsException."

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v29, "XuiApkInterceptor"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "frome the adb, datas: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_3

    .line 308
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v20    # "packageLabel":Ljava/lang/String;
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v23    # "parsed":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v24    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v28    # "sourceFile":Ljava/io/File;
    :cond_9
    :try_start_14
    const-string v29, "XuiApkInterceptor"

    const-string v32, "error: parse package is failed!"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_5

    .line 310
    :catch_4
    move-exception v11

    .line 311
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v29, "XuiApkInterceptor"

    const-string v32, "RemoteException: parse package is failed!"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5

    .line 313
    .end local v11    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v11

    .line 314
    .local v11, "e":Ljava/lang/Exception;
    const-string v29, "XuiApkInterceptor"

    const-string v32, "Exception: parse package is failed!"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 326
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v11

    .line 327
    .local v11, "e":Ljava/io/IOException;
    const-string v29, "XuiApkInterceptor"

    const-string v32, "error: parse apk failed, packageName is null, and getOutputStream is null"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 350
    .end local v11    # "e":Ljava/io/IOException;
    :cond_a
    const-string v29, "XuiApkInterceptor"

    const-string v32, "InstallPackageAlertUtils.isPackageInBlackList is false."

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 352
    :try_start_16
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 353
    .restart local v17    # "out":Ljava/io/OutputStream;
    const/16 v29, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 354
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 359
    .end local v17    # "out":Ljava/io/OutputStream;
    :goto_10
    :try_start_17
    const-string v29, "XuiApkInterceptor"

    const-string v32, " Response: has completed the adb client\'s request: allow-apk. "

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 355
    :catch_7
    move-exception v11

    .line 356
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v29, "XuiApkInterceptor"

    const-string v32, "error: when InstallPackageAlertUtils.isPackageInBlackList is false, exception is occured: getOutputStream is null"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_10

    .line 364
    .end local v11    # "e":Ljava/io/IOException;
    :cond_b
    :try_start_18
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 365
    .restart local v17    # "out":Ljava/io/OutputStream;
    const/16 v29, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 366
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 371
    .end local v17    # "out":Ljava/io/OutputStream;
    :goto_11
    :try_start_19
    const-string v29, "XuiApkInterceptor"

    const-string v32, " Response: has completed the adb client\'s request: eclipse debug "

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 367
    :catch_8
    move-exception v11

    .line 368
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v29, "XuiApkInterceptor"

    const-string v32, "error: parse apk failed, packageName is null, and getOutputStream is null"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_11

    .line 384
    .end local v4    # "apkName":Ljava/lang/String;
    .end local v5    # "buf":[B
    .end local v9    # "count":I
    .end local v10    # "cre":Landroid/net/Credentials;
    .end local v12    # "fromeAdbDatas":Ljava/lang/String;
    .end local v14    # "fromeAdbDatasTmp":Ljava/lang/String;
    .end local v20    # "packageLabel":Ljava/lang/String;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "packagePath":Ljava/lang/String;
    .end local v23    # "parsed":Landroid/content/pm/PackageParser$PackageLite;
    .end local v24    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v27    # "server":Landroid/net/LocalServerSocket;
    .end local v28    # "sourceFile":Ljava/io/File;
    .restart local v26    # "server":Landroid/net/LocalServerSocket;
    :catch_9
    move-exception v11

    .line 385
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 391
    :catch_a
    move-exception v11

    .line 392
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 398
    :catch_b
    move-exception v11

    .line 399
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 384
    .end local v11    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v11

    .line 385
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 391
    .end local v11    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v11

    .line 392
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    .line 398
    .end local v11    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v11

    .line 399
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e

    .line 381
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v29

    goto/16 :goto_b

    .line 376
    :catch_f
    move-exception v11

    goto/16 :goto_7

    .line 277
    .end local v26    # "server":Landroid/net/LocalServerSocket;
    .restart local v4    # "apkName":Ljava/lang/String;
    .restart local v5    # "buf":[B
    .restart local v9    # "count":I
    .restart local v10    # "cre":Landroid/net/Credentials;
    .restart local v13    # "fromeAdbDatas":Ljava/lang/String;
    .restart local v14    # "fromeAdbDatasTmp":Ljava/lang/String;
    .restart local v22    # "packagePath":Ljava/lang/String;
    .restart local v27    # "server":Landroid/net/LocalServerSocket;
    :catch_10
    move-exception v11

    move-object v12, v13

    .end local v13    # "fromeAdbDatas":Ljava/lang/String;
    .restart local v12    # "fromeAdbDatas":Ljava/lang/String;
    goto/16 :goto_f
.end method
