.class Lcom/android/server/am/BroadcastQueue$1;
.super Ljava/lang/Thread;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$process:Ljava/lang/String;

.field final synthetic val$srcUid:I

.field final synthetic val$targeUid:I

.field final synthetic val$targetClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$1;->this$0:Lcom/android/server/am/BroadcastQueue;

    iput p2, p0, Lcom/android/server/am/BroadcastQueue$1;->val$srcUid:I

    iput p3, p0, Lcom/android/server/am/BroadcastQueue$1;->val$targeUid:I

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueue$1;->val$process:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueue$1;->val$action:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/BroadcastQueue$1;->val$targetClass:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$1;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/BroadcastQueue$1;->val$srcUid:I

    const-string v2, "broadcast"

    iget v3, p0, Lcom/android/server/am/BroadcastQueue$1;->val$targeUid:I

    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue$1;->val$process:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueue$1;->val$action:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue$1;->val$targetClass:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->notifyProcessStateChange(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    return-void
.end method
