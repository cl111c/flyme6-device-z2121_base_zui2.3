.class Landroid/widget/BottomTabBar$SelectedStateTracker;
.super Ljava/lang/Object;
.source "BottomTabBar.java"

# interfaces
.implements Landroid/widget/BottomBarItem$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BottomTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BottomTabBar;


# direct methods
.method private constructor <init>(Landroid/widget/BottomTabBar;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Landroid/widget/BottomTabBar$SelectedStateTracker;->this$0:Landroid/widget/BottomTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/BottomTabBar;Landroid/widget/BottomTabBar$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/BottomTabBar;
    .param p2, "x1"    # Landroid/widget/BottomTabBar$1;

    .prologue
    .line 595
    invoke-direct {p0, p1}, Landroid/widget/BottomTabBar$SelectedStateTracker;-><init>(Landroid/widget/BottomTabBar;)V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/widget/BottomBarItem;Z)V
    .locals 4
    .param p1, "item"    # Landroid/widget/BottomBarItem;
    .param p2, "isSelected"    # Z

    .prologue
    const/4 v3, 0x0

    .line 604
    iget-object v1, p0, Landroid/widget/BottomTabBar$SelectedStateTracker;->this$0:Landroid/widget/BottomTabBar;

    # getter for: Landroid/widget/BottomTabBar;->mProtectFromSelectedChange:Z
    invoke-static {v1}, Landroid/widget/BottomTabBar;->access$500(Landroid/widget/BottomTabBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget-object v1, p0, Landroid/widget/BottomTabBar$SelectedStateTracker;->this$0:Landroid/widget/BottomTabBar;

    const/4 v2, 0x1

    # setter for: Landroid/widget/BottomTabBar;->mProtectFromSelectedChange:Z
    invoke-static {v1, v2}, Landroid/widget/BottomTabBar;->access$502(Landroid/widget/BottomTabBar;Z)Z

    .line 610
    iget-object v1, p0, Landroid/widget/BottomTabBar$SelectedStateTracker;->this$0:Landroid/widget/BottomTabBar;

    # getter for: Landroid/widget/BottomTabBar;->mFocusedId:I
    invoke-static {v1}, Landroid/widget/BottomTabBar;->access$600(Landroid/widget/BottomTabBar;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 611
    iget-object v1, p0, Landroid/widget/BottomTabBar$SelectedStateTracker;->this$0:Landroid/widget/BottomTabBar;

    iget-object v2, p0, Landroid/widget/BottomTabBar$SelectedStateTracker;->this$0:Landroid/widget/BottomTabBar;

    # getter for: Landroid/widget/BottomTabBar;->mFocusedId:I
    invoke-static {v2}, Landroid/widget/BottomTabBar;->access$600(Landroid/widget/BottomTabBar;)I

    move-result v2

    # invokes: Landroid/widget/BottomTabBar;->setFocusedStateForView(IZ)V
    invoke-static {v1, v2, v3}, Landroid/widget/BottomTabBar;->access$700(Landroid/widget/BottomTabBar;IZ)V

    .line 613
    :cond_2
    iget-object v1, p0, Landroid/widget/BottomTabBar$SelectedStateTracker;->this$0:Landroid/widget/BottomTabBar;

    # setter for: Landroid/widget/BottomTabBar;->mProtectFromSelectedChange:Z
    invoke-static {v1, v3}, Landroid/widget/BottomTabBar;->access$502(Landroid/widget/BottomTabBar;Z)Z

    .line 615
    invoke-virtual {p1}, Landroid/widget/BottomBarItem;->getId()I

    move-result v0

    .line 616
    .local v0, "id":I
    if-eqz p2, :cond_0

    .line 617
    iget-object v1, p0, Landroid/widget/BottomTabBar$SelectedStateTracker;->this$0:Landroid/widget/BottomTabBar;

    # invokes: Landroid/widget/BottomTabBar;->setFocusedId(I)V
    invoke-static {v1, v0}, Landroid/widget/BottomTabBar;->access$400(Landroid/widget/BottomTabBar;I)V

    goto :goto_0
.end method
