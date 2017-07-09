.class Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Landroid/widget/NumberPickerX;


# direct methods
.method constructor <init>(Landroid/widget/NumberPickerX;)V
    .locals 0

    .prologue
    .line 2224
    iput-object p1, p0, Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPickerX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .prologue
    .line 2224
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    .line 2228
    iput-boolean p1, p0, Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2229
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2233
    iget-object v0, p0, Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPickerX;

    iget-boolean v1, p0, Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    # invokes: Landroid/widget/NumberPickerX;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Landroid/widget/NumberPickerX;->access$200(Landroid/widget/NumberPickerX;Z)V

    .line 2234
    iget-object v0, p0, Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPickerX;

    # getter for: Landroid/widget/NumberPickerX;->mLongPressUpdateInterval:J
    invoke-static {v1}, Landroid/widget/NumberPickerX;->access$2500(Landroid/widget/NumberPickerX;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPickerX;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2235
    return-void
.end method
