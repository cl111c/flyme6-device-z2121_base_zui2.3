.class public Landroid/graphics/FontListHelper$FontItem;
.super Ljava/lang/Object;
.source "FontListHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/FontListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontItem"
.end annotation


# instance fields
.field public alias:Landroid/graphics/FontListHelper$Alias;

.field public fonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListHelper$Font;",
            ">;"
        }
    .end annotation
.end field

.field public isFamily:Z

.field public lang:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public variant:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/FontListHelper$Alias;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alias"    # Landroid/graphics/FontListHelper$Alias;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/graphics/FontListHelper$FontItem;->name:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Landroid/graphics/FontListHelper$FontItem;->alias:Landroid/graphics/FontListHelper$Alias;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/FontListHelper$FontItem;->isFamily:Z

    .line 77
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListHelper$Font;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p4, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListHelper$Font;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/graphics/FontListHelper$FontItem;->name:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Landroid/graphics/FontListHelper$FontItem;->lang:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Landroid/graphics/FontListHelper$FontItem;->variant:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Landroid/graphics/FontListHelper$FontItem;->fonts:Ljava/util/List;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/FontListHelper$FontItem;->isFamily:Z

    .line 72
    return-void
.end method
