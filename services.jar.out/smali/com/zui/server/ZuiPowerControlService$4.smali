.class Lcom/zui/server/ZuiPowerControlService$4;
.super Ljava/lang/Object;
.source "ZuiPowerControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/server/ZuiPowerControlService;->sendOverheatCleanChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/ZuiPowerControlService;


# direct methods
.method constructor <init>(Lcom/zui/server/ZuiPowerControlService;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/zui/server/ZuiPowerControlService$4;->this$0:Lcom/zui/server/ZuiPowerControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 672
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OVERHEAT_CLEAN_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 674
    const-string v1, "clean"

    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$4;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$200(Lcom/zui/server/ZuiPowerControlService;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    const-string v1, "checkInterval"

    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$4;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCheckInterval:J
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$500(Lcom/zui/server/ZuiPowerControlService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 676
    const-string v1, "cleanPowerThreshold"

    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$4;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanPowerThreshold:D
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$2200(Lcom/zui/server/ZuiPowerControlService;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 677
    const-string v1, "preCleanSampleInterval"

    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$4;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatPreCleanSampleInterval:J
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$2300(Lcom/zui/server/ZuiPowerControlService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 678
    const-string v1, "netSpeedThreshold"

    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$4;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatNetSpeedThreshold:J
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$2400(Lcom/zui/server/ZuiPowerControlService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 679
    const-string v1, "bgRatioThreshold"

    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$4;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatBgRatioThreshold:I
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$2500(Lcom/zui/server/ZuiPowerControlService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    const-string v1, "cleanTimeIntervals"

    iget-object v2, p0, Lcom/zui/server/ZuiPowerControlService$4;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCleanTimeIntervals:[J
    invoke-static {v2}, Lcom/zui/server/ZuiPowerControlService;->access$2600(Lcom/zui/server/ZuiPowerControlService;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 681
    const-string v1, "ZuiPowerControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ACTION_OVERHEAT_CLEAN_CHANGED, clean:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/server/ZuiPowerControlService$4;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z
    invoke-static {v3}, Lcom/zui/server/ZuiPowerControlService;->access$200(Lcom/zui/server/ZuiPowerControlService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, p0, Lcom/zui/server/ZuiPowerControlService$4;->this$0:Lcom/zui/server/ZuiPowerControlService;

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zui/server/ZuiPowerControlService;->access$800(Lcom/zui/server/ZuiPowerControlService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 683
    return-void
.end method
