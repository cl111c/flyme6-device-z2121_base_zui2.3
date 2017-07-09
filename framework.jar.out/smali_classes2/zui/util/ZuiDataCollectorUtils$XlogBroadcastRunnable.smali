.class public Lzui/util/ZuiDataCollectorUtils$XlogBroadcastRunnable;
.super Ljava/lang/Object;
.source "ZuiDataCollectorUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/util/ZuiDataCollectorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XlogBroadcastRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lzui/util/ZuiDataCollectorUtils;


# direct methods
.method public constructor <init>(Lzui/util/ZuiDataCollectorUtils;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    iput-object p1, p0, Lzui/util/ZuiDataCollectorUtils$XlogBroadcastRunnable;->this$0:Lzui/util/ZuiDataCollectorUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lzui/util/ZuiDataCollectorUtils$XlogBroadcastRunnable;->mContext:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lzui/util/ZuiDataCollectorUtils$XlogBroadcastRunnable;->mIntent:Landroid/content/Intent;

    .line 33
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lzui/util/ZuiDataCollectorUtils$XlogBroadcastRunnable;->this$0:Lzui/util/ZuiDataCollectorUtils;

    iget-object v1, p0, Lzui/util/ZuiDataCollectorUtils$XlogBroadcastRunnable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lzui/util/ZuiDataCollectorUtils$XlogBroadcastRunnable;->mIntent:Landroid/content/Intent;

    # invokes: Lzui/util/ZuiDataCollectorUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lzui/util/ZuiDataCollectorUtils;->access$000(Lzui/util/ZuiDataCollectorUtils;Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    return-void
.end method
