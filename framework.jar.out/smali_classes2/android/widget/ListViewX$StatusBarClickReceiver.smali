.class Landroid/widget/ListViewX$StatusBarClickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ListViewX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarClickReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListViewX;


# direct methods
.method private constructor <init>(Landroid/widget/ListViewX;)V
    .locals 0

    .prologue
    .line 1890
    iput-object p1, p0, Landroid/widget/ListViewX$StatusBarClickReceiver;->this$0:Landroid/widget/ListViewX;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListViewX;Landroid/widget/ListViewX$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ListViewX;
    .param p2, "x1"    # Landroid/widget/ListViewX$1;

    .prologue
    .line 1890
    invoke-direct {p0, p1}, Landroid/widget/ListViewX$StatusBarClickReceiver;-><init>(Landroid/widget/ListViewX;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1894
    iget-object v0, p0, Landroid/widget/ListViewX$StatusBarClickReceiver;->this$0:Landroid/widget/ListViewX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListViewX;->setSelection(I)V

    .line 1895
    return-void
.end method
