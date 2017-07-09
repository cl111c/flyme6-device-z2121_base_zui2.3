.class Landroid/widget/SlideLinearLayoutEx$1;
.super Ljava/lang/Object;
.source "SlideLinearLayoutEx.java"

# interfaces
.implements Landroid/widget/SlideLinearLayout$OnEdgeChildStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SlideLinearLayoutEx;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SlideLinearLayoutEx;


# direct methods
.method constructor <init>(Landroid/widget/SlideLinearLayoutEx;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPressedStateChanged(Landroid/view/View;ZI)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pressed"    # Z
    .param p3, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 137
    packed-switch p3, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mLeftImagePressed:Z
    invoke-static {v0}, Landroid/widget/SlideLinearLayoutEx;->access$000(Landroid/widget/SlideLinearLayoutEx;)Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 140
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # setter for: Landroid/widget/SlideLinearLayoutEx;->mLeftImagePressed:Z
    invoke-static {v0, p2}, Landroid/widget/SlideLinearLayoutEx;->access$002(Landroid/widget/SlideLinearLayoutEx;Z)Z

    .line 141
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    iget-object v1, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mLeftImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/widget/SlideLinearLayoutEx;->access$100(Landroid/widget/SlideLinearLayoutEx;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mLeftImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/SlideLinearLayoutEx;->access$200(Landroid/widget/SlideLinearLayoutEx;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mLeftImagePressed:Z
    invoke-static {v3}, Landroid/widget/SlideLinearLayoutEx;->access$000(Landroid/widget/SlideLinearLayoutEx;)Z

    move-result v3

    # invokes: Landroid/widget/SlideLinearLayoutEx;->updateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    invoke-static {v0, v1, v2, v3}, Landroid/widget/SlideLinearLayoutEx;->access$300(Landroid/widget/SlideLinearLayoutEx;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mRightImagePressed:Z
    invoke-static {v0}, Landroid/widget/SlideLinearLayoutEx;->access$400(Landroid/widget/SlideLinearLayoutEx;)Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # setter for: Landroid/widget/SlideLinearLayoutEx;->mRightImagePressed:Z
    invoke-static {v0, p2}, Landroid/widget/SlideLinearLayoutEx;->access$402(Landroid/widget/SlideLinearLayoutEx;Z)Z

    .line 148
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    iget-object v1, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mRightImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/widget/SlideLinearLayoutEx;->access$500(Landroid/widget/SlideLinearLayoutEx;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mRightImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/SlideLinearLayoutEx;->access$600(Landroid/widget/SlideLinearLayoutEx;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mRightImagePressed:Z
    invoke-static {v3}, Landroid/widget/SlideLinearLayoutEx;->access$400(Landroid/widget/SlideLinearLayoutEx;)Z

    move-result v3

    # invokes: Landroid/widget/SlideLinearLayoutEx;->updateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    invoke-static {v0, v1, v2, v3}, Landroid/widget/SlideLinearLayoutEx;->access$300(Landroid/widget/SlideLinearLayoutEx;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # setter for: Landroid/widget/SlideLinearLayoutEx;->mLeftImagePressed:Z
    invoke-static {v0, v1}, Landroid/widget/SlideLinearLayoutEx;->access$002(Landroid/widget/SlideLinearLayoutEx;Z)Z

    .line 154
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # setter for: Landroid/widget/SlideLinearLayoutEx;->mRightImagePressed:Z
    invoke-static {v0, v1}, Landroid/widget/SlideLinearLayoutEx;->access$402(Landroid/widget/SlideLinearLayoutEx;Z)Z

    .line 155
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    iget-object v1, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mLeftImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/widget/SlideLinearLayoutEx;->access$100(Landroid/widget/SlideLinearLayoutEx;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mLeftImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/SlideLinearLayoutEx;->access$200(Landroid/widget/SlideLinearLayoutEx;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mLeftImagePressed:Z
    invoke-static {v3}, Landroid/widget/SlideLinearLayoutEx;->access$000(Landroid/widget/SlideLinearLayoutEx;)Z

    move-result v3

    # invokes: Landroid/widget/SlideLinearLayoutEx;->updateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    invoke-static {v0, v1, v2, v3}, Landroid/widget/SlideLinearLayoutEx;->access$300(Landroid/widget/SlideLinearLayoutEx;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 156
    iget-object v0, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    iget-object v1, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mRightImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/widget/SlideLinearLayoutEx;->access$500(Landroid/widget/SlideLinearLayoutEx;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mRightImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/SlideLinearLayoutEx;->access$600(Landroid/widget/SlideLinearLayoutEx;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SlideLinearLayoutEx$1;->this$0:Landroid/widget/SlideLinearLayoutEx;

    # getter for: Landroid/widget/SlideLinearLayoutEx;->mRightImagePressed:Z
    invoke-static {v3}, Landroid/widget/SlideLinearLayoutEx;->access$400(Landroid/widget/SlideLinearLayoutEx;)Z

    move-result v3

    # invokes: Landroid/widget/SlideLinearLayoutEx;->updateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    invoke-static {v0, v1, v2, v3}, Landroid/widget/SlideLinearLayoutEx;->access$300(Landroid/widget/SlideLinearLayoutEx;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
