.class public final Lzui/provider/ZuiSettings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "ZuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/provider/ZuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final ZUK_SCREEN_ON_OFF:Ljava/lang/String; = "zuk_screen_on_off"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method
