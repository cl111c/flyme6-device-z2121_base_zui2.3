.class Landroid/widget/ListView$StatusBarClickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarClickReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 4000
    iput-object p1, p0, Landroid/widget/ListView$StatusBarClickReceiver;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ListView;
    .param p2, "x1"    # Landroid/widget/ListView$1;

    .prologue
    .line 4000
    invoke-direct {p0, p1}, Landroid/widget/ListView$StatusBarClickReceiver;-><init>(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4004
    iget-object v0, p0, Landroid/widget/ListView$StatusBarClickReceiver;->this$0:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 4005
    return-void
.end method
