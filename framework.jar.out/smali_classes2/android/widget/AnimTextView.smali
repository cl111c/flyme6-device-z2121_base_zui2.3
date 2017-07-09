.class public Landroid/widget/AnimTextView;
.super Landroid/widget/TextView;
.source "AnimTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AnimTextView$3;,
        Landroid/widget/AnimTextView$AnimationType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final HALF_PI:F = 1.5707964f

.field private static final IN:Landroid/view/animation/Interpolator;

.field private static final MESH_COUNT:I = 0x28b

.field private static final MESH_HEIGHT:I = 0x1e

.field private static final MESH_WIDTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "AnimTextView"


# instance fields
.field private cache:Landroid/graphics/Bitmap;

.field private drawCache:Z

.field private mAnim:Landroid/animation/ValueAnimator;

.field private mCacheHeight:F

.field private mCacheWidth:F

.field private mDuration:J

.field private mHalfHeight:F

.field private mHalfWidth:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mMaxDistance:F

.field private final mOrig:[F

.field private mRotateAreaWidth:F

.field private mRotateAreaWidthValue:F

.field private mRotateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStartDelay:J

.field private mTweakUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mVerts:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/view/animation/QuadInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/QuadInterpolator;-><init>(B)V

    sput-object v0, Landroid/widget/AnimTextView;->IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x516

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnimTextView;->drawCache:Z

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/widget/AnimTextView;->mVerts:[F

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/widget/AnimTextView;->mOrig:[F

    .line 114
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Landroid/widget/AnimTextView;->mRotateAreaWidthValue:F

    .line 180
    const-wide/16 v0, 0x2bc

    iput-wide v0, p0, Landroid/widget/AnimTextView;->mDuration:J

    .line 181
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/AnimTextView;->mStartDelay:J

    .line 182
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/AnimTextView;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 184
    new-instance v0, Landroid/widget/AnimTextView$1;

    invoke-direct {v0, p0}, Landroid/widget/AnimTextView$1;-><init>(Landroid/widget/AnimTextView;)V

    iput-object v0, p0, Landroid/widget/AnimTextView;->mTweakUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 192
    new-instance v0, Landroid/widget/AnimTextView$2;

    invoke-direct {v0, p0}, Landroid/widget/AnimTextView$2;-><init>(Landroid/widget/AnimTextView;)V

    iput-object v0, p0, Landroid/widget/AnimTextView;->mRotateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x516

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnimTextView;->drawCache:Z

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/widget/AnimTextView;->mVerts:[F

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/widget/AnimTextView;->mOrig:[F

    .line 114
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Landroid/widget/AnimTextView;->mRotateAreaWidthValue:F

    .line 180
    const-wide/16 v0, 0x2bc

    iput-wide v0, p0, Landroid/widget/AnimTextView;->mDuration:J

    .line 181
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/AnimTextView;->mStartDelay:J

    .line 182
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/AnimTextView;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 184
    new-instance v0, Landroid/widget/AnimTextView$1;

    invoke-direct {v0, p0}, Landroid/widget/AnimTextView$1;-><init>(Landroid/widget/AnimTextView;)V

    iput-object v0, p0, Landroid/widget/AnimTextView;->mTweakUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 192
    new-instance v0, Landroid/widget/AnimTextView$2;

    invoke-direct {v0, p0}, Landroid/widget/AnimTextView$2;-><init>(Landroid/widget/AnimTextView;)V

    iput-object v0, p0, Landroid/widget/AnimTextView;->mRotateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v1, 0x516

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnimTextView;->drawCache:Z

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/widget/AnimTextView;->mVerts:[F

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/widget/AnimTextView;->mOrig:[F

    .line 114
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Landroid/widget/AnimTextView;->mRotateAreaWidthValue:F

    .line 180
    const-wide/16 v0, 0x2bc

    iput-wide v0, p0, Landroid/widget/AnimTextView;->mDuration:J

    .line 181
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/AnimTextView;->mStartDelay:J

    .line 182
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/AnimTextView;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 184
    new-instance v0, Landroid/widget/AnimTextView$1;

    invoke-direct {v0, p0}, Landroid/widget/AnimTextView$1;-><init>(Landroid/widget/AnimTextView;)V

    iput-object v0, p0, Landroid/widget/AnimTextView;->mTweakUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 192
    new-instance v0, Landroid/widget/AnimTextView$2;

    invoke-direct {v0, p0}, Landroid/widget/AnimTextView$2;-><init>(Landroid/widget/AnimTextView;)V

    iput-object v0, p0, Landroid/widget/AnimTextView;->mRotateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 50
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AnimTextView;F)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AnimTextView;
    .param p1, "x1"    # F

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/AnimTextView;->updateMeshTweak(F)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AnimTextView;F)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AnimTextView;
    .param p1, "x1"    # F

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/AnimTextView;->updateMeshRotate(F)V

    return-void
.end method

.method private buildCahe()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    const-string v0, "buildCache"

    invoke-static {v0}, Landroid/widget/AnimTextView;->echo(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p0}, Landroid/widget/AnimTextView;->buildDrawingCache()V

    .line 62
    invoke-virtual {p0}, Landroid/widget/AnimTextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    .line 63
    iget-object v0, p0, Landroid/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 64
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AnimTextView;->measure(II)V

    .line 66
    invoke-virtual {p0}, Landroid/widget/AnimTextView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AnimTextView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AnimTextView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AnimTextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/AnimTextView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AnimTextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AnimTextView;->layout(IIII)V

    .line 67
    invoke-virtual {p0}, Landroid/widget/AnimTextView;->buildDrawingCache()V

    .line 68
    invoke-virtual {p0}, Landroid/widget/AnimTextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    .line 70
    :cond_0
    iget-object v0, p0, Landroid/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnimTextView;->drawCache:Z

    .line 72
    const-string v0, "  success."

    invoke-static {v0}, Landroid/widget/AnimTextView;->echo(Ljava/lang/String;)V

    .line 77
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AnimTextView;->invalidate()V

    .line 78
    iget-boolean v0, p0, Landroid/widget/AnimTextView;->drawCache:Z

    return v0

    .line 74
    :cond_1
    iput-boolean v5, p0, Landroid/widget/AnimTextView;->drawCache:Z

    .line 75
    const-string v0, "  failure."

    invoke-static {v0}, Landroid/widget/AnimTextView;->echo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private destroyCache()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "destroyCache"

    invoke-static {v0}, Landroid/widget/AnimTextView;->echo(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnimTextView;->drawCache:Z

    .line 84
    invoke-virtual {p0}, Landroid/widget/AnimTextView;->destroyDrawingCache()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    .line 86
    invoke-virtual {p0}, Landroid/widget/AnimTextView;->invalidate()V

    .line 87
    return-void
.end method

.method private static final echo(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "AnimTextView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method private initMesh()V
    .locals 9

    .prologue
    .line 97
    iget-object v7, p0, Landroid/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 98
    .local v4, "w":F
    iget-object v7, p0, Landroid/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v2, v7

    .line 100
    .local v2, "h":F
    const/4 v3, 0x0

    .line 101
    .local v3, "index":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    const/16 v7, 0x1e

    if-gt v6, v7, :cond_1

    .line 102
    int-to-float v7, v6

    mul-float/2addr v7, v2

    const/high16 v8, 0x41f00000    # 30.0f

    div-float v1, v7, v8

    .line 103
    .local v1, "fy":F
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    const/16 v7, 0x14

    if-gt v5, v7, :cond_0

    .line 104
    int-to-float v7, v5

    mul-float/2addr v7, v4

    const/high16 v8, 0x41a00000    # 20.0f

    div-float v0, v7, v8

    .line 105
    .local v0, "fx":F
    iget-object v7, p0, Landroid/widget/AnimTextView;->mVerts:[F

    invoke-static {v7, v3, v0, v1}, Landroid/widget/AnimTextView;->setXY([FIFF)V

    .line 106
    iget-object v7, p0, Landroid/widget/AnimTextView;->mOrig:[F

    invoke-static {v7, v3, v0, v1}, Landroid/widget/AnimTextView;->setXY([FIFF)V

    .line 107
    add-int/lit8 v3, v3, 0x1

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 101
    .end local v0    # "fx":F
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "fy":F
    .end local v5    # "x":I
    :cond_1
    invoke-virtual {p0, v4, v2}, Landroid/widget/AnimTextView;->initializeAnimation(FF)V

    .line 111
    return-void
.end method

.method private static setXY([FIFF)V
    .locals 1
    .param p0, "array"    # [F
    .param p1, "index"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 92
    mul-int/lit8 v0, p1, 0x2

    aput p2, p0, v0

    .line 93
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    aput p3, p0, v0

    .line 94
    return-void
.end method

.method private updateMeshRotate(F)V
    .locals 13
    .param p1, "fraction"    # F

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 163
    iget-object v4, p0, Landroid/widget/AnimTextView;->mOrig:[F

    .line 164
    .local v4, "src":[F
    iget-object v1, p0, Landroid/widget/AnimTextView;->mVerts:[F

    .line 165
    .local v1, "dst":[F
    cmpg-float v8, p1, v12

    if-gez v8, :cond_0

    const/4 v5, 0x0

    .line 166
    .local v5, "tx":F
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v8, 0x516

    if-ge v3, v8, :cond_1

    .line 167
    add-int/lit8 v8, v3, 0x0

    aget v6, v4, v8

    .line 168
    .local v6, "x":F
    add-int/lit8 v8, v3, 0x1

    aget v7, v4, v8

    .line 169
    .local v7, "y":F
    iget v8, p0, Landroid/widget/AnimTextView;->mHalfHeight:F

    sub-float v2, v8, v7

    .line 170
    .local v2, "dy":F
    iget v8, p0, Landroid/widget/AnimTextView;->mCacheWidth:F

    sub-float/2addr v8, v6

    iget v9, p0, Landroid/widget/AnimTextView;->mCacheWidth:F

    div-float/2addr v8, v9

    mul-float/2addr v8, v5

    iget v9, p0, Landroid/widget/AnimTextView;->mCacheWidth:F

    sub-float/2addr v9, v6

    iget v10, p0, Landroid/widget/AnimTextView;->mCacheWidth:F

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    sget-object v9, Landroid/widget/AnimTextView;->IN:Landroid/view/animation/Interpolator;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Landroid/widget/AnimTextView;->mHalfHeight:F

    div-float/2addr v10, v11

    invoke-interface {v9, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    sub-float v9, v12, v9

    mul-float v0, v8, v9

    .line 173
    .local v0, "d":F
    add-int/lit8 v8, v3, 0x0

    add-float v9, v6, v0

    aput v9, v1, v8

    .line 166
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 165
    .end local v0    # "d":F
    .end local v2    # "dy":F
    .end local v3    # "i":I
    .end local v5    # "tx":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_0
    sub-float v8, p1, v12

    const/high16 v9, -0x3db80000    # -50.0f

    mul-float v5, v8, v9

    goto :goto_0

    .line 175
    .restart local v3    # "i":I
    .restart local v5    # "tx":F
    :cond_1
    return-void
.end method

.method private updateMeshTweak(F)V
    .locals 12
    .param p1, "fraction"    # F

    .prologue
    const v11, 0x3fc90fdb

    .line 141
    iget-object v3, p0, Landroid/widget/AnimTextView;->mOrig:[F

    .line 142
    .local v3, "src":[F
    iget-object v0, p0, Landroid/widget/AnimTextView;->mVerts:[F

    .line 143
    .local v0, "dst":[F
    iget v8, p0, Landroid/widget/AnimTextView;->mMaxDistance:F

    mul-float v4, v8, p1

    .line 144
    .local v4, "startX":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v8, 0x516

    if-ge v1, v8, :cond_2

    .line 145
    aget v5, v3, v1

    .line 146
    .local v5, "sx":F
    add-int/lit8 v8, v1, 0x1

    aget v6, v3, v8

    .line 147
    .local v6, "sy":F
    cmpl-float v8, v5, v4

    if-lez v8, :cond_0

    .line 148
    aput v5, v0, v1

    .line 149
    add-int/lit8 v8, v1, 0x1

    iget v9, p0, Landroid/widget/AnimTextView;->mHalfHeight:F

    aput v9, v0, v8

    .line 144
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 150
    :cond_0
    iget v8, p0, Landroid/widget/AnimTextView;->mRotateAreaWidth:F

    sub-float v8, v4, v8

    cmpg-float v8, v5, v8

    if-gez v8, :cond_1

    .line 151
    aput v5, v0, v1

    .line 152
    add-int/lit8 v8, v1, 0x1

    aput v6, v0, v8

    goto :goto_1

    .line 154
    :cond_1
    sub-float v8, v4, v5

    iget v9, p0, Landroid/widget/AnimTextView;->mRotateAreaWidth:F

    div-float v2, v8, v9

    .line 155
    .local v2, "input":F
    iget v8, p0, Landroid/widget/AnimTextView;->mHalfHeight:F

    sub-float v7, v6, v8

    .line 156
    .local v7, "toCenter":F
    mul-float v8, v11, v2

    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v8

    mul-float/2addr v8, v7

    const v9, 0x3eb33333    # 0.35f

    mul-float/2addr v8, v9

    sub-float v8, v5, v8

    aput v8, v0, v1

    .line 157
    add-int/lit8 v8, v1, 0x1

    iget v9, p0, Landroid/widget/AnimTextView;->mHalfHeight:F

    mul-float v10, v11, v2

    invoke-static {v10}, Landroid/util/FloatMath;->sin(F)F

    move-result v10

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    aput v9, v0, v8

    goto :goto_1

    .line 160
    .end local v2    # "input":F
    .end local v5    # "sx":F
    .end local v6    # "sy":F
    .end local v7    # "toCenter":F
    :cond_2
    return-void
.end method


# virtual methods
.method public cancelMeshAnimation()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 262
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    .line 263
    invoke-direct {p0}, Landroid/widget/AnimTextView;->destroyCache()V

    .line 264
    return-void
.end method

.method public initializeAnimation(FF)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 132
    iput p1, p0, Landroid/widget/AnimTextView;->mCacheWidth:F

    .line 133
    iput p2, p0, Landroid/widget/AnimTextView;->mCacheHeight:F

    .line 134
    iget v0, p0, Landroid/widget/AnimTextView;->mCacheWidth:F

    iget v1, p0, Landroid/widget/AnimTextView;->mRotateAreaWidthValue:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/AnimTextView;->mRotateAreaWidth:F

    .line 135
    iget v0, p0, Landroid/widget/AnimTextView;->mCacheWidth:F

    iget v1, p0, Landroid/widget/AnimTextView;->mRotateAreaWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/AnimTextView;->mMaxDistance:F

    .line 136
    iget v0, p0, Landroid/widget/AnimTextView;->mCacheWidth:F

    mul-float/2addr v0, v2

    iput v0, p0, Landroid/widget/AnimTextView;->mHalfWidth:F

    .line 137
    iget v0, p0, Landroid/widget/AnimTextView;->mCacheHeight:F

    mul-float/2addr v0, v2

    iput v0, p0, Landroid/widget/AnimTextView;->mHalfHeight:F

    .line 138
    return-void
.end method

.method public isDrawCahe()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/widget/AnimTextView;->drawCache:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 268
    iget-boolean v0, p0, Landroid/widget/AnimTextView;->drawCache:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v1, p0, Landroid/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    const/16 v2, 0x14

    const/16 v3, 0x1e

    iget-object v4, p0, Landroid/widget/AnimTextView;->mVerts:[F

    move-object v0, p1

    move v7, v5

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 203
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iput-wide p1, p0, Landroid/widget/AnimTextView;->mDuration:J

    .line 208
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    iput-object p1, p0, Landroid/widget/AnimTextView;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/AnimTextView;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public setRotateAreaWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 124
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 125
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Landroid/widget/AnimTextView;->mRotateAreaWidthValue:F

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iput p1, p0, Landroid/widget/AnimTextView;->mRotateAreaWidthValue:F

    goto :goto_0
.end method

.method public setStartDelay(J)V
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 219
    iput-wide p1, p0, Landroid/widget/AnimTextView;->mStartDelay:J

    .line 220
    return-void
.end method

.method public startMeshAnimation(Landroid/widget/AnimTextView$AnimationType;)V
    .locals 4
    .param p1, "type"    # Landroid/widget/AnimTextView$AnimationType;

    .prologue
    .line 227
    iget-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 230
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AnimTextView;->isDrawCahe()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    invoke-direct {p0}, Landroid/widget/AnimTextView;->buildCahe()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    invoke-direct {p0}, Landroid/widget/AnimTextView;->initMesh()V

    .line 237
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    .line 238
    iget-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Landroid/widget/AnimTextView;->mDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 239
    iget-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/AnimTextView;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    iget-wide v0, p0, Landroid/widget/AnimTextView;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 241
    iget-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Landroid/widget/AnimTextView;->mStartDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 243
    :cond_2
    sget-object v0, Landroid/widget/AnimTextView$3;->$SwitchMap$android$widget$AnimTextView$AnimationType:[I

    invoke-virtual {p1}, Landroid/widget/AnimTextView$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    iget-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 256
    :cond_3
    return-void

    .line 245
    :pswitch_0
    iget v0, p0, Landroid/widget/AnimTextView;->mHalfWidth:F

    invoke-virtual {p0, v0}, Landroid/widget/AnimTextView;->setPivotX(F)V

    .line 246
    iget v0, p0, Landroid/widget/AnimTextView;->mHalfHeight:F

    invoke-virtual {p0, v0}, Landroid/widget/AnimTextView;->setPivotY(F)V

    .line 247
    iget-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/AnimTextView;->mTweakUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 250
    :pswitch_1
    iget v0, p0, Landroid/widget/AnimTextView;->mCacheWidth:F

    invoke-virtual {p0, v0}, Landroid/widget/AnimTextView;->setPivotX(F)V

    .line 251
    iget v0, p0, Landroid/widget/AnimTextView;->mHalfHeight:F

    invoke-virtual {p0, v0}, Landroid/widget/AnimTextView;->setPivotY(F)V

    .line 252
    iget-object v0, p0, Landroid/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/AnimTextView;->mRotateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 237
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
