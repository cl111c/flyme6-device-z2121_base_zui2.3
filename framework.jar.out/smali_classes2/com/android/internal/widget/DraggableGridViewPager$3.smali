.class Lcom/android/internal/widget/DraggableGridViewPager$3;
.super Ljava/lang/Object;
.source "DraggableGridViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DraggableGridViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DraggableGridViewPager;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DraggableGridViewPager;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/internal/widget/DraggableGridViewPager$3;->this$0:Lcom/android/internal/widget/DraggableGridViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager$3;->this$0:Lcom/android/internal/widget/DraggableGridViewPager;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/widget/DraggableGridViewPager;->setScrollState(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/DraggableGridViewPager;->access$100(Lcom/android/internal/widget/DraggableGridViewPager;I)V

    .line 197
    return-void
.end method
