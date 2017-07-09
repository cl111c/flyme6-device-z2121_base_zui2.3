.class Lcom/android/server/display/DisplayPowerController$3;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/zui/server/display/ZuiDisplayPowerController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController;->updatePowerState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAnimateScreenBrightness(II)V
    .locals 1
    .param p1, "brightness"    # I
    .param p2, "rate"    # I

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->access$300(Lcom/android/server/display/DisplayPowerController;II)V

    .line 745
    return-void
.end method
