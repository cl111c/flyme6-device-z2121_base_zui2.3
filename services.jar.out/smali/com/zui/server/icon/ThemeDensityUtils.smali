.class public Lcom/zui/server/icon/ThemeDensityUtils;
.super Ljava/lang/Object;
.source "ThemeDensityUtils.java"


# static fields
.field private static final DENSITIES:[I

.field public static final DENSITY_NONE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x280
        0x1e0
        0x140
        0xf0
        0xa0
        0x78
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensitySuffix(I)Ljava/lang/String;
    .locals 1
    .param p0, "density"    # I

    .prologue
    .line 74
    sparse-switch p0, :sswitch_data_0

    .line 92
    const-string v0, ""

    :goto_0
    return-object v0

    .line 76
    :sswitch_0
    const-string v0, "-xxxhdpi"

    goto :goto_0

    .line 78
    :sswitch_1
    const-string v0, "-xxhdpi"

    goto :goto_0

    .line 80
    :sswitch_2
    const-string v0, "-xhdpi"

    goto :goto_0

    .line 82
    :sswitch_3
    const-string v0, "-hdpi"

    goto :goto_0

    .line 84
    :sswitch_4
    const-string v0, "-mdpi"

    goto :goto_0

    .line 86
    :sswitch_5
    const-string v0, "-ldpi"

    goto :goto_0

    .line 88
    :sswitch_6
    const-string v0, "-nodpi"

    goto :goto_0

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x78 -> :sswitch_5
        0xa0 -> :sswitch_4
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_2
        0x1e0 -> :sswitch_1
        0x280 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getOptimalDensityOrder(I)[I
    .locals 9
    .param p0, "density"    # I

    .prologue
    const/4 v7, 0x0

    .line 15
    const/4 v4, -0x1

    .line 17
    .local v4, "matchIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v6, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 18
    sget-object v6, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    aget v6, v6, v3

    if-ne p0, v6, :cond_3

    .line 19
    move v4, v3

    .line 24
    :cond_0
    const/4 v5, 0x0

    .line 25
    .local v5, "n":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_7

    .line 26
    sget-object v6, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [I

    .line 27
    .local v1, "densitys":[I
    aput p0, v1, v7

    .line 28
    sget-object v6, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    aget v6, v6, v7

    if-le p0, v6, :cond_4

    .line 29
    const/4 v4, 0x0

    .line 42
    :cond_1
    :goto_1
    const/4 v6, 0x1

    sget-object v7, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    aget v7, v7, v4

    aput v7, v1, v6

    .line 43
    const/4 v5, 0x2

    .line 49
    :goto_2
    const/4 v3, 0x1

    :goto_3
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 50
    sub-int v2, v4, v3

    .line 51
    .local v2, "front":I
    add-int v0, v4, v3

    .line 52
    .local v0, "behind":I
    if-ltz v2, :cond_8

    .line 53
    sget-object v6, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    aget v6, v6, v2

    aput v6, v1, v5

    .line 54
    add-int/lit8 v5, v5, 0x1

    .line 55
    array-length v6, v1

    if-ne v5, v6, :cond_8

    .line 67
    .end local v0    # "behind":I
    .end local v2    # "front":I
    :cond_2
    return-object v1

    .line 17
    .end local v1    # "densitys":[I
    .end local v5    # "n":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    .restart local v1    # "densitys":[I
    .restart local v5    # "n":I
    :cond_4
    const/4 v3, 0x0

    :goto_4
    sget-object v6, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    .line 32
    sget-object v6, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    aget v6, v6, v3

    if-le v6, p0, :cond_6

    sget-object v6, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    add-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    if-ge v6, p0, :cond_6

    .line 33
    sget-object v6, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    aget v6, v6, v3

    sub-int/2addr v6, p0

    sget-object v7, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    sub-int v7, p0, v7

    if-le v6, v7, :cond_5

    .line 34
    add-int/lit8 v4, v3, 0x1

    goto :goto_1

    .line 36
    :cond_5
    move v4, v3

    .line 38
    goto :goto_1

    .line 31
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 45
    .end local v1    # "densitys":[I
    :cond_7
    sget-object v6, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    array-length v6, v6

    new-array v1, v6, [I

    .line 46
    .restart local v1    # "densitys":[I
    aput p0, v1, v7

    .line 47
    const/4 v5, 0x1

    goto :goto_2

    .line 59
    .restart local v0    # "behind":I
    .restart local v2    # "front":I
    :cond_8
    sget-object v6, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    array-length v6, v6

    if-ge v0, v6, :cond_9

    .line 60
    sget-object v6, Lcom/zui/server/icon/ThemeDensityUtils;->DENSITIES:[I

    aget v6, v6, v0

    aput v6, v1, v5

    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 63
    :cond_9
    if-gez v2, :cond_a

    array-length v6, v1

    if-ge v0, v6, :cond_2

    .line 49
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
