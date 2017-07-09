.class public Lcom/android/server/wm/ZuiAnimationTransition;
.super Ljava/lang/Object;
.source "ZuiAnimationTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadZuiAnimation(Landroid/content/Context;IZ)Landroid/view/animation/Animation;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "transit"    # I
    .param p2, "enter"    # Z

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "a":Landroid/view/animation/Animation;
    packed-switch p1, :pswitch_data_0

    .line 59
    :goto_0
    :pswitch_0
    return-object v0

    .line 30
    :pswitch_1
    if-eqz p2, :cond_0

    const v1, 0x10a0017

    :goto_1
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 33
    goto :goto_0

    .line 30
    :cond_0
    const v1, 0x10a0018

    goto :goto_1

    .line 36
    :pswitch_2
    if-eqz p2, :cond_1

    const v1, 0x10a0015

    :goto_2
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 39
    goto :goto_0

    .line 36
    :cond_1
    const v1, 0x10a0016

    goto :goto_2

    .line 41
    :pswitch_3
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 42
    const v1, 0x10a0033

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_2
    const v1, 0x10a0049

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 46
    goto :goto_0

    .line 48
    :pswitch_4
    if-nez p2, :cond_3

    .line 49
    const v1, 0x10a0048

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_3
    const v1, 0x10a0034

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 53
    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static prepareAppTransition(Lcom/android/server/wm/AppTransition;I)V
    .locals 2
    .param p0, "transition"    # Lcom/android/server/wm/AppTransition;
    .param p1, "transit"    # I

    .prologue
    .line 63
    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/16 v0, 0x13

    if-ne p1, v0, :cond_2

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    goto :goto_0

    .line 67
    :cond_2
    const/16 v0, 0x14

    if-ne p1, v0, :cond_3

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    goto :goto_0

    .line 69
    :cond_3
    const/16 v0, 0x15

    if-ne p1, v0, :cond_4

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    goto :goto_0

    .line 71
    :cond_4
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    goto :goto_0
.end method
