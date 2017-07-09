.class public Landroid/view/animation/ElasticInterpolator;
.super Ljava/lang/Object;
.source "ElasticInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final IN:B = 0x0t

.field public static final INOUT:B = 0x2t

.field public static final OUT:B = 0x1t

.field private static final PI:F = 3.1415927f


# instance fields
.field _mode:B

.field protected param_a:F

.field protected param_p:F

.field protected setA:Z

.field protected setP:Z


# direct methods
.method public constructor <init>(B)V
    .locals 2
    .param p1, "mode"    # B

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-byte v0, p0, Landroid/view/animation/ElasticInterpolator;->_mode:B

    .line 37
    iput-boolean v0, p0, Landroid/view/animation/ElasticInterpolator;->setA:Z

    .line 38
    iput-boolean v0, p0, Landroid/view/animation/ElasticInterpolator;->setP:Z

    .line 28
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 29
    iput-byte p1, p0, Landroid/view/animation/ElasticInterpolator;->_mode:B

    .line 33
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The mode must be 0, 1 or 2. See the doc"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDeepFloatValue(F)F
    .locals 12
    .param p1, "t"    # F

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v3, 0x0

    const v8, 0x40c90fdb

    const/high16 v4, 0x3f800000    # 1.0f

    .line 57
    iget v0, p0, Landroid/view/animation/ElasticInterpolator;->param_a:F

    .line 58
    .local v0, "a":F
    iget v1, p0, Landroid/view/animation/ElasticInterpolator;->param_p:F

    .line 60
    .local v1, "p":F
    iget-byte v5, p0, Landroid/view/animation/ElasticInterpolator;->_mode:B

    packed-switch v5, :pswitch_data_0

    move v3, p1

    .line 78
    :cond_0
    :goto_0
    return v3

    .line 62
    :pswitch_0
    cmpl-float v5, p1, v3

    if-eqz v5, :cond_0

    cmpl-float v3, p1, v4

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Landroid/view/animation/ElasticInterpolator;->setP:Z

    if-nez v3, :cond_2

    const v1, 0x3e99999a    # 0.3f

    .line 63
    :cond_2
    iget-boolean v3, p0, Landroid/view/animation/ElasticInterpolator;->setA:Z

    if-eqz v3, :cond_3

    cmpg-float v3, v0, v4

    if-gez v3, :cond_4

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    div-float v2, v1, v6

    .line 65
    .local v2, "s":F
    :goto_1
    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr p1, v4

    mul-float/2addr v3, p1

    float-to-double v4, v3

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v0

    sub-float v4, p1, v2

    mul-float/2addr v4, v8

    div-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    neg-float v3, v3

    goto :goto_0

    .line 64
    .end local v2    # "s":F
    :cond_4
    div-float v3, v1, v8

    div-float v5, v4, v0

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float v2, v3, v5

    .restart local v2    # "s":F
    goto :goto_1

    .line 67
    .end local v2    # "s":F
    :pswitch_1
    cmpl-float v5, p1, v3

    if-eqz v5, :cond_0

    cmpl-float v3, p1, v4

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Landroid/view/animation/ElasticInterpolator;->setP:Z

    if-nez v3, :cond_6

    const v1, 0x3e99999a    # 0.3f

    .line 68
    :cond_6
    iget-boolean v3, p0, Landroid/view/animation/ElasticInterpolator;->setA:Z

    if-eqz v3, :cond_7

    cmpg-float v3, v0, v4

    if-gez v3, :cond_8

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    div-float v2, v1, v6

    .line 70
    .restart local v2    # "s":F
    :goto_2
    const/high16 v3, -0x3ee00000    # -10.0f

    mul-float/2addr v3, p1

    float-to-double v6, v3

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float/2addr v3, v0

    sub-float v5, p1, v2

    mul-float/2addr v5, v8

    div-float/2addr v5, v1

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    goto :goto_0

    .line 69
    .end local v2    # "s":F
    :cond_8
    div-float v3, v1, v8

    div-float v5, v4, v0

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float v2, v3, v5

    .restart local v2    # "s":F
    goto :goto_2

    .line 72
    .end local v2    # "s":F
    :pswitch_2
    cmpl-float v5, p1, v3

    if-eqz v5, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr p1, v3

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v3, p1, v3

    if-nez v3, :cond_9

    move v3, v4

    goto/16 :goto_0

    :cond_9
    iget-boolean v3, p0, Landroid/view/animation/ElasticInterpolator;->setP:Z

    if-nez v3, :cond_a

    const v1, 0x3ee66667    # 0.45000002f

    .line 73
    :cond_a
    iget-boolean v3, p0, Landroid/view/animation/ElasticInterpolator;->setA:Z

    if-eqz v3, :cond_b

    cmpg-float v3, v0, v4

    if-gez v3, :cond_c

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    div-float v2, v1, v6

    .line 75
    .restart local v2    # "s":F
    :goto_3
    cmpg-float v3, p1, v4

    if-gez v3, :cond_d

    const/high16 v3, -0x41000000    # -0.5f

    const/high16 v5, 0x41200000    # 10.0f

    sub-float/2addr p1, v4

    mul-float v4, v5, p1

    float-to-double v4, v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float v5, p1, v2

    mul-float/2addr v5, v8

    div-float/2addr v5, v1

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    mul-float/2addr v3, v4

    goto/16 :goto_0

    .line 74
    .end local v2    # "s":F
    :cond_c
    div-float v3, v1, v8

    div-float v5, v4, v0

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float v2, v3, v5

    .restart local v2    # "s":F
    goto :goto_3

    .line 76
    :cond_d
    const/high16 v3, -0x3ee00000    # -10.0f

    sub-float/2addr p1, v4

    mul-float/2addr v3, p1

    float-to-double v6, v3

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float/2addr v3, v0

    sub-float v5, p1, v2

    mul-float/2addr v5, v8

    div-float/2addr v5, v1

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    goto/16 :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(F)Landroid/view/animation/ElasticInterpolator;
    .locals 1
    .param p1, "a"    # F

    .prologue
    .line 41
    iput p1, p0, Landroid/view/animation/ElasticInterpolator;->param_a:F

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/ElasticInterpolator;->setA:Z

    .line 43
    return-object p0
.end method

.method public getInterpolation(F)F
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/view/animation/ElasticInterpolator;->getDeepFloatValue(F)F

    move-result v0

    return v0
.end method

.method public p(F)Landroid/view/animation/ElasticInterpolator;
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 47
    iput p1, p0, Landroid/view/animation/ElasticInterpolator;->param_p:F

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/ElasticInterpolator;->setP:Z

    .line 49
    return-object p0
.end method
