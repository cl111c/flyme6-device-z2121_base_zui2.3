.class final Landroid/widget/ProgressBar$4;
.super Landroid/util/IntProperty;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty",
        "<",
        "Landroid/widget/ProgressBar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 1427
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/widget/ProgressBar;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Landroid/widget/ProgressBar;

    .prologue
    .line 1430
    # getter for: Landroid/widget/ProgressBar;->mProgressAlpha:I
    invoke-static {p1}, Landroid/widget/ProgressBar;->access$1100(Landroid/widget/ProgressBar;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1427
    check-cast p1, Landroid/widget/ProgressBar;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar$4;->get(Landroid/widget/ProgressBar;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/widget/ProgressBar;I)V
    .locals 0
    .param p1, "object"    # Landroid/widget/ProgressBar;
    .param p2, "value"    # I

    .prologue
    .line 1435
    # setter for: Landroid/widget/ProgressBar;->mProgressAlpha:I
    invoke-static {p1, p2}, Landroid/widget/ProgressBar;->access$1102(Landroid/widget/ProgressBar;I)I

    .line 1436
    # invokes: Landroid/widget/ProgressBar;->scaleProgressAlpha()V
    invoke-static {p1}, Landroid/widget/ProgressBar;->access$1000(Landroid/widget/ProgressBar;)V

    .line 1438
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 1427
    check-cast p1, Landroid/widget/ProgressBar;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar$4;->setValue(Landroid/widget/ProgressBar;I)V

    return-void
.end method
