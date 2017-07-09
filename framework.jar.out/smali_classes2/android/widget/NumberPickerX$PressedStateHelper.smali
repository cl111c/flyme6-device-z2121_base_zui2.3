.class Landroid/widget/NumberPickerX$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPickerX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPickerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Landroid/widget/NumberPickerX;


# direct methods
.method constructor <init>(Landroid/widget/NumberPickerX;)V
    .locals 1

    .prologue
    .line 2131
    iput-object p1, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2135
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->MODE_PRESS:I

    .line 2136
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 4
    .param p1, "button"    # I

    .prologue
    .line 2156
    invoke-virtual {p0}, Landroid/widget/NumberPickerX$PressedStateHelper;->cancel()V

    .line 2157
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->mMode:I

    .line 2158
    iput p1, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->mManagedButton:I

    .line 2159
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPickerX;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2160
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    .prologue
    .line 2163
    invoke-virtual {p0}, Landroid/widget/NumberPickerX$PressedStateHelper;->cancel()V

    .line 2164
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->mMode:I

    .line 2165
    iput p1, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->mManagedButton:I

    .line 2166
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPickerX;->post(Ljava/lang/Runnable;)Z

    .line 2167
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2142
    iput v4, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->mMode:I

    .line 2143
    iput v4, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->mManagedButton:I

    .line 2144
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2145
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$1200(Landroid/widget/NumberPickerX;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2146
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # setter for: Landroid/widget/NumberPickerX;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Landroid/widget/NumberPickerX;->access$1202(Landroid/widget/NumberPickerX;Z)Z

    .line 2147
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$1300(Landroid/widget/NumberPickerX;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$1400(Landroid/widget/NumberPickerX;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottom:I
    invoke-static {v3}, Landroid/widget/NumberPickerX;->access$1500(Landroid/widget/NumberPickerX;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPickerX;->invalidate(IIII)V

    .line 2149
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # setter for: Landroid/widget/NumberPickerX;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Landroid/widget/NumberPickerX;->access$1602(Landroid/widget/NumberPickerX;Z)Z

    .line 2150
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$1600(Landroid/widget/NumberPickerX;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2151
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$1700(Landroid/widget/NumberPickerX;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$1800(Landroid/widget/NumberPickerX;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPickerX;->invalidate(IIII)V

    .line 2153
    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2171
    iget v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2205
    :goto_0
    return-void

    .line 2173
    :pswitch_0
    iget v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2175
    :pswitch_1
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # setter for: Landroid/widget/NumberPickerX;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Landroid/widget/NumberPickerX;->access$1202(Landroid/widget/NumberPickerX;Z)Z

    .line 2176
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$1300(Landroid/widget/NumberPickerX;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$1900(Landroid/widget/NumberPickerX;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottom:I
    invoke-static {v3}, Landroid/widget/NumberPickerX;->access$2000(Landroid/widget/NumberPickerX;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPickerX;->invalidate(IIII)V

    goto :goto_0

    .line 2179
    :pswitch_2
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # setter for: Landroid/widget/NumberPickerX;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Landroid/widget/NumberPickerX;->access$1602(Landroid/widget/NumberPickerX;Z)Z

    .line 2180
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$2100(Landroid/widget/NumberPickerX;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$1800(Landroid/widget/NumberPickerX;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPickerX;->invalidate(IIII)V

    goto :goto_0

    .line 2185
    :pswitch_3
    iget v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2187
    :pswitch_4
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$1200(Landroid/widget/NumberPickerX;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2188
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPickerX;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2191
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # ^= operator for: Landroid/widget/NumberPickerX;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Landroid/widget/NumberPickerX;->access$1280(Landroid/widget/NumberPickerX;I)Z

    .line 2192
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$1300(Landroid/widget/NumberPickerX;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$2200(Landroid/widget/NumberPickerX;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mBottom:I
    invoke-static {v3}, Landroid/widget/NumberPickerX;->access$2300(Landroid/widget/NumberPickerX;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPickerX;->invalidate(IIII)V

    goto :goto_0

    .line 2195
    :pswitch_5
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPickerX;->access$1600(Landroid/widget/NumberPickerX;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2196
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPickerX;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2199
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # ^= operator for: Landroid/widget/NumberPickerX;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Landroid/widget/NumberPickerX;->access$1680(Landroid/widget/NumberPickerX;I)Z

    .line 2200
    iget-object v0, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$2400(Landroid/widget/NumberPickerX;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerX$PressedStateHelper;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I
    invoke-static {v2}, Landroid/widget/NumberPickerX;->access$1800(Landroid/widget/NumberPickerX;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPickerX;->invalidate(IIII)V

    goto/16 :goto_0

    .line 2171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2173
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2185
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
