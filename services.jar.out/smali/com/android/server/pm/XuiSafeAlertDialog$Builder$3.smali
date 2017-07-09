.class Lcom/android/server/pm/XuiSafeAlertDialog$Builder$3;
.super Ljava/lang/Object;
.source "XuiSafeAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->create()Lcom/android/server/pm/XuiSafeAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/XuiSafeAlertDialog$Builder;

.field final synthetic val$dialog:Lcom/android/server/pm/XuiSafeAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/XuiSafeAlertDialog$Builder;Lcom/android/server/pm/XuiSafeAlertDialog;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder$3;->this$0:Lcom/android/server/pm/XuiSafeAlertDialog$Builder;

    iput-object p2, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder$3;->val$dialog:Lcom/android/server/pm/XuiSafeAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder$3;->this$0:Lcom/android/server/pm/XuiSafeAlertDialog$Builder;

    # getter for: Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->mMessageContentonClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/android/server/pm/XuiSafeAlertDialog$Builder;->access$200(Lcom/android/server/pm/XuiSafeAlertDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/XuiSafeAlertDialog$Builder$3;->val$dialog:Lcom/android/server/pm/XuiSafeAlertDialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 242
    return-void
.end method
