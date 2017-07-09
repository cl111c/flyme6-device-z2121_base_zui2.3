.class Lcom/android/server/XuiLinearMotorStateObserver$3$1;
.super Ljava/lang/Object;
.source "XuiLinearMotorStateObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/XuiLinearMotorStateObserver$3;->onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;


# direct methods
.method constructor <init>(Lcom/android/server/XuiLinearMotorStateObserver$3;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x3c

    const/16 v10, 0x1e

    const/4 v11, 0x0

    .line 195
    const v2, 0x1040602

    .line 196
    .local v2, "resourceId":I
    const v1, 0x10405ee

    .line 198
    .local v1, "positiveTitle":I
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/XuiLinearMotorStateObserver;->access$500(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/server/XuiLinearMotorStateObserver$3$1$1;

    invoke-direct {v9, p0}, Lcom/android/server/XuiLinearMotorStateObserver$3$1$1;-><init>(Lcom/android/server/XuiLinearMotorStateObserver$3$1;)V

    invoke-virtual {v8, v1, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    # setter for: Lcom/android/server/XuiLinearMotorStateObserver;->sXuiConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/server/XuiLinearMotorStateObserver;->access$402(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 214
    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->sXuiConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/server/XuiLinearMotorStateObserver;->access$400()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 216
    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->sXuiConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/server/XuiLinearMotorStateObserver;->access$400()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 218
    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->sXuiConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/server/XuiLinearMotorStateObserver;->access$400()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 219
    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->sXuiConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/server/XuiLinearMotorStateObserver;->access$400()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 220
    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->sXuiConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/server/XuiLinearMotorStateObserver;->access$400()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 222
    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->sXuiConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/server/XuiLinearMotorStateObserver;->access$400()Landroid/app/AlertDialog;

    move-result-object v8

    const v9, 0x102000b

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 224
    .local v6, "tv_message":Landroid/widget/TextView;
    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 225
    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 226
    invoke-virtual {v6, v10, v12, v10, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 228
    iget-object v8, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v8, v8, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/XuiLinearMotorStateObserver;->access$500(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 229
    .local v3, "resources":Landroid/content/res/Resources;
    const v0, 0x1040604

    .line 230
    .local v0, "delay_handle":I
    const v7, 0x1040603

    .line 231
    .local v7, "tv_message_str":I
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, "text_action":Ljava/lang/String;
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 234
    .local v4, "spStr":Landroid/text/SpannableString;
    new-instance v8, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;

    invoke-direct {v8, p0}, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;-><init>(Lcom/android/server/XuiLinearMotorStateObserver$3$1;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0x21

    invoke-virtual {v4, v8, v11, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 303
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 304
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 305
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 307
    return-void
.end method
