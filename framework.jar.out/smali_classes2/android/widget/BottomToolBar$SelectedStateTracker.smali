.class Landroid/widget/BottomToolBar$SelectedStateTracker;
.super Ljava/lang/Object;
.source "BottomToolBar.java"

# interfaces
.implements Landroid/widget/BottomBarItem$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BottomToolBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BottomToolBar;


# direct methods
.method private constructor <init>(Landroid/widget/BottomToolBar;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Landroid/widget/BottomToolBar$SelectedStateTracker;->this$0:Landroid/widget/BottomToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/BottomToolBar;Landroid/widget/BottomToolBar$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/BottomToolBar;
    .param p2, "x1"    # Landroid/widget/BottomToolBar$1;

    .prologue
    .line 454
    invoke-direct {p0, p1}, Landroid/widget/BottomToolBar$SelectedStateTracker;-><init>(Landroid/widget/BottomToolBar;)V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/widget/BottomBarItem;Z)V
    .locals 3
    .param p1, "item"    # Landroid/widget/BottomBarItem;
    .param p2, "isSelected"    # Z

    .prologue
    .line 458
    if-eqz p2, :cond_0

    .line 459
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/BottomBarItem;->setFocused(Z)V

    .line 460
    iget-object v0, p0, Landroid/widget/BottomToolBar$SelectedStateTracker;->this$0:Landroid/widget/BottomToolBar;

    # getter for: Landroid/widget/BottomToolBar;->mMoreView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/BottomToolBar;->access$300(Landroid/widget/BottomToolBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/BottomBarItem;->getId()I

    move-result v0

    iget-object v1, p0, Landroid/widget/BottomToolBar$SelectedStateTracker;->this$0:Landroid/widget/BottomToolBar;

    # getter for: Landroid/widget/BottomToolBar;->mMoreView:Landroid/view/View;
    invoke-static {v1}, Landroid/widget/BottomToolBar;->access$300(Landroid/widget/BottomToolBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 461
    iget-object v0, p0, Landroid/widget/BottomToolBar$SelectedStateTracker;->this$0:Landroid/widget/BottomToolBar;

    # invokes: Landroid/widget/BottomToolBar;->showMoreMenu()V
    invoke-static {v0}, Landroid/widget/BottomToolBar;->access$400(Landroid/widget/BottomToolBar;)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Landroid/widget/BottomToolBar$SelectedStateTracker;->this$0:Landroid/widget/BottomToolBar;

    iget-object v0, v0, Landroid/widget/BottomToolBar;->mOnSelectionChangeListener:Landroid/widget/BottomTabBar$OnSelectionChangeListener;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/widget/BottomToolBar$SelectedStateTracker;->this$0:Landroid/widget/BottomToolBar;

    iget-object v0, v0, Landroid/widget/BottomToolBar;->mOnSelectionChangeListener:Landroid/widget/BottomTabBar$OnSelectionChangeListener;

    iget-object v1, p0, Landroid/widget/BottomToolBar$SelectedStateTracker;->this$0:Landroid/widget/BottomToolBar;

    invoke-virtual {p1}, Landroid/widget/BottomBarItem;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/widget/BottomTabBar$OnSelectionChangeListener;->onSelectionChanged(Landroid/widget/BottomTabBar;I)V

    goto :goto_0
.end method
