.class Lcom/zui/server/display/ZuiDisplayPowerController$States;
.super Ljava/lang/Object;
.source "ZuiDisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/display/ZuiDisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "States"
.end annotation


# instance fields
.field public mUpdateDataBase:Z

.field public newBrightnessWhenUserSetChanged:Z

.field final synthetic this$0:Lcom/zui/server/display/ZuiDisplayPowerController;

.field public turnFromDim:Z

.field public turnOnScreenFromOff:Z

.field public turnToAuto:Z

.field public turnToDim:Z

.field public turnToManual:Z


# direct methods
.method constructor <init>(Lcom/zui/server/display/ZuiDisplayPowerController;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zui/server/display/ZuiDisplayPowerController$States;->this$0:Lcom/zui/server/display/ZuiDisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController$States;->newBrightnessWhenUserSetChanged:Z

    .line 58
    iput-boolean v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnToManual:Z

    .line 59
    iput-boolean v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnToAuto:Z

    .line 60
    iput-boolean v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnToDim:Z

    .line 61
    iput-boolean v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnFromDim:Z

    .line 62
    iput-boolean v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController$States;->mUpdateDataBase:Z

    .line 63
    iput-boolean v0, p0, Lcom/zui/server/display/ZuiDisplayPowerController$States;->turnOnScreenFromOff:Z

    .line 64
    return-void
.end method
