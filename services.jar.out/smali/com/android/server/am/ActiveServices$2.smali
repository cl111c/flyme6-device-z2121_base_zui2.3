.class Lcom/android/server/am/ActiveServices$2;
.super Ljava/lang/Thread;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZII)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field final synthetic val$callingUid:I

.field final synthetic val$procName:Ljava/lang/String;

.field final synthetic val$targetClass:Ljava/lang/String;

.field final synthetic val$targetUid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iput p2, p0, Lcom/android/server/am/ActiveServices$2;->val$callingUid:I

    iput p3, p0, Lcom/android/server/am/ActiveServices$2;->val$targetUid:I

    iput-object p4, p0, Lcom/android/server/am/ActiveServices$2;->val$procName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/ActiveServices$2;->val$targetClass:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActiveServices$2;->val$callingUid:I

    const-string v2, "service"

    iget v3, p0, Lcom/android/server/am/ActiveServices$2;->val$targetUid:I

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$2;->val$procName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$2;->val$targetClass:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->notifyProcessStateChange(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    return-void
.end method
