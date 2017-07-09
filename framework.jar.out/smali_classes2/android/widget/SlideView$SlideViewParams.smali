.class public Landroid/widget/SlideView$SlideViewParams;
.super Ljava/lang/Object;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlideViewParams"
.end annotation


# instance fields
.field private mBgColor:I

.field private mBgPressedColor:I

.field private mLayoutId:I

.field private mLeftEmptyWidth:I

.field private mLeftSlideThreshold:I

.field private mRightSlideThreshold:I

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private mText:Ljava/lang/CharSequence;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput v0, p0, Landroid/widget/SlideView$SlideViewParams;->mBgColor:I

    .line 691
    iput v0, p0, Landroid/widget/SlideView$SlideViewParams;->mBgPressedColor:I

    .line 693
    iput v1, p0, Landroid/widget/SlideView$SlideViewParams;->mLeftSlideThreshold:I

    .line 694
    iput v1, p0, Landroid/widget/SlideView$SlideViewParams;->mRightSlideThreshold:I

    .line 697
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SlideView$SlideViewParams;->mWidth:I

    .line 698
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SlideView$SlideViewParams;->mLeftEmptyWidth:I

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SlideView$SlideViewParams;->mText:Ljava/lang/CharSequence;

    .line 700
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput v0, p0, Landroid/widget/SlideView$SlideViewParams;->mBgColor:I

    .line 691
    iput v0, p0, Landroid/widget/SlideView$SlideViewParams;->mBgPressedColor:I

    .line 693
    iput v1, p0, Landroid/widget/SlideView$SlideViewParams;->mLeftSlideThreshold:I

    .line 694
    iput v1, p0, Landroid/widget/SlideView$SlideViewParams;->mRightSlideThreshold:I

    .line 703
    iput p2, p0, Landroid/widget/SlideView$SlideViewParams;->mWidth:I

    .line 704
    iput-object p3, p0, Landroid/widget/SlideView$SlideViewParams;->mText:Ljava/lang/CharSequence;

    .line 705
    return-void
.end method


# virtual methods
.method public getBgColor()I
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Landroid/widget/SlideView$SlideViewParams;->mBgColor:I

    return v0
.end method

.method public getBgPressedColor()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Landroid/widget/SlideView$SlideViewParams;->mBgPressedColor:I

    return v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Landroid/widget/SlideView$SlideViewParams;->mLayoutId:I

    return v0
.end method

.method public getLeftSlideThreshold()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Landroid/widget/SlideView$SlideViewParams;->mLeftSlideThreshold:I

    return v0
.end method

.method public getLeftSpaceWidth()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Landroid/widget/SlideView$SlideViewParams;->mLeftEmptyWidth:I

    return v0
.end method

.method public getRightSlideThreshold()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Landroid/widget/SlideView$SlideViewParams;->mRightSlideThreshold:I

    return v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Landroid/widget/SlideView$SlideViewParams;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Landroid/widget/SlideView$SlideViewParams;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Landroid/widget/SlideView$SlideViewParams;->mWidth:I

    return v0
.end method

.method public setBgColor(II)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "pressedColor"    # I

    .prologue
    .line 748
    iput p1, p0, Landroid/widget/SlideView$SlideViewParams;->mBgColor:I

    .line 749
    iput p2, p0, Landroid/widget/SlideView$SlideViewParams;->mBgPressedColor:I

    .line 750
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 740
    iput p1, p0, Landroid/widget/SlideView$SlideViewParams;->mLayoutId:I

    .line 741
    return-void
.end method

.method public setLeftSlideThreshHold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 761
    iput p1, p0, Landroid/widget/SlideView$SlideViewParams;->mLeftSlideThreshold:I

    .line 762
    return-void
.end method

.method public setLeftSpaceWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 720
    iput p1, p0, Landroid/widget/SlideView$SlideViewParams;->mLeftEmptyWidth:I

    .line 721
    return-void
.end method

.method public setRightSlideThreshHold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 764
    iput p1, p0, Landroid/widget/SlideView$SlideViewParams;->mRightSlideThreshold:I

    .line 765
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 732
    iput-object p1, p0, Landroid/widget/SlideView$SlideViewParams;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 733
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 728
    iput-object p1, p0, Landroid/widget/SlideView$SlideViewParams;->mText:Ljava/lang/CharSequence;

    .line 729
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 712
    iput p1, p0, Landroid/widget/SlideView$SlideViewParams;->mWidth:I

    .line 713
    return-void
.end method
