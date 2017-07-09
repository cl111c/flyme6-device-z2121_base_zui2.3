.class Lcom/android/internal/view/menu/MenuDialogHelper$1;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/MenuDialogHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuDialogHelper;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuDialogHelper$1;->this$0:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuDialogHelper$1;->this$0:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 84
    return-void
.end method
