.class public Landroid/widget/BottomToolBar;
.super Landroid/widget/BottomTabBar;
.source "BottomToolBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BottomToolBar$SelectedStateTracker;,
        Landroid/widget/BottomToolBar$MoreItemAdapter;,
        Landroid/widget/BottomToolBar$ViewHolder;
    }
.end annotation


# static fields
.field private static final INDEX:Ljava/lang/String; = "itemIndex"

.field private static final ITEM_ID:Ljava/lang/String; = "itemId"

.field private static final TAG:Ljava/lang/String; = "BottomToolBar"

.field private static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field private mBarHPadding:I

.field private mChildOnSelectedChangeListener:Landroid/widget/BottomBarItem$OnSelectedListener;

.field private mItemMaxCount:I

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mItemTextDisabledColor:I

.field private final mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mMenuLayoutId:I

.field private final mMoreItemList:Ljava/util/ArrayList;
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

.field private mMoreItemListView:Landroid/widget/ListView;

.field private mMoreView:Landroid/view/View;

.field private mPopDialog:Landroid/app/ActionDialog;

.field private mScreenWidth:I

.field private mShowMore:Z

.field private mVisibleItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/BottomToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const v0, 0x116011b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/BottomToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/BottomToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/BottomTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    iput v3, p0, Landroid/widget/BottomToolBar;->mBarHPadding:I

    .line 85
    iput-boolean v3, p0, Landroid/widget/BottomToolBar;->mShowMore:Z

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/widget/BottomToolBar;->mMoreItemList:Ljava/util/ArrayList;

    .line 88
    iput-object v4, p0, Landroid/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    .line 89
    iput-object v4, p0, Landroid/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    .line 91
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Landroid/widget/BottomToolBar;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    sget-object v1, Lcom/android/internal/R$styleable;->BottomToolBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/BottomToolBar;->setBackgroundColor(I)V

    .line 113
    const/4 v1, 0x4

    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/BottomToolBar;->mItemMaxCount:I

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/BottomToolBar;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 116
    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/BottomToolBar;->mItemTextDisabledColor:I

    .line 118
    const/4 v1, 0x2

    const v2, 0x1090046

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/BottomToolBar;->mMenuLayoutId:I

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/BottomToolBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method static synthetic access$200(Landroid/widget/BottomToolBar;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/BottomToolBar;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/BottomToolBar;->getChildIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/widget/BottomToolBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/BottomToolBar;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/BottomToolBar;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/BottomToolBar;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/BottomToolBar;->showMoreMenu()V

    return-void
.end method

.method private addList(Landroid/view/View;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 286
    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "root":Landroid/view/View;
    iput-object p1, p0, Landroid/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    .line 288
    iget-object v0, p0, Landroid/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 289
    iget-object v0, p0, Landroid/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 290
    iget-object v0, p0, Landroid/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/BottomToolBar$MoreItemAdapter;

    iget-object v2, p0, Landroid/widget/BottomToolBar;->mMoreItemList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Landroid/widget/BottomToolBar$MoreItemAdapter;-><init>(Landroid/widget/BottomToolBar;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    iget-object v0, p0, Landroid/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/BottomToolBar$1;

    invoke-direct {v1, p0}, Landroid/widget/BottomToolBar$1;-><init>(Landroid/widget/BottomToolBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 306
    return-void
.end method

.method private createMoreDialog()V
    .locals 5

    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Landroid/widget/BottomToolBar;->mMenuLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 318
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/app/ActionDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ActionDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, "builder":Landroid/app/ActionDialog$Builder;
    const v2, 0x10405f4

    new-instance v3, Landroid/widget/BottomToolBar$2;

    invoke-direct {v3, p0}, Landroid/widget/BottomToolBar$2;-><init>(Landroid/widget/BottomToolBar;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    .line 327
    invoke-virtual {v0, v1}, Landroid/app/ActionDialog$Builder;->setView(Landroid/view/View;)Landroid/app/ActionDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionDialog$Builder;->create()Landroid/app/ActionDialog;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/BottomToolBar;->mPopDialog:Landroid/app/ActionDialog;

    .line 328
    invoke-direct {p0, v1}, Landroid/widget/BottomToolBar;->addList(Landroid/view/View;)V

    .line 329
    return-void
.end method

.method private getChildIndex(I)I
    .locals 2
    .param p1, "moreItemsPosition"    # I

    .prologue
    .line 393
    iget-object v1, p0, Landroid/widget/BottomToolBar;->mMoreItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 394
    .local v0, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "itemIndex"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getChildText(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "s":Ljava/lang/String;
    instance-of v2, p1, Landroid/widget/BottomBarItem;

    if-eqz v2, :cond_0

    .line 277
    check-cast p1, Landroid/widget/BottomBarItem;

    .end local p1    # "child":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/BottomBarItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 278
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 279
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-object v0
.end method

.method private getMoreItemPosition()I
    .locals 5

    .prologue
    .line 378
    const/4 v2, -0x1

    .line 379
    .local v2, "position":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/BottomToolBar;->mVisibleItemCount:I

    .line 380
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 381
    invoke-virtual {p0, v1}, Landroid/widget/BottomToolBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 382
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 383
    iget v3, p0, Landroid/widget/BottomToolBar;->mVisibleItemCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/widget/BottomToolBar;->mVisibleItemCount:I

    .line 384
    iget v3, p0, Landroid/widget/BottomToolBar;->mVisibleItemCount:I

    iget v4, p0, Landroid/widget/BottomToolBar;->mItemMaxCount:I

    if-ne v3, v4, :cond_0

    .line 385
    move v2, v1

    .line 380
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return v2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 253
    new-instance v2, Landroid/widget/BottomToolBar$SelectedStateTracker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/BottomToolBar$SelectedStateTracker;-><init>(Landroid/widget/BottomToolBar;Landroid/widget/BottomToolBar$1;)V

    iput-object v2, p0, Landroid/widget/BottomToolBar;->mChildOnSelectedChangeListener:Landroid/widget/BottomBarItem$OnSelectedListener;

    .line 254
    iget-object v2, p0, Landroid/widget/BottomToolBar;->mChildOnSelectedChangeListener:Landroid/widget/BottomBarItem$OnSelectedListener;

    invoke-virtual {p0, v2}, Landroid/widget/BottomToolBar;->setChildOnSelectedChangeListener(Landroid/widget/BottomBarItem$OnSelectedListener;)V

    .line 255
    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050179

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/BottomToolBar;->mBarHPadding:I

    .line 257
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 258
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 260
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 261
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/widget/BottomToolBar;->mScreenWidth:I

    .line 262
    return-void
.end method

.method private removeMoreView()V
    .locals 4

    .prologue
    .line 332
    iget-object v2, p0, Landroid/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 333
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 334
    invoke-virtual {p0, v1}, Landroid/widget/BottomToolBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Landroid/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 336
    invoke-virtual {p0, v1}, Landroid/widget/BottomToolBar;->removeViewAt(I)V

    .line 337
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    .line 342
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 333
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showMoreMenu()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Landroid/widget/BottomToolBar;->mPopDialog:Landroid/app/ActionDialog;

    if-nez v0, :cond_0

    .line 310
    invoke-direct {p0}, Landroid/widget/BottomToolBar;->createMoreDialog()V

    .line 312
    :cond_0
    iget-object v0, p0, Landroid/widget/BottomToolBar;->mPopDialog:Landroid/app/ActionDialog;

    invoke-virtual {v0}, Landroid/app/ActionDialog;->show()V

    .line 313
    return-void
.end method

.method private updateItemsTextColor()V
    .locals 4

    .prologue
    .line 265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 266
    invoke-virtual {p0, v1}, Landroid/widget/BottomToolBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 267
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/BottomBarItem;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 268
    check-cast v2, Landroid/widget/BottomBarItem;

    iget-object v3, p0, Landroid/widget/BottomToolBar;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/BottomBarItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 269
    check-cast v0, Landroid/widget/BottomBarItem;

    .end local v0    # "child":Landroid/view/View;
    iget v2, p0, Landroid/widget/BottomToolBar;->mItemTextDisabledColor:I

    invoke-virtual {v0, v2}, Landroid/widget/BottomBarItem;->setTextDisabledColor(I)V

    .line 265
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_1
    return-void
.end method

.method private updateMoreItemList()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 345
    invoke-direct {p0}, Landroid/widget/BottomToolBar;->removeMoreView()V

    .line 346
    invoke-direct {p0}, Landroid/widget/BottomToolBar;->getMoreItemPosition()I

    move-result v3

    .line 347
    .local v3, "moreItemPosition":I
    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    .line 348
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/BottomToolBar;->mShowMore:Z

    .line 349
    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x1090045

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    .line 351
    iget-object v4, p0, Landroid/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    check-cast v4, Landroid/widget/BottomBarItem;

    iget-object v5, p0, Landroid/widget/BottomToolBar;->mChildOnSelectedChangeListener:Landroid/widget/BottomBarItem$OnSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/BottomBarItem;->setOnSelectedListener(Landroid/widget/BottomBarItem$OnSelectedListener;)V

    .line 352
    iget-object v4, p0, Landroid/widget/BottomToolBar;->mMoreView:Landroid/view/View;

    iget-object v5, p0, Landroid/widget/BottomToolBar;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v4, v3, v5}, Landroid/widget/BottomToolBar;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 353
    iget-object v4, p0, Landroid/widget/BottomToolBar;->mMoreItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 354
    add-int/lit8 v1, v3, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 355
    invoke-virtual {p0, v1}, Landroid/widget/BottomToolBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 356
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 357
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v2, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "text"

    invoke-direct {p0, v0}, Landroid/widget/BottomToolBar;->getChildText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v4, "itemIndex"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v4, "itemId"

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v4, p0, Landroid/widget/BottomToolBar;->mMoreItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v2    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Landroid/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 365
    iget-object v4, p0, Landroid/widget/BottomToolBar;->mMoreItemListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Landroid/widget/BottomToolBar$MoreItemAdapter;

    invoke-virtual {v4}, Landroid/widget/BottomToolBar$MoreItemAdapter;->notifyDataSetInvalidated()V

    .line 375
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 368
    :cond_3
    iput-boolean v6, p0, Landroid/widget/BottomToolBar;->mShowMore:Z

    .line 369
    iget-object v4, p0, Landroid/widget/BottomToolBar;->mMoreItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 370
    iget-object v4, p0, Landroid/widget/BottomToolBar;->mPopDialog:Landroid/app/ActionDialog;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/BottomToolBar;->mPopDialog:Landroid/app/ActionDialog;

    invoke-virtual {v4}, Landroid/app/ActionDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 371
    iget-object v4, p0, Landroid/widget/BottomToolBar;->mPopDialog:Landroid/app/ActionDialog;

    invoke-virtual {v4}, Landroid/app/ActionDialog;->dismiss()V

    .line 373
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/BottomToolBar;->mPopDialog:Landroid/app/ActionDialog;

    goto :goto_1
.end method


# virtual methods
.method public closePopMenu()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/widget/BottomToolBar;->mPopDialog:Landroid/app/ActionDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/BottomToolBar;->mPopDialog:Landroid/app/ActionDialog;

    invoke-virtual {v0}, Landroid/app/ActionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Landroid/widget/BottomToolBar;->mPopDialog:Landroid/app/ActionDialog;

    invoke-virtual {v0}, Landroid/app/ActionDialog;->dismiss()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/BottomToolBar;->mPopDialog:Landroid/app/ActionDialog;

    .line 151
    :cond_0
    return-void
.end method

.method protected isMovingOutTouchArea(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 247
    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return v2

    .line 237
    :pswitch_1
    iget-object v3, p0, Landroid/widget/BottomToolBar;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/BottomToolBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v0, v3

    .line 239
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v1, v3

    .line 240
    .local v1, "y":I
    iget-object v3, p0, Landroid/widget/BottomToolBar;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/BottomToolBar;->mBorderRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/widget/BottomToolBar;->mBarHPadding:I

    add-int/2addr v3, v4

    if-lt v0, v3, :cond_1

    iget-object v3, p0, Landroid/widget/BottomToolBar;->mBorderRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/widget/BottomToolBar;->mBarHPadding:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_0

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isPopMenuShowing()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/widget/BottomToolBar;->mPopDialog:Landroid/app/ActionDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/BottomToolBar;->mPopDialog:Landroid/app/ActionDialog;

    invoke-virtual {v0}, Landroid/app/ActionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->closePopMenu()V

    .line 227
    invoke-super {p0}, Landroid/widget/BottomTabBar;->onDetachedFromWindow()V

    .line 228
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Landroid/widget/BottomTabBar;->onFinishInflate()V

    .line 220
    invoke-direct {p0}, Landroid/widget/BottomToolBar;->updateMoreItemList()V

    .line 221
    invoke-direct {p0}, Landroid/widget/BottomToolBar;->updateItemsTextColor()V

    .line 222
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BottomToolBar;->getChildCount()I

    move-result v6

    .line 159
    .local v6, "childCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BottomToolBar;->getPaddingLeft()I

    move-result v11

    .line 160
    .local v11, "leftPos":I
    sub-int v23, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BottomToolBar;->getPaddingRight()I

    move-result v24

    sub-int v19, v23, v24

    .line 163
    .local v19, "rightPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BottomToolBar;->mLeftWidth:I

    move/from16 v23, v0

    add-int v23, v23, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BottomToolBar;->mBarHPadding:I

    move/from16 v24, v0

    add-int v13, v23, v24

    .line 164
    .local v13, "middleLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BottomToolBar;->mRightWidth:I

    move/from16 v23, v0

    sub-int v23, v19, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BottomToolBar;->mBarHPadding:I

    move/from16 v24, v0

    sub-int v14, v23, v24

    .line 167
    .local v14, "middleRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BottomToolBar;->getPaddingTop()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BottomToolBar;->mDividerHeight:I

    move/from16 v24, v0

    add-int v17, v23, v24

    .line 168
    .local v17, "parentTop":I
    sub-int v23, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BottomToolBar;->getPaddingBottom()I

    move-result v24

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BottomToolBar;->mDividerHeight:I

    move/from16 v24, v0

    add-int v16, v23, v24

    .line 170
    .local v16, "parentBottom":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/BottomToolBar;->getMoreItemPosition()I

    move-result v15

    .line 171
    .local v15, "morePosition":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/BottomToolBar;->mShowMore:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/BottomToolBar;->mItemMaxCount:I

    .line 172
    .local v7, "count":I
    :goto_0
    if-lez v7, :cond_3

    sub-int v23, v14, v13

    div-int v8, v23, v7

    .line 173
    .local v8, "groupWidth":I
    :goto_1
    if-lez v7, :cond_4

    sub-int v23, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BottomToolBar;->mBarHPadding:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    div-int v20, v23, v7

    .line 177
    .local v20, "touchWidth":I
    :goto_2
    const/16 v21, 0x0

    .line 178
    .local v21, "visibleCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v6, :cond_5

    .line 179
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/BottomToolBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 180
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomToolBar;->mChildrenRectList:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Rect;

    .line 181
    .local v18, "rect":Landroid/graphics/Rect;
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 182
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 183
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 185
    .local v12, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    .line 186
    .local v22, "width":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 188
    .local v9, "height":I
    move/from16 v0, v21

    if-lt v0, v7, :cond_0

    .line 189
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/BottomToolBar;->mScreenWidth:I

    .line 193
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomToolBar;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    mul-int v24, v8, v21

    add-int v24, v24, v13

    iget v0, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomToolBar;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    add-int/lit8 v24, v21, 0x1

    mul-int v24, v24, v8

    add-int v24, v24, v13

    iget v0, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomToolBar;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    iget v0, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v24, v0

    add-int v24, v24, v17

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomToolBar;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    iget v0, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v24, v16, v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BottomToolBar;->mBarHPadding:I

    move/from16 v23, v0

    add-int v23, v23, p2

    mul-int v24, v20, v21

    add-int v23, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/BottomToolBar;->mBarHPadding:I

    move/from16 v25, v0

    add-int v25, v25, p2

    add-int/lit8 v26, v21, 0x1

    mul-int v26, v26, v20

    add-int v25, v25, v26

    sub-int v26, p5, p3

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    const/16 v23, 0x11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomToolBar;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomToolBar;->mTmpChildRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v9, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomToolBar;->mTmpChildRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomToolBar;->mTmpChildRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomToolBar;->mTmpChildRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/BottomToolBar;->mTmpChildRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 209
    add-int/lit8 v21, v21, 0x1

    .line 178
    .end local v9    # "height":I
    .end local v12    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v22    # "width":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 171
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "count":I
    .end local v8    # "groupWidth":I
    .end local v10    # "i":I
    .end local v18    # "rect":Landroid/graphics/Rect;
    .end local v20    # "touchWidth":I
    .end local v21    # "visibleCount":I
    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/BottomToolBar;->mVisibleItemCount:I

    goto/16 :goto_0

    .line 172
    .restart local v7    # "count":I
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 173
    .restart local v8    # "groupWidth":I
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 212
    .restart local v10    # "i":I
    .restart local v20    # "touchWidth":I
    .restart local v21    # "visibleCount":I
    :cond_5
    return-void
.end method

.method public removeItemById(I)V
    .locals 0
    .param p1, "itemId"    # I

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/BottomTabBar;->removeItemById(I)V

    .line 133
    invoke-direct {p0}, Landroid/widget/BottomToolBar;->updateMoreItemList()V

    .line 134
    return-void
.end method

.method public resetBar()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/widget/BottomToolBar;->updateMoreItemList()V

    .line 138
    invoke-direct {p0}, Landroid/widget/BottomToolBar;->updateItemsTextColor()V

    .line 139
    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->invalidate()V

    .line 140
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/widget/BottomToolBar;->closePopMenu()V

    .line 127
    invoke-super {p0, p1}, Landroid/widget/BottomTabBar;->setVisibility(I)V

    .line 128
    return-void
.end method
