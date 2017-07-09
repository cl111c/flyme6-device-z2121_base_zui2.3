.class Landroid/widget/BottomToolBar$MoreItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "BottomToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BottomToolBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreItemAdapter"
.end annotation


# instance fields
.field private final mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/BottomToolBar;


# direct methods
.method public constructor <init>(Landroid/widget/BottomToolBar;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Landroid/widget/BottomToolBar$MoreItemAdapter;->this$0:Landroid/widget/BottomToolBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 406
    iput-object p2, p0, Landroid/widget/BottomToolBar$MoreItemAdapter;->mDataList:Ljava/util/ArrayList;

    .line 407
    return-void
.end method

.method private getItemEnableState(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 445
    iget-object v1, p0, Landroid/widget/BottomToolBar$MoreItemAdapter;->this$0:Landroid/widget/BottomToolBar;

    iget-object v2, p0, Landroid/widget/BottomToolBar$MoreItemAdapter;->this$0:Landroid/widget/BottomToolBar;

    # invokes: Landroid/widget/BottomToolBar;->getChildIndex(I)I
    invoke-static {v2, p1}, Landroid/widget/BottomToolBar;->access$200(Landroid/widget/BottomToolBar;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/BottomToolBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 446
    .local v0, "item":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    .line 449
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Landroid/widget/BottomToolBar$MoreItemAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 416
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 421
    iget-object v1, p0, Landroid/widget/BottomToolBar$MoreItemAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 422
    .local v0, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "itemId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 427
    move-object v1, p2

    .line 429
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 430
    iget-object v2, p0, Landroid/widget/BottomToolBar$MoreItemAdapter;->this$0:Landroid/widget/BottomToolBar;

    invoke-virtual {v2}, Landroid/widget/BottomToolBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090113

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 432
    new-instance v0, Landroid/widget/BottomToolBar$ViewHolder;

    iget-object v2, p0, Landroid/widget/BottomToolBar$MoreItemAdapter;->this$0:Landroid/widget/BottomToolBar;

    invoke-direct {v0, v2, v4}, Landroid/widget/BottomToolBar$ViewHolder;-><init>(Landroid/widget/BottomToolBar;Landroid/widget/BottomToolBar$1;)V

    .line 433
    .local v0, "holder":Landroid/widget/BottomToolBar$ViewHolder;
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Landroid/widget/BottomToolBar$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 434
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 438
    :goto_0
    iget-object v3, v0, Landroid/widget/BottomToolBar$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/BottomToolBar$MoreItemAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "text"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v2, v0, Landroid/widget/BottomToolBar$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/BottomToolBar$MoreItemAdapter;->getItemEnableState(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 441
    return-object v1

    .line 436
    .end local v0    # "holder":Landroid/widget/BottomToolBar$ViewHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BottomToolBar$ViewHolder;

    .restart local v0    # "holder":Landroid/widget/BottomToolBar$ViewHolder;
    goto :goto_0
.end method
