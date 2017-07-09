.class public Landroid/app/ActionDialog$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "ActionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mMessageTitle:Z

.field private mTheme:I

.field private mTopButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/app/ActionDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/ActionDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-static {p1, p2}, Landroid/app/ActionDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 148
    iput-boolean v1, p0, Landroid/app/ActionDialog$Builder;->mTopButton:Z

    .line 149
    iput-boolean v1, p0, Landroid/app/ActionDialog$Builder;->mMessageTitle:Z

    .line 164
    invoke-static {p1, p2}, Landroid/app/ActionDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActionDialog$Builder;->mTheme:I

    .line 165
    return-void
.end method


# virtual methods
.method public create()Landroid/app/ActionDialog;
    .locals 6

    .prologue
    .line 703
    new-instance v0, Landroid/app/ActionDialog;

    iget-object v2, p0, Landroid/app/ActionDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/ActionDialog$Builder;->mTheme:I

    const/4 v4, 0x0

    iget-boolean v5, p0, Landroid/app/ActionDialog$Builder;->mTopButton:Z

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/ActionDialog;-><init>(Landroid/content/Context;IZZ)V

    .line 704
    .local v0, "dialog":Landroid/app/ActionDialog;
    iget-object v2, v0, Landroid/app/ActionDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget-boolean v3, p0, Landroid/app/ActionDialog$Builder;->mMessageTitle:Z

    iput-boolean v3, v2, Lcom/android/internal/app/AlertController;->mMessageTitle:Z

    .line 705
    iget-object v2, p0, Landroid/app/ActionDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, v0, Landroid/app/ActionDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 706
    iget-object v2, p0, Landroid/app/ActionDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v2}, Landroid/app/ActionDialog;->setCancelable(Z)V

    .line 707
    iget-object v2, p0, Landroid/app/ActionDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v2, :cond_0

    .line 708
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionDialog;->setCanceledOnTouchOutside(Z)V

    .line 710
    :cond_0
    iget-object v2, p0, Landroid/app/ActionDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v2}, Landroid/app/ActionDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 711
    iget-object v2, p0, Landroid/app/ActionDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v2}, Landroid/app/ActionDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 712
    iget-object v2, p0, Landroid/app/ActionDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v2, :cond_1

    .line 713
    iget-object v2, p0, Landroid/app/ActionDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/ActionDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 715
    :cond_1
    iget-object v2, p0, Landroid/app/ActionDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/app/ActionDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v2, :cond_2

    .line 716
    iget-object v2, v0, Landroid/app/ActionDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 717
    invoke-virtual {p0}, Landroid/app/ActionDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 718
    .local v1, "styledAttributes":Landroid/content/res/TypedArray;
    iget-object v2, v0, Landroid/app/ActionDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/16 v3, 0x14b

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 719
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 723
    .end local v1    # "styledAttributes":Landroid/content/res/TypedArray;
    :cond_2
    return-object v0
.end method

.method public bridge synthetic create()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/app/ActionDialog$Builder;->create()Landroid/app/ActionDialog;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 430
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    return-object p0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ListAdapter;
    .param p2, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/app/ActionDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setButtonTop(Z)V
    .locals 0
    .param p1, "topButton"    # Z

    .prologue
    .line 737
    iput-boolean p1, p0, Landroid/app/ActionDialog$Builder;->mTopButton:Z

    .line 738
    return-void
.end method

.method public setCancelable(Z)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 356
    return-object p0
.end method

.method public bridge synthetic setCancelable(Z)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setCancelable(Z)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 448
    invoke-super {p0, p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    .line 449
    return-object p0
.end method

.method public bridge synthetic setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActionDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 224
    return-object p0
.end method

.method public bridge synthetic setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(I)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "iconId"    # I

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 254
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 264
    return-object p0
.end method

.method public bridge synthetic setIcon(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setIcon(I)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIconAttribute(I)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "attrId"    # I

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 274
    return-object p0
.end method

.method public bridge synthetic setIconAttribute(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setIconAttribute(I)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setInverseBackgroundForced(Z)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 682
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 683
    return-object p0
.end method

.method public bridge synthetic setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 404
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 415
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    return-object p0
.end method

.method public bridge synthetic setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/app/ActionDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/CharSequence;
    .param p2, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/app/ActionDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(I)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 234
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 244
    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setMessage(I)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessageTitle(I)Landroid/app/ActionDialog$Builder;
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActionDialog$Builder;->mMessageTitle:Z

    .line 197
    return-object p0
.end method

.method public setMessageTitle(Ljava/lang/CharSequence;)Landroid/app/ActionDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActionDialog$Builder;->mMessageTitle:Z

    .line 208
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 472
    invoke-super {p0, p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 473
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 520
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 521
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 495
    invoke-super {p0, p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 496
    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # [Z
    .param p3, "x2"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActionDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActionDialog$Builder;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/CharSequence;
    .param p2, "x1"    # [Z
    .param p3, "x2"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActionDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 321
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    return-object p0
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/app/ActionDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 333
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 345
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 346
    return-object p0
.end method

.method public bridge synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/app/ActionDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/app/ActionDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 374
    return-object p0
.end method

.method public bridge synthetic setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 384
    return-object p0
.end method

.method public bridge synthetic setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 614
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;

    .line 615
    return-object p0
.end method

.method public bridge synthetic setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 393
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    return-object p0
.end method

.method public bridge synthetic setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 286
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 297
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/app/ActionDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/app/ActionDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRecycleOnMeasureEnabled(Z)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 690
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setRecycleOnMeasureEnabled(Z)Landroid/app/AlertDialog$Builder;

    .line 691
    return-object p0
.end method

.method public bridge synthetic setRecycleOnMeasureEnabled(Z)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setRecycleOnMeasureEnabled(Z)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 541
    invoke-super {p0, p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 563
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 564
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 601
    invoke-super {p0, p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 602
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 582
    invoke-super {p0, p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 583
    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActionDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActionDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ListAdapter;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActionDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActionDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Landroid/app/ActionDialog$Builder;
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActionDialog$Builder;->mMessageTitle:Z

    .line 175
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/ActionDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActionDialog$Builder;->mMessageTitle:Z

    .line 186
    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setTitle(I)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setView(I)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "layoutResId"    # I

    .prologue
    .line 627
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 628
    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 640
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 641
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Landroid/app/ActionDialog$Builder;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 668
    invoke-super/range {p0 .. p5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 670
    return-object p0
.end method

.method public bridge synthetic setView(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setView(I)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/app/ActionDialog$Builder;->setView(Landroid/view/View;)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 146
    invoke-virtual/range {p0 .. p5}, Landroid/app/ActionDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/ActionDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public show()Landroid/app/ActionDialog;
    .locals 1

    .prologue
    .line 731
    invoke-virtual {p0}, Landroid/app/ActionDialog$Builder;->create()Landroid/app/ActionDialog;

    move-result-object v0

    .line 732
    .local v0, "dialog":Landroid/app/ActionDialog;
    invoke-virtual {v0}, Landroid/app/ActionDialog;->show()V

    .line 733
    return-object v0
.end method

.method public bridge synthetic show()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/app/ActionDialog$Builder;->show()Landroid/app/ActionDialog;

    move-result-object v0

    return-object v0
.end method
