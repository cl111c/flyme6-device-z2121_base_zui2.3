.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMediaKeyRunnable"
.end annotation


# instance fields
.field mKeyCode:I

.field mNeedWakeLock:Z

.field mSession:Lcom/android/server/media/MediaSessionRecord;

.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;IZLcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p2, "keyCode"    # I
    .param p3, "needWakeLock"    # Z
    .param p4, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mKeyCode:I

    .line 1191
    iput-boolean p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mNeedWakeLock:Z

    .line 1192
    iput-object p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mSession:Lcom/android/server/media/MediaSessionRecord;

    .line 1193
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1197
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    # setter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyDownCount:I
    invoke-static {v2, v3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3102(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)I

    .line 1198
    new-instance v0, Landroid/view/KeyEvent;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mKeyCode:I

    invoke-direct {v0, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1199
    .local v0, "downEvent":Landroid/view/KeyEvent;
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mKeyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1200
    .local v1, "upEvent":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mNeedWakeLock:Z

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mSession:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3200(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 1201
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mNeedWakeLock:Z

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mSession:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3200(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 1202
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send media key, KeyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mKeyCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return-void
.end method
