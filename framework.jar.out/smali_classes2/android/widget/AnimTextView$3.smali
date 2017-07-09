.class synthetic Landroid/widget/AnimTextView$3;
.super Ljava/lang/Object;
.source "AnimTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AnimTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$widget$AnimTextView$AnimationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 243
    invoke-static {}, Landroid/widget/AnimTextView$AnimationType;->values()[Landroid/widget/AnimTextView$AnimationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/widget/AnimTextView$3;->$SwitchMap$android$widget$AnimTextView$AnimationType:[I

    :try_start_0
    sget-object v0, Landroid/widget/AnimTextView$3;->$SwitchMap$android$widget$AnimTextView$AnimationType:[I

    sget-object v1, Landroid/widget/AnimTextView$AnimationType;->TWEAK:Landroid/widget/AnimTextView$AnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Landroid/widget/AnimTextView$3;->$SwitchMap$android$widget$AnimTextView$AnimationType:[I

    sget-object v1, Landroid/widget/AnimTextView$AnimationType;->ROTATE:Landroid/widget/AnimTextView$AnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
