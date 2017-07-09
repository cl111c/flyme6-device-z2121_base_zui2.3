.class public Lcom/zui/server/icon/AppIconThemeServices;
.super Lcom/android/server/SystemService;
.source "AppIconThemeServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/server/icon/AppIconThemeServices$BinderService;
    }
.end annotation


# static fields
.field private static final ICON_MAP_PATH_STRING:Ljava/lang/String; = "/system/etc/icons.xml"

.field private static final KEY_THEME_ID:Ljava/lang/String; = "XUI_LAUNCHER_THEME_ID"

.field private static final KEY_THEME_PATH:Ljava/lang/String; = "XUI_LAUNCHER_THEME_PATH"

.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "AppIconThemeServices"

.field private static final SPLIT:Ljava/lang/String; = ";"

.field private static final THEME_CONFIG_PATH:Ljava/lang/String; = "/system/etc/xui_theme_config.xml"

.field private static final THEME_LAUNCHER_DO_ACTION:Ljava/lang/String; = "com.xui.launcher.CHANGETHEME"

.field private static final sDefaultDensity:I

.field private static final sOptimalDensities:[I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Lcom/zui/server/icon/AppIconThemeServices;->sDefaultDensity:I

    .line 56
    sget v0, Lcom/zui/server/icon/AppIconThemeServices;->sDefaultDensity:I

    invoke-static {v0}, Lcom/zui/server/icon/ThemeDensityUtils;->getOptimalDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Lcom/zui/server/icon/AppIconThemeServices;->sOptimalDensities:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p1, p0, Lcom/zui/server/icon/AppIconThemeServices;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/zui/server/icon/AppIconThemeServices;->sOptimalDensities:[I

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/zui/server/icon/AppIconThemeServices$BinderService;

    iget-object v1, p0, Lcom/zui/server/icon/AppIconThemeServices;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zui/server/icon/AppIconThemeServices$BinderService;-><init>(Lcom/zui/server/icon/AppIconThemeServices;Landroid/content/Context;)V

    .line 66
    .local v0, "binderService":Lcom/zui/server/icon/AppIconThemeServices$BinderService;
    const-string v1, "AppIconThemeServices"

    invoke-virtual {p0, v1, v0}, Lcom/zui/server/icon/AppIconThemeServices;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 67
    return-void
.end method
