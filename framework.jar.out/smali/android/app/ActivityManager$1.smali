.class Landroid/app/ActivityManager$1;
.super Landroid/app/IProcessStateListener$Stub;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityManager;->registerProcessStateListener(Landroid/app/ActivityManager$ProcessStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityManager;

.field final synthetic val$l:Landroid/app/ActivityManager$ProcessStateListener;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager;Landroid/app/ActivityManager$ProcessStateListener;)V
    .locals 0

    .prologue
    .line 3035
    iput-object p1, p0, Landroid/app/ActivityManager$1;->this$0:Landroid/app/ActivityManager;

    iput-object p2, p0, Landroid/app/ActivityManager$1;->val$l:Landroid/app/ActivityManager$ProcessStateListener;

    invoke-direct {p0}, Landroid/app/IProcessStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessStarted(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "srcUid"    # I
    .param p2, "srcProcess"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "targetProcess"    # Ljava/lang/String;
    .param p5, "action"    # Ljava/lang/String;
    .param p6, "targetClass"    # Ljava/lang/String;

    .prologue
    .line 3039
    iget-object v0, p0, Landroid/app/ActivityManager$1;->val$l:Landroid/app/ActivityManager$ProcessStateListener;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/ActivityManager$ProcessStateListener;->onProcessStarted(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    return-void
.end method
