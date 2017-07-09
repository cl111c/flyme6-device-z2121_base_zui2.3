.class public final enum Landroid/widget/AnimTextView$AnimationType;
.super Ljava/lang/Enum;
.source "AnimTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AnimTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/AnimTextView$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/AnimTextView$AnimationType;

.field public static final enum ROTATE:Landroid/widget/AnimTextView$AnimationType;

.field public static final enum TWEAK:Landroid/widget/AnimTextView$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 223
    new-instance v0, Landroid/widget/AnimTextView$AnimationType;

    const-string v1, "TWEAK"

    invoke-direct {v0, v1, v2}, Landroid/widget/AnimTextView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/AnimTextView$AnimationType;->TWEAK:Landroid/widget/AnimTextView$AnimationType;

    new-instance v0, Landroid/widget/AnimTextView$AnimationType;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1, v3}, Landroid/widget/AnimTextView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/AnimTextView$AnimationType;->ROTATE:Landroid/widget/AnimTextView$AnimationType;

    .line 222
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/AnimTextView$AnimationType;

    sget-object v1, Landroid/widget/AnimTextView$AnimationType;->TWEAK:Landroid/widget/AnimTextView$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/AnimTextView$AnimationType;->ROTATE:Landroid/widget/AnimTextView$AnimationType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/AnimTextView$AnimationType;->$VALUES:[Landroid/widget/AnimTextView$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/AnimTextView$AnimationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 222
    const-class v0, Landroid/widget/AnimTextView$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/AnimTextView$AnimationType;

    return-object v0
.end method

.method public static values()[Landroid/widget/AnimTextView$AnimationType;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Landroid/widget/AnimTextView$AnimationType;->$VALUES:[Landroid/widget/AnimTextView$AnimationType;

    invoke-virtual {v0}, [Landroid/widget/AnimTextView$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/AnimTextView$AnimationType;

    return-object v0
.end method
