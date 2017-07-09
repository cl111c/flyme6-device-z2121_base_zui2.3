.class Lzui/hardware/display/LcdEffectManager$3;
.super Ljava/lang/Object;
.source "LcdEffectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/hardware/display/LcdEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/hardware/display/LcdEffectManager;


# direct methods
.method constructor <init>(Lzui/hardware/display/LcdEffectManager;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lzui/hardware/display/LcdEffectManager$3;->this$0:Lzui/hardware/display/LcdEffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lzui/hardware/display/LcdEffectManager$3;->this$0:Lzui/hardware/display/LcdEffectManager;

    iget-object v1, p0, Lzui/hardware/display/LcdEffectManager$3;->this$0:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v1}, Lzui/hardware/display/LcdEffectManager;->getTemperatureMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lzui/hardware/display/LcdEffectManager;->setTemperatureMode(I)I

    .line 259
    return-void
.end method
