.class Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "BottomTabBar.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BottomTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Landroid/widget/BottomTabBar;


# direct methods
.method private constructor <init>(Landroid/widget/BottomTabBar;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/BottomTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/BottomTabBar;Landroid/widget/BottomTabBar$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/BottomTabBar;
    .param p2, "x1"    # Landroid/widget/BottomTabBar$1;

    .prologue
    .line 549
    invoke-direct {p0, p1}, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/BottomTabBar;)V

    return-void
.end method

.method static synthetic access$002(Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0
    .param p0, "x0"    # Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;
    .param p1, "x1"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 549
    iput-object p1, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 557
    iget-object v2, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/BottomTabBar;

    if-ne p1, v2, :cond_1

    instance-of v2, p2, Landroid/widget/BottomBarItem;

    if-eqz v2, :cond_1

    .line 558
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 560
    .local v0, "id":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 561
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    .line 562
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v2, p2

    .line 564
    check-cast v2, Landroid/widget/BottomBarItem;

    iget-object v3, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/BottomTabBar;

    # getter for: Landroid/widget/BottomTabBar;->mChildOnSelectedChangeListener:Landroid/widget/BottomBarItem$OnSelectedListener;
    invoke-static {v3}, Landroid/widget/BottomTabBar;->access$300(Landroid/widget/BottomTabBar;)Landroid/widget/BottomBarItem$OnSelectedListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/BottomBarItem;->setOnSelectedListener(Landroid/widget/BottomBarItem$OnSelectedListener;)V

    .line 566
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 567
    iget-object v2, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/BottomTabBar;

    # invokes: Landroid/widget/BottomTabBar;->setFocusedId(I)V
    invoke-static {v2, v0}, Landroid/widget/BottomTabBar;->access$400(Landroid/widget/BottomTabBar;I)V

    .line 571
    .end local v0    # "id":I
    :cond_1
    iget-object v2, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v2, :cond_2

    .line 572
    iget-object v2, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v2, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 574
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 575
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/BottomTabBar;

    iget-object v2, v2, Landroid/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 582
    iget-object v0, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/BottomTabBar;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/widget/BottomBarItem;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 583
    check-cast v0, Landroid/widget/BottomBarItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/BottomBarItem;->setOnSelectedListener(Landroid/widget/BottomBarItem$OnSelectedListener;)V

    .line 586
    :cond_0
    iget-object v0, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 589
    :cond_1
    iget-object v0, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/BottomTabBar;

    iget-object v0, v0, Landroid/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 590
    iget-object v0, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/BottomTabBar;

    iget-object v0, v0, Landroid/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    iget-object v1, p0, Landroid/widget/BottomTabBar$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/BottomTabBar;

    iget-object v1, v1, Landroid/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 592
    :cond_2
    return-void
.end method
