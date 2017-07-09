.class Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$1;
.super Ljava/lang/Object;
.source "ZuiGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;


# direct methods
.method constructor <init>(Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$1;->this$1:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$1;->this$1:Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;

    invoke-virtual {v0}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->dismiss()V

    .line 279
    return-void
.end method
