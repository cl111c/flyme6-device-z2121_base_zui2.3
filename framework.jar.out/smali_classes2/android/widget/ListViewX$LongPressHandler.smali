.class Landroid/widget/ListViewX$LongPressHandler;
.super Landroid/os/Handler;
.source "ListViewX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongPressHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListViewX;


# direct methods
.method private constructor <init>(Landroid/widget/ListViewX;)V
    .locals 0

    .prologue
    .line 1859
    iput-object p1, p0, Landroid/widget/ListViewX$LongPressHandler;->this$0:Landroid/widget/ListViewX;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListViewX;Landroid/widget/ListViewX$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ListViewX;
    .param p2, "x1"    # Landroid/widget/ListViewX$1;

    .prologue
    .line 1859
    invoke-direct {p0, p1}, Landroid/widget/ListViewX$LongPressHandler;-><init>(Landroid/widget/ListViewX;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1862
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1887
    :cond_0
    :goto_0
    return-void

    .line 1869
    :pswitch_0
    iget-object v0, p0, Landroid/widget/ListViewX$LongPressHandler;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mHeaderViewState:I
    invoke-static {v0}, Landroid/widget/ListViewX;->access$1200(Landroid/widget/ListViewX;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListViewX$LongPressHandler;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mSlidingStarted:Z
    invoke-static {v0}, Landroid/widget/ListViewX;->access$1300(Landroid/widget/ListViewX;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListViewX$LongPressHandler;->this$0:Landroid/widget/ListViewX;

    # invokes: Landroid/widget/ListViewX;->canIntercept()Z
    invoke-static {v0}, Landroid/widget/ListViewX;->access$1400(Landroid/widget/ListViewX;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/widget/ListViewX$LongPressHandler;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mCurrentPosition:I
    invoke-static {v1}, Landroid/widget/ListViewX;->access$1500(Landroid/widget/ListViewX;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ListViewX$LongPressHandler;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mScrollingState:I
    invoke-static {v0}, Landroid/widget/ListViewX;->access$1600(Landroid/widget/ListViewX;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1878
    iget-object v0, p0, Landroid/widget/ListViewX$LongPressHandler;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;
    invoke-static {v0}, Landroid/widget/ListViewX;->access$1700(Landroid/widget/ListViewX;)Landroid/widget/SlideView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListViewX$LongPressHandler;->this$0:Landroid/widget/ListViewX;

    # getter for: Landroid/widget/ListViewX;->mFocusedItemView:Landroid/widget/SlideView;
    invoke-static {v0}, Landroid/widget/ListViewX;->access$1700(Landroid/widget/ListViewX;)Landroid/widget/SlideView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SlideView;->isViewFixed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1880
    iget-object v0, p0, Landroid/widget/ListViewX$LongPressHandler;->this$0:Landroid/widget/ListViewX;

    # invokes: Landroid/widget/ListViewX;->showEditScreen()V
    invoke-static {v0}, Landroid/widget/ListViewX;->access$1800(Landroid/widget/ListViewX;)V

    .line 1881
    const/4 v0, 0x1

    # setter for: Landroid/widget/ListViewX;->mLockClickEventInEditMode:Z
    invoke-static {v0}, Landroid/widget/ListViewX;->access$1902(Z)Z

    goto :goto_0

    .line 1862
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
