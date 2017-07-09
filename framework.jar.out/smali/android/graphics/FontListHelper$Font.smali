.class public Landroid/graphics/FontListHelper$Font;
.super Ljava/lang/Object;
.source "FontListHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/FontListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Font"
.end annotation


# instance fields
.field public fontName:Ljava/lang/String;

.field public style:Ljava/lang/String;

.field public weight:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "weight"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "fontName"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/graphics/FontListHelper$Font;->weight:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Landroid/graphics/FontListHelper$Font;->style:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Landroid/graphics/FontListHelper$Font;->fontName:Ljava/lang/String;

    .line 91
    return-void
.end method
