.class public Lzui/app/ZuiShutdownProgressDialog;
.super Landroid/app/Dialog;
.source "ZuiShutdownProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;
    }
.end annotation


# static fields
.field private static final DYNAMIC_BLUR:I = 0x2

.field private static final NONE_BLUR:I = 0x0

.field private static final STATIC_BLUR:I = 0x1

.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ZuiShutdownProgressDialog"


# instance fields
.field private mHasStarted:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mRootView:Landroid/view/View;

.field private progressBar:Landroid/widget/ProgressBar;

.field private titleName:Ljava/lang/String;

.field private titleResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 115
    const v0, 0x10304bd

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    iput v1, p0, Lzui/app/ZuiShutdownProgressDialog;->titleResId:I

    .line 47
    iput v1, p0, Lzui/app/ZuiShutdownProgressDialog;->mProgressStyle:I

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bReboot"    # Z

    .prologue
    const/4 v1, 0x0

    .line 119
    const v0, 0x10304bd

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    iput v1, p0, Lzui/app/ZuiShutdownProgressDialog;->titleResId:I

    .line 47
    iput v1, p0, Lzui/app/ZuiShutdownProgressDialog;->mProgressStyle:I

    .line 120
    if-eqz p2, :cond_0

    const v0, 0x10405ef

    :goto_0
    iput v0, p0, Lzui/app/ZuiShutdownProgressDialog;->titleResId:I

    .line 121
    return-void

    .line 120
    :cond_0
    const v0, 0x10405f0

    goto :goto_0
.end method

.method private enableGaussianBlur(I)V
    .locals 7
    .param p1, "blurType"    # I

    .prologue
    .line 105
    :try_start_0
    const-string v3, "android.view.Window"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setBlurBackgroundType_lenovo"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/Window;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 108
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lzui/app/ZuiShutdownProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "LenovoBlurJava"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lzui/app/ZuiShutdownProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a007b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 161
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lzui/app/ZuiShutdownProgressDialog;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 163
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v3, 0x1090120

    invoke-virtual {p0, v3}, Lzui/app/ZuiShutdownProgressDialog;->setContentView(I)V

    .line 130
    const v3, 0x10203ea

    invoke-virtual {p0, v3}, Lzui/app/ZuiShutdownProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lzui/app/ZuiShutdownProgressDialog;->mRootView:Landroid/view/View;

    .line 132
    const v3, 0x10203f7

    invoke-virtual {p0, v3}, Lzui/app/ZuiShutdownProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 133
    .local v1, "title":Landroid/widget/TextView;
    iget v3, p0, Lzui/app/ZuiShutdownProgressDialog;->titleResId:I

    if-eqz v3, :cond_0

    .line 134
    iget v3, p0, Lzui/app/ZuiShutdownProgressDialog;->titleResId:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 143
    :goto_0
    const v3, 0x102000d

    invoke-virtual {p0, v3}, Lzui/app/ZuiShutdownProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lzui/app/ZuiShutdownProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 144
    iget-object v3, p0, Lzui/app/ZuiShutdownProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 146
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lzui/app/ZuiShutdownProgressDialog;->setCancelable(Z)V

    .line 147
    invoke-virtual {p0}, Lzui/app/ZuiShutdownProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 148
    .local v2, "window":Landroid/view/Window;
    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 154
    invoke-virtual {p0}, Lzui/app/ZuiShutdownProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10a007a

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 155
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v3, p0, Lzui/app/ZuiShutdownProgressDialog;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    return-void

    .line 136
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    iget-object v3, p0, Lzui/app/ZuiShutdownProgressDialog;->titleName:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lzui/app/ZuiShutdownProgressDialog;->titleName:Ljava/lang/String;

    goto :goto_1
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/app/ZuiShutdownProgressDialog;->mHasStarted:Z

    .line 78
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/app/ZuiShutdownProgressDialog;->mHasStarted:Z

    .line 84
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 64
    iget v0, p0, Lzui/app/ZuiShutdownProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iput-object p1, p0, Lzui/app/ZuiShutdownProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 87
    iget-boolean v0, p0, Lzui/app/ZuiShutdownProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iput p1, p0, Lzui/app/ZuiShutdownProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 53
    iput p1, p0, Lzui/app/ZuiShutdownProgressDialog;->titleResId:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lzui/app/ZuiShutdownProgressDialog;->titleName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lzui/app/ZuiShutdownProgressDialog;->titleResId:I

    .line 59
    iput-object p1, p0, Lzui/app/ZuiShutdownProgressDialog;->titleName:Ljava/lang/String;

    .line 60
    return-void
.end method
