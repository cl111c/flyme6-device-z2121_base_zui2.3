.class public Landroid/app/ProgressDialogX;
.super Landroid/app/Dialog;
.source "ProgressDialogX.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProgressDialogX"


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mMax:I

.field private messageName:Ljava/lang/CharSequence;

.field private messageResId:I

.field private messageView:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressBarStyle:I

.field private progressBarVal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-static {p1}, Landroid/app/ProgressDialogX;->resolveDialogTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    iput v1, p0, Landroid/app/ProgressDialogX;->progressBarStyle:I

    .line 44
    iput v1, p0, Landroid/app/ProgressDialogX;->messageResId:I

    .line 54
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 58
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x116011d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 60
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/app/ProgressDialogX;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/app/ProgressDialogX;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/ProgressDialogX;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/app/ProgressDialogX;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/app/ProgressDialogX;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/ProgressDialogX;->progressBarVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 163
    iget-object v0, p0, Landroid/app/ProgressDialogX;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/app/ProgressDialogX;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialogX;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressDialogX;->mIncrementBy:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 88
    iget-object v2, p0, Landroid/app/ProgressDialogX;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 89
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Landroid/app/ProgressDialogX;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->progressDialogX:[I

    const v5, 0x116011d

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Landroid/app/ProgressDialogX;->progressBarStyle:I

    if-ne v2, v7, :cond_3

    .line 93
    const v2, 0x1090037

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialogX;->setContentView(I)V

    .line 101
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    const v2, 0x102000b

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialogX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/app/ProgressDialogX;->messageView:Landroid/widget/TextView;

    .line 104
    iget v2, p0, Landroid/app/ProgressDialogX;->messageResId:I

    if-eqz v2, :cond_4

    .line 105
    iget v2, p0, Landroid/app/ProgressDialogX;->messageResId:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialogX;->setMessage(I)V

    .line 109
    :goto_1
    const v2, 0x102000d

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialogX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Landroid/app/ProgressDialogX;->progressBar:Landroid/widget/ProgressBar;

    .line 110
    iget v2, p0, Landroid/app/ProgressDialogX;->mMax:I

    if-lez v2, :cond_0

    .line 111
    iget v2, p0, Landroid/app/ProgressDialogX;->mMax:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialogX;->setMax(I)V

    .line 113
    :cond_0
    iget v2, p0, Landroid/app/ProgressDialogX;->progressBarVal:I

    if-lez v2, :cond_1

    .line 114
    iget v2, p0, Landroid/app/ProgressDialogX;->progressBarVal:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialogX;->setProgress(I)V

    .line 116
    :cond_1
    iget v2, p0, Landroid/app/ProgressDialogX;->mIncrementBy:I

    if-lez v2, :cond_2

    .line 117
    iget v2, p0, Landroid/app/ProgressDialogX;->mIncrementBy:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialogX;->incrementProgressBy(I)V

    .line 119
    :cond_2
    return-void

    .line 97
    :cond_3
    const v2, 0x10900ec

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialogX;->setContentView(I)V

    goto :goto_0

    .line 107
    :cond_4
    iget-object v2, p0, Landroid/app/ProgressDialogX;->messageName:Ljava/lang/CharSequence;

    if-nez v2, :cond_5

    const-string v2, ""

    :goto_2
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Landroid/app/ProgressDialogX;->messageName:Ljava/lang/CharSequence;

    goto :goto_2
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProgressDialogX;->mHasStarted:Z

    .line 124
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ProgressDialogX;->mHasStarted:Z

    .line 129
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 155
    iget-object v0, p0, Landroid/app/ProgressDialogX;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/app/ProgressDialogX;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialogX;->mMax:I

    goto :goto_0
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 63
    iput p1, p0, Landroid/app/ProgressDialogX;->messageResId:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ProgressDialogX;->messageName:Ljava/lang/CharSequence;

    .line 65
    iget-object v0, p0, Landroid/app/ProgressDialogX;->messageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 66
    iget v0, p0, Landroid/app/ProgressDialogX;->messageResId:I

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Landroid/app/ProgressDialogX;->messageView:Landroid/widget/TextView;

    iget v1, p0, Landroid/app/ProgressDialogX;->messageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Landroid/app/ProgressDialogX;->messageView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/app/ProgressDialogX;->messageName:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/app/ProgressDialogX;->messageName:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ProgressDialogX;->messageResId:I

    .line 75
    iput-object p1, p0, Landroid/app/ProgressDialogX;->messageName:Ljava/lang/CharSequence;

    .line 76
    iget-object v0, p0, Landroid/app/ProgressDialogX;->messageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 77
    iget v0, p0, Landroid/app/ProgressDialogX;->messageResId:I

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Landroid/app/ProgressDialogX;->messageView:Landroid/widget/TextView;

    iget v1, p0, Landroid/app/ProgressDialogX;->messageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Landroid/app/ProgressDialogX;->messageView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/app/ProgressDialogX;->messageName:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/app/ProgressDialogX;->messageName:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/app/ProgressDialogX;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/app/ProgressDialogX;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialogX;->progressBarVal:I

    goto :goto_0
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 131
    iput p1, p0, Landroid/app/ProgressDialogX;->progressBarStyle:I

    .line 132
    return-void
.end method
