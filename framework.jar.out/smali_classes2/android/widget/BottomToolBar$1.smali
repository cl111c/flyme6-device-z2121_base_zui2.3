.class Landroid/widget/BottomToolBar$1;
.super Ljava/lang/Object;
.source "BottomToolBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/BottomToolBar;->addList(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BottomToolBar;


# direct methods
.method constructor <init>(Landroid/widget/BottomToolBar;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Landroid/widget/BottomToolBar$1;->this$0:Landroid/widget/BottomToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Landroid/widget/BottomToolBar$1;->this$0:Landroid/widget/BottomToolBar;

    invoke-virtual {v1}, Landroid/widget/BottomToolBar;->closePopMenu()V

    .line 297
    const-string v1, "BottomToolBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick:id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-int v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v1, p0, Landroid/widget/BottomToolBar$1;->this$0:Landroid/widget/BottomToolBar;

    iget-object v1, v1, Landroid/widget/BottomToolBar;->mOnSelectionChangeListener:Landroid/widget/BottomTabBar$OnSelectionChangeListener;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Landroid/widget/BottomToolBar$1;->this$0:Landroid/widget/BottomToolBar;

    long-to-int v2, p4

    invoke-virtual {v1, v2}, Landroid/widget/BottomToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Landroid/widget/BottomToolBar$1;->this$0:Landroid/widget/BottomToolBar;

    iget-object v1, v1, Landroid/widget/BottomToolBar;->mOnSelectionChangeListener:Landroid/widget/BottomTabBar$OnSelectionChangeListener;

    iget-object v2, p0, Landroid/widget/BottomToolBar$1;->this$0:Landroid/widget/BottomToolBar;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/widget/BottomTabBar$OnSelectionChangeListener;->onSelectionChanged(Landroid/widget/BottomTabBar;I)V

    .line 304
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method
