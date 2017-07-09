.class public Landroid/graphics/FontListHelper$Alias;
.super Ljava/lang/Object;
.source "FontListHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/FontListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alias"
.end annotation


# instance fields
.field public toName:Ljava/lang/String;

.field public weight:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "toName"    # Ljava/lang/String;
    .param p2, "weight"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroid/graphics/FontListHelper$Alias;->toName:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Landroid/graphics/FontListHelper$Alias;->weight:Ljava/lang/String;

    .line 101
    return-void
.end method
