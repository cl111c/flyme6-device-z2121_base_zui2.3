.class public Lcom/android/server/pm/XuiSafeAlertDialog$Builder;
.super Ljava/lang/Object;
.source "XuiSafeAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/XuiSafeAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mButtonNegativeText:Ljava/lang/String;

.field private mButtonPositiveText:Ljava/lang/String;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mMessage:Ljava/lang/String;

.field private mMessageContentText:Ljava/lang/String;

.field private mMessageContentonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/XuiSafeAlertDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/XuiSafeAlertDialog$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/XuiSafeAlertDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/XuiSafeAlertDialog$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/XuiSafeAlertDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/XuiSafeAlertDialog$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mMessageContentonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/android/server/pm/XuiSafeAlertDialog;
    .locals 10

    .prologue
    const v9, 0x10203ab

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, -0x2

    const v5, 0x10203a9

    .line 196
    iget-object v3, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 197
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/server/pm/XuiSafeAlertDialog;

    iget-object v3, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mContext:Landroid/content/Context;

    const v4, 0x103000b

    invoke-direct {v0, v3, v4}, Lcom/android/server/pm/XuiSafeAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 198
    .local v0, "dialog":Lcom/android/server/pm/XuiSafeAlertDialog;
    invoke-virtual {v0}, Lcom/android/server/pm/XuiSafeAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 199
    invoke-virtual {v0, v7}, Lcom/android/server/pm/XuiSafeAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 200
    const v3, 0x10900b9

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 201
    .local v2, "layout":Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/XuiSafeAlertDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    const v3, 0x10203a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v3, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mButtonPositiveText:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 206
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mButtonPositiveText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v3, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_0

    .line 208
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/android/server/pm/XuiSafeAlertDialog$Builder$1;

    invoke-direct {v4, p0, v0}, Lcom/android/server/pm/XuiSafeAlertDialog$Builder$1;-><init>(Lcom/android/server/pm/XuiSafeAlertDialog$Builder;Lcom/android/server/pm/XuiSafeAlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mButtonNegativeText:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 221
    const v3, 0x10203ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mButtonNegativeText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_1

    .line 223
    const v3, 0x10203ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/android/server/pm/XuiSafeAlertDialog$Builder$2;

    invoke-direct {v4, p0, v0}, Lcom/android/server/pm/XuiSafeAlertDialog$Builder$2;-><init>(Lcom/android/server/pm/XuiSafeAlertDialog$Builder;Lcom/android/server/pm/XuiSafeAlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mMessageContentText:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 236
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 237
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mMessageContentText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v3, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mMessageContentonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_2

    .line 239
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lcom/android/server/pm/XuiSafeAlertDialog$Builder$3;

    invoke-direct {v4, p0, v0}, Lcom/android/server/pm/XuiSafeAlertDialog$Builder$3;-><init>(Lcom/android/server/pm/XuiSafeAlertDialog$Builder;Lcom/android/server/pm/XuiSafeAlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mMessage:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 252
    const v3, 0x10203a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_3
    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/server/pm/XuiSafeAlertDialog;->setContentView(Landroid/view/View;)V

    .line 260
    return-object v0

    .line 216
    :cond_4
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 231
    :cond_5
    const v3, 0x10203ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 247
    :cond_6
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 253
    :cond_7
    iget-object v3, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mContentView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 256
    const v3, 0x10203a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 257
    const v3, 0x10203a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mContentView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method public setContentView(Landroid/view/View;)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mContentView:Landroid/view/View;

    .line 117
    return-object p0
.end method

.method public setMessage(I)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mMessage:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mMessage:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public setMessageContentText(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;
    .locals 1
    .param p1, "messageText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mMessageContentText:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mMessageContentonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 177
    return-object p0
.end method

.method public setMessageContentText(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;
    .locals 0
    .param p1, "messageText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mMessageContentText:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mMessageContentonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 189
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mButtonNegativeText:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 153
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mButtonNegativeText:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 165
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mButtonPositiveText:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 129
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mButtonPositiveText:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 141
    return-object p0
.end method

.method public setTitle(I)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mTitle:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/server/pm/XuiSafeAlertDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mTitle:Ljava/lang/String;

    .line 105
    return-object p0
.end method
