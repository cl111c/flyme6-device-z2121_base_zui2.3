.class public Landroid/widget/SlideLinearLayoutEx;
.super Landroid/widget/LinearLayout;
.source "SlideLinearLayoutEx.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mLeftImage:Landroid/graphics/drawable/Drawable;

.field private mLeftImagePressed:Z

.field private mLeftImageView:Landroid/widget/ImageView;

.field private mMaxWidth:I

.field private mRightImage:Landroid/graphics/drawable/Drawable;

.field private mRightImagePressed:Z

.field private mRightImageView:Landroid/widget/ImageView;

.field private mSlideLayout:Landroid/widget/SlideLinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SlideLinearLayoutEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const v0, 0x11600ec

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlideLinearLayoutEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SlideLinearLayoutEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    const-string v2, "SlideLinearLayoutEx"

    iput-object v2, p0, Landroid/widget/SlideLinearLayoutEx;->TAG:Ljava/lang/String;

    .line 43
    sget-object v2, Lcom/android/internal/R$styleable;->slideLinearLayoutEx:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 46
    .local v1, "layoutId":I
    if-lez v1, :cond_0

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    :cond_0
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/SlideLinearLayoutEx;->mMaxWidth:I

    .line 50
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SlideLinearLayoutEx;->mLeftImage:Landroid/graphics/drawable/Drawable;

    .line 51
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SlideLinearLayoutEx;->mRightImage:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/SlideLinearLayoutEx;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Landroid/widget/SlideLinearLayoutEx;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SlideLinearLayoutEx;

    .prologue
    .line 17
    iget-boolean v0, p0, Landroid/widget/SlideLinearLayoutEx;->mLeftImagePressed:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/SlideLinearLayoutEx;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/SlideLinearLayoutEx;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Landroid/widget/SlideLinearLayoutEx;->mLeftImagePressed:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/SlideLinearLayoutEx;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SlideLinearLayoutEx;

    .prologue
    .line 17
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mLeftImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/SlideLinearLayoutEx;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SlideLinearLayoutEx;

    .prologue
    .line 17
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mLeftImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/SlideLinearLayoutEx;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/SlideLinearLayoutEx;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x3"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SlideLinearLayoutEx;->updateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/SlideLinearLayoutEx;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SlideLinearLayoutEx;

    .prologue
    .line 17
    iget-boolean v0, p0, Landroid/widget/SlideLinearLayoutEx;->mRightImagePressed:Z

    return v0
.end method

.method static synthetic access$402(Landroid/widget/SlideLinearLayoutEx;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/SlideLinearLayoutEx;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Landroid/widget/SlideLinearLayoutEx;->mRightImagePressed:Z

    return p1
.end method

.method static synthetic access$500(Landroid/widget/SlideLinearLayoutEx;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SlideLinearLayoutEx;

    .prologue
    .line 17
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mRightImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/SlideLinearLayoutEx;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SlideLinearLayoutEx;

    .prologue
    .line 17
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mRightImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const v0, 0x10203fa

    invoke-virtual {p0, v0}, Landroid/widget/SlideLinearLayoutEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlideLinearLayout;

    iput-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    .line 120
    const v0, 0x10203f9

    invoke-virtual {p0, v0}, Landroid/widget/SlideLinearLayoutEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mLeftImageView:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mLeftImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mLeftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mLeftImage:Landroid/graphics/drawable/Drawable;

    .line 124
    :cond_0
    const v0, 0x10203fb

    invoke-virtual {p0, v0}, Landroid/widget/SlideLinearLayoutEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mRightImageView:Landroid/widget/ImageView;

    .line 125
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mRightImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mRightImage:Landroid/graphics/drawable/Drawable;

    .line 128
    :cond_1
    iget v0, p0, Landroid/widget/SlideLinearLayoutEx;->mMaxWidth:I

    if-lez v0, :cond_2

    .line 129
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    iget v1, p0, Landroid/widget/SlideLinearLayoutEx;->mMaxWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/SlideLinearLayout;->setMaxWidth(I)V

    .line 131
    :cond_2
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    new-instance v1, Landroid/widget/SlideLinearLayoutEx$1;

    invoke-direct {v1, p0}, Landroid/widget/SlideLinearLayoutEx$1;-><init>(Landroid/widget/SlideLinearLayoutEx;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlideLinearLayout;->setOnEdgeChildStateChangedListener(Landroid/widget/SlideLinearLayout$OnEdgeChildStateChangedListener;)V

    .line 162
    return-void
.end method

.method private updateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "image"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pressed"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 165
    if-eqz p2, :cond_0

    .line 166
    if-eqz p3, :cond_1

    .line 167
    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 171
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    :cond_0
    return-void

    .line 169
    :cond_1
    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/SlideLinearLayout;->addView(Landroid/view/View;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SlideLinearLayout;->addView(Landroid/view/View;I)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 102
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/SlideLinearLayout;->addView(Landroid/view/View;II)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/SlideLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SlideLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx;->mSlideLayout:Landroid/widget/SlideLinearLayout;

    invoke-virtual {v0}, Landroid/widget/SlideLinearLayout;->removeAllViews()V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0
.end method

.method public setLeftImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/widget/SlideLinearLayoutEx;->mLeftImage:Landroid/graphics/drawable/Drawable;

    .line 58
    return-void
.end method

.method public setRightImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/widget/SlideLinearLayoutEx;->mRightImage:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method
