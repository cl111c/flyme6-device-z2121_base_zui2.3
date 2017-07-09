.class Landroid/widget/ListViewXEditBar$2;
.super Ljava/lang/Object;
.source "ListViewXEditBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListViewXEditBar;-><init>(Landroid/widget/ListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListViewXEditBar;


# direct methods
.method constructor <init>(Landroid/widget/ListViewXEditBar;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Landroid/widget/ListViewXEditBar$2;->this$0:Landroid/widget/ListViewXEditBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/ListViewXEditBar$2;->this$0:Landroid/widget/ListViewXEditBar;

    # invokes: Landroid/widget/ListViewXEditBar;->onSelectAll()V
    invoke-static {v0}, Landroid/widget/ListViewXEditBar;->access$100(Landroid/widget/ListViewXEditBar;)V

    .line 77
    return-void
.end method
