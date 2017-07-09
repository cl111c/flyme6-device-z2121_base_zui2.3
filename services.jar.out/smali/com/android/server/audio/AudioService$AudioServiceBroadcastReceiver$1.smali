.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 5528
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$1;->this$1:Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5531
    const-string v0, "screen_state=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5532
    return-void
.end method
