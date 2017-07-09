.class public final Landroid/content/res/ResourcesKey;
.super Ljava/lang/Object;
.source "ResourcesKey.java"


# instance fields
.field public final mDisplayId:I

.field private final mHash:I

.field private final mIsThemeable:Z

.field public final mOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mResDir:Ljava/lang/String;

.field private final mScale:F

.field private final mThemeConfig:Landroid/content/res/ThemeConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/res/Configuration;FZLandroid/content/res/ThemeConfig;)V
    .locals 4
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p4, "scale"    # F
    .param p5, "isThemeable"    # Z
    .param p6, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 43
    iput p2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 44
    if-eqz p3, :cond_1

    .end local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    :goto_0
    iput-object p3, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 46
    iput p4, p0, Landroid/content/res/ResourcesKey;->mScale:F

    .line 48
    iput-boolean p5, p0, Landroid/content/res/ResourcesKey;->mIsThemeable:Z

    .line 49
    iput-object p6, p0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    .line 52
    const/16 v0, 0x11

    .line 53
    .local v0, "hash":I
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    add-int/lit16 v0, v1, 0x20f

    .line 54
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    add-int v0, v1, v3

    .line 55
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 56
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/ResourcesKey;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v1, v3

    .line 58
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Landroid/content/res/ResourcesKey;->mIsThemeable:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    add-int v0, v3, v1

    .line 59
    mul-int/lit8 v1, v0, 0x1f

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Landroid/content/res/ThemeConfig;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 61
    iput v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    .line 62
    return-void

    .line 44
    .end local v0    # "hash":I
    .restart local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_1
    sget-object p3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_0

    .line 53
    .end local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    .restart local v0    # "hash":I
    :cond_2
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 58
    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 75
    instance-of v2, p1, Landroid/content/res/ResourcesKey;

    if-nez v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 78
    check-cast v0, Landroid/content/res/ResourcesKey;

    .line 80
    .local v0, "peer":Landroid/content/res/ResourcesKey;
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget v2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget v3, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-ne v2, v3, :cond_0

    .line 86
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget v2, p0, Landroid/content/res/ResourcesKey;->mScale:F

    iget v3, v0, Landroid/content/res/ResourcesKey;->mScale:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 93
    iget-boolean v2, p0, Landroid/content/res/ResourcesKey;->mIsThemeable:Z

    iget-boolean v3, v0, Landroid/content/res/ResourcesKey;->mIsThemeable:Z

    if-ne v2, v3, :cond_0

    .line 96
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    if-eq v2, v3, :cond_2

    .line 97
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    invoke-virtual {v2, v3}, Landroid/content/res/ThemeConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasOverrideConfiguration()Z
    .locals 2

    .prologue
    .line 65
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
