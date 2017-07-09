.class Landroid/widget/ActionMenuPresenter$OverflowDialog;
.super Landroid/widget/ActionMenuPresenter$OverflowPopup;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowDialog"
.end annotation


# instance fields
.field private mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "overflowOnly"    # Z

    .prologue
    .line 971
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 972
    invoke-direct/range {p0 .. p5}, Landroid/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 973
    new-instance v0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    const v5, 0x1010444

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    .line 975
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    iget-object v1, p1, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 976
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->dismiss()V

    .line 1006
    return-void
.end method

.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->onDismiss()V

    .line 1016
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 1019
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->access$1102(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .line 1020
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 980
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->setAnchorView(Landroid/view/View;)V

    .line 981
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShow"    # Z

    .prologue
    .line 985
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->setForceShowIcon(Z)V

    .line 986
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->show()V

    .line 991
    return-void
.end method

.method public tryShow()Z
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowDialog;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->tryShow()Z

    move-result v0

    return v0
.end method
