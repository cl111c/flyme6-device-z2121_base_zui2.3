.class public Landroid/view/animation/QuadInterpolator;
.super Ljava/lang/Object;
.source "QuadInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final IN:B = 0x0t

.field public static final INOUT:B = 0x2t

.field public static final OUT:B = 0x1t


# instance fields
.field _mode:B


# direct methods
.method public constructor <init>(B)V
    .locals 2
    .param p1, "mode"    # B

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/view/animation/QuadInterpolator;->_mode:B

    .line 25
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 26
    iput-byte p1, p0, Landroid/view/animation/QuadInterpolator;->_mode:B

    .line 30
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The mode must be 0, 1 or 2. See the doc"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFloatValue(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    iget-byte v0, p0, Landroid/view/animation/QuadInterpolator;->_mode:B

    packed-switch v0, :pswitch_data_0

    move v0, p1

    .line 47
    :goto_0
    return v0

    .line 40
    :pswitch_0
    mul-float v0, p1, p1

    goto :goto_0

    .line 42
    :pswitch_1
    neg-float v0, p1

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    goto :goto_0

    .line 44
    :pswitch_2
    mul-float/2addr p1, v1

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    goto :goto_0

    .line 45
    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    sub-float/2addr p1, v2

    sub-float v1, p1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/animation/QuadInterpolator;->getFloatValue(F)F

    move-result v0

    return v0
.end method
