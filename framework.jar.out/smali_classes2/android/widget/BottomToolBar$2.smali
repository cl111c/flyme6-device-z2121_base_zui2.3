.class Landroid/widget/BottomToolBar$2;
.super Ljava/lang/Object;
.source "BottomToolBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/BottomToolBar;->createMoreDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BottomToolBar;


# direct methods
.method constructor <init>(Landroid/widget/BottomToolBar;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Landroid/widget/BottomToolBar$2;->this$0:Landroid/widget/BottomToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 324
    iget-object v0, p0, Landroid/widget/BottomToolBar$2;->this$0:Landroid/widget/BottomToolBar;

    invoke-virtual {v0}, Landroid/widget/BottomToolBar;->closePopMenu()V

    .line 325
    return-void
.end method
