.class public Lcom/android/server/am/ZuiMMChatPlugin;
.super Ljava/lang/Object;
.source "ZuiMMChatPlugin.java"


# static fields
.field static final MMCHAT_PKG_STRING:Ljava/lang/String; = "com.tencent.mm"

.field static final MMLAUNCHER_STRING:Ljava/lang/String; = "com.tencent.mm.ui.LauncherUI"

.field static final MMWEBUI_SETTINGS_CONFIG:Ljava/lang/String; = "MMWebui-Switcher"

.field static final MMWEBUI_STRING:Ljava/lang/String; = "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field static mLastIsMMChatActivity:Z

.field static mMMWebUISwitcherState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    sput v0, Lcom/android/server/am/ZuiMMChatPlugin;->mMMWebUISwitcherState:I

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ZuiMMChatPlugin;->mLastIsMMChatActivity:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findTaskLocked(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 9
    .param p0, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "s"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v8, -0x1

    .line 303
    const-string v6, "mActivityDisplays"

    invoke-static {p0, v6}, Lcom/android/server/am/ZuiMMChatPlugin;->getPrivateMember(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 305
    .local v2, "mActivityDisplays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_5

    .line 306
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 307
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_4

    .line 308
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 309
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-nez v6, :cond_1

    .line 307
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 313
    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 318
    invoke-static {v3, p1, p2}, Lcom/android/server/am/ZuiMMChatPlugin;->findTaskLockedInStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 319
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 320
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock()V

    .line 325
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    if-nez v6, :cond_2

    .line 326
    new-instance v6, Landroid/util/BoostFramework;

    invoke-direct {v6}, Landroid/util/BoostFramework;-><init>()V

    iput-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    .line 328
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    if-eqz v6, :cond_3

    .line 329
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;)I

    .line 347
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    :goto_2
    return-object v0

    .line 305
    .restart local v4    # "stackNdx":I
    .restart local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 337
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock()V

    .line 339
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    if-nez v6, :cond_6

    .line 340
    new-instance v6, Landroid/util/BoostFramework;

    invoke-direct {v6}, Landroid/util/BoostFramework;-><init>()V

    iput-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    .line 342
    :cond_6
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    if-eqz v6, :cond_7

    .line 343
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf_iop:Landroid/util/BoostFramework;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;)I

    .line 347
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static findTaskLockedInStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 22
    .param p0, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "source"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 416
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 417
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 418
    .local v6, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 419
    .local v4, "cls":Landroid/content/ComponentName;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 420
    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "cls":Landroid/content/ComponentName;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .restart local v4    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 423
    .local v19, "userId":I
    if-eqz v7, :cond_3

    const/16 v20, 0x1

    :goto_0
    invoke-virtual {v7}, Landroid/content/Intent;->isDocument()Z

    move-result v21

    and-int v8, v20, v21

    .line 425
    .local v8, "isDocument":Z
    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 429
    .local v5, "documentData":Landroid/net/Uri;
    :goto_1
    const/4 v11, 0x0

    .line 430
    .local v11, "isMMWebIntent":Z
    const/4 v10, 0x0

    .line 431
    .local v10, "isMMMainIntent":Z
    const/4 v9, 0x0

    .line 432
    .local v9, "isMMLauncherIntent":Z
    sget v20, Lcom/android/server/am/ZuiMMChatPlugin;->mMMWebUISwitcherState:I

    if-eqz v20, :cond_1

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 433
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_5

    .line 434
    const/4 v11, 0x1

    .line 443
    :cond_1
    :goto_2
    const-string v20, "mTaskHistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/am/ZuiMMChatPlugin;->getPrivateMember(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 444
    .local v12, "mTaskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz v12, :cond_f

    .line 445
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v18, v20, -0x1

    .local v18, "taskNdx":I
    :goto_3
    if-ltz v18, :cond_f

    .line 446
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    .line 447
    .local v14, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 445
    :cond_2
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 423
    .end local v5    # "documentData":Landroid/net/Uri;
    .end local v8    # "isDocument":Z
    .end local v9    # "isMMLauncherIntent":Z
    .end local v10    # "isMMMainIntent":Z
    .end local v11    # "isMMWebIntent":Z
    .end local v12    # "mTaskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v14    # "task":Lcom/android/server/am/TaskRecord;
    .end local v18    # "taskNdx":I
    :cond_3
    const/16 v20, 0x0

    goto :goto_0

    .line 425
    .restart local v8    # "isDocument":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 435
    .restart local v5    # "documentData":Landroid/net/Uri;
    .restart local v9    # "isMMLauncherIntent":Z
    .restart local v10    # "isMMMainIntent":Z
    .restart local v11    # "isMMWebIntent":Z
    :cond_5
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_1

    .line 436
    const/4 v9, 0x1

    .line 437
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 438
    const/4 v10, 0x1

    goto :goto_2

    .line 452
    .restart local v12    # "mTaskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v14    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v18    # "taskNdx":I
    :cond_6
    iget v0, v14, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 457
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    .line 458
    .local v13, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v13, :cond_2

    iget-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    iget v0, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    iget v0, v13, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 463
    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    .line 464
    .local v16, "taskIntent":Landroid/content/Intent;
    iget-object v2, v14, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 467
    .local v2, "affinityIntent":Landroid/content/Intent;
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->isDocument()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 468
    const/16 v17, 0x1

    .line 469
    .local v17, "taskIsDocument":Z
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 478
    .local v15, "taskDocumentData":Landroid/net/Uri;
    :goto_4
    const/4 v3, 0x0

    .line 479
    .local v3, "bIsTaskMMWebUI":Z
    sget v20, Lcom/android/server/am/ZuiMMChatPlugin;->mMMWebUISwitcherState:I

    if-eqz v20, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_7

    .line 481
    const/4 v3, 0x1

    .line 484
    :cond_7
    if-eqz v11, :cond_8

    if-eqz v3, :cond_2

    .line 485
    :cond_8
    if-eqz v3, :cond_9

    if-nez v10, :cond_9

    if-nez v9, :cond_2

    .line 493
    :cond_9
    if-nez v8, :cond_d

    if-nez v17, :cond_d

    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 494
    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 517
    .end local v2    # "affinityIntent":Landroid/content/Intent;
    .end local v3    # "bIsTaskMMWebUI":Z
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "task":Lcom/android/server/am/TaskRecord;
    .end local v15    # "taskDocumentData":Landroid/net/Uri;
    .end local v16    # "taskIntent":Landroid/content/Intent;
    .end local v17    # "taskIsDocument":Z
    .end local v18    # "taskNdx":I
    :cond_a
    :goto_5
    return-object v13

    .line 470
    .restart local v2    # "affinityIntent":Landroid/content/Intent;
    .restart local v13    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v14    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v16    # "taskIntent":Landroid/content/Intent;
    .restart local v18    # "taskNdx":I
    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 471
    const/16 v17, 0x1

    .line 472
    .restart local v17    # "taskIsDocument":Z
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .restart local v15    # "taskDocumentData":Landroid/net/Uri;
    goto :goto_4

    .line 474
    .end local v15    # "taskDocumentData":Landroid/net/Uri;
    .end local v17    # "taskIsDocument":Z
    :cond_c
    const/16 v17, 0x0

    .line 475
    .restart local v17    # "taskIsDocument":Z
    const/4 v15, 0x0

    .restart local v15    # "taskDocumentData":Landroid/net/Uri;
    goto :goto_4

    .line 498
    .restart local v3    # "bIsTaskMMWebUI":Z
    :cond_d
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    if-eqz v20, :cond_e

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v20

    if-nez v20, :cond_e

    invoke-static {v5, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 506
    :cond_e
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    if-eqz v20, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v20

    if-nez v20, :cond_2

    invoke-static {v5, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    goto :goto_5

    .line 517
    .end local v2    # "affinityIntent":Landroid/content/Intent;
    .end local v3    # "bIsTaskMMWebUI":Z
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "task":Lcom/android/server/am/TaskRecord;
    .end local v15    # "taskDocumentData":Landroid/net/Uri;
    .end local v16    # "taskIntent":Landroid/content/Intent;
    .end local v17    # "taskIsDocument":Z
    .end local v18    # "taskNdx":I
    :cond_f
    const/4 v13, 0x0

    goto :goto_5
.end method

.method static getIntentIsMMChat(Lcom/android/server/am/TaskRecord;Landroid/content/Intent;)I
    .locals 3
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "iRet":I
    sget v1, Lcom/android/server/am/ZuiMMChatPlugin;->mMMWebUISwitcherState:I

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    const-string v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    or-int/lit8 v0, v0, 0x1

    .line 358
    :cond_0
    if-lez v0, :cond_1

    .line 359
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    or-int/lit8 v0, v0, 0x2

    .line 366
    :cond_1
    return v0
.end method

.method private static getMMWebUITaskLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 11
    .param p0, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 383
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 384
    .local v2, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 385
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 386
    .local v0, "cls":Landroid/content/ComponentName;
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 387
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cls":Landroid/content/ComponentName;
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .restart local v0    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 390
    .local v8, "userId":I
    const-string v9, "mTaskHistory"

    invoke-static {p0, v9}, Lcom/android/server/am/ZuiMMChatPlugin;->getPrivateMember(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 391
    .local v3, "mTaskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz v3, :cond_3

    .line 392
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "taskNdx":I
    :goto_0
    if-ltz v7, :cond_3

    .line 393
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 394
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v9, :cond_2

    .line 392
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 397
    :cond_2
    iget v9, v5, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v9, v8, :cond_1

    .line 400
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 401
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_1

    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_1

    iget v9, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v9, v8, :cond_1

    iget v9, v4, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    .line 405
    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 406
    .local v6, "taskIntent":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    .line 412
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "taskIntent":Landroid/content/Intent;
    .end local v7    # "taskNdx":I
    :goto_1
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static getMMWebuiIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    .local v1, "intentE":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 78
    :try_start_0
    const-string v2, "rawUrl"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string v2, "rawUrl"

    const-string v3, "rawUrl"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getMemberField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "variableName"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 562
    .local v2, "targetClass":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 564
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 565
    if-eqz v1, :cond_0

    .line 566
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    .line 572
    :goto_0
    return-object v3

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 572
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "classes"    # [Ljava/lang/Class;

    .prologue
    const/4 v5, 0x0

    .line 522
    const/4 v4, 0x0

    .line 524
    .local v4, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    :goto_0
    move-object v5, v4

    .line 541
    :goto_1
    return-object v5

    .line 525
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_0

    .line 528
    :catch_1
    move-exception v1

    .line 529
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v4

    .line 530
    goto :goto_1

    .line 532
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/android/server/am/ZuiMMChatPlugin;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 537
    goto :goto_0

    .line 535
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 536
    .local v2, "ex2":Ljava/lang/Exception;
    goto :goto_1

    .line 538
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v2    # "ex2":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 539
    .local v3, "ex3":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private static getPrivateMember(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "variableName"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 546
    .local v3, "targetClass":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 547
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 549
    .local v2, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 550
    if-eqz v1, :cond_0

    .line 551
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 552
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 557
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 554
    .restart local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static isMMChatWebuiIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 370
    sget v0, Lcom/android/server/am/ZuiMMChatPlugin;->mMMWebUISwitcherState:I

    if-eqz v0, :cond_0

    .line 371
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isPluginWorked()Z
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/android/server/am/ZuiMMChatPlugin;->mMMWebUISwitcherState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static onMoveTaskToFrontLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;Z)Z
    .locals 16
    .param p0, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bIsCallInStartActivity"    # Z

    .prologue
    .line 153
    sget v11, Lcom/android/server/am/ZuiMMChatPlugin;->mMMWebUISwitcherState:I

    if-eqz v11, :cond_9

    if-eqz p1, :cond_9

    if-eqz p0, :cond_9

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v11, :cond_9

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    const-string v12, "com.tencent.mm"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 156
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v11, :cond_0

    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_0

    .line 159
    const/4 v11, 0x0

    .line 221
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v11

    .line 160
    .restart local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-nez v1, :cond_1

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v11, :cond_1

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    .line 163
    const/4 v11, 0x0

    goto :goto_0

    .line 166
    :cond_1
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 167
    .local v10, "userId":I
    const-string v11, "mTaskHistory"

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/server/am/ZuiMMChatPlugin;->getPrivateMember(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 168
    .local v5, "mTaskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "insertTaskAtTop"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Lcom/android/server/am/TaskRecord;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Lcom/android/server/am/ActivityRecord;

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lcom/android/server/am/ZuiMMChatPlugin;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 170
    .local v4, "insertTaskAtTop":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_9

    if-eqz v4, :cond_9

    .line 175
    const/4 v2, 0x1

    .line 176
    .local v2, "bIsLastActivity":Z
    const/4 v3, 0x0

    .line 177
    .local v3, "iMoveCount":I
    const/4 v9, 0x0

    .local v9, "taskNdx":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v3

    if-ge v9, v11, :cond_7

    .line 178
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 179
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v11, :cond_3

    .line 177
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 183
    :cond_3
    iget v11, v7, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v11, v10, :cond_2

    .line 187
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 188
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_2

    iget-boolean v11, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v11, :cond_2

    iget v11, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v11, v10, :cond_2

    iget v11, v6, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_2

    .line 192
    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 193
    .local v8, "taskIntent":Landroid/content/Intent;
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v11, :cond_2

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 195
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v4, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 196
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v12, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v11, v12, :cond_5

    .line 198
    if-eqz v2, :cond_6

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 200
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 202
    :cond_4
    const/4 v2, 0x0

    .line 207
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 208
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 204
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 209
    :catch_0
    move-exception v11

    goto :goto_2

    .line 213
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    .end local v8    # "taskIntent":Landroid/content/Intent;
    :cond_7
    const/4 v11, 0x1

    if-le v3, v11, :cond_9

    .line 214
    if-eqz p1, :cond_8

    .line 215
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 217
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 221
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "bIsLastActivity":Z
    .end local v3    # "iMoveCount":I
    .end local v4    # "insertTaskAtTop":Ljava/lang/reflect/Method;
    .end local v5    # "mTaskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v9    # "taskNdx":I
    .end local v10    # "userId":I
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method static onProcessUiHandlerMsg(Lcom/android/server/am/ActivityManagerService;Landroid/os/Message;)Z
    .locals 9
    .param p0, "server"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 114
    if-eqz p0, :cond_1

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v4, "systemui.action.mmchat.webuiview"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 117
    .local v2, "strExt":Ljava/lang/String;
    const-string v4, "ext"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v4, "arg1"

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v4, "arg2"

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "broadcastIntentLocked"

    const/16 v6, 0x10

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/android/server/am/ProcessRecord;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Landroid/content/Intent;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-class v8, Landroid/content/IIntentReceiver;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-class v8, Landroid/os/Bundle;

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    const/16 v7, 0x9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-class v8, Landroid/os/Bundle;

    aput-object v8, v6, v7

    const/16 v7, 0xb

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/16 v7, 0xc

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/16 v7, 0xd

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/16 v7, 0xe

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/16 v7, 0xf

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/server/am/ZuiMMChatPlugin;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 125
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 126
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 127
    const/16 v4, 0x10

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "strExt":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    .line 131
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "strExt":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method static onStartActivityUncheckedLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 15
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 229
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 230
    .local v4, "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    .line 231
    .local v8, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.tencent.mm"

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_9

    .line 233
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_0

    move-object v9, v8

    .line 298
    .end local v8    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v9, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-object v9

    .line 234
    .end local v9    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_0
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_8

    .line 235
    iget-object v13, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 236
    .local v7, "resolver":Landroid/content/ContentResolver;
    if-eqz v7, :cond_1

    .line 237
    const-string v13, "MMWebui-Switcher"

    const/4 v14, 0x1

    invoke-static {v7, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    sput v13, Lcom/android/server/am/ZuiMMChatPlugin;->mMMWebUISwitcherState:I

    .line 239
    :cond_1
    sget v13, Lcom/android/server/am/ZuiMMChatPlugin;->mMMWebUISwitcherState:I

    if-eqz v13, :cond_9

    .line 240
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 241
    .local v5, "launchFlags":I
    const-string v13, "mActivityDisplays"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/server/am/ZuiMMChatPlugin;->getPrivateMember(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 244
    .local v6, "mActivityDisplays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;>;"
    const/4 v2, 0x0

    .line 245
    .local v2, "bFindMMWebUI":Z
    if-eqz v6, :cond_9

    .line 246
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .local v3, "displayNdx":I
    :goto_1
    if-ltz v3, :cond_5

    .line 247
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v12, v13, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 248
    .local v12, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v11, v13, -0x1

    .local v11, "stackNdx":I
    :goto_2
    if-ltz v11, :cond_4

    .line 249
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStack;

    .line 250
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v13

    if-nez v13, :cond_3

    .line 248
    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 253
    :cond_3
    iget-object v13, v10, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 256
    move-object/from16 v0, p2

    invoke-static {v10, v0}, Lcom/android/server/am/ZuiMMChatPlugin;->getMMWebUITaskLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 257
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    .line 258
    const/4 v2, 0x1

    .line 259
    move-object v8, v1

    .line 260
    const v13, -0x8000001

    and-int/2addr v5, v13

    .line 246
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 265
    .end local v11    # "stackNdx":I
    .end local v12    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5
    if-nez v2, :cond_6

    .line 266
    const/high16 v13, 0x38000000

    or-int/2addr v5, v13

    .line 268
    const/4 v8, 0x0

    .line 270
    :cond_6
    const/high16 v13, 0x100000

    and-int/2addr v13, v5

    if-eqz v13, :cond_7

    .line 272
    const v13, -0x800c001

    and-int/2addr v5, v13

    .line 274
    const/4 v8, 0x0

    .line 280
    :goto_3
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v9, v8

    .line 281
    .end local v8    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_0

    .line 276
    .end local v9    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_7
    const v13, 0x30008000

    or-int/2addr v5, v13

    goto :goto_3

    .line 284
    .end local v2    # "bFindMMWebUI":Z
    .end local v3    # "displayNdx":I
    .end local v5    # "launchFlags":I
    .end local v6    # "mActivityDisplays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;>;"
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    :cond_8
    sget v13, Lcom/android/server/am/ZuiMMChatPlugin;->mMMWebUISwitcherState:I

    if-eqz v13, :cond_9

    .line 285
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_a

    .line 286
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 287
    .restart local v5    # "launchFlags":I
    const/high16 v13, 0x10000

    or-int/2addr v5, v13

    .line 289
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .end local v5    # "launchFlags":I
    :cond_9
    :goto_4
    move-object v9, v8

    .line 298
    .end local v8    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_0

    .line 291
    .end local v9    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_a
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 293
    .restart local v5    # "launchFlags":I
    and-int/lit16 v5, v5, -0x4001

    .line 294
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_4
.end method

.method static removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "recentTasks"    # Lcom/android/server/am/RecentTasks;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    .line 141
    sget v0, Lcom/android/server/am/ZuiMMChatPlugin;->mMMWebUISwitcherState:I

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/RecentTasks;->remove(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 148
    :cond_0
    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, v2, v2, v0, v1}, Lcom/android/server/am/ZuiMMChatPlugin;->sendMMWebuiBroadcast(Lcom/android/server/am/ActivityManagerService;IILjava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    return-void
.end method

.method static sendMMWebuiBroadcast(Lcom/android/server/am/ActivityManagerService;IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "strParam"    # Ljava/lang/String;
    .param p4, "strTag"    # Ljava/lang/String;

    .prologue
    .line 58
    sget v2, Lcom/android/server/am/ZuiMMChatPlugin;->mMMWebUISwitcherState:I

    if-nez v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMChat-Switcher send broadcast - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v2, "BROADCAST_MMCHAT_INTENT_MSG"

    invoke-static {p0, v2}, Lcom/android/server/am/ZuiMMChatPlugin;->getMemberField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 61
    .local v1, "f":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$UiHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method static sendMMWebuiBroadcastEx(Lcom/android/server/am/ActivityManagerService;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 7
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "strTag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    sget v5, Lcom/android/server/am/ZuiMMChatPlugin;->mMMWebUISwitcherState:I

    if-nez v5, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v3

    .line 89
    :cond_1
    if-eqz p1, :cond_0

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "bIsMMWebUIIntent":Z
    const/4 v0, 0x0

    .line 92
    .local v0, "bIsMMMainIntent":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.tencent.mm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 94
    invoke-static {p1}, Lcom/android/server/am/ZuiMMChatPlugin;->getMMWebuiIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 95
    .local v2, "intentE":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 97
    invoke-virtual {v2}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v3, v5, p2}, Lcom/android/server/am/ZuiMMChatPlugin;->sendMMWebuiBroadcast(Lcom/android/server/am/ActivityManagerService;IILjava/lang/String;Ljava/lang/String;)V

    .line 98
    sput-boolean v4, Lcom/android/server/am/ZuiMMChatPlugin;->mLastIsMMChatActivity:Z

    move v3, v4

    .line 99
    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v3, v5, p2}, Lcom/android/server/am/ZuiMMChatPlugin;->sendMMWebuiBroadcast(Lcom/android/server/am/ActivityManagerService;IILjava/lang/String;Ljava/lang/String;)V

    .line 102
    sput-boolean v4, Lcom/android/server/am/ZuiMMChatPlugin;->mLastIsMMChatActivity:Z

    goto :goto_0

    .line 105
    .end local v2    # "intentE":Landroid/content/Intent;
    :cond_3
    sget-boolean v4, Lcom/android/server/am/ZuiMMChatPlugin;->mLastIsMMChatActivity:Z

    if-eqz v4, :cond_0

    .line 106
    invoke-static {p1}, Lcom/android/server/am/ZuiMMChatPlugin;->getMMWebuiIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 107
    .restart local v2    # "intentE":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v3, v4, p2}, Lcom/android/server/am/ZuiMMChatPlugin;->sendMMWebuiBroadcast(Lcom/android/server/am/ActivityManagerService;IILjava/lang/String;Ljava/lang/String;)V

    .line 108
    sput-boolean v3, Lcom/android/server/am/ZuiMMChatPlugin;->mLastIsMMChatActivity:Z

    goto :goto_0
.end method
