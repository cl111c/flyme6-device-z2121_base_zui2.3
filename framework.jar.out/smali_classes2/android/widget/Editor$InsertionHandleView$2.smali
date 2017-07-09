.class Landroid/widget/Editor$InsertionHandleView$2;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$InsertionHandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$InsertionHandleView;)V
    .locals 0

    .prologue
    .line 3986
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView$2;->this$1:Landroid/widget/Editor$InsertionHandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3988
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView$2;->this$1:Landroid/widget/Editor$InsertionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->hide()V

    .line 3990
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView$2;->this$1:Landroid/widget/Editor$InsertionHandleView;

    iget-object v0, v0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mIsFloatingMenu:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3991
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView$2;->this$1:Landroid/widget/Editor$InsertionHandleView;

    iget-object v0, v0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 3994
    :cond_0
    return-void
.end method
