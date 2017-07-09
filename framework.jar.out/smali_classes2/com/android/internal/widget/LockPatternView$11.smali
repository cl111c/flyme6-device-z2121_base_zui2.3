.class Lcom/android/internal/widget/LockPatternView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockPatternView.java"


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
    .line 1220
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$11;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$11;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mStates:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternView;->access$700(Lcom/android/internal/widget/LockPatternView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1225
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$11;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mStates:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternView;->access$700(Lcom/android/internal/widget/LockPatternView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;->centerScale:F

    .line 1224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1227
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$11;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1228
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$11;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mStates:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternView;->access$700(Lcom/android/internal/widget/LockPatternView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1233
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$11;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mStates:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternView;->access$700(Lcom/android/internal/widget/LockPatternView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;->centerScale:F

    .line 1232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1235
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$11;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1236
    return-void
.end method
