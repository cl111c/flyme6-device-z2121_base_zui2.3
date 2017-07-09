.class public Landroid/widget/SlideViewEx;
.super Landroid/widget/LinearLayout;
.source "SlideViewEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideViewEx"

.field public static final VIEW_STATE_ALLOW_SLIDE:I = 0x2

.field public static final VIEW_STATE_FIXED:I = 0x1

.field public static final VIEW_STATE_NO_CHANGE:I


# instance fields
.field private mFixedView:Landroid/view/View;

.field private mRect:Landroid/graphics/Rect;

.field private mSlideView:Landroid/widget/SlideView;

.field private mSourceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SlideViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlideViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SlideViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlideViewEx;->mRect:Landroid/graphics/Rect;

    .line 54
    invoke-direct {p0}, Landroid/widget/SlideViewEx;->init()V

    .line 55
    return-void
.end method

.method private addViewInternal(Landroid/view/View;Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewPtr"    # Landroid/view/View;
    .param p3, "toTop"    # Z

    .prologue
    const/4 v1, -0x1

    .line 129
    if-ne p2, p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 132
    :cond_0
    if-eqz p2, :cond_1

    .line 133
    invoke-virtual {p0, p2}, Landroid/widget/SlideViewEx;->removeView(Landroid/view/View;)V

    .line 135
    :cond_1
    const/4 v0, 0x0

    .line 136
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 139
    :cond_2
    if-nez v0, :cond_3

    .line 140
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 146
    :cond_4
    if-eqz p3, :cond_5

    .line 147
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/SlideViewEx;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 149
    :cond_5
    invoke-virtual {p0, p1, v0}, Landroid/widget/SlideViewEx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SlideViewEx;->setOrientation(I)V

    .line 126
    return-void
.end method


# virtual methods
.method public addFixedView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/SlideViewEx;->mFixedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SlideViewEx;->addViewInternal(Landroid/view/View;Landroid/view/View;Z)V

    .line 67
    iput-object p1, p0, Landroid/widget/SlideViewEx;->mFixedView:Landroid/view/View;

    .line 68
    return-void
.end method

.method public addSlideView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/SlideViewEx;->mSlideView:Landroid/widget/SlideView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SlideViewEx;->addViewInternal(Landroid/view/View;Landroid/view/View;Z)V

    .line 76
    check-cast p1, Landroid/widget/SlideView;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Landroid/widget/SlideViewEx;->mSlideView:Landroid/widget/SlideView;

    .line 77
    return-void
.end method

.method public checkForFixedView(Landroid/view/MotionEvent;)I
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "state":I
    iget-object v3, p0, Landroid/widget/SlideViewEx;->mSlideView:Landroid/widget/SlideView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/SlideViewEx;->mFixedView:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 112
    .end local v1    # "state":I
    .local v2, "state":I
    :goto_0
    return v2

    .line 88
    .end local v2    # "state":I
    .restart local v1    # "state":I
    :cond_1
    iget-object v3, p0, Landroid/widget/SlideViewEx;->mFixedView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/SlideViewEx;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 89
    iget-object v3, p0, Landroid/widget/SlideViewEx;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 90
    .local v0, "inFixedView":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    move v2, v1

    .line 112
    .end local v1    # "state":I
    .restart local v2    # "state":I
    goto :goto_0

    .line 92
    .end local v2    # "state":I
    .restart local v1    # "state":I
    :pswitch_0
    if-eqz v0, :cond_2

    .line 93
    const-string v3, "SlideViewEx"

    const-string v4, "checkForFixedView:view is set to fixed view"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v3, p0, Landroid/widget/SlideViewEx;->mSlideView:Landroid/widget/SlideView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SlideView;->setViewFixed(Z)V

    .line 95
    const/4 v1, 0x1

    goto :goto_1

    .line 100
    :pswitch_1
    const-string v3, "SlideViewEx"

    const-string v4, "checkForFixedView:view is set to slide view"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v3, p0, Landroid/widget/SlideViewEx;->mSlideView:Landroid/widget/SlideView;

    invoke-virtual {v3, v6}, Landroid/widget/SlideView;->setViewFixed(Z)V

    .line 102
    const/4 v1, 0x2

    .line 103
    goto :goto_1

    .line 105
    :pswitch_2
    if-nez v0, :cond_2

    .line 106
    const-string v3, "SlideViewEx"

    const-string v4, "checkForFixedView:view is set to slide view"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v3, p0, Landroid/widget/SlideViewEx;->mSlideView:Landroid/widget/SlideView;

    invoke-virtual {v3, v6}, Landroid/widget/SlideView;->setViewFixed(Z)V

    .line 108
    const/4 v1, 0x2

    goto :goto_1

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getFixedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/SlideViewEx;->mFixedView:Landroid/view/View;

    return-object v0
.end method

.method public getSlideView()Landroid/widget/SlideView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/widget/SlideViewEx;->mSlideView:Landroid/widget/SlideView;

    return-object v0
.end method

.method public getSourceView()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/widget/SlideViewEx;->mSourceView:Landroid/view/View;

    return-object v0
.end method

.method public isTouchEventValid(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 116
    iget-object v1, p0, Landroid/widget/SlideViewEx;->mFixedView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    iget-object v1, p0, Landroid/widget/SlideViewEx;->mFixedView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/SlideViewEx;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 120
    iget-object v1, p0, Landroid/widget/SlideViewEx;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSourceView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/widget/SlideViewEx;->mSourceView:Landroid/view/View;

    .line 59
    return-void
.end method
