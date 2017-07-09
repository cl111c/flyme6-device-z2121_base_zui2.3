.class public Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;
.super Ljava/lang/Object;
.source "ZuiShutdownProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/app/ZuiShutdownProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShimmerTextViewWrapper"
.end annotation


# static fields
.field private static final MASK_ALPHA_RATIO:F = 0.15f

.field private static final MASK_COLOR_ALPHA:I = 0x4c000000

.field private static final MASK_RATIO_DEFAULT:F = 0.5f


# instance fields
.field protected mAnimator:Landroid/animation/ValueAnimator;

.field private mDuration:I

.field private mGradientMatrix:Landroid/graphics/Matrix;

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mMaskColor:I

.field private mMaskRatio:F

.field private mShimmerColor:I

.field private mTextView:Landroid/widget/TextView;

.field private mViewWidth:I

.field final synthetic this$0:Lzui/app/ZuiShutdownProgressDialog;


# direct methods
.method public constructor <init>(Lzui/app/ZuiShutdownProgressDialog;Landroid/widget/TextView;I)V
    .locals 2
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "duration"    # I

    .prologue
    .line 184
    iput-object p1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->this$0:Lzui/app/ZuiShutdownProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p2, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mTextView:Landroid/widget/TextView;

    .line 186
    iput p3, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mDuration:I

    .line 188
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mMaskRatio:F

    .line 196
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mShimmerColor:I

    .line 197
    iget v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mShimmerColor:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x4c000000    # 3.3554432E7f

    or-int/2addr v0, v1

    iput v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mMaskColor:I

    .line 199
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mGradientMatrix:Landroid/graphics/Matrix;

    .line 201
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iput v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mViewWidth:I

    .line 204
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    .prologue
    .line 166
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)I
    .locals 1
    .param p0, "x0"    # Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    .prologue
    .line 166
    iget v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mViewWidth:I

    return v0
.end method

.method static synthetic access$102(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 166
    iput p1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mViewWidth:I

    return p1
.end method

.method static synthetic access$200(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)Landroid/graphics/LinearGradient;
    .locals 1
    .param p0, "x0"    # Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    .prologue
    .line 166
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mLinearGradient:Landroid/graphics/LinearGradient;

    return-object v0
.end method

.method static synthetic access$202(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;
    .locals 0
    .param p0, "x0"    # Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;
    .param p1, "x1"    # Landroid/graphics/LinearGradient;

    .prologue
    .line 166
    iput-object p1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mLinearGradient:Landroid/graphics/LinearGradient;

    return-object p1
.end method

.method static synthetic access$300(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)I
    .locals 1
    .param p0, "x0"    # Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    .prologue
    .line 166
    iget v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mMaskColor:I

    return v0
.end method

.method static synthetic access$400(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)I
    .locals 1
    .param p0, "x0"    # Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    .prologue
    .line 166
    iget v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mShimmerColor:I

    return v0
.end method

.method static synthetic access$500(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)F
    .locals 1
    .param p0, "x0"    # Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    .prologue
    .line 166
    iget v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mMaskRatio:F

    return v0
.end method

.method static synthetic access$600(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    .prologue
    .line 166
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mGradientMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private clearAnimator()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 249
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    .line 252
    :cond_0
    return-void
.end method

.method private getShimmerAnimation()Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 255
    iget-object v1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    .line 292
    :goto_0
    return-object v1

    .line 259
    :cond_0
    iget v1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mMaskRatio:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    .line 260
    .local v0, "HALF_MASK_RATIO":F
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    .line 261
    iget-object v1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 262
    iget-object v1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 263
    iget-object v1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 264
    iget-object v1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;

    invoke-direct {v2, p0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;-><init>(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 292
    iget-object v1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 260
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isAnimatorRunning()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enableShimmer(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 207
    invoke-direct {p0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->getShimmerAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 208
    .local v0, "va":Landroid/animation/ValueAnimator;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 210
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 212
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 216
    :cond_0
    return-void
.end method

.method public setColors(II)V
    .locals 2
    .param p1, "shimmerColor"    # I
    .param p2, "maskColor"    # I

    .prologue
    .line 219
    invoke-direct {p0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->isAnimatorRunning()Z

    move-result v0

    .line 220
    .local v0, "isRunning":Z
    invoke-direct {p0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->clearAnimator()V

    .line 222
    iput p1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mShimmerColor:I

    .line 223
    iput p2, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mMaskColor:I

    .line 224
    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->getShimmerAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 227
    :cond_0
    return-void
.end method

.method public setMaskRatio(F)V
    .locals 2
    .param p1, "maskRatio"    # F

    .prologue
    .line 230
    invoke-direct {p0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->isAnimatorRunning()Z

    move-result v0

    .line 231
    .local v0, "isRunning":Z
    invoke-direct {p0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->clearAnimator()V

    .line 233
    iput p1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mMaskRatio:F

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->getShimmerAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 237
    :cond_0
    return-void
.end method
