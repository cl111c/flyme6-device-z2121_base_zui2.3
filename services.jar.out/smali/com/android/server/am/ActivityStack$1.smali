.class Lcom/android/server/am/ActivityStack$1;
.super Ljava/lang/Thread;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;

.field final synthetic val$process_0:Ljava/lang/String;

.field final synthetic val$targeUid_0:I

.field final synthetic val$targetClass_0:Ljava/lang/String;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1959
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iput p2, p0, Lcom/android/server/am/ActivityStack$1;->val$taskId:I

    iput p3, p0, Lcom/android/server/am/ActivityStack$1;->val$targeUid_0:I

    iput-object p4, p0, Lcom/android/server/am/ActivityStack$1;->val$process_0:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/ActivityStack$1;->val$targetClass_0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resume activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ActivityStack$1;->val$taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ActivityStack$1;->val$targeUid_0:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStack$1;->val$process_0:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/am/ActivityStack$1;->val$targetClass_0:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->notifyProcessStateChange(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    return-void
.end method
