.class public Lcom/android/server/PermissionDialog;
.super Lcom/android/server/BasePermissionDialog;
.source "PermissionDialog.java"


# static fields
.field static final ACTION_ALLOWED:I = 0x2

.field static final ACTION_IGNORED:I = 0x4

.field static final ACTION_IGNORED_TIMEOUT:I = 0x8

.field static final DISMISS_TIMEOUT:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "PermissionDialog"


# instance fields
.field public final isSuggestDialog:Z

.field final mAccessOp:[Ljava/lang/CharSequence;

.field private mChoice:Landroid/widget/CheckBox;

.field private final mCode:I

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lcom/android/server/AppOpsService;

.field private mToastText:Ljava/lang/String;

.field private mUid:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/AppOpsService;
    .param p3, "code"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "suggestMsg"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct/range {p0 .. p1}, Lcom/android/server/BasePermissionDialog;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/PermissionDialog;->mToastText:Ljava/lang/String;

    .line 175
    new-instance v11, Lcom/android/server/PermissionDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/PermissionDialog$1;-><init>(Lcom/android/server/PermissionDialog;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    .line 74
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 77
    .local v6, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;

    .line 78
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PermissionDialog;->mCode:I

    .line 79
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    .line 80
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PermissionDialog;->mUid:I

    .line 81
    const v11, 0x1070060

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    .line 84
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/PermissionDialog;->setCancelable(Z)V

    .line 86
    if-eqz p6, :cond_1

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/PermissionDialog;->isSuggestDialog:Z

    .line 87
    const v11, 0x1070061

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/PermissionDialog;->mAccessOp:[Ljava/lang/CharSequence;

    .line 88
    if-eqz p6, :cond_2

    .line 89
    const/4 v11, -0x1

    const v12, 0x10405bf

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/PermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 92
    const/4 v11, -0x2

    const v12, 0x10405c0

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/PermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 103
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 105
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v11, v11, 0x110

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PermissionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x10900b6

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/PermissionDialog;->mView:Landroid/view/View;

    .line 112
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PermissionDialog;->mView:Landroid/view/View;

    const v12, 0x10203a1

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TableLayout;

    .line 114
    .local v9, "tl":Landroid/widget/TableLayout;
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PermissionDialog;->mView:Landroid/view/View;

    const v12, 0x10203a0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 117
    .local v10, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PermissionDialog;->mView:Landroid/view/View;

    const v12, 0x10203a2

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/PermissionDialog;->mChoice:Landroid/widget/CheckBox;

    .line 119
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/PermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "name":Ljava/lang/String;
    if-eqz p6, :cond_3

    .line 121
    const v11, 0x10405c1

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PermissionDialog;->mAccessOp:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/PermissionDialog;->mCode:I

    aget-object v14, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    const/4 v13, 0x2

    aput-object p6, v12, v13

    invoke-virtual {v6, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "tips":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/PermissionDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 150
    .end local v8    # "tips":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/PermissionDialog;->isSuggestDialog:Z

    if-nez v11, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const-wide/16 v14, 0x3a98

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 157
    :cond_0
    return-void

    .line 86
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "name":Ljava/lang/String;
    .end local v9    # "tl":Landroid/widget/TableLayout;
    .end local v10    # "tv":Landroid/widget/TextView;
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 95
    :cond_2
    const/4 v11, -0x1

    const v12, 0x104043d

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/PermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 98
    const/4 v11, -0x2

    const v12, 0x10405be

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/PermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 126
    .restart local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v9    # "tl":Landroid/widget/TableLayout;
    .restart local v10    # "tv":Landroid/widget/TextView;
    :cond_3
    if-nez v5, :cond_4

    .line 127
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    .line 131
    :cond_4
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x10405c3

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x10405c4

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PermissionDialog;->mCode:I

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/PermissionDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_3
    const v11, 0x10405c3

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "leftQuote":Ljava/lang/String;
    const v11, 0x10405c4

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "rightQuote":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x10405c7

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x10405c8

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PermissionDialog;->mAccessOp:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PermissionDialog;->mCode:I

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/PermissionDialog;->mToastText:Ljava/lang/String;

    goto/16 :goto_2

    .line 133
    .end local v4    # "leftQuote":Ljava/lang/String;
    .end local v7    # "rightQuote":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 135
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/server/PermissionDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mChoice:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/PermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/PermissionDialog;->mCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/PermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/PermissionDialog;->mUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/PermissionDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PermissionDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mToastText:Ljava/lang/String;

    return-object v0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 163
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x2200

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 172
    :cond_0
    :goto_0
    return-object v3

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public show()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/server/BasePermissionDialog;->show()V

    .line 216
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/PermissionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 217
    .local v0, "positive":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 218
    const v1, -0xeb6609

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 220
    :cond_0
    return-void
.end method
