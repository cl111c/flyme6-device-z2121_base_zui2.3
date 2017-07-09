.class Landroid/view/WindowManagerGlobal$3;
.super Landroid/view/IUTouchSlideListener$Stub;
.source "WindowManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerGlobal;->registerUTouchSlideListener(Landroid/view/WindowManager$UTouchSlideListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowManagerGlobal;

.field final synthetic val$uTouchSlideListener:Landroid/view/WindowManager$UTouchSlideListener;


# direct methods
.method constructor <init>(Landroid/view/WindowManagerGlobal;Landroid/view/WindowManager$UTouchSlideListener;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Landroid/view/WindowManagerGlobal$3;->this$0:Landroid/view/WindowManagerGlobal;

    iput-object p2, p0, Landroid/view/WindowManagerGlobal$3;->val$uTouchSlideListener:Landroid/view/WindowManager$UTouchSlideListener;

    invoke-direct {p0}, Landroid/view/IUTouchSlideListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessStarted(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "currentPackageName"    # Ljava/lang/String;
    .param p3, "recentTasksToString"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$3;->val$uTouchSlideListener:Landroid/view/WindowManager$UTouchSlideListener;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$3;->val$uTouchSlideListener:Landroid/view/WindowManager$UTouchSlideListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManager$UTouchSlideListener;->onProcessStarted(ILjava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    return-void
.end method
