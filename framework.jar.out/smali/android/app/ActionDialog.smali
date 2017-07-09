.class public Landroid/app/ActionDialog;
.super Landroid/app/AlertDialog;
.source "ActionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActionDialog$Builder;
    }
.end annotation


# static fields
.field public static final THEME_DEVICE_DEFAULT_DARK:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x2


# instance fields
.field private final MAX_MENU_ITEM_COUNT:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-static {p1, v2}, Landroid/app/ActionDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/ActionDialog;-><init>(Landroid/content/Context;IZZ)V

    .line 77
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 83
    invoke-static {p1, p2}, Landroid/app/ActionDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/ActionDialog;-><init>(Landroid/content/Context;IZZ)V

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createThemeContextWrapper"    # Z
    .param p4, "topButton"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 114
    const/16 v0, 0x9

    iput v0, p0, Landroid/app/ActionDialog;->MAX_MENU_ITEM_COUNT:I

    .line 88
    new-instance v0, Lcom/android/internal/app/ActionController;

    invoke-virtual {p0}, Landroid/app/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p4}, Lcom/android/internal/app/ActionController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Z)V

    iput-object v0, p0, Landroid/app/ActionDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 89
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 114
    const/16 v0, 0x9

    iput v0, p0, Landroid/app/ActionDialog;->MAX_MENU_ITEM_COUNT:I

    .line 93
    new-instance v0, Lcom/android/internal/app/ActionController;

    invoke-virtual {p0}, Landroid/app/ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/internal/app/ActionController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Z)V

    iput-object v0, p0, Landroid/app/ActionDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 94
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I

    .prologue
    const/4 v3, 0x1

    .line 97
    if-ne p1, v3, :cond_1

    .line 98
    const p1, 0x10305b5

    .line 110
    .end local p1    # "theme":I
    :cond_0
    :goto_0
    return p1

    .line 99
    .restart local p1    # "theme":I
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 100
    const p1, 0x10305c2

    goto :goto_0

    .line 101
    :cond_2
    const/high16 v1, 0x1000000

    if-ge p1, v1, :cond_0

    .line 104
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 105
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1160117

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 107
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v1, :cond_3

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result p1

    goto :goto_0

    .line 110
    :cond_3
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x3

    .line 118
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/ActionDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 120
    .local v2, "list":Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 122
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 124
    .local v1, "itemCount":I
    if-lez v1, :cond_1

    if-ge v1, v3, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x1030590

    invoke-virtual {v3, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 133
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v1    # "itemCount":I
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "itemCount":I
    :cond_1
    if-lt v1, v3, :cond_2

    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    .line 127
    invoke-virtual {p0}, Landroid/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x103058f

    invoke-virtual {v3, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p0}, Landroid/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x103058e

    invoke-virtual {v3, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0
.end method

.method public setMessageTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Landroid/app/ActionDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController;->mMessageTitle:Z

    .line 144
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/app/ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 138
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 139
    return-void
.end method
