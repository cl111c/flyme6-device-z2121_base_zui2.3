.class public Landroid/app/ProgressDialog;
.super Landroid/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I

.field private static mCustomized:Z

.field private static mTitlePaddingTop:I


# instance fields
.field private mFlymeSpinnerBackground:Landroid/graphics/drawable/Drawable;

.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 85
    invoke-direct {p0}, Landroid/app/ProgressDialog;->initFormats()V

    .line 87
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;->checkCustomizedFlag(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 93
    invoke-direct {p0}, Landroid/app/ProgressDialog;->initFormats()V

    .line 95
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;->checkCustomizedFlag(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Landroid/app/ProgressDialog;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/ProgressDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/ProgressDialog;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/app/ProgressDialog;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Landroid/app/ProgressDialog;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/app/ProgressDialog;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkCustomizedFlag(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 376
    iget-object v1, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v4, #android:attr@alertDialogStyle#t

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 379
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    sput-boolean v1, Landroid/app/ProgressDialog;->mCustomized:Z

    .line 381
    const/16 v1, 0x1f

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sput v1, Landroid/app/ProgressDialog;->mTitlePaddingTop:I

    .line 383
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 384
    return-void
.end method

.method private initFormats()V
    .locals 2

    .prologue
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-direct/range {p0 .. p0}, Landroid/app/ProgressDialog;->initFlymeExtraFields()V

    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 372
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 112
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 117
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 123
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 127
    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 128
    invoke-virtual {v0, p5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 129
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 130
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 255
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 275
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 277
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 284
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 286
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 320
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, #android:id@progress#t

    const/4 v7, 0x0

    .line 135
    iget-object v3, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 136
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v5, #android:attr@alertDialogStyle#t

    const/4 v6, 0x0

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v3, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 144
    new-instance v3, Landroid/app/ProgressDialog$1;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog$1;-><init>(Landroid/app/ProgressDialog;)V

    iput-object v3, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 169
    const/16 v3, 0x13

    const v4, #android:layout@alert_dialog_progress#t

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 172
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    const v3, #android:id@progress_number#t

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    const v3, #android:id@progress_percent#t

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 175
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 184
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    iget v3, p0, Landroid/app/ProgressDialog;->mMax:I

    if-lez v3, :cond_0

    .line 186
    iget v3, p0, Landroid/app/ProgressDialog;->mMax:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 188
    :cond_0
    iget v3, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    if-lez v3, :cond_1

    .line 189
    iget v3, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 191
    :cond_1
    iget v3, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v3, :cond_2

    .line 192
    iget v3, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 194
    :cond_2
    iget v3, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    if-lez v3, :cond_3

    .line 195
    iget v3, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 197
    :cond_3
    iget v3, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v3, :cond_4

    .line 198
    iget v3, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 200
    :cond_4
    iget-object v3, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 201
    iget-object v3, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    :cond_5
    iget-object v3, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 204
    iget-object v3, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_6
    iget-object v3, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    .line 207
    iget-object v3, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 209
    :cond_7
    iget-boolean v3, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 210
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 211
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 212
    return-void

    .line 177
    .end local v2    # "view":Landroid/view/View;
    :cond_8
    const/16 v3, 0x12

    const v4, #android:layout@progress_dialog#t

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 180
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    const v3, #android:id@message#t

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 182
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    .line 218
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    .line 224
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    iput-boolean p1, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 301
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iput-object p1, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 266
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 268
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 325
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 326
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 327
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 334
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Landroid/app/ProgressDialog;->setFlymeMessageViewVisibility()V

    goto :goto_0

    .line 332
    :cond_1
    iput-object p1, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 227
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 229
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 293
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 350
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 351
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 362
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 363
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 364
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 337
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 338
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 236
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 238
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 389
    iput-object p1, p0, Landroid/app/ProgressDialog;->mTitle:Ljava/lang/CharSequence;

    .line 390
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 394
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 395
    sget-boolean v3, Landroid/app/ProgressDialog;->mCustomized:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    if-nez v3, :cond_0

    .line 396
    iget-object v3, p0, Landroid/app/ProgressDialog;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 397
    iget-object v3, p0, Landroid/app/ProgressDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v2, v3, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 398
    .local v2, "titleView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 399
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 400
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    sget v4, Landroid/app/ProgressDialog;->mTitlePaddingTop:I

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 402
    const/16 v3, 0x51

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 403
    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 404
    .local v1, "titleRootView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 416
    .end local v1    # "titleRootView":Landroid/view/View;
    .end local v2    # "titleView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v3, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 409
    iget-object v3, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 410
    .local v0, "parentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v3, v6, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private initFlymeExtraFields()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_toast_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProgressDialog;->mFlymeSpinnerBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private setFlymeMessageViewVisibility()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected applyMeizuStyle(Landroid/app/AlertDialog;)V
    .locals 25
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    const v21, #android:id@mask#t

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .local v15, "idView":Landroid/view/View;
    if-nez v15, :cond_0

    return-void

    :cond_0
    const v21, #android:id@parentPanel#t

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .local v18, "parentPanel":Landroid/view/View;
    const v21, #android:id@buttonPanel#t

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .local v8, "buttonPanel":Landroid/view/View;
    const v21, #android:id@customPanel#t

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .local v12, "customPanel":Landroid/view/View;
    const v21, #android:id@contentPanel#t

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .local v10, "contentPanel":Landroid/view/View;
    const v21, #android:id@topPanel#t

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .local v19, "topPanel":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_2

    const/16 v20, 0x1

    .local v20, "topVisible":Z
    :goto_0
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_3

    const/4 v11, 0x1

    .local v11, "contentVisible":Z
    :goto_1
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_4

    const/4 v13, 0x1

    .local v13, "customVisible":Z
    :goto_2
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_5

    const/4 v9, 0x1

    .local v9, "buttonVisible":Z
    :goto_3
    const/16 v5, 0x20

    .local v5, "MIN_HEIGHT":I
    const/16 v6, 0x20

    .local v6, "MIN_WIDTH":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/ProgressDialog;->mProgressStyle:I

    move/from16 v21, v0

    if-nez v21, :cond_1

    if-nez v9, :cond_1

    if-eqz v11, :cond_6

    :cond_1
    :goto_4
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestLayout()V

    return-void

    .end local v5    # "MIN_HEIGHT":I
    .end local v6    # "MIN_WIDTH":I
    .end local v9    # "buttonVisible":Z
    .end local v11    # "contentVisible":Z
    .end local v13    # "customVisible":Z
    .end local v20    # "topVisible":Z
    :cond_2
    const/16 v20, 0x0

    .restart local v20    # "topVisible":Z
    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "contentVisible":Z
    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    .restart local v13    # "customVisible":Z
    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "buttonVisible":Z
    goto :goto_3

    .restart local v5    # "MIN_HEIGHT":I
    .restart local v6    # "MIN_WIDTH":I
    :cond_6
    if-eqz v13, :cond_1

    if-nez v20, :cond_1

    const/16 v21, 0x20

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->setMinimumHeight(I)V

    const/16 v21, 0x20

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const v21, #android:id@custom#t

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    .local v14, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .local v16, "lpFrame":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v21, 0x11

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ProgressDialog;->mFlymeSpinnerBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct/range {p0 .. p0}, Landroid/app/ProgressDialog;->setFlymeMessageViewVisibility()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    const v21, #android:id@body#t

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .local v7, "body":Landroid/view/View;
    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_8
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .local v17, "lpParent":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v21, -0x2

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v21, 0x20

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    goto/16 :goto_4
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setSpinnerBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Landroid/app/ProgressDialog;->mFlymeSpinnerBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method
