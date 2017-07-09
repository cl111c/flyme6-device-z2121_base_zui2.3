.class Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPickerX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPickerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/NumberPickerX;


# direct methods
.method constructor <init>(Landroid/widget/NumberPickerX;)V
    .locals 1

    .prologue
    .line 2270
    iput-object p1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2279
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2281
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2283
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 2626
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 2627
    .local v3, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v5, Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2628
    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/NumberPickerX;->access$6300(Landroid/widget/NumberPickerX;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2629
    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2631
    invoke-direct {p0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2632
    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2634
    :cond_0
    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2635
    invoke-direct {p0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2636
    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v3, v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2639
    :cond_1
    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v5}, Landroid/widget/NumberPickerX;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2640
    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v5}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2641
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2643
    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v5}, Landroid/widget/NumberPickerX;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 2646
    .local v0, "applicationScale":F
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2647
    .local v1, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2648
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 2649
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2651
    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # invokes: Landroid/widget/NumberPickerX;->isVisibleToUser()Z
    invoke-static {v5}, Landroid/widget/NumberPickerX;->access$6400(Landroid/widget/NumberPickerX;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2653
    move-object v2, v1

    .line 2654
    .local v2, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2655
    .local v4, "locationOnScreen":[I
    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v5, v4}, Landroid/widget/NumberPickerX;->getLocationOnScreen([I)V

    .line 2656
    const/4 v5, 0x0

    aget v5, v4, v5

    aget v6, v4, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2657
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 2658
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2660
    iget v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v5, v8, :cond_2

    .line 2661
    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2663
    :cond_2
    iget v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v5, v8, :cond_3

    .line 2664
    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2666
    :cond_3
    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v5}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2667
    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v5}, Landroid/widget/NumberPickerX;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v5}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v6}, Landroid/widget/NumberPickerX;->getMaxValue()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2668
    :cond_4
    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2670
    :cond_5
    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v5}, Landroid/widget/NumberPickerX;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v5}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v6}, Landroid/widget/NumberPickerX;->getMinValue()I

    move-result v6

    if-le v5, v6, :cond_7

    .line 2671
    :cond_6
    const/16 v5, 0x2000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2675
    :cond_7
    return-object v3
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    const/4 v5, 0x1

    .line 2592
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2593
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v4, Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2594
    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/NumberPickerX;->access$6100(Landroid/widget/NumberPickerX;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2595
    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2596
    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2597
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2598
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2599
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2600
    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v4}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2601
    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2602
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2603
    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # invokes: Landroid/widget/NumberPickerX;->isVisibleToUser(Landroid/graphics/Rect;)Z
    invoke-static {v4, v0}, Landroid/widget/NumberPickerX;->access$6200(Landroid/widget/NumberPickerX;Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2604
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2605
    move-object v1, v0

    .line 2606
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2607
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v4, v3}, Landroid/widget/NumberPickerX;->getLocationOnScreen([I)V

    .line 2608
    const/4 v4, 0x0

    aget v4, v3, v4

    aget v5, v3, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2609
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2611
    iget v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    .line 2612
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2614
    :cond_0
    iget v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_1

    .line 2615
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2617
    :cond_1
    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v4}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2618
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2621
    :cond_2
    return-object v2
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v5, 0x2

    .line 2570
    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;
    invoke-static {v4}, Landroid/widget/NumberPickerX;->access$100(Landroid/widget/NumberPickerX;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2571
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2572
    iget v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, v5, :cond_0

    .line 2573
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2575
    :cond_0
    iget v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, v5, :cond_1

    .line 2576
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2578
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2579
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2580
    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # invokes: Landroid/widget/NumberPickerX;->isVisibleToUser(Landroid/graphics/Rect;)Z
    invoke-static {v4, v0}, Landroid/widget/NumberPickerX;->access$6000(Landroid/widget/NumberPickerX;Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2581
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2582
    move-object v1, v0

    .line 2583
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2584
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v4, v3}, Landroid/widget/NumberPickerX;->getLocationOnScreen([I)V

    .line 2585
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2586
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2587
    return-object v2
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 4
    .param p1, "searchedLowerCase"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "outResult":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v3, 0x2

    .line 2536
    packed-switch p2, :pswitch_data_0

    .line 2566
    :cond_0
    :goto_0
    return-void

    .line 2538
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v1

    .line 2539
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2541
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2545
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$100(Landroid/widget/NumberPickerX;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2546
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2548
    invoke-virtual {p0, v3}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2551
    :cond_1
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$100(Landroid/widget/NumberPickerX;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2552
    .local v0, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2554
    invoke-virtual {p0, v3}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2559
    .end local v0    # "contentDesc":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v1

    .line 2560
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2562
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2687
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mValue:I
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$6500(Landroid/widget/NumberPickerX;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2688
    .local v0, "value":I
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$6600(Landroid/widget/NumberPickerX;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2689
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # invokes: Landroid/widget/NumberPickerX;->getWrappedSelectorIndex(I)I
    invoke-static {v1, v0}, Landroid/widget/NumberPickerX;->access$6700(Landroid/widget/NumberPickerX;I)I

    move-result v0

    .line 2691
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mMinValue:I
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$6800(Landroid/widget/NumberPickerX;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2692
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$800(Landroid/widget/NumberPickerX;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # invokes: Landroid/widget/NumberPickerX;->formatNumber(I)Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/widget/NumberPickerX;->access$6900(Landroid/widget/NumberPickerX;I)Ljava/lang/String;

    move-result-object v1

    .line 2695
    :goto_0
    return-object v1

    .line 2692
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$800(Landroid/widget/NumberPickerX;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mMinValue:I
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$6800(Landroid/widget/NumberPickerX;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 2695
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2699
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mValue:I
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$6500(Landroid/widget/NumberPickerX;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 2700
    .local v0, "value":I
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$6600(Landroid/widget/NumberPickerX;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2701
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # invokes: Landroid/widget/NumberPickerX;->getWrappedSelectorIndex(I)I
    invoke-static {v1, v0}, Landroid/widget/NumberPickerX;->access$6700(Landroid/widget/NumberPickerX;I)I

    move-result v0

    .line 2703
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mMaxValue:I
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$1000(Landroid/widget/NumberPickerX;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2704
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$800(Landroid/widget/NumberPickerX;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # invokes: Landroid/widget/NumberPickerX;->formatNumber(I)Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/widget/NumberPickerX;->access$6900(Landroid/widget/NumberPickerX;I)Ljava/lang/String;

    move-result-object v1

    .line 2707
    :goto_0
    return-object v1

    .line 2704
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$800(Landroid/widget/NumberPickerX;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mMinValue:I
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$6800(Landroid/widget/NumberPickerX;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 2707
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    .prologue
    .line 2679
    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v1}, Landroid/widget/NumberPickerX;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 2

    .prologue
    .line 2683
    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v1}, Landroid/widget/NumberPickerX;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 2523
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$5800(Landroid/widget/NumberPickerX;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2524
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2525
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2526
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$5900(Landroid/widget/NumberPickerX;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2527
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2528
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v1}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2529
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2530
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v1, v2, v0}, Landroid/widget/NumberPickerX;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2532
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 2512
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$5700(Landroid/widget/NumberPickerX;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2513
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2514
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$100(Landroid/widget/NumberPickerX;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2515
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$100(Landroid/widget/NumberPickerX;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2516
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2517
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v1, v2, v0}, Landroid/widget/NumberPickerX;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2519
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "virtualViewId"    # I

    .prologue
    .line 2287
    packed-switch p1, :pswitch_data_0

    .line 2307
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2289
    :pswitch_1
    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mScrollX:I
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$2600(Landroid/widget/NumberPickerX;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mScrollY:I
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$2700(Landroid/widget/NumberPickerX;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mScrollX:I
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$2800(Landroid/widget/NumberPickerX;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPickerX;->access$2900(Landroid/widget/NumberPickerX;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mLeft:I
    invoke-static {v4}, Landroid/widget/NumberPickerX;->access$3000(Landroid/widget/NumberPickerX;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mScrollY:I
    invoke-static {v3}, Landroid/widget/NumberPickerX;->access$3100(Landroid/widget/NumberPickerX;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottom:I
    invoke-static {v4}, Landroid/widget/NumberPickerX;->access$3200(Landroid/widget/NumberPickerX;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mTop:I
    invoke-static {v5}, Landroid/widget/NumberPickerX;->access$3300(Landroid/widget/NumberPickerX;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2292
    :pswitch_2
    const/4 v1, 0x3

    invoke-direct {p0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mScrollX:I
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$3400(Landroid/widget/NumberPickerX;)I

    move-result v3

    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mScrollY:I
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$3500(Landroid/widget/NumberPickerX;)I

    move-result v4

    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mScrollX:I
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$3600(Landroid/widget/NumberPickerX;)I

    move-result v0

    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v5}, Landroid/widget/NumberPickerX;->access$3700(Landroid/widget/NumberPickerX;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mLeft:I
    invoke-static {v6}, Landroid/widget/NumberPickerX;->access$3800(Landroid/widget/NumberPickerX;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$1800(Landroid/widget/NumberPickerX;)I

    move-result v0

    iget-object v6, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mSelectionDividerHeight:I
    invoke-static {v6}, Landroid/widget/NumberPickerX;->access$3900(Landroid/widget/NumberPickerX;)I

    move-result v6

    add-int/2addr v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2297
    :pswitch_3
    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mScrollX:I
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$4000(Landroid/widget/NumberPickerX;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$1800(Landroid/widget/NumberPickerX;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mSelectionDividerHeight:I
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$3900(Landroid/widget/NumberPickerX;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mScrollX:I
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$4100(Landroid/widget/NumberPickerX;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPickerX;->access$4200(Landroid/widget/NumberPickerX;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mLeft:I
    invoke-static {v4}, Landroid/widget/NumberPickerX;->access$4300(Landroid/widget/NumberPickerX;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottomSelectionDividerBottom:I
    invoke-static {v3}, Landroid/widget/NumberPickerX;->access$1300(Landroid/widget/NumberPickerX;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mSelectionDividerHeight:I
    invoke-static {v4}, Landroid/widget/NumberPickerX;->access$3900(Landroid/widget/NumberPickerX;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 2302
    :pswitch_4
    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mScrollX:I
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$4400(Landroid/widget/NumberPickerX;)I

    move-result v3

    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottomSelectionDividerBottom:I
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$1300(Landroid/widget/NumberPickerX;)I

    move-result v0

    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mSelectionDividerHeight:I
    invoke-static {v4}, Landroid/widget/NumberPickerX;->access$3900(Landroid/widget/NumberPickerX;)I

    move-result v4

    sub-int v4, v0, v4

    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mScrollX:I
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$4500(Landroid/widget/NumberPickerX;)I

    move-result v0

    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v5}, Landroid/widget/NumberPickerX;->access$4600(Landroid/widget/NumberPickerX;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mLeft:I
    invoke-static {v6}, Landroid/widget/NumberPickerX;->access$4700(Landroid/widget/NumberPickerX;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mScrollY:I
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$4800(Landroid/widget/NumberPickerX;)I

    move-result v0

    iget-object v6, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottom:I
    invoke-static {v6}, Landroid/widget/NumberPickerX;->access$4900(Landroid/widget/NumberPickerX;)I

    move-result v6

    iget-object v7, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mTop:I
    invoke-static {v7}, Landroid/widget/NumberPickerX;->access$5000(Landroid/widget/NumberPickerX;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 2287
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2314
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2336
    :goto_0
    return-object v0

    .line 2316
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2317
    .local v1, "searchedLowerCase":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2318
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_0

    .line 2336
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2320
    :pswitch_1
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2322
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2324
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2331
    :pswitch_2
    invoke-direct {p0, v1, p2, v0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2318
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/high16 v5, 0x10000

    const v4, 0x8000

    const/high16 v3, -0x80000000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2341
    packed-switch p1, :pswitch_data_0

    .line 2488
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 2343
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2345
    :sswitch_0
    iget v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2346
    iput p1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2347
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->requestAccessibilityFocus()Z

    move v0, v1

    .line 2348
    goto :goto_1

    .line 2352
    :sswitch_1
    iget v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2353
    iput v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2354
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->clearAccessibilityFocus()V

    move v0, v1

    .line 2355
    goto :goto_1

    .line 2360
    :sswitch_2
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v3}, Landroid/widget/NumberPickerX;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2362
    :cond_1
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # invokes: Landroid/widget/NumberPickerX;->changeValueByOne(Z)V
    invoke-static {v2, v1}, Landroid/widget/NumberPickerX;->access$200(Landroid/widget/NumberPickerX;Z)V

    move v0, v1

    .line 2363
    goto :goto_1

    .line 2367
    :sswitch_3
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v3}, Landroid/widget/NumberPickerX;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 2369
    :cond_2
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # invokes: Landroid/widget/NumberPickerX;->changeValueByOne(Z)V
    invoke-static {v2, v0}, Landroid/widget/NumberPickerX;->access$200(Landroid/widget/NumberPickerX;Z)V

    move v0, v1

    .line 2370
    goto :goto_1

    .line 2376
    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    .line 2422
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$100(Landroid/widget/NumberPickerX;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_1

    .line 2378
    :sswitch_4
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v1}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$100(Landroid/widget/NumberPickerX;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2379
    iget-object v1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$100(Landroid/widget/NumberPickerX;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2383
    :sswitch_5
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$100(Landroid/widget/NumberPickerX;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2384
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$100(Landroid/widget/NumberPickerX;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    move v0, v1

    .line 2385
    goto/16 :goto_1

    .line 2390
    :sswitch_6
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2391
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->performClick()Z

    move v0, v1

    .line 2392
    goto/16 :goto_1

    .line 2397
    :sswitch_7
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2398
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->performLongClick()Z

    move v0, v1

    .line 2399
    goto/16 :goto_1

    .line 2404
    :sswitch_8
    iget v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2405
    iput p1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2406
    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2408
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$100(Landroid/widget/NumberPickerX;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->invalidate()V

    move v0, v1

    .line 2409
    goto/16 :goto_1

    .line 2413
    :sswitch_9
    iget v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2414
    iput v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2415
    invoke-virtual {p0, p1, v5}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2417
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$100(Landroid/widget/NumberPickerX;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->invalidate()V

    move v0, v1

    .line 2418
    goto/16 :goto_1

    .line 2427
    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_1

    .line 2429
    :sswitch_a
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2430
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # invokes: Landroid/widget/NumberPickerX;->changeValueByOne(Z)V
    invoke-static {v2, v1}, Landroid/widget/NumberPickerX;->access$200(Landroid/widget/NumberPickerX;Z)V

    .line 2431
    invoke-virtual {p0, p1, v1}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v0, v1

    .line 2433
    goto/16 :goto_1

    .line 2437
    :sswitch_b
    iget v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2438
    iput p1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2439
    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2441
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    iget-object v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottomSelectionDividerBottom:I
    invoke-static {v3}, Landroid/widget/NumberPickerX;->access$1300(Landroid/widget/NumberPickerX;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v4}, Landroid/widget/NumberPickerX;->access$5100(Landroid/widget/NumberPickerX;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottom:I
    invoke-static {v5}, Landroid/widget/NumberPickerX;->access$5200(Landroid/widget/NumberPickerX;)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/NumberPickerX;->invalidate(IIII)V

    move v0, v1

    .line 2442
    goto/16 :goto_1

    .line 2446
    :sswitch_c
    iget v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2447
    iput v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2448
    invoke-virtual {p0, p1, v5}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2450
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    iget-object v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottomSelectionDividerBottom:I
    invoke-static {v3}, Landroid/widget/NumberPickerX;->access$1300(Landroid/widget/NumberPickerX;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v4}, Landroid/widget/NumberPickerX;->access$5300(Landroid/widget/NumberPickerX;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottom:I
    invoke-static {v5}, Landroid/widget/NumberPickerX;->access$5400(Landroid/widget/NumberPickerX;)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/NumberPickerX;->invalidate(IIII)V

    move v0, v1

    .line 2451
    goto/16 :goto_1

    .line 2457
    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    goto/16 :goto_1

    .line 2459
    :sswitch_d
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2460
    if-ne p1, v1, :cond_3

    move v0, v1

    .line 2461
    .local v0, "increment":Z
    :cond_3
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # invokes: Landroid/widget/NumberPickerX;->changeValueByOne(Z)V
    invoke-static {v2, v0}, Landroid/widget/NumberPickerX;->access$200(Landroid/widget/NumberPickerX;Z)V

    .line 2462
    invoke-virtual {p0, p1, v1}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v0, v1

    .line 2464
    goto/16 :goto_1

    .line 2468
    .end local v0    # "increment":Z
    :sswitch_e
    iget v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2469
    iput p1, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2470
    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2472
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    iget-object v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPickerX;->access$5500(Landroid/widget/NumberPickerX;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I
    invoke-static {v4}, Landroid/widget/NumberPickerX;->access$1800(Landroid/widget/NumberPickerX;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/widget/NumberPickerX;->invalidate(IIII)V

    move v0, v1

    .line 2473
    goto/16 :goto_1

    .line 2477
    :sswitch_f
    iget v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2478
    iput v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2479
    invoke-virtual {p0, p1, v5}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2481
    iget-object v2, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    iget-object v3, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPickerX;->access$5600(Landroid/widget/NumberPickerX;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I
    invoke-static {v4}, Landroid/widget/NumberPickerX;->access$1800(Landroid/widget/NumberPickerX;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/widget/NumberPickerX;->invalidate(IIII)V

    move v0, v1

    .line 2482
    goto/16 :goto_1

    .line 2341
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 2343
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch

    .line 2376
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x10 -> :sswitch_6
        0x20 -> :sswitch_7
        0x40 -> :sswitch_8
        0x80 -> :sswitch_9
    .end sparse-switch

    .line 2427
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_a
        0x40 -> :sswitch_b
        0x80 -> :sswitch_c
    .end sparse-switch

    .line 2457
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_d
        0x40 -> :sswitch_e
        0x80 -> :sswitch_f
    .end sparse-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 2492
    packed-switch p1, :pswitch_data_0

    .line 2509
    :cond_0
    :goto_0
    return-void

    .line 2494
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2495
    invoke-direct {p0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2500
    :pswitch_1
    invoke-direct {p0, p2}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    .line 2503
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2504
    invoke-direct {p0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2492
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
