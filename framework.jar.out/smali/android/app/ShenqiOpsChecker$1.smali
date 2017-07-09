.class Landroid/app/ShenqiOpsChecker$1;
.super Ljava/lang/Thread;
.source "ShenqiOpsChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ShenqiOpsChecker;->checkIsCreateShortCutOp(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ShenqiOpsChecker;

.field final synthetic val$callingUid:I

.field final synthetic val$createShortCutIntent:Landroid/content/Intent;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/ShenqiOpsChecker;ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Landroid/app/ShenqiOpsChecker$1;->this$0:Landroid/app/ShenqiOpsChecker;

    iput p2, p0, Landroid/app/ShenqiOpsChecker$1;->val$callingUid:I

    iput-object p3, p0, Landroid/app/ShenqiOpsChecker$1;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/ShenqiOpsChecker$1;->val$createShortCutIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Landroid/app/ShenqiOpsChecker$1;->this$0:Landroid/app/ShenqiOpsChecker;

    # getter for: Landroid/app/ShenqiOpsChecker;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v0}, Landroid/app/ShenqiOpsChecker;->access$000(Landroid/app/ShenqiOpsChecker;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x3d

    iget v2, p0, Landroid/app/ShenqiOpsChecker$1;->val$callingUid:I

    iget-object v3, p0, Landroid/app/ShenqiOpsChecker$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Landroid/app/ShenqiOpsChecker$1;->val$createShortCutIntent:Landroid/content/Intent;

    const-string v1, "AFTER_CHECK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Landroid/app/ShenqiOpsChecker$1;->this$0:Landroid/app/ShenqiOpsChecker;

    # getter for: Landroid/app/ShenqiOpsChecker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/app/ShenqiOpsChecker;->access$100(Landroid/app/ShenqiOpsChecker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ShenqiOpsChecker$1;->val$createShortCutIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    :cond_0
    return-void
.end method
