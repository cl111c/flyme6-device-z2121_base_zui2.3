.class Lzui/hardware/display/LcdEffectManager$2;
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
    .line 208
    iput-object p1, p0, Lzui/hardware/display/LcdEffectManager$2;->this$0:Lzui/hardware/display/LcdEffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lzui/hardware/display/LcdEffectManager$2;->this$0:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v1}, Lzui/hardware/display/LcdEffectManager;->getSaturationMode()I

    move-result v0

    .line 213
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lzui/hardware/display/LcdEffectManager$2;->this$0:Lzui/hardware/display/LcdEffectManager;

    invoke-virtual {v1, v0}, Lzui/hardware/display/LcdEffectManager;->setSaturationMode(I)I

    .line 216
    :cond_0
    return-void
.end method
