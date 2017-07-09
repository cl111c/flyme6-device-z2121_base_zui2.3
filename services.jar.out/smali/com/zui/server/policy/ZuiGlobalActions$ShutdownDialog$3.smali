.class Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$3;
.super Ljava/lang/Object;
.source "ZuiGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->initViewAction(Landroid/view/View;IILandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

.field final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$3;->this$1:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    iput-object p2, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$3;->val$title:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 326
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 327
    .local v0, "actionId":I
    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 329
    :pswitch_1
    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$3;->val$title:Landroid/widget/TextView;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 335
    :pswitch_2
    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$3;->val$title:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
