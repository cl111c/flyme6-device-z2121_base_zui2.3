.class Lcom/android/internal/widget/DraggableGridViewPager$2;
.super Landroid/database/DataSetObserver;
.source "DraggableGridViewPager.java"


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
    .line 140
    iput-object p1, p0, Lcom/android/internal/widget/DraggableGridViewPager$2;->this$0:Lcom/android/internal/widget/DraggableGridViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager$2;->this$0:Lcom/android/internal/widget/DraggableGridViewPager;

    # invokes: Lcom/android/internal/widget/DraggableGridViewPager;->dataSetChanged()V
    invoke-static {v0}, Lcom/android/internal/widget/DraggableGridViewPager;->access$000(Lcom/android/internal/widget/DraggableGridViewPager;)V

    .line 144
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/DraggableGridViewPager$2;->this$0:Lcom/android/internal/widget/DraggableGridViewPager;

    # invokes: Lcom/android/internal/widget/DraggableGridViewPager;->dataSetChanged()V
    invoke-static {v0}, Lcom/android/internal/widget/DraggableGridViewPager;->access$000(Lcom/android/internal/widget/DraggableGridViewPager;)V

    .line 149
    return-void
.end method
