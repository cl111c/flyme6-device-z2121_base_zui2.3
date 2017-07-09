.class public Landroid/widget/ListViewXEditBar;
.super Ljava/lang/Object;
.source "ListViewXEditBar.java"


# instance fields
.field private final SELECT_ALL:Ljava/lang/String;

.field private final UNSELECT_ALL:Ljava/lang/String;

.field private mAllSelectd:Z

.field private mCancel:Landroid/widget/TextView;

.field private mContainerView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDivider:Landroid/view/View;

.field private mListView:Landroid/widget/ListViewX;

.field private mPopWin:Landroid/widget/PopupWindow;

.field private mSelectAll:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;I)V
    .locals 4
    .param p1, "list"    # Landroid/widget/ListView;
    .param p2, "layoutId"    # I

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ListViewXEditBar;->mAllSelectd:Z

    .line 47
    check-cast p1, Landroid/widget/ListViewX;

    .end local p1    # "list":Landroid/widget/ListView;
    iput-object p1, p0, Landroid/widget/ListViewXEditBar;->mListView:Landroid/widget/ListViewX;

    .line 48
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mListView:Landroid/widget/ListViewX;

    invoke-virtual {v1}, Landroid/widget/ListViewX;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    .line 49
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ListViewXEditBar;->mListView:Landroid/widget/ListViewX;

    invoke-virtual {v1, p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "root":Landroid/view/View;
    const v1, 0x10202ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ListViewXEditBar;->mContainerView:Landroid/view/View;

    .line 51
    const v1, 0x102036c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/ListViewXEditBar;->mCancel:Landroid/widget/TextView;

    .line 52
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mListView:Landroid/widget/ListViewX;

    invoke-virtual {v1}, Landroid/widget/ListViewX;->getCustomizedLeftTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ListViewXEditBar;->setLeftTextColor(Landroid/content/res/ColorStateList;)V

    .line 53
    const v1, 0x102036e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mListView:Landroid/widget/ListViewX;

    invoke-virtual {v1}, Landroid/widget/ListViewX;->getCustomizedRightTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ListViewXEditBar;->setRightTextColor(Landroid/content/res/ColorStateList;)V

    .line 55
    const v1, 0x102036d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/ListViewXEditBar;->mTitle:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0, v3}, Landroid/widget/ListViewXEditBar;->updateTitle(I)V

    .line 57
    const v1, 0x102036f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ListViewXEditBar;->mDivider:Landroid/view/View;

    .line 59
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ListViewXEditBar;->SELECT_ALL:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ListViewXEditBar;->UNSELECT_ALL:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mCancel:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/ListViewXEditBar$1;

    invoke-direct {v2, p0}, Landroid/widget/ListViewXEditBar$1;-><init>(Landroid/widget/ListViewXEditBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/ListViewXEditBar$2;

    invoke-direct {v2, p0}, Landroid/widget/ListViewXEditBar$2;-><init>(Landroid/widget/ListViewXEditBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    .line 84
    invoke-direct {p0}, Landroid/widget/ListViewXEditBar;->screenLayout()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ListViewXEditBar;)Landroid/widget/ListViewX;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListViewXEditBar;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mListView:Landroid/widget/ListViewX;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ListViewXEditBar;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListViewXEditBar;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/ListViewXEditBar;->onSelectAll()V

    return-void
.end method

.method private onSelectAll()V
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mListView:Landroid/widget/ListViewX;

    iget-boolean v0, p0, Landroid/widget/ListViewXEditBar;->mAllSelectd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListViewX;->selectAllListItem(Z)V

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private screenLayout()V
    .locals 5

    .prologue
    .line 156
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 157
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Landroid/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 159
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 160
    iget-object v3, p0, Landroid/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105014e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 162
    .local v1, "height":I
    iget-object v3, p0, Landroid/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 163
    iget-object v3, p0, Landroid/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 164
    return-void
.end method

.method private updateSelectAllText()V
    .locals 2

    .prologue
    .line 171
    iget-boolean v0, p0, Landroid/widget/ListViewXEditBar;->mAllSelectd:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->UNSELECT_ALL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->SELECT_ALL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 118
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mContainerView:Landroid/view/View;

    return-object v0
.end method

.method public setLeftButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 140
    :cond_0
    return-void
.end method

.method public setLeftTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setRightButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public setRightTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 131
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 134
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mPopWin:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mListView:Landroid/widget/ListViewX;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/16 v4, 0x36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 89
    return-void
.end method

.method public showDivider(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Landroid/widget/ListViewXEditBar;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_0
    return-void

    .line 150
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateTitle(I)V
    .locals 7
    .param p1, "number"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 92
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mListView:Landroid/widget/ListViewX;

    invoke-virtual {v1, p1}, Landroid/widget/ListViewX;->getEditModeCustomizedTitle(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "title":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 94
    if-le p1, v5, :cond_1

    .line 95
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405f6

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mListView:Landroid/widget/ListViewX;

    invoke-virtual {v1}, Landroid/widget/ListViewX;->getCount()I

    move-result v1

    iget-object v2, p0, Landroid/widget/ListViewXEditBar;->mListView:Landroid/widget/ListViewX;

    invoke-virtual {v2}, Landroid/widget/ListViewX;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ListViewXEditBar;->mListView:Landroid/widget/ListViewX;

    invoke-virtual {v2}, Landroid/widget/ListViewX;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_3

    .line 109
    iput-boolean v5, p0, Landroid/widget/ListViewXEditBar;->mAllSelectd:Z

    .line 113
    :goto_1
    invoke-direct {p0}, Landroid/widget/ListViewXEditBar;->updateSelectAllText()V

    .line 114
    return-void

    .line 98
    :cond_1
    if-lez p1, :cond_2

    .line 99
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Landroid/widget/ListViewXEditBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_3
    iput-boolean v6, p0, Landroid/widget/ListViewXEditBar;->mAllSelectd:Z

    goto :goto_1
.end method
