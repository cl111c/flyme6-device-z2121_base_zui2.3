.class public Lcom/android/internal/app/ActionController;
.super Lcom/android/internal/app/AlertController;
.source "ActionController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessageTitleTextAppearance:I

.field private mMessageTitleWidth:I

.field private mTwoLinesMessageTitleHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;
    .param p4, "topButton"    # Z

    .prologue
    const v6, 0x109001d

    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 40
    iput-object p1, p0, Lcom/android/internal/app/ActionController;->mContext:Landroid/content/Context;

    .line 41
    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->ActionDialog:[I

    const v3, 0x1160116

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz p4, :cond_0

    .line 45
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mAlertDialogLayout:I

    .line 51
    :goto_0
    const/4 v1, 0x4

    const v2, 0x1090113

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mListItemLayout:I

    .line 54
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mTitleMinHeight:I

    .line 55
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mTitleOnlyMaxLines:I

    .line 56
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mTitleOnlyGravity:I

    .line 57
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mTitleOnlyVerticalPadding:I

    .line 59
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mMessageViewPaddingWidth:I

    .line 61
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mMessageViewPaddingHeight:I

    .line 63
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mTitleExtraPadding:I

    .line 64
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mMessageTitleTextAppearance:I

    .line 66
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mMessageTitleWidth:I

    .line 68
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mCustomizedViewTitlePadding:I

    .line 70
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mTwoLinesMessageTitleHeight:I

    .line 72
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mMessageOnlyHeight:I

    .line 74
    iput-boolean v4, p0, Lcom/android/internal/app/ActionController;->mVertical3Buttons:Z

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void

    .line 48
    :cond_0
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ActionController;->mAlertDialogLayout:I

    goto :goto_0
.end method


# virtual methods
.method public getAllowedMaxHeight()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, -0x1

    return v0
.end method

.method public installContent()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 80
    invoke-super {p0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 81
    iget-boolean v1, p0, Lcom/android/internal/app/ActionController;->mMessageTitle:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ActionController;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/internal/app/ActionController;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/app/ActionController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/app/ActionController;->mMessageTitleTextAppearance:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 83
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/internal/app/ActionController;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/ActionController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/ActionController;->mMessageTitleWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 86
    .local v0, "messageLayout":Landroid/text/StaticLayout;
    iget-object v1, p0, Lcom/android/internal/app/ActionController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 87
    .local v8, "titleTemplate":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_0

    .line 88
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 89
    .local v9, "topPanel":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_0

    .line 90
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    invoke-virtual {v9, v1, v10, v2, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    .end local v9    # "topPanel":Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-le v1, v7, :cond_2

    .line 95
    iget-object v1, p0, Lcom/android/internal/app/ActionController;->mTitleView:Landroid/widget/TextView;

    const v2, 0x800013

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    iget-object v1, p0, Lcom/android/internal/app/ActionController;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/internal/app/ActionController;->mTwoLinesMessageTitleHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ActionController;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 103
    .end local v0    # "messageLayout":Landroid/text/StaticLayout;
    .end local v8    # "titleTemplate":Landroid/widget/LinearLayout;
    :cond_1
    return-void

    .line 98
    .restart local v0    # "messageLayout":Landroid/text/StaticLayout;
    .restart local v8    # "titleTemplate":Landroid/widget/LinearLayout;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ActionController;->mTitleView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    iget-object v1, p0, Lcom/android/internal/app/ActionController;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/internal/app/ActionController;->mTitleMinHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    goto :goto_0
.end method
