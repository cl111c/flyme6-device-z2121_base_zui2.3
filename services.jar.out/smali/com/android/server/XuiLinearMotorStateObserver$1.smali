.class Lcom/android/server/XuiLinearMotorStateObserver$1;
.super Ljava/lang/Object;
.source "XuiLinearMotorStateObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/XuiLinearMotorStateObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/XuiLinearMotorStateObserver;


# direct methods
.method constructor <init>(Lcom/android/server/XuiLinearMotorStateObserver;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/XuiLinearMotorStateObserver$1;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    const-string v0, "XuiLinearMotorStateObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "when handler.postDelayed(5minute), Linear Motor State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/XuiLinearMotorStateObserver$1;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorCurrentState:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/XuiLinearMotorStateObserver;->access$000(Lcom/android/server/XuiLinearMotorStateObserver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "normal"

    iget-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver$1;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorCurrentState:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/XuiLinearMotorStateObserver;->access$000(Lcom/android/server/XuiLinearMotorStateObserver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v0, "tfault"

    iget-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver$1;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorCurrentState:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/XuiLinearMotorStateObserver;->access$000(Lcom/android/server/XuiLinearMotorStateObserver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/server/XuiLinearMotorStateObserver$1;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    const-string v1, "normal"

    # setter for: Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorCurrentState:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/XuiLinearMotorStateObserver;->access$002(Lcom/android/server/XuiLinearMotorStateObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    const-string v0, "persist.sys.motor.state"

    const-string v1, "normal"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    const-string v0, "pfault"

    iget-object v1, p0, Lcom/android/server/XuiLinearMotorStateObserver$1;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorCurrentState:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/XuiLinearMotorStateObserver;->access$000(Lcom/android/server/XuiLinearMotorStateObserver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
