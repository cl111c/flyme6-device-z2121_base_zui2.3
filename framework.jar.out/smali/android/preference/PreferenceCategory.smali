.class public Landroid/preference/PreferenceCategory;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceCategory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceCategory"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomizedFlag:Z

.field private mLayoutId:I

.field private mNoTextHeight:I

.field private mSelectable:Z

.field private mShowSpace:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const v0, 0x101008c

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    iput-object p1, p0, Landroid/preference/PreferenceCategory;->mContext:Landroid/content/Context;

    .line 58
    iget-object v7, p0, Landroid/preference/PreferenceCategory;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v7, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v7, 0x141

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/preference/PreferenceCategory;->mCustomizedFlag:Z

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    iget-boolean v7, p0, Landroid/preference/PreferenceCategory;->mCustomizedFlag:Z

    if-eqz v7, :cond_1

    .line 63
    sget-object v7, Lcom/android/internal/R$styleable;->PreferenceCategory:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 65
    .local v1, "b":Landroid/content/res/TypedArray;
    const/4 v7, 0x5

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/preference/PreferenceCategory;->mLayoutId:I

    .line 66
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->getLayoutResource()I

    move-result v3

    .line 67
    .local v3, "layoutId":I
    const/4 v7, 0x7

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 70
    .local v2, "defaultLayoutId":I
    if-eq v3, v2, :cond_0

    .line 71
    iput v3, p0, Landroid/preference/PreferenceCategory;->mLayoutId:I

    .line 73
    :cond_0
    invoke-virtual {v1, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/preference/PreferenceCategory;->mShowSpace:Z

    .line 74
    const/4 v7, 0x6

    invoke-virtual {v1, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/preference/PreferenceCategory;->mNoTextHeight:I

    .line 75
    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 76
    .local v4, "value":I
    if-lez v4, :cond_2

    :goto_0
    iput-boolean v5, p0, Landroid/preference/PreferenceCategory;->mSelectable:Z

    .line 77
    iget-boolean v5, p0, Landroid/preference/PreferenceCategory;->mSelectable:Z

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceCategory;->setSelectable(Z)V

    .line 78
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    .end local v1    # "b":Landroid/content/res/TypedArray;
    .end local v2    # "defaultLayoutId":I
    .end local v3    # "layoutId":I
    .end local v4    # "value":I
    :cond_1
    return-void

    .restart local v1    # "b":Landroid/content/res/TypedArray;
    .restart local v2    # "defaultLayoutId":I
    .restart local v3    # "layoutId":I
    .restart local v4    # "value":I
    :cond_2
    move v5, v6

    .line 76
    goto :goto_0
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/preference/PreferenceCategory;->mCustomizedFlag:Z

    if-eqz v0, :cond_0

    .line 128
    iget v0, p0, Landroid/preference/PreferenceCategory;->mLayoutId:I

    .line 130
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->getLayoutResource()I

    move-result v0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Landroid/preference/PreferenceCategory;->mSelectable:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 155
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onBindView(Landroid/view/View;)V

    .line 156
    iget-boolean v4, p0, Landroid/preference/PreferenceCategory;->mCustomizedFlag:Z

    if-nez v4, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 160
    .local v3, "upperView":Landroid/widget/TextView;
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    .local v0, "lowerView":Landroid/widget/TextView;
    const v4, 0x1020300

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, "space":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 165
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_6

    .line 166
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 167
    :cond_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 169
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Landroid/preference/PreferenceCategory;->mNoTextHeight:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 170
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 172
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iget-boolean v4, p0, Landroid/preference/PreferenceCategory;->mShowSpace:Z

    if-eqz v4, :cond_5

    .line 173
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 175
    :cond_5
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 179
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_9

    .line 180
    :cond_7
    iget-boolean v4, p0, Landroid/preference/PreferenceCategory;->mShowSpace:Z

    if-eqz v4, :cond_8

    .line 181
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_8
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 186
    :cond_9
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 141
    iget-object v2, p0, Landroid/preference/PreferenceCategory;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 145
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget-boolean v2, p0, Landroid/preference/PreferenceCategory;->mCustomizedFlag:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/preference/PreferenceCategory;->mLayoutId:I

    if-lez v2, :cond_0

    .line 146
    iget v2, p0, Landroid/preference/PreferenceCategory;->mLayoutId:I

    invoke-virtual {v1, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "layout":Landroid/view/View;
    :goto_0
    return-object v0

    .line 148
    .end local v0    # "layout":Landroid/view/View;
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->getLayoutResource()I

    move-result v2

    invoke-virtual {v1, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "layout":Landroid/view/View;
    goto :goto_0
.end method

.method protected onPrepareAddPreference(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 97
    instance-of v0, p1, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a PreferenceCategory directly to a PreferenceCategory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public setLayoutResource(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/preference/PreferenceCategory;->mCustomizedFlag:Z

    if-eqz v0, :cond_0

    .line 119
    iput p1, p0, Landroid/preference/PreferenceCategory;->mLayoutId:I

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->setLayoutResource(I)V

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
