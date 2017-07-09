.class Lcom/android/server/AppOpsService$4;
.super Ljava/lang/Thread;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->notifyOperation(IILjava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field final synthetic val$mCode:I

.field final synthetic val$mMode:I

.field final synthetic val$mPackageName:Ljava/lang/String;

.field final synthetic val$mRepCbs:Ljava/util/ArrayList;

.field final synthetic val$mSwitchCode:I

.field final synthetic val$mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;III)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 2151
    iput-object p1, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    iput-object p3, p0, Lcom/android/server/AppOpsService$4;->val$mRepCbs:Ljava/util/ArrayList;

    iput p4, p0, Lcom/android/server/AppOpsService$4;->val$mSwitchCode:I

    iput-object p5, p0, Lcom/android/server/AppOpsService$4;->val$mPackageName:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/AppOpsService$4;->val$mCode:I

    iput p7, p0, Lcom/android/server/AppOpsService$4;->val$mUid:I

    iput p8, p0, Lcom/android/server/AppOpsService$4;->val$mMode:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2154
    iget-object v1, p0, Lcom/android/server/AppOpsService$4;->val$mRepCbs:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$4;->val$mRepCbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2157
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$4;->val$mRepCbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Callback;

    iget-object v1, v1, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    iget v2, p0, Lcom/android/server/AppOpsService$4;->val$mSwitchCode:I

    iget-object v3, p0, Lcom/android/server/AppOpsService$4;->val$mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2155
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2162
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    iget v2, p0, Lcom/android/server/AppOpsService$4;->val$mCode:I

    iget v3, p0, Lcom/android/server/AppOpsService$4;->val$mUid:I

    iget-object v4, p0, Lcom/android/server/AppOpsService$4;->val$mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/AppOpsService$4;->val$mMode:I

    # invokes: Lcom/android/server/AppOpsService;->checkAndSetAliasMode(IILjava/lang/String;I)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/AppOpsService;->access$100(Lcom/android/server/AppOpsService;IILjava/lang/String;I)V

    .line 2163
    return-void

    .line 2158
    .restart local v0    # "i":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method
