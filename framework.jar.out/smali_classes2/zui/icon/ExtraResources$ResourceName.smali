.class final Lzui/icon/ExtraResources$ResourceName;
.super Ljava/lang/Object;
.source "ExtraResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/icon/ExtraResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceName"
.end annotation


# instance fields
.field final iconId:I

.field final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "_iconId"    # I

    .prologue
    .line 519
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lzui/icon/ExtraResources$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 520
    return-void
.end method

.method constructor <init>(Landroid/content/pm/ComponentInfo;I)V
    .locals 1
    .param p1, "cInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "_iconId"    # I

    .prologue
    .line 523
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lzui/icon/ExtraResources$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 524
    return-void
.end method

.method constructor <init>(Landroid/content/pm/ResolveInfo;I)V
    .locals 1
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "_iconId"    # I

    .prologue
    .line 527
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lzui/icon/ExtraResources$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 528
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_iconId"    # I

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p1, p0, Lzui/icon/ExtraResources$ResourceName;->packageName:Ljava/lang/String;

    .line 515
    iput p2, p0, Lzui/icon/ExtraResources$ResourceName;->iconId:I

    .line 516
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 532
    if-ne p0, p1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v1

    .line 533
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 535
    check-cast v0, Lzui/icon/ExtraResources$ResourceName;

    .line 537
    .local v0, "that":Lzui/icon/ExtraResources$ResourceName;
    iget v3, p0, Lzui/icon/ExtraResources$ResourceName;->iconId:I

    iget v4, v0, Lzui/icon/ExtraResources$ResourceName;->iconId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 538
    :cond_4
    iget-object v3, p0, Lzui/icon/ExtraResources$ResourceName;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lzui/icon/ExtraResources$ResourceName;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lzui/icon/ExtraResources$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lzui/icon/ExtraResources$ResourceName;->packageName:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 546
    iget-object v1, p0, Lzui/icon/ExtraResources$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 547
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lzui/icon/ExtraResources$ResourceName;->iconId:I

    add-int v0, v1, v2

    .line 548
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ResourceName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzui/icon/ExtraResources$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lzui/icon/ExtraResources$ResourceName;->iconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
