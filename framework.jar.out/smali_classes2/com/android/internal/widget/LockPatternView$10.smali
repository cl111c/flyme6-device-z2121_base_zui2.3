.class Lcom/android/internal/widget/LockPatternView$10;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startBreathe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternView;)V
    .locals 0

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$10;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1209
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1210
    .local v1, "value":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$10;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mStates:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->access$700(Lcom/android/internal/widget/LockPatternView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1211
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$10;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->access$800(Lcom/android/internal/widget/LockPatternView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1212
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$10;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mStates:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->access$700(Lcom/android/internal/widget/LockPatternView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$CellState;

    add-float v3, v4, v1

    iput v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->centerScale:F

    .line 1210
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$10;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mStates:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->access$700(Lcom/android/internal/widget/LockPatternView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$CellState;

    iput v4, v2, Lcom/android/internal/widget/LockPatternView$CellState;->centerScale:F

    goto :goto_1

    .line 1217
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$10;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1218
    return-void
.end method
