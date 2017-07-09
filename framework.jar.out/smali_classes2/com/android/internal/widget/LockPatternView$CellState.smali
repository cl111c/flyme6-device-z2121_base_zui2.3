.class public Lcom/android/internal/widget/LockPatternView$CellState;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellState"
.end annotation


# instance fields
.field alpha:F

.field public centerScale:F

.field col:I

.field hwAnimating:Z

.field hwCenterX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field hwCenterY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field hwPaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field hwRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public lineAnimator:Landroid/animation/ValueAnimator;

.field public lineEndX:F

.field public lineEndY:F

.field radius:F

.field row:I

.field public transX:F

.field public transY:F

.field translationY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput v2, p0, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 237
    iput v1, p0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 238
    iput v1, p0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 242
    iput v0, p0, Lcom/android/internal/widget/LockPatternView$CellState;->transX:F

    .line 243
    iput v0, p0, Lcom/android/internal/widget/LockPatternView$CellState;->transY:F

    .line 244
    iput v2, p0, Lcom/android/internal/widget/LockPatternView$CellState;->centerScale:F

    return-void
.end method
