.class Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;
.super Ljava/lang/Object;
.source "ZuiShutdownProgressDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->getShimmerAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;


# direct methods
.method constructor <init>(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$000(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    .line 268
    .local v9, "width":I
    if-gtz v9, :cond_0

    .line 289
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mViewWidth:I
    invoke-static {v0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$100(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)I

    move-result v0

    if-eq v9, v0, :cond_1

    .line 273
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # setter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mViewWidth:I
    invoke-static {v0, v9}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$102(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;I)I

    .line 275
    iget-object v10, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mViewWidth:I
    invoke-static {v1}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$100(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v3, 0x3

    new-array v5, v3, [I

    iget-object v3, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mMaskColor:I
    invoke-static {v3}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$300(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)I

    move-result v3

    aput v3, v5, v4

    iget-object v3, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mShimmerColor:I
    invoke-static {v3}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$400(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)I

    move-result v3

    aput v3, v5, v7

    iget-object v3, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mMaskColor:I
    invoke-static {v3}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$300(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)I

    move-result v3

    aput v3, v5, v12

    const/4 v3, 0x3

    new-array v6, v3, [F

    aput v2, v6, v4

    iget-object v3, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mMaskRatio:F
    invoke-static {v3}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$500(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)F

    move-result v3

    aput v3, v6, v7

    iget-object v3, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mMaskRatio:F
    invoke-static {v3}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$500(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)F

    move-result v3

    mul-float/2addr v3, v11

    aput v3, v6, v12

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    # setter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mLinearGradient:Landroid/graphics/LinearGradient;
    invoke-static {v10, v0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$202(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;

    .line 280
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$000(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mLinearGradient:Landroid/graphics/LinearGradient;
    invoke-static {v1}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$200(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 283
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 285
    .local v8, "value":F
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mGradientMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$600(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mViewWidth:I
    invoke-static {v1}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$100(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v8, v11

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 286
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mLinearGradient:Landroid/graphics/LinearGradient;
    invoke-static {v0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$200(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mGradientMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$600(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 288
    iget-object v0, p0, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper$1;->this$1:Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;

    # getter for: Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;->access$000(Lzui/app/ZuiShutdownProgressDialog$ShimmerTextViewWrapper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    goto/16 :goto_0
.end method
