.class public Lcom/android/internal/view/menu/MenuBottomDialogHelper;
.super Ljava/lang/Object;
.source "MenuBottomDialogHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x109008c

.field private static final TAG:Ljava/lang/String; = "MenuBottomHelper"


# instance fields
.field private final mAdapter:Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ActionDialog;

.field mForceShowIcon:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final mOverflowOnly:Z

.field private mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 70
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    .line 74
    const/4 v4, 0x0

    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 82
    new-instance v0, Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBottomDialogHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mAdapter:Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;

    .line 83
    iput-boolean p4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mOverflowOnly:Z

    .line 85
    iput-object p3, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mAnchorView:Landroid/view/View;

    .line 88
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/MenuBottomDialogHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/MenuBottomDialogHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/MenuBottomDialogHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuBottomDialogHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mDialog:Landroid/app/ActionDialog;

    invoke-virtual {v0}, Landroid/app/ActionDialog;->dismiss()V

    .line 164
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuBottomDialogHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 224
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mDialog:Landroid/app/ActionDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mDialog:Landroid/app/ActionDialog;

    invoke-virtual {v0}, Landroid/app/ActionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mAdapter:Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;

    .line 347
    .local v0, "adapter":Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;
    # getter for: Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;->access$000(Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 348
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->dismiss()V

    .line 277
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mDialog:Landroid/app/ActionDialog;

    .line 168
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 169
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 172
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 175
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 352
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mAnchorView:Landroid/view/View;

    .line 199
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->dismiss()V

    .line 206
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 201
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mDialog:Landroid/app/ActionDialog;

    invoke-virtual {v1}, Landroid/app/ActionDialog;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mAdapter:Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;

    .line 184
    .local v0, "adapter":Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;
    # getter for: Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;->access$000(Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 185
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 310
    const/16 v4, 0x52

    if-eq p2, v4, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    .line 311
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 313
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mDialog:Landroid/app/ActionDialog;

    invoke-virtual {v4}, Landroid/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 314
    .local v2, "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 315
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 318
    .local v1, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 319
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 341
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :goto_0
    return v3

    .line 324
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 325
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mDialog:Landroid/app/ActionDialog;

    invoke-virtual {v4}, Landroid/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 326
    .restart local v2    # "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 327
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 328
    .restart local v0    # "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 330
    .restart local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 331
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 332
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 341
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 188
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->dismiss()V

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 307
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 247
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 248
    .local v4, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 250
    const/4 v3, 0x0

    .line 251
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 252
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 253
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 254
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 255
    const/4 v3, 0x1

    .line 259
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 261
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 262
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 263
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 265
    :cond_1
    const/4 v5, 0x1

    .line 268
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :goto_1
    return v5

    .line 252
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "preserveIconSpacing":Z
    .restart local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 218
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 219
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mAnchorView:Landroid/view/View;

    .line 93
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 242
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mForceShowIcon:Z

    .line 97
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 100
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->tryShow()Z

    .line 104
    return-void
.end method

.method public tryShow()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 111
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 113
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mDialog:Landroid/app/ActionDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mDialog:Landroid/app/ActionDialog;

    invoke-virtual {v4}, Landroid/app/ActionDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    :goto_0
    return v7

    .line 117
    :cond_0
    new-instance v0, Landroid/app/ActionDialog$Builder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/ActionDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "builder":Landroid/app/ActionDialog$Builder;
    new-instance v4, Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Landroid/app/ActionDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x109008c

    invoke-direct {v4, v5, v6}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 123
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 124
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 125
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mAdapter:Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;

    invoke-virtual {v0, v4, p0}, Landroid/app/ActionDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    .line 128
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v1

    .line 129
    .local v1, "headerView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v0, v1}, Landroid/app/ActionDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/ActionDialog$Builder;

    .line 138
    :goto_1
    invoke-virtual {v0, p0}, Landroid/app/ActionDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/ActionDialog$Builder;

    .line 139
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/internal/view/menu/MenuBottomDialogHelper$1;

    invoke-direct {v5, p0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper$1;-><init>(Lcom/android/internal/view/menu/MenuBottomDialogHelper;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ActionDialog$Builder;

    .line 149
    invoke-virtual {v0}, Landroid/app/ActionDialog$Builder;->create()Landroid/app/ActionDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mDialog:Landroid/app/ActionDialog;

    .line 150
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mDialog:Landroid/app/ActionDialog;

    invoke-virtual {v4, p0}, Landroid/app/ActionDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 152
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mDialog:Landroid/app/ActionDialog;

    invoke-virtual {v4}, Landroid/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 153
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 154
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 156
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mDialog:Landroid/app/ActionDialog;

    invoke-virtual {v4}, Landroid/app/ActionDialog;->show()V

    goto :goto_0

    .line 134
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionDialog$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActionDialog$Builder;->setMessageTitle(Ljava/lang/CharSequence;)Landroid/app/ActionDialog$Builder;

    goto :goto_1
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mAdapter:Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBottomDialogHelper;->mAdapter:Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBottomDialogHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 237
    :cond_0
    return-void
.end method
