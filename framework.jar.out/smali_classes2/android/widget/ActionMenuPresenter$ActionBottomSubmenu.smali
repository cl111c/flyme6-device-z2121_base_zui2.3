.class Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;
.super Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBottomSubmenu"
.end annotation


# instance fields
.field private mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

.field private mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1065
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1066
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    .line 1067
    new-instance v0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x1010444

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    .line 1069
    iput-object p3, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 1071
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v9

    check-cast v9, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1072
    .local v9, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    # getter for: Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1600(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    move-result-object v0

    if-nez v0, :cond_2

    # getter for: Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1900(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->setAnchorView(Landroid/view/View;)V

    .line 1077
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    iget-object v1, p1, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 1079
    const/4 v10, 0x0

    .line 1080
    .local v10, "preserveIconSpacing":Z
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v7

    .line 1081
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_1

    .line 1082
    invoke-virtual {p3, v8}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1083
    .local v6, "childItem":Landroid/view/MenuItem;
    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1084
    const/4 v10, 0x1

    .line 1088
    .end local v6    # "childItem":Landroid/view/MenuItem;
    :cond_1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->setForceShowIcon(Z)V

    .line 1089
    return-void

    .line 1074
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v10    # "preserveIconSpacing":Z
    :cond_2
    # getter for: Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1600(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    move-result-object v0

    goto :goto_0

    .line 1081
    .restart local v6    # "childItem":Landroid/view/MenuItem;
    .restart local v7    # "count":I
    .restart local v8    # "i":I
    .restart local v10    # "preserveIconSpacing":Z
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->dismiss()V

    .line 1135
    :cond_0
    return-void
.end method

.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 1117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->isShowing()Z

    move-result v0

    .line 1142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 1148
    invoke-super {p0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->onDismiss()V

    .line 1149
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->dismiss()V

    .line 1150
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->access$1802(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 1151
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 1152
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->setAnchorView(Landroid/view/View;)V

    .line 1096
    :cond_0
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShow"    # Z

    .prologue
    .line 1100
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->setForceShowIcon(Z)V

    .line 1103
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->show()V

    .line 1110
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionBottomSubmenu;->mDialog:Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->tryShow()Z

    move-result v0

    .line 1126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
