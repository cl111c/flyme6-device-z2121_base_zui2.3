.class Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPickerX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPickerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPickerX;


# direct methods
.method constructor <init>(Landroid/widget/NumberPickerX;)V
    .locals 0

    .prologue
    .line 2259
    iput-object p1, p0, Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;->this$0:Landroid/widget/NumberPickerX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2263
    iget-object v0, p0, Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;->this$0:Landroid/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX;->performLongClick()Z

    .line 2264
    return-void
.end method
