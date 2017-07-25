.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$FlymeInjector;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field public mAlertExt:Lcom/android/internal/app/AlertControllerExt;

.field private mAdapter:Landroid/widget/ListAdapter;

.field protected mAlertDialogLayout:I

.field private mButtonDivider:Landroid/graphics/drawable/Drawable;

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private mCustomView:Landroid/view/View;

.field protected mCustomedFlag:Z

.field protected mCustomizedViewTitlePadding:I

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field protected mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mListViewSelector:Landroid/graphics/drawable/Drawable;

.field private mMaxHeight:I

.field private mMessage:Ljava/lang/CharSequence;

.field protected mMessageOnlyHeight:I

.field public mMessageTitle:Z

.field private mMessageView:Landroid/widget/TextView;

.field protected mMessageViewPaddingHeight:I

.field protected mMessageViewPaddingWidth:I

.field private mMessageViewWidth:I

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field protected mTitle:Ljava/lang/CharSequence;

.field protected mTitleExtraPadding:I

.field protected mTitleMinHeight:I

.field protected mTitleOnlyGravity:I

.field protected mTitleOnlyMaxLines:I

.field protected mTitleOnlyVerticalPadding:I

.field public mTitleView:Landroid/widget/TextView;

.field protected mVertical3Buttons:Z

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x11

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 99
    iput v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 111
    iput v5, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 120
    iput v4, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 138
    iput-boolean v6, p0, Lcom/android/internal/app/AlertController;->mVertical3Buttons:Z

    .line 140
    iput-object v8, p0, Lcom/android/internal/app/AlertController;->mListViewSelector:Landroid/graphics/drawable/Drawable;

    .line 144
    new-instance v2, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 201
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 202
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 203
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 204
    new-instance v2, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v2, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 206
    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v3, #android:attr@alertDialogStyle#t

    invoke-virtual {p1, v8, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 209
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xa

    const v3, #android:layout@alert_dialog#t

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 211
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    .line 213
    const/16 v2, 0xe

    const v3, #android:layout@select_dialog#t

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 216
    const/16 v2, 0xf

    const v3, #android:layout@select_dialog_multichoice#t

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 219
    const/16 v2, 0x10

    const v3, #android:layout@select_dialog_singlechoice#t

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    const v2, #android:layout@select_dialog_item#t

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 227
    const/16 v2, 0x15

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mTitleMinHeight:I

    .line 228
    const/16 v2, 0x21

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mMessageOnlyHeight:I

    .line 229
    const/16 v2, 0x16

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mMessageViewPaddingWidth:I

    .line 231
    const/16 v2, 0x17

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mMessageViewPaddingHeight:I

    .line 233
    const/16 v2, 0x18

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mTitleExtraPadding:I

    .line 234
    const/16 v2, 0x19

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mMessageViewWidth:I

    .line 235
    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mCustomizedViewTitlePadding:I

    .line 237
    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mTitleOnlyMaxLines:I

    .line 238
    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mTitleOnlyGravity:I

    .line 239
    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mTitleOnlyVerticalPadding:I

    .line 241
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonDivider:Landroid/graphics/drawable/Drawable;

    .line 242
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mMaxHeight:I

    .line 243
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mListViewSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 250
    .local v1, "b":Landroid/content/res/TypedArray;
    const/16 v2, 0x141

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mCustomedFlag:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p0 .. p3}, Lcom/android/internal/app/AlertController$FlymeInjector;->initFlymeExtFields(Lcom/android/internal/app/AlertController;Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/AlertController;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListViewSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private addButtonToPanel(Landroid/widget/LinearLayout;Landroid/widget/Button;)V
    .locals 2
    .param p1, "panel"    # Landroid/widget/LinearLayout;
    .param p2, "button"    # Landroid/widget/Button;

    .prologue
    .line 923
    invoke-virtual {p2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 924
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 925
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 926
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 927
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    :goto_0
    return v2

    .line 261
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 262
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 265
    check-cast v1, Landroid/view/ViewGroup;

    .line 266
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 267
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 268
    add-int/lit8 v0, v0, -0x1

    .line 269
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 270
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 275
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 945
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 946
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 947
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 948
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, #android:id@leftSpacer#t

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 950
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 953
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, #android:id@rightSpacer#t

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 954
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 955
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 957
    :cond_1
    return-void
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 825
    if-eqz p1, :cond_0

    .line 826
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 828
    :cond_0
    if-eqz p2, :cond_1

    .line 829
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 831
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 826
    goto :goto_0

    :cond_3
    move v1, v2

    .line 829
    goto :goto_1
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .prologue
    .line 511
    if-nez p1, :cond_1

    .line 513
    instance-of v1, p2, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 514
    check-cast p2, Landroid/view/ViewStub;

    .end local p2    # "defaultPanel":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .line 517
    check-cast v1, Landroid/view/ViewGroup;

    .line 533
    :goto_0
    return-object v1

    .line 521
    :cond_1
    if-eqz p2, :cond_2

    .line 522
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 523
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 524
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 529
    :cond_2
    instance-of v1, p1, Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    .line 530
    check-cast p1, Landroid/view/ViewStub;

    .end local p1    # "customPanel":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .restart local p1    # "customPanel":Landroid/view/View;
    :cond_3
    move-object v1, p1

    .line 533
    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 289
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 295
    :goto_0
    return v0

    .line 291
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 292
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    goto :goto_0

    .line 295
    :cond_1
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    goto :goto_0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 24
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .prologue
    .line 961
    const/4 v10, 0x0

    .line 962
    .local v10, "fullDark":I
    const/16 v19, 0x0

    .line 963
    .local v19, "topDark":I
    const/4 v7, 0x0

    .line 964
    .local v7, "centerDark":I
    const/4 v4, 0x0

    .line 965
    .local v4, "bottomDark":I
    const/4 v9, 0x0

    .line 966
    .local v9, "fullBright":I
    const/16 v18, 0x0

    .line 967
    .local v18, "topBright":I
    const/4 v6, 0x0

    .line 968
    .local v6, "centerBright":I
    const/4 v3, 0x0

    .line 969
    .local v3, "bottomBright":I
    const/4 v5, 0x0

    .line 973
    .local v5, "bottomMedium":I
    const/16 v22, 0x14

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .local v15, "needsDefaultBackgrounds":Z
    if-eqz v15, :cond_0

    const v10, #android:drawable@popup_full_dark#t

    const v19, #android:drawable@popup_top_dark#t

    const v7, #android:drawable@popup_center_dark#t

    const v4, #android:drawable@popup_bottom_dark#t

    const v9, #android:drawable@popup_full_bright#t

    const v18, #android:drawable@popup_top_bright#t

    const v6, #android:drawable@popup_center_bright#t

    const v3, #android:drawable@popup_bottom_bright#t

    const v5, #android:drawable@popup_bottom_medium#t

    :cond_0
    const/16 v22, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 988
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 989
    const/16 v22, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 990
    const/16 v22, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1000
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v21, v0

    .line 1001
    .local v21, "views":[Landroid/view/View;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v13, v0, [Z

    .line 1002
    .local v13, "light":[Z
    const/4 v12, 0x0

    .line 1003
    .local v12, "lastView":Landroid/view/View;
    const/4 v11, 0x0

    .line 1005
    .local v11, "lastLight":Z
    const/16 v16, 0x0

    .line 1006
    .local v16, "pos":I
    if-eqz p6, :cond_1

    .line 1007
    aput-object p2, v21, v16

    .line 1008
    const/16 v22, 0x0

    aput-boolean v22, v13, v16

    .line 1009
    add-int/lit8 v16, v16, 0x1

    .line 1017
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 p3, 0x0

    .end local p3    # "contentPanel":Landroid/view/View;
    :cond_2
    aput-object p3, v21, v16

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    :goto_0
    aput-boolean v22, v13, v16

    .line 1019
    add-int/lit8 v16, v16, 0x1

    .line 1021
    if-eqz p7, :cond_3

    .line 1022
    aput-object p4, v21, v16

    .line 1023
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v22, v0

    aput-boolean v22, v13, v16

    .line 1024
    add-int/lit8 v16, v16, 0x1

    .line 1027
    :cond_3
    if-eqz p8, :cond_4

    .line 1028
    aput-object p5, v21, v16

    .line 1029
    const/16 v22, 0x1

    aput-boolean v22, v13, v16

    .line 1032
    :cond_4
    const/16 v17, 0x0

    .line 1033
    .local v17, "setView":Z
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 1034
    aget-object v20, v21, v16

    .line 1035
    .local v20, "v":Landroid/view/View;
    if-nez v20, :cond_6

    .line 1033
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1018
    .end local v17    # "setView":Z
    .end local v20    # "v":Landroid/view/View;
    :cond_5
    const/16 v22, 0x0

    goto :goto_0

    .line 1039
    .restart local v17    # "setView":Z
    .restart local v20    # "v":Landroid/view/View;
    :cond_6
    if-eqz v12, :cond_7

    .line 1040
    if-nez v17, :cond_9

    .line 1041
    if-eqz v11, :cond_8

    move/from16 v22, v18

    :goto_3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1045
    :goto_4
    const/16 v17, 0x1

    .line 1048
    :cond_7
    move-object/from16 v12, v20

    .line 1049
    aget-boolean v11, v13, v16

    goto :goto_2

    :cond_8
    move/from16 v22, v19

    .line 1041
    goto :goto_3

    .line 1043
    :cond_9
    if-eqz v11, :cond_a

    move/from16 v22, v6

    :goto_5
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_a
    move/from16 v22, v7

    goto :goto_5

    .line 1052
    .end local v20    # "v":Landroid/view/View;
    :cond_b
    if-eqz v12, :cond_c

    .line 1053
    if-eqz v17, :cond_10

    .line 1054
    const/16 v22, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1055
    const/16 v22, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1056
    const/16 v22, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1060
    if-eqz v11, :cond_f

    if-eqz p8, :cond_e

    move/from16 v22, v5

    :goto_6
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1070
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1071
    .local v14, "listView":Landroid/widget/ListView;
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1073
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 1074
    .local v8, "checkedItem":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v8, v0, :cond_d

    .line 1075
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v8, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1076
    invoke-virtual {v14, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 1079
    .end local v8    # "checkedItem":I
    :cond_d
    return-void

    .end local v14    # "listView":Landroid/widget/ListView;
    :cond_e
    move/from16 v22, v3

    .line 1060
    goto :goto_6

    :cond_f
    move/from16 v22, v4

    goto :goto_6

    .line 1063
    :cond_10
    const/16 v22, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 1064
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 1066
    if-eqz v11, :cond_11

    move/from16 v22, v9

    :goto_8
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_11
    move/from16 v22, v10

    goto :goto_8
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 11
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/16 v10, 0x8

    .line 834
    const/4 v2, 0x1

    .line 835
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 836
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 837
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v6, 0x0

    .line 838
    .local v6, "whichButtons":I
    const v7, #android:id@button1#t

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 839
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 842
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 849
    :goto_0
    const v7, #android:id@button2#t

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 850
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 853
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 861
    :goto_1
    const v7, #android:id@button3#t

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 862
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 863
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 865
    :cond_0
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 866
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v7, :cond_1

    .line 867
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 876
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 881
    if-ne v6, v2, :cond_b

    .line 882
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 890
    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    move v4, v8

    .line 891
    .local v4, "hasButtons":Z
    :cond_3
    if-nez v4, :cond_4

    .line 892
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 896
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/app/AlertController;->mCustomedFlag:Z

    if-eqz v7, :cond_7

    .line 897
    if-nez v4, :cond_5

    .line 898
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const v9, #android:id@divider#t

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 899
    .local v3, "divider":Landroid/view/View;
    if-eqz v3, :cond_5

    .line 900
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 903
    .end local v3    # "divider":Landroid/view/View;
    :cond_5
    iget-boolean v7, p0, Lcom/android/internal/app/AlertController;->mVertical3Buttons:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x7

    if-ne v6, v7, :cond_7

    move-object v5, p1

    .line 906
    check-cast v5, Landroid/widget/LinearLayout;

    .line 907
    .local v5, "panel":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 908
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 909
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 910
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 911
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 913
    :cond_6
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v5, v7}, Lcom/android/internal/app/AlertController;->addButtonToPanel(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    .line 914
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v5, v7}, Lcom/android/internal/app/AlertController;->addButtonToPanel(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    .line 915
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v5, v7}, Lcom/android/internal/app/AlertController;->addButtonToPanel(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    .line 919
    .end local v5    # "panel":Landroid/widget/LinearLayout;
    :cond_7
    return-void

    .line 844
    .end local v4    # "hasButtons":Z
    :cond_8
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 845
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 846
    or-int/2addr v6, v2

    goto/16 :goto_0

    .line 855
    :cond_9
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 858
    or-int/2addr v6, v0

    goto/16 :goto_1

    .line 870
    :cond_a
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 873
    or-int/2addr v6, v1

    goto/16 :goto_2

    .line 883
    :cond_b
    if-ne v6, v0, :cond_c

    .line 884
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 885
    :cond_c
    if-ne v6, v1, :cond_2

    .line 886
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    const v2, #android:id@scrollView#t

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    const v2, #android:id@message#t

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 802
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 822
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 807
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 809
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 812
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 813
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 814
    .local v1, "scrollParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 815
    .local v0, "childIndex":I
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 816
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 819
    .end local v0    # "childIndex":I
    .end local v1    # "scrollParent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v5, 0x20000

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 713
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 714
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 722
    .local v1, "customView":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 723
    .local v2, "hasCustomView":Z
    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 724
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 728
    :cond_2
    if-eqz v2, :cond_7

    .line 729
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, #android:id@custom#t

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 730
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mCustomView:Landroid/view/View;

    .line 733
    iget-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_3

    .line 734
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v7, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 738
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4

    .line 739
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 744
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_4
    :goto_1
    return-void

    .line 715
    .end local v1    # "customView":Landroid/view/View;
    .end local v2    # "hasCustomView":Z
    :cond_5
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    if-eqz v4, :cond_6

    .line 716
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 717
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 718
    .restart local v1    # "customView":Landroid/view/View;
    goto :goto_0

    .line 719
    .end local v1    # "customView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "customView":Landroid/view/View;
    goto :goto_0

    .line 742
    .restart local v2    # "hasCustomView":Z
    :cond_7
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupDecor()V
    .locals 4

    .prologue
    .line 480
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 481
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, #android:id@parentPanel#t

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 482
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 483
    new-instance v2, Lcom/android/internal/app/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/app/AlertController$2;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 495
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 496
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 498
    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)Z
    .locals 10
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const v6, #android:id@title_template#t

    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 747
    const/4 v1, 0x1

    .line 749
    .local v1, "hasTitle":Z
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 751
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 754
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 757
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 758
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 793
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :goto_0
    return v1

    .line 760
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, #android:id@icon#t

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 762
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 763
    .local v0, "hasTextTitle":Z
    :cond_1
    if-eqz v0, :cond_4

    .line 765
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, #android:id@alertTitle#t

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 766
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-eqz v4, :cond_2

    .line 772
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 773
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 774
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 778
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 782
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 786
    :cond_4
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 787
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 788
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 789
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 790
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 36

    .prologue
    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v14, #android:id@parentPanel#t

    invoke-virtual {v3, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 538
    .local v32, "parentPanel":Landroid/view/View;
    const v3, #android:id@topPanel#t

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 539
    .local v27, "defaultTopPanel":Landroid/view/View;
    const v3, #android:id@contentPanel#t

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 540
    .local v26, "defaultContentPanel":Landroid/view/View;
    const v3, #android:id@buttonPanel#t

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 544
    .local v25, "defaultButtonPanel":Landroid/view/View;
    const v3, #android:id@customPanel#t

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .local v7, "customPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    const v3, #android:id@topPanel#t

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .local v24, "customTopPanel":Landroid/view/View;
    const v3, #android:id@contentPanel#t

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 549
    .local v23, "customContentPanel":Landroid/view/View;
    const v3, #android:id@buttonPanel#t

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 552
    .local v22, "customButtonPanel":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 553
    .local v5, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 554
    .local v6, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v8

    .line 556
    .local v8, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 557
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 558
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)Z

    move-result v30

    .line 560
    .local v30, "hasTitle":Z
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v14, 0x8

    if-eq v3, v14, :cond_c

    const/4 v10, 0x1

    .line 562
    .local v10, "hasCustomPanel":Z
    :goto_0
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v14, 0x8

    if-eq v3, v14, :cond_d

    const/4 v9, 0x1

    .line 564
    .local v9, "hasTopPanel":Z
    :goto_1
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v14, 0x8

    if-eq v3, v14, :cond_e

    const/4 v11, 0x1

    .local v11, "hasButtonPanel":Z
    :goto_2
    if-nez v11, :cond_1

    if-eqz v6, :cond_0

    const v3, #android:id@textSpacerNoButtons#t

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .local v33, "spacer":Landroid/view/View;
    if-eqz v33, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .end local v33    # "spacer":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 578
    :cond_1
    if-eqz v9, :cond_4

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v3, :cond_2

    .line 581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 586
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v3, :cond_3

    if-eqz v10, :cond_f

    .line 587
    :cond_3
    const v3, #android:id@titleDivider#t

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 592
    .local v28, "divider":Landroid/view/View;
    :goto_3
    if-eqz v28, :cond_4

    .line 593
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 598
    .end local v28    # "divider":Landroid/view/View;
    :cond_4
    if-nez v10, :cond_5

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    .line 600
    .local v21, "content":Landroid/view/View;
    :goto_4
    if-eqz v21, :cond_5

    .line 601
    if-eqz v9, :cond_11

    const/4 v3, 0x1

    move v14, v3

    :goto_5
    if-eqz v11, :cond_12

    const/4 v3, 0x2

    :goto_6
    or-int v31, v14, v3

    .line 603
    .local v31, "indicators":I
    const/4 v3, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setScrollIndicators(II)V

    .line 608
    .end local v21    # "content":Landroid/view/View;
    .end local v31    # "indicators":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    sget-object v15, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v16, #android:attr@alertDialogStyle#t

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v14, v15, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 612
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->lenovoBlurBackgroundType:I

    if-nez v3, :cond_6

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/AlertController;->mCustomedFlag:Z

    if-eqz v3, :cond_b

    .line 620
    if-eqz v30, :cond_1b

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_13

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/app/AlertController;->mMessageViewPaddingWidth:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mMessageViewPaddingWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mMessageViewPaddingHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mTitleExtraPadding:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v14, v15, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 627
    :cond_7
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/app/AlertController;->mTitleExtraPadding:I

    add-int/2addr v14, v15

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v3, v14, v15, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 683
    :cond_8
    :goto_7
    const/16 v35, 0x0

    .line 684
    .local v35, "visible":Z
    if-eqz v30, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_9

    .line 685
    const/16 v35, 0x1

    .line 687
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v14, #android:id@titleDivider#t

    invoke-virtual {v3, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 688
    .restart local v28    # "divider":Landroid/view/View;
    if-eqz v28, :cond_a

    .line 689
    if-eqz v35, :cond_1c

    .line 690
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 695
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    .line 696
    new-instance v13, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mMessageViewWidth:I

    move/from16 v16, v0

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 699
    .local v13, "messageLayout":Landroid/text/StaticLayout;
    invoke-virtual {v13}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/4 v14, 0x1

    if-le v3, v14, :cond_1d

    .line 700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const v14, 0x800013

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 708
    .end local v13    # "messageLayout":Landroid/text/StaticLayout;
    .end local v28    # "divider":Landroid/view/View;
    .end local v35    # "visible":Z
    :cond_b
    :goto_9
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 709
    
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/AlertController$FlymeInjector;->syncViewAndData(Lcom/android/internal/app/AlertController;)V

    return-void

    .line 560
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v9    # "hasTopPanel":Z
    .end local v10    # "hasCustomPanel":Z
    .end local v11    # "hasButtonPanel":Z
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 562
    .restart local v10    # "hasCustomPanel":Z
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 564
    .restart local v9    # "hasTopPanel":Z
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 589
    .restart local v11    # "hasButtonPanel":Z
    :cond_f
    const v3, #android:id@titleDividerTop#t

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "divider":Landroid/view/View;
    goto/16 :goto_3

    .line 599
    .end local v28    # "divider":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v21, v0

    goto/16 :goto_4

    .line 601
    .restart local v21    # "content":Landroid/view/View;
    :cond_11
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_5

    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 631
    .end local v21    # "content":Landroid/view/View;
    .restart local v4    # "a":Landroid/content/res/TypedArray;
    :cond_13
    if-eqz v10, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v3, :cond_19

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v3, :cond_15

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/app/AlertController;->mTitleMinHeight:I

    invoke-virtual {v3, v14}, Landroid/view/View;->setMinimumHeight(I)V

    .line 664
    :cond_14
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->mMessageViewPaddingWidth:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/app/AlertController;->mMessageViewPaddingWidth:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v3, v14, v15, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_7

    .line 634
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_14

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/app/AlertController;->mTitleMinHeight:I

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v14, v15, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const v3, #android:id@title_template#t

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v34

    .local v34, "titleTemplate":Landroid/view/View;
    if-eqz v34, :cond_16

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/AlertController;->mMessageTitle:Z

    if-nez v3, :cond_16

    .line 639
    const/4 v3, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v3, v14, v15, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 641
    :cond_16
    new-instance v12, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/app/AlertController;->mMessageViewWidth:I

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 644
    .local v12, "titleLayout":Landroid/text/StaticLayout;
    invoke-virtual {v12}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/4 v14, 0x1

    if-le v3, v14, :cond_18

    .line 645
    const/16 v29, 0x11

    .line 646
    .local v29, "gravity":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/AlertController;->mTitleOnlyGravity:I

    packed-switch v3, :pswitch_data_0

    .line 654
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 655
    if-eqz v34, :cond_17

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/AlertController;->mMessageTitle:Z

    if-nez v3, :cond_17

    .line 656
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/app/AlertController;->mTitleOnlyVerticalPadding:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mTitleOnlyVerticalPadding:I

    move/from16 v16, v0

    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v3, v14, v15, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 662
    .end local v29    # "gravity":I
    :cond_17
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/app/AlertController;->mTitleOnlyMaxLines:I

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_a

    .line 648
    .restart local v29    # "gravity":I
    :pswitch_0
    const v29, 0x800013

    .line 649
    goto :goto_b

    .line 651
    :pswitch_1
    const/16 v29, 0x11

    goto :goto_b

    .line 660
    .end local v29    # "gravity":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    const/16 v14, 0x11

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_c

    .line 665
    .end local v12    # "titleLayout":Landroid/text/StaticLayout;
    .end local v34    # "titleTemplate":Landroid/view/View;
    :cond_19
    if-eqz v10, :cond_8

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v3, :cond_1a

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/app/AlertController;->mTitleMinHeight:I

    invoke-virtual {v3, v14}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_7

    .line 668
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 669
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/app/AlertController;->mTitleExtraPadding:I

    add-int/2addr v14, v15

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v3, v14, v15, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_7

    .line 675
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/app/AlertController;->mMessageOnlyHeight:I

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/app/AlertController;->mMessageViewPaddingWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/app/AlertController;->mMessageViewPaddingHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mMessageViewPaddingWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mMessageViewPaddingHeight:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v14, v15, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_7

    .line 692
    .restart local v28    # "divider":Landroid/view/View;
    .restart local v35    # "visible":Z
    :cond_1c
    const/16 v3, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 702
    .restart local v13    # "messageLayout":Landroid/text/StaticLayout;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v14, 0x11

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_9

    .line 646
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 195
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 196
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, #android:^attr-private@alertDialogCenterButtons#t

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 197
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAllowedMaxHeight()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 931
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController;->mCustomedFlag:Z

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 933
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mCustomView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mCustomView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ListView;

    if-nez v1, :cond_1

    .line 934
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/android/internal/app/AlertController;->mMaxHeight:I

    if-ge v1, v2, :cond_0

    iget v0, p0, Lcom/android/internal/app/AlertController;->mMaxHeight:I

    .line 939
    :cond_0
    :goto_0
    return v0

    .line 937
    :cond_1
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMaxHeight:I

    goto :goto_0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 457
    packed-switch p1, :pswitch_data_0

    .line 465
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 459
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 461
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 463
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 443
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 444
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 445
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 281
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    move-result v0

    .line 282
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 283
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 284
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupDecor()V

    .line 285
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 373
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 377
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 381
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 397
    :goto_0
    return-void

    .line 385
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 386
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 390
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 391
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .prologue
    .line 355
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 356
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 310
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 407
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 409
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 410
    if-eqz p1, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 425
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 427
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 428
    if-eqz p1, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 449
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 450
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 314
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 300
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 324
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 326
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 332
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 333
    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 334
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 335
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 345
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 346
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 347
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 348
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 349
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setAlertDialogLayout(I)V
    .locals 0
    .param p1, "layoutRes"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return-void
.end method
