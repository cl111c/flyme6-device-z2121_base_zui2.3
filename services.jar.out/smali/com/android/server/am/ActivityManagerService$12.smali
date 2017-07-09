.class Lcom/android/server/am/ActivityManagerService$12;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ZI)Landroid/app/IActivityManager$ContentProviderHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$callingPkg:Ljava/lang/String;

.field final synthetic val$callingUid:I

.field final synthetic val$targetClass:Ljava/lang/String;

.field final synthetic val$targetPkg:Ljava/lang/String;

.field final synthetic val$targetUid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10094
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$12;->val$callingUid:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$12;->val$callingPkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/ActivityManagerService$12;->val$targetUid:I

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$12;->val$targetPkg:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$12;->val$targetClass:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 10097
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$12;->val$callingUid:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$12;->val$callingPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$12;->val$targetUid:I

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$12;->val$targetPkg:Ljava/lang/String;

    const-string v5, "provider"

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$12;->val$targetClass:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->notifyProcessStateChange(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10099
    return-void
.end method
