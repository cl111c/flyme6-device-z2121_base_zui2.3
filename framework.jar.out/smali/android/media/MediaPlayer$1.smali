.class Landroid/media/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->updateUri(Ljava/io/FileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$_fd:I


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;I)V
    .locals 0

    .prologue
    .line 1174
    iput-object p1, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    iput p2, p0, Landroid/media/MediaPlayer$1;->val$_fd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1177
    iget-object v0, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mFdLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1178
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    iget v2, p0, Landroid/media/MediaPlayer$1;->val$_fd:I

    # invokes: Landroid/media/MediaPlayer;->doUpdateUri(I)V
    invoke-static {v0, v2}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;I)V

    .line 1179
    iget-object v0, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mFdLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1180
    monitor-exit v1

    .line 1181
    return-void

    .line 1180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
