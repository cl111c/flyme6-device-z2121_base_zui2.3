.class Lcom/android/server/policy/PhoneWindowManager$18;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 5719
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5721
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDropKeyAfterHomeUpEventLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5722
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mDropKeyAfterHomeUpEvent:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4202(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 5723
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mDropLongTouchKeyAfterHomeUpEvent:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4302(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 5724
    monitor-exit v1

    .line 5725
    return-void

    .line 5724
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
