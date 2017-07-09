.class public final Lzui/provider/ZuiSettings$System;
.super Landroid/provider/Settings$NameValueTable;
.source "ZuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/provider/ZuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final ACTUAL_BRIGHTNESS_FROM_SENSOR:Ljava/lang/String; = "actual_brightness_from_sensor"

.field public static final ACTUAL_BRIGHTNESS_WHEN_USER_SET:Ljava/lang/String; = "actual_brightness_when_user_set"

.field public static final NEW_BRIGHTNESS_WHEN_USER_SET:Ljava/lang/String; = "new_brightness_when_user_set"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method
