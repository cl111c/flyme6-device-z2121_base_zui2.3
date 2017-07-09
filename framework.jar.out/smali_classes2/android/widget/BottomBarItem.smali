.class public Landroid/widget/BottomBarItem;
.super Landroid/widget/LinearLayout;
.source "BottomBarItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BottomBarItem$OnSelectedListener;
    }
.end annotation


# static fields
.field public static final BOTTOM_BAR_ITEM_STATUS_NOT_SELECTED:I = 0x0

.field public static final BOTTOM_BAR_ITEM_STATUS_PRE_SELECT:I = 0x1

.field public static final BOTTOM_BAR_ITEM_STATUS_SELECTED:I = 0x2

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BottomBarItem"


# instance fields
.field private final mBorderRect:Landroid/graphics/Rect;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDropNextTouchEvent:Z

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mImageView:Landroid/widget/ImageView;

.field private mOnSelectedListener:Landroid/widget/BottomBarItem$OnSelectedListener;

.field private mOutofBorder:Z

.field private mReceivedTouchDown:Z

.field private mSelectEnabled:Z

.field private mSelected:Z

.field private mText:Ljava/lang/String;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDisabledColor:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/BottomBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/BottomBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/BottomBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/BottomBarItem;->mBorderRect:Landroid/graphics/Rect;

    .line 79
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/BottomBarItem;->mSelectEnabled:Z

    .line 101
    sget-object v5, Lcom/android/internal/R$styleable;->BottomBarItem:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    .line 104
    .local v4, "textSize":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 106
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 107
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 108
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 114
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/BottomBarItem;->mText:Ljava/lang/String;

    goto :goto_1

    .line 118
    :pswitch_2
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 122
    :pswitch_3
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 123
    goto :goto_1

    .line 126
    :pswitch_4
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/BottomBarItem;->mSelected:Z

    goto :goto_1

    .line 131
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    invoke-direct {p0, p1}, Landroid/widget/BottomBarItem;->init(Landroid/content/Context;)V

    .line 135
    invoke-direct {p0, v4}, Landroid/widget/BottomBarItem;->updateTextSizeIfNoImage(I)V

    .line 137
    iget-object v5, p0, Landroid/widget/BottomBarItem;->mText:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 138
    iget-object v5, p0, Landroid/widget/BottomBarItem;->mText:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/widget/BottomBarItem;->setText(Ljava/lang/String;)V

    .line 140
    :cond_1
    iget-object v5, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 141
    iget-object v5, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    iget-object v6, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :cond_2
    invoke-direct {p0}, Landroid/widget/BottomBarItem;->updateContentVisibility()V

    .line 144
    return-void

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTextColorAccordingState(ZZ)I
    .locals 4
    .param p1, "focused"    # Z
    .param p2, "enabled"    # Z

    .prologue
    const v3, 0x101009c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    if-nez p2, :cond_0

    .line 389
    iget v0, p0, Landroid/widget/BottomBarItem;->mTextDisabledColor:I

    .line 403
    :goto_0
    return v0

    .line 390
    :cond_0
    if-eqz p1, :cond_1

    .line 391
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    new-array v1, v1, [I

    aput v3, v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    .line 395
    if-eqz p1, :cond_2

    .line 396
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    new-array v1, v1, [I

    aput v3, v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0

    .line 399
    :cond_2
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    .line 402
    :cond_3
    const-string v0, "BottomBarItem"

    const-string v1, "mTextColor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 343
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090044

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 345
    const v0, 0x1020315

    invoke-virtual {p0, v0}, Landroid/widget/BottomBarItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    .line 346
    const v0, 0x1020316

    invoke-virtual {p0, v0}, Landroid/widget/BottomBarItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    .line 347
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    .line 350
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BottomBarItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/widget/BottomBarItem;->mTextDisabledColor:I

    .line 352
    const v0, 0x1020314

    invoke-virtual {p0, v0}, Landroid/widget/BottomBarItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/BottomBarItem;->mContainer:Landroid/widget/LinearLayout;

    .line 353
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 359
    iget-boolean v0, p0, Landroid/widget/BottomBarItem;->mSelected:Z

    invoke-direct {p0, v0}, Landroid/widget/BottomBarItem;->updateFocusUI(Z)V

    .line 360
    return-void
.end method

.method private setFocuseState(Z)V
    .locals 2
    .param p1, "focused"    # Z

    .prologue
    .line 413
    invoke-virtual {p0}, Landroid/widget/BottomBarItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/BottomBarItem;->mSelectEnabled:Z

    if-eqz v0, :cond_0

    .line 414
    iput-boolean p1, p0, Landroid/widget/BottomBarItem;->mSelected:Z

    .line 415
    invoke-direct {p0}, Landroid/widget/BottomBarItem;->startItemAnimation()V

    .line 416
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mOnSelectedListener:Landroid/widget/BottomBarItem$OnSelectedListener;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mOnSelectedListener:Landroid/widget/BottomBarItem$OnSelectedListener;

    iget-boolean v1, p0, Landroid/widget/BottomBarItem;->mSelected:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/BottomBarItem$OnSelectedListener;->onSelected(Landroid/widget/BottomBarItem;Z)V

    .line 420
    :cond_0
    return-void
.end method

.method private startItemAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 363
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 364
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 365
    .local v1, "animX":Landroid/animation/Animator;
    iget-object v3, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 367
    .local v2, "animY":Landroid/animation/Animator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 368
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 371
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 372
    return-void

    .line 364
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 365
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateContentVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/BottomBarItem;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 376
    :cond_0
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    :goto_0
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 381
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    :goto_1
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateFocusUI(Z)V
    .locals 5
    .param p1, "focused"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 427
    invoke-virtual {p0}, Landroid/widget/BottomBarItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/BottomBarItem;->mSelectEnabled:Z

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 429
    if-eqz p1, :cond_3

    .line 430
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    new-array v1, v3, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 434
    :goto_0
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    :cond_0
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3}, Landroid/widget/BottomBarItem;->getTextColorAccordingState(ZZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BottomBarItem;->invalidate()V

    .line 442
    :cond_2
    return-void

    .line 432
    :cond_3
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    new-array v1, v3, [I

    const v2, 0x101009e

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method private updateTextSizeIfNoImage(I)V
    .locals 4
    .param p1, "textSize"    # I

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 446
    const/4 v0, 0x0

    .line 448
    .local v0, "size":I
    iget-object v1, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 449
    invoke-virtual {p0}, Landroid/widget/BottomBarItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 453
    :goto_0
    iget-object v1, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 455
    .end local v0    # "size":I
    :cond_0
    return-void

    .line 451
    .restart local v0    # "size":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BottomBarItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method cancelTouch()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/BottomBarItem;->mOutofBorder:Z

    .line 273
    iget-boolean v0, p0, Landroid/widget/BottomBarItem;->mSelected:Z

    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/BottomBarItem;->updateFocusUI(Z)V

    .line 276
    :cond_0
    return-void
.end method

.method public enableSelect(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Landroid/widget/BottomBarItem;->mSelectEnabled:Z

    .line 211
    return-void
.end method

.method public getImageResource()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "validRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 338
    :goto_0
    return v1

    .line 287
    :pswitch_0
    iput-boolean v1, p0, Landroid/widget/BottomBarItem;->mOutofBorder:Z

    .line 288
    iput-boolean v2, p0, Landroid/widget/BottomBarItem;->mReceivedTouchDown:Z

    .line 289
    iget-boolean v3, p0, Landroid/widget/BottomBarItem;->mSelectEnabled:Z

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Landroid/widget/BottomBarItem;->mDropNextTouchEvent:Z

    .line 290
    invoke-direct {p0, v2}, Landroid/widget/BottomBarItem;->updateFocusUI(Z)V

    :cond_1
    :goto_1
    move v1, v2

    .line 338
    goto :goto_0

    .line 299
    :pswitch_1
    iget-boolean v3, p0, Landroid/widget/BottomBarItem;->mOutofBorder:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/BottomBarItem;->mSelected:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/BottomBarItem;->mReceivedTouchDown:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/BottomBarItem;->mDropNextTouchEvent:Z

    if-nez v3, :cond_2

    .line 300
    invoke-direct {p0, v2}, Landroid/widget/BottomBarItem;->setFocuseState(Z)V

    .line 302
    :cond_2
    iput-boolean v1, p0, Landroid/widget/BottomBarItem;->mReceivedTouchDown:Z

    goto :goto_1

    .line 305
    :pswitch_2
    const/4 v0, 0x0

    .line 306
    .local v0, "moveOut":Z
    if-nez p3, :cond_4

    .line 307
    iget-object v3, p0, Landroid/widget/BottomBarItem;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/BottomBarItem;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 308
    iget-object v3, p0, Landroid/widget/BottomBarItem;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    .line 317
    :goto_2
    if-eqz v0, :cond_1

    .line 319
    iput-boolean v2, p0, Landroid/widget/BottomBarItem;->mOutofBorder:Z

    .line 320
    iput-boolean v1, p0, Landroid/widget/BottomBarItem;->mReceivedTouchDown:Z

    .line 321
    iget-boolean v3, p0, Landroid/widget/BottomBarItem;->mSelected:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/BottomBarItem;->mDropNextTouchEvent:Z

    if-nez v3, :cond_1

    .line 322
    invoke-direct {p0, v1}, Landroid/widget/BottomBarItem;->updateFocusUI(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 308
    goto :goto_2

    .line 314
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v2

    :goto_3
    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    .line 329
    .end local v0    # "moveOut":Z
    :pswitch_3
    iput-boolean v1, p0, Landroid/widget/BottomBarItem;->mReceivedTouchDown:Z

    .line 330
    iget-boolean v3, p0, Landroid/widget/BottomBarItem;->mSelected:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/BottomBarItem;->mDropNextTouchEvent:Z

    if-nez v3, :cond_1

    .line 331
    invoke-direct {p0, v1}, Landroid/widget/BottomBarItem;->updateFocusUI(Z)V

    goto :goto_1

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Landroid/widget/BottomBarItem;->mSelected:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 226
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 230
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    :cond_0
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Landroid/widget/BottomBarItem;->mSelected:Z

    invoke-direct {p0, v1, p1}, Landroid/widget/BottomBarItem;->getTextColorAccordingState(ZZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 237
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BottomBarItem;->invalidate()V

    .line 238
    return-void
.end method

.method public setFocused(Z)V
    .locals 0
    .param p1, "focused"    # Z

    .prologue
    .line 215
    invoke-direct {p0, p1}, Landroid/widget/BottomBarItem;->updateFocusUI(Z)V

    .line 216
    invoke-direct {p0, p1}, Landroid/widget/BottomBarItem;->setFocuseState(Z)V

    .line 217
    return-void
.end method

.method public setImageResource(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    iput-object p1, p0, Landroid/widget/BottomBarItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 149
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnSelectedListener(Landroid/widget/BottomBarItem$OnSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/BottomBarItem$OnSelectedListener;

    .prologue
    .line 252
    iput-object p1, p0, Landroid/widget/BottomBarItem;->mOnSelectedListener:Landroid/widget/BottomBarItem$OnSelectedListener;

    .line 253
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 197
    invoke-virtual {p0}, Landroid/widget/BottomBarItem;->invalidate()V

    .line 199
    :cond_0
    return-void
.end method

.method public setText(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 182
    iput-object p1, p0, Landroid/widget/BottomBarItem;->mTextColor:Landroid/content/res/ColorStateList;

    .line 183
    iget-object v0, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Landroid/widget/BottomBarItem;->mSelected:Z

    iget-object v2, p0, Landroid/widget/BottomBarItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/BottomBarItem;->getTextColorAccordingState(ZZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    return-void
.end method

.method public setTextDisabledColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 187
    iput p1, p0, Landroid/widget/BottomBarItem;->mTextDisabledColor:I

    .line 188
    return-void
.end method
