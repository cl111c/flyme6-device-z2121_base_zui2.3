.class public Landroid/widget/Editor$EditOperation;
.super Landroid/content/UndoOperation;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/UndoOperation",
        "<",
        "Landroid/widget/Editor;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Landroid/widget/Editor$EditOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_DELETE:I = 0x1

.field private static final TYPE_INSERT:I = 0x0

.field private static final TYPE_REPLACE:I = 0x2


# instance fields
.field private mNewCursorPos:I

.field private mNewText:Ljava/lang/String;

.field private mNewTextStart:I

.field private mOldCursorPos:I

.field private mOldText:Ljava/lang/String;

.field private mOldTextStart:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5640
    new-instance v0, Landroid/widget/Editor$EditOperation$1;

    invoke-direct {v0}, Landroid/widget/Editor$EditOperation$1;-><init>()V

    sput-object v0, Landroid/widget/Editor$EditOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 5445
    invoke-direct {p0, p1, p2}, Landroid/content/UndoOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 5446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 5447
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 5448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    .line 5449
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 5450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    .line 5451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 5452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 5453
    return-void
.end method

.method public constructor <init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "oldText"    # Ljava/lang/String;
    .param p3, "dstart"    # I
    .param p4, "newText"    # Ljava/lang/String;

    .prologue
    .line 5420
    # getter for: Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;
    invoke-static {p1}, Landroid/widget/Editor;->access$4700(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/UndoOperation;-><init>(Landroid/content/UndoOwner;)V

    .line 5421
    iput-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 5422
    iput-object p4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 5428
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 5429
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 5430
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    .line 5440
    :goto_0
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 5441
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 5442
    return-void

    .line 5431
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 5432
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 5433
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    goto :goto_0

    .line 5435
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 5436
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    iput p3, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    goto :goto_0
.end method

.method static synthetic access$4800(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$EditOperation;
    .param p1, "x1"    # Landroid/widget/Editor$EditOperation;

    .prologue
    .line 5401
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    return v0
.end method

.method private getNewTextEnd()I
    .locals 2

    .prologue
    .line 5467
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getOldTextEnd()I
    .locals 2

    .prologue
    .line 5471
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5617
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 5625
    const-string v0, ""

    :goto_0
    return-object v0

    .line 5619
    :pswitch_0
    const-string v0, "insert"

    goto :goto_0

    .line 5621
    :pswitch_1
    const-string v0, "delete"

    goto :goto_0

    .line 5623
    :pswitch_2
    const-string v0, "replace"

    goto :goto_0

    .line 5617
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 4
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5538
    iget v2, p1, Landroid/widget/Editor$EditOperation;->mType:I

    if-eq v2, v1, :cond_1

    .line 5548
    :cond_0
    :goto_0
    return v0

    .line 5542
    :cond_1
    iget v2, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 5545
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    .line 5546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 5547
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    move v0, v1

    .line 5548
    goto :goto_0
.end method

.method private mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 3
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .prologue
    const/4 v0, 0x0

    .line 5523
    iget v1, p1, Landroid/widget/Editor$EditOperation;->mType:I

    if-eqz v1, :cond_1

    .line 5532
    :cond_0
    :goto_0
    return v0

    .line 5527
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v1

    iget v2, p1, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    if-ne v1, v2, :cond_0

    .line 5530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 5531
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 5532
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 2
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .prologue
    .line 5553
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    iget v1, p1, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    if-eq v0, v1, :cond_1

    .line 5554
    :cond_0
    const/4 v0, 0x0

    .line 5559
    :goto_0
    return v0

    .line 5556
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 5557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 5558
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 5559
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mergeWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 1
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .prologue
    .line 5509
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 5517
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5511
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    goto :goto_0

    .line 5513
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    goto :goto_0

    .line 5515
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    goto :goto_0

    .line 5509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "deleteFrom"    # I
    .param p2, "deleteTo"    # I
    .param p3, "newText"    # Ljava/lang/CharSequence;
    .param p4, "newTextInsertAt"    # I
    .param p5, "newCursorPos"    # I

    .prologue
    .line 5599
    # invokes: Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z
    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->access$4900(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    if-gt p4, v0, :cond_1

    .line 5601
    if-eq p1, p2, :cond_0

    .line 5602
    invoke-interface {p0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 5604
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5605
    invoke-interface {p0, p4, p3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 5611
    :cond_1
    if-ltz p5, :cond_2

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt p5, v0, :cond_2

    .line 5612
    invoke-static {p0, p5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 5614
    :cond_2
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 0

    .prologue
    .line 5476
    return-void
.end method

.method public forceMergeWith(Landroid/widget/Editor$EditOperation;)V
    .locals 10
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .prologue
    const/4 v9, 0x0

    .line 5568
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/Editor;

    .line 5574
    .local v8, "editor":Landroid/widget/Editor;
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Editable;

    .line 5575
    .local v7, "editable":Landroid/text/Editable;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5578
    .local v0, "originalText":Landroid/text/Editable;
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    iget v4, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 5582
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5583
    .local v1, "finalText":Landroid/text/Editable;
    iget v2, p1, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    iget-object v4, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v5, p1, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    iget v6, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-static/range {v1 .. v6}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 5587
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 5588
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 5589
    iput v9, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    .line 5590
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 5591
    iput v9, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    .line 5592
    iget v2, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v2, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 5594
    return-void
.end method

.method public redo()V
    .locals 7

    .prologue
    .line 5492
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/Editor;

    .line 5493
    .local v6, "editor":Landroid/widget/Editor;
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 5494
    .local v0, "text":Landroid/text/Editable;
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v4, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 5496
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mOldText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mOldTextStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNewText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNewTextStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mOldCursorPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNewCursorPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public undo()V
    .locals 7

    .prologue
    .line 5482
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/Editor;

    .line 5483
    .local v6, "editor":Landroid/widget/Editor;
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 5484
    .local v0, "text":Landroid/text/Editable;
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    iget v4, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 5486
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 5457
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5458
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5459
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5460
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5461
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5462
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5463
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5464
    return-void
.end method
