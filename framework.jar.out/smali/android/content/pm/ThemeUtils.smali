.class public Landroid/content/pm/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ThemeUtils$ThemedUiContext;
    }
.end annotation


# static fields
.field public static final ACTION_THEME_CHANGED:Ljava/lang/String; = "com.zui.intent.action.THEME_CHANGED"

.field private static final ASSET_URI_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field public static final CATEGORY_THEME_COMPONENT_PREFIX:Ljava/lang/String; = "com.zui.intent.category."

.field public static final COMMON_RES_PATH:Ljava/lang/String; = "assets/overlays/common/"

.field public static final COMMON_RES_SUFFIX:Ljava/lang/String; = ".common"

.field public static final COMMON_RES_TARGET:Ljava/lang/String; = "common"

.field private static final COMPLEX_WALLPAPER_FILE_NAME:Ljava/lang/String; = "poly_blur"

.field private static final DEFAULT_PKG:Ljava/lang/String; = "default"

.field public static final EXTRA_COMPONENTS:Ljava/lang/String; = "components"

.field public static final EXTRA_REQUEST_TYPE:Ljava/lang/String; = "request_type"

.field public static final EXTRA_UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static final FONT_XML:Ljava/lang/String; = "fonts.xml"

.field public static final ICONS_PATH:Ljava/lang/String; = "assets/icons/"

.field public static final ICON_HASH_FILENAME:Ljava/lang/String; = "hash"

.field private static final IDMAP_HASH_VERSION:B = 0x3t

.field public static final IDMAP_SUFFIX:Ljava/lang/String; = "@idmap"

.field public static final LOCKSCREEN_WALLPAPER_PATH:Ljava/lang/String; = "lockscreen"

.field private static final MEDIA_CONTENT_URI:Ljava/lang/String; = "content://media/internal/audio/media"

.field private static final NORMAL_WALLPAPER_FILE_NAME:Ljava/lang/String; = "wallpaper"

.field public static final OVERLAY_PATH:Ljava/lang/String; = "assets/overlays/"

.field public static final PRESET_FONTS_LOCATION:Ljava/lang/String; = "/data/system/theme/presetfonts"

.field public static final PRESET_FONT_XML:Ljava/lang/String; = "fontslist.xml"

.field public static final RESOURCE_CACHE_DIR:Ljava/lang/String; = "/data/resource-cache/"

.field private static final SETTINGS_DB:Ljava/lang/String; = "/data/data/com.android.providers.settings/databases/settings.db"

.field private static final SETTINGS_SECURE_TABLE:Ljava/lang/String; = "secure"

.field public static final SYSTEM_ALARMS_PATH:Ljava/lang/String;

.field private static final SYSTEM_DEFAULT_FONT:Ljava/lang/String; = "ZUKChinese.ttf"

.field public static final SYSTEM_FONT_CONFIG_LOCATION:Ljava/lang/String; = "/system/etc"

.field private static final SYSTEM_FONT_FOLDER:Ljava/lang/String; = "/system/fonts"

.field public static final SYSTEM_MEDIA_PATH:Ljava/lang/String; = "/system/media/audio"

.field public static final SYSTEM_NOTIFICATIONS_PATH:Ljava/lang/String;

.field public static final SYSTEM_PRESET_FONT_LOCATION:Ljava/lang/String; = "/system/vendor/etc"

.field public static final SYSTEM_PROPERTY_FONT_PATH:Ljava/lang/String; = "persist.sys.fontpath"

.field public static final SYSTEM_PROPERTY_LAST_VERSION:Ljava/lang/String; = "persist.sys.currentversion"

.field public static final SYSTEM_PROPERTY_THEME_NAME:Ljava/lang/String; = "persist.sys.theme"

.field public static final SYSTEM_RINGTONES_PATH:Ljava/lang/String;

.field public static final SYSTEM_TARGET_API:I = 0x0

.field public static final SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

.field public static final SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

.field public static final SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

.field public static final SYSTEM_THEME_NAME_DARK:Ljava/lang/String; = "dark"

.field public static final SYSTEM_THEME_NAME_DEFAULT:Ljava/lang/String; = "default"

.field public static final SYSTEM_THEME_NOTIFICATION_PATH:Ljava/lang/String;

.field public static final SYSTEM_THEME_PATH:Ljava/lang/String; = "/data/system/theme"

.field public static final SYSTEM_THEME_RINGTONE_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ThemeUtils"

.field public static final THEME_BOOTANIMATION_PATH:Ljava/lang/String; = "assets/bootanimation/bootanimation.zip"

.field public static final THEME_PACKAGE_FONT_PREFIX:Ljava/lang/String; = "com.zui.fontstyle."

.field public static final THEME_PACKAGE_NAME_DARK:Ljava/lang/String; = "com.zui.theme.XuiSkin.dark"

.field public static final WALLPAPER_PATH:Ljava/lang/String; = "wallpapers"

.field private static final WALLPAPER_STORAGE_LOCATION:Ljava/lang/String; = "sdcard/.keyguard/customized"

.field public static final sSupportedActions:[Ljava/lang/String;

.field public static final sSupportedCategories:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fonts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ringtones"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_RINGTONE_PATH:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "notifications"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_NOTIFICATION_PATH:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alarms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alarms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_ALARMS_PATH:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ringtones"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_RINGTONES_PATH:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "notifications"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_NOTIFICATIONS_PATH:Ljava/lang/String;

    .line 156
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "org.adw.launcher.THEMES"

    aput-object v1, v0, v2

    const-string v1, "com.gau.go.launcherex.theme"

    aput-object v1, v0, v3

    const-string v1, "com.novalauncher.THEME"

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/pm/ThemeUtils;->sSupportedActions:[Ljava/lang/String;

    .line 163
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.fede.launcher.THEME_ICONPACK"

    aput-object v1, v0, v2

    const-string v1, "com.anddoes.launcher.THEME"

    aput-object v1, v0, v3

    const-string v1, "com.teslacoilsw.launcher.THEME"

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/pm/ThemeUtils;->sSupportedCategories:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    return-void
.end method

.method private static addSystemDefaultFont(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListHelper$PresetFont;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListHelper$PresetFont;>;"
    new-instance v0, Landroid/graphics/FontListHelper$PresetFont;

    invoke-direct {v0}, Landroid/graphics/FontListHelper$PresetFont;-><init>()V

    .line 785
    .local v0, "font":Landroid/graphics/FontListHelper$PresetFont;
    const v1, 0x10405bd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/FontListHelper$PresetFont;->fontDisplayName:Ljava/lang/String;

    .line 787
    const-string v1, "ZUKChinese.ttf"

    iput-object v1, v0, Landroid/graphics/FontListHelper$PresetFont;->fontName:Ljava/lang/String;

    .line 788
    const-string v1, "/system/fonts/ZUKChinese.ttf"

    iput-object v1, v0, Landroid/graphics/FontListHelper$PresetFont;->fullPath:Ljava/lang/String;

    .line 789
    iget-object v1, v0, Landroid/graphics/FontListHelper$PresetFont;->fullPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/pm/ThemeUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/FontListHelper$PresetFont;->typeface:Landroid/graphics/Typeface;

    .line 790
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    return-void
.end method

.method public static clearAudibles(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audiblePath"    # Ljava/lang/String;

    .prologue
    .line 549
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    .local v1, "audibleDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 551
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "files":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 553
    .local v6, "resolver":Landroid/content/ContentResolver;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v7, v0, v4

    .line 554
    .local v7, "s":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 556
    .local v8, "uri":Landroid/net/Uri;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_data=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 558
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 553
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 561
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public static clearCompileResourcesAndIdmap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "targetPkgName"    # Ljava/lang/String;
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 875
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 880
    .local v4, "overlayTarget":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 881
    .local v5, "targetDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 882
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, "files":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_0

    .line 884
    new-instance v0, Ljava/io/File;

    aget-object v6, v2, v3

    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    .local v0, "childFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 886
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 890
    .end local v0    # "childFile":Ljava/io/File;
    .end local v2    # "files":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "overlayTarget":Ljava/lang/String;
    .end local v5    # "targetDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 891
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "ThemeUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "try to check compile resources happens "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static clearIconCache()V
    .locals 2

    .prologue
    .line 340
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 341
    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 355
    if-nez p0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 358
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 364
    if-nez p0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 367
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static completeComponentMap(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 750
    :cond_0
    return-void

    .line 744
    :cond_1
    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getDefaultComponents(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 745
    .local v1, "defaultComponents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 746
    .local v0, "component":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 747
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static copyAndScaleBootAnimation(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 383
    .local v15, "os":Ljava/io/OutputStream;
    new-instance v24, Ljava/util/zip/ZipOutputStream;

    new-instance v25, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct/range {v24 .. v25}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 384
    .local v24, "zos":Ljava/util/zip/ZipOutputStream;
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v25, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 387
    .local v4, "bootAni":Ljava/util/zip/ZipInputStream;
    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 388
    const/16 v25, 0x1000

    move/from16 v0, v25

    new-array v6, v0, [B

    .line 390
    .local v6, "bytes":[B
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v23

    .local v23, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v23, :cond_6

    .line 391
    new-instance v9, Ljava/util/zip/ZipEntry;

    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 392
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 393
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 394
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 395
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 396
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "desc.txt"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 398
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 399
    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v12

    .local v12, "len":I
    if-lez v12, :cond_5

    .line 400
    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1, v12}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 404
    .end local v12    # "len":I
    :cond_0
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 405
    .local v16, "reader":Ljava/io/BufferedReader;
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 409
    .local v11, "info":[Ljava/lang/String;
    const-string/jumbo v25, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    .line 410
    .local v22, "wm":Landroid/view/WindowManager;
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 411
    .local v8, "dm":Landroid/util/DisplayMetrics;
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 414
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_2

    .line 415
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    .line 416
    .local v19, "scaledWidth":I
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 422
    .local v18, "scaledHeight":I
    :goto_2
    const/16 v25, 0x0

    aget-object v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 423
    .local v21, "width":I
    const/16 v25, 0x1

    aget-object v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 425
    .local v10, "height":I
    move/from16 v0, v21

    if-ne v0, v10, :cond_3

    .line 426
    move/from16 v18, v19

    .line 435
    :cond_1
    :goto_3
    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    .line 436
    .local v7, "crc32":Ljava/util/zip/CRC32;
    const/16 v20, 0x0

    .line 437
    .local v20, "size":I
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 438
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    const-string v25, "%d %d %s\n"

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const/16 v28, 0x2

    aget-object v28, v11, v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 439
    .local v13, "line":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 440
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int v20, v20, v25

    .line 441
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 442
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 443
    const-string v25, "%s\n"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v13, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 444
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 445
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int v20, v20, v25

    .line 446
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/zip/CRC32;->update([B)V

    goto :goto_4

    .line 418
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "crc32":Ljava/util/zip/CRC32;
    .end local v10    # "height":I
    .end local v13    # "line":Ljava/lang/String;
    .end local v18    # "scaledHeight":I
    .end local v19    # "scaledWidth":I
    .end local v20    # "size":I
    .end local v21    # "width":I
    :cond_2
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    .line 419
    .restart local v19    # "scaledWidth":I
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    .restart local v18    # "scaledHeight":I
    goto/16 :goto_2

    .line 429
    .restart local v10    # "height":I
    .restart local v21    # "width":I
    :cond_3
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v17, v25, v26

    .line 430
    .local v17, "scale":F
    int-to-float v0, v10

    move/from16 v25, v0

    mul-float v25, v25, v17

    move/from16 v0, v25

    float-to-int v14, v0

    .line 431
    .local v14, "newHeight":I
    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    .line 432
    move/from16 v18, v14

    goto/16 :goto_3

    .line 448
    .end local v14    # "newHeight":I
    .end local v17    # "scale":F
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "crc32":Ljava/util/zip/CRC32;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v20    # "size":I
    :cond_4
    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 449
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 450
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 451
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 452
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 454
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "crc32":Ljava/util/zip/CRC32;
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "height":I
    .end local v11    # "info":[Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "scaledHeight":I
    .end local v19    # "scaledWidth":I
    .end local v20    # "size":I
    .end local v21    # "width":I
    .end local v22    # "wm":Landroid/view/WindowManager;
    :cond_5
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto/16 :goto_0

    .line 456
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    :cond_6
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 457
    return-void
.end method

.method public static createAlarmDirIfNotExists()V
    .locals 1

    .prologue
    .line 313
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public static createCacheDirIfNotExists()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 237
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/resource-cache/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 243
    return-void
.end method

.method private static createDirIfNotExists(Ljava/lang/String;)V
    .locals 3
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 272
    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->dirExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 279
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static createFontDirIfNotExists()V
    .locals 1

    .prologue
    .line 292
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public static createIconCacheDirIfNotExists()V
    .locals 1

    .prologue
    .line 320
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public static createIconDirIfNotExists(Ljava/lang/String;)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 257
    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getOverlayResourceCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getIconPackDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_0
    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 264
    return-void
.end method

.method public static createNotificationDirIfNotExists()V
    .locals 1

    .prologue
    .line 306
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_NOTIFICATION_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public static createResourcesDirIfNotExists(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "targetPkgName"    # Ljava/lang/String;
    .param p1, "overlayPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 247
    invoke-static {p1}, Landroid/content/pm/ThemeUtils;->getOverlayResourceCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_0
    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 254
    return-void
.end method

.method public static createRingtoneDirIfNotExists()V
    .locals 1

    .prologue
    .line 299
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_RINGTONE_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public static createThemeDirIfNotExists()V
    .locals 1

    .prologue
    .line 285
    const-string v0, "/data/system/theme"

    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public static createUiContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 565
    :try_start_0
    const-string v1, "com.android.systemui"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 567
    .local v0, "uiContext":Landroid/content/Context;
    new-instance v1, Landroid/content/pm/ThemeUtils$ThemedUiContext;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/pm/ThemeUtils$ThemedUiContext;-><init>(Landroid/content/Context;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v0    # "uiContext":Landroid/content/Context;
    :goto_0
    return-object v1

    .line 568
    :catch_0
    move-exception v1

    .line 571
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static dirExists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 267
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAllComponents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 662
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "mods_fonts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    const-string/jumbo v1, "mods_homescreen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    const-string/jumbo v1, "mods_alarms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    const-string/jumbo v1, "mods_bootanim"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    const-string/jumbo v1, "mods_icons"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    const-string/jumbo v1, "mods_lockscreen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    const-string/jumbo v1, "mods_notifications"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    const-string/jumbo v1, "mods_overlays"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    const-string/jumbo v1, "mods_ringtones"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    const-string/jumbo v1, "mods_status_bar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    const-string/jumbo v1, "mods_navigation_bar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    return-object v0
.end method

.method public static getAllFontsList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListHelper$PresetFont;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListHelper$PresetFont;>;"
    invoke-static {p0, v6}, Landroid/content/pm/ThemeUtils;->addSystemDefaultFont(Landroid/content/Context;Ljava/util/List;)V

    .line 800
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system/theme/presetfonts"

    const-string v8, "fontslist.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .local v0, "configFile":Ljava/io/File;
    :try_start_0
    invoke-static {v0}, Landroid/graphics/FontListHelper;->parsePresetFonts(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    .line 804
    .local v4, "fontList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListHelper$PresetFont;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/FontListHelper$PresetFont;

    .line 805
    .local v3, "font":Landroid/graphics/FontListHelper$PresetFont;
    new-instance v2, Landroid/graphics/FontListHelper$PresetFont;

    invoke-direct {v2}, Landroid/graphics/FontListHelper$PresetFont;-><init>()V

    .line 806
    .local v2, "f":Landroid/graphics/FontListHelper$PresetFont;
    iget-object v7, v3, Landroid/graphics/FontListHelper$PresetFont;->fontDisplayName:Ljava/lang/String;

    iput-object v7, v2, Landroid/graphics/FontListHelper$PresetFont;->fontDisplayName:Ljava/lang/String;

    .line 807
    iget-object v7, v3, Landroid/graphics/FontListHelper$PresetFont;->fontName:Ljava/lang/String;

    iput-object v7, v2, Landroid/graphics/FontListHelper$PresetFont;->fontName:Ljava/lang/String;

    .line 808
    iget-object v7, v3, Landroid/graphics/FontListHelper$PresetFont;->fullPath:Ljava/lang/String;

    iput-object v7, v2, Landroid/graphics/FontListHelper$PresetFont;->fullPath:Ljava/lang/String;

    .line 809
    iget-object v7, v2, Landroid/graphics/FontListHelper$PresetFont;->fullPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/content/pm/ThemeUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, v2, Landroid/graphics/FontListHelper$PresetFont;->typeface:Landroid/graphics/Typeface;

    .line 810
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 812
    .end local v2    # "f":Landroid/graphics/FontListHelper$PresetFont;
    .end local v3    # "font":Landroid/graphics/FontListHelper$PresetFont;
    .end local v4    # "fontList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListHelper$PresetFont;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 813
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ThemeUtils"

    const-string/jumbo v8, "load preset fonts fail!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 817
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v6
.end method

.method public static getCommonPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "themePackageName"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "common"

    goto :goto_0
.end method

.method public static getCurrentUsedFont()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 825
    const/4 v1, 0x0

    .line 826
    .local v1, "defaultFont":Ljava/lang/CharSequence;
    new-instance v0, Ljava/io/File;

    sget-object v7, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    const-string v8, "fonts.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    .local v0, "configFile":Ljava/io/File;
    :try_start_0
    invoke-static {v0}, Landroid/graphics/FontListHelper;->parse(Ljava/io/File;)Landroid/graphics/FontListHelper$FontList;

    move-result-object v6

    .line 830
    .local v6, "list":Landroid/graphics/FontListHelper$FontList;
    iget-object v7, v6, Landroid/graphics/FontListHelper$FontList;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/FontListHelper$FontItem;

    .line 831
    .local v5, "item":Landroid/graphics/FontListHelper$FontItem;
    iget-boolean v7, v5, Landroid/graphics/FontListHelper$FontItem;->isFamily:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "zh-Hans"

    iget-object v8, v5, Landroid/graphics/FontListHelper$FontItem;->lang:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v5, Landroid/graphics/FontListHelper$FontItem;->fonts:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 833
    iget-object v7, v5, Landroid/graphics/FontListHelper$FontItem;->fonts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/FontListHelper$Font;

    .line 834
    .local v3, "font":Landroid/graphics/FontListHelper$Font;
    iget-object v1, v3, Landroid/graphics/FontListHelper$Font;->fontName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    goto :goto_0

    .line 839
    .end local v3    # "font":Landroid/graphics/FontListHelper$Font;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Landroid/graphics/FontListHelper$FontItem;
    .end local v6    # "list":Landroid/graphics/FontListHelper$FontList;
    :catch_0
    move-exception v2

    .line 840
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "ThemeUtils"

    const-string/jumbo v8, "read font configure file fail!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v1
.end method

.method public static getDefaultAudiblePath(I)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 528
    packed-switch p0, :pswitch_data_0

    .line 542
    :pswitch_0
    const/4 v1, 0x0

    .line 545
    .local v1, "path":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 530
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v2, "ro.config.alarm_alert"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/content/pm/ThemeUtils;->SYSTEM_ALARMS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    .restart local v1    # "path":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 534
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v2, "ro.config.notification_sound"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/content/pm/ThemeUtils;->SYSTEM_NOTIFICATIONS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 538
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v2, "ro.config.ringtone"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/content/pm/ThemeUtils;->SYSTEM_RINGTONES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .restart local v1    # "path":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDefaultComponents(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getDefaultThemePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, "defaultThemePkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 714
    .local v2, "defaultComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "system"

    invoke-static {p0, v6}, Landroid/content/pm/ThemeUtils;->getSupportedComponents(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 715
    .local v5, "systemComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "system"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 716
    invoke-static {p0, v3}, Landroid/content/pm/ThemeUtils;->getSupportedComponents(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 719
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 720
    .local v1, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 721
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 722
    .local v0, "component":Ljava/lang/String;
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 725
    .end local v0    # "component":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 726
    .restart local v0    # "component":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 727
    const-string/jumbo v6, "system"

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 731
    .end local v0    # "component":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method public static getDefaultThemePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 623
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_theme_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "defaultThemePkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 626
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 628
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 637
    .end local v0    # "defaultThemePkg":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 631
    .restart local v0    # "defaultThemePkg":Ljava/lang/String;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 633
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ThemeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default theme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const-string/jumbo v0, "system"

    goto :goto_0
.end method

.method private static getFirstNonEmptyAsset([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "assets"    # [Ljava/lang/String;

    .prologue
    .line 611
    if-nez p0, :cond_1

    const/4 v2, 0x0

    .line 619
    :cond_0
    :goto_0
    return-object v2

    .line 612
    :cond_1
    const/4 v2, 0x0

    .line 613
    .local v2, "filename":Ljava/lang/String;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 614
    .local v1, "asset":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 615
    move-object v2, v1

    .line 616
    goto :goto_0

    .line 613
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 776
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 777
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 780
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIconHashFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getIconPackDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIconPackApkPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getIconPackDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/resources.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIconPackDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getOverlayResourceCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIconPackResPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getIconPackDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/resources.arsc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIdmapPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "targetPkgName"    # Ljava/lang/String;
    .param p1, "overlayPkgName"    # Ljava/lang/String;

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "idmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 345
    :cond_0
    const/4 v2, 0x0

    .line 351
    :goto_0
    return-object v2

    .line 346
    :cond_1
    const/4 v2, 0x0

    .line 347
    .local v2, "is":Ljava/io/InputStream;
    const-string v0, "file:///android_asset/"

    .line 348
    .local v0, "ASSET_BASE":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 350
    .local v1, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 351
    goto :goto_0
.end method

.method public static getLockscreenWallpaperPath(Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 4
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    const-string/jumbo v2, "lockscreen"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "assets":[Ljava/lang/String;
    invoke-static {v1}, Landroid/content/pm/ThemeUtils;->getFirstNonEmptyAsset([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "asset":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 585
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lockscreen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getOverlayPathToTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "targetPkgName"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "assets/overlays/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getOverlayResourceCacheDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/resource-cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageHashCode(Landroid/content/pm/PackageParser$Package;)I
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 770
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;

    invoke-virtual {v1}, Landroid/content/pm/ManifestDigest;->hashCode()I

    move-result v0

    .line 771
    .local v0, "hash":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    add-int/lit8 v0, v1, 0x3

    .line 772
    return v0

    .line 770
    .end local v0    # "hash":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSupportedComponents(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 682
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v11, "supportedComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "pkg_name= ?"

    .line 685
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 686
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ThemesContract$ThemesColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 689
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 690
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    invoke-static {}, Landroid/content/pm/ThemeUtils;->getAllComponents()Ljava/util/List;

    move-result-object v6

    .line 692
    .local v6, "allComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 693
    .local v8, "component":Ljava/lang/String;
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 694
    .local v10, "index":I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 695
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 699
    .end local v6    # "allComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "component":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "index":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_2
    return-object v11
.end method

.method public static getTargetCacheDir(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "targetPkgName"    # Ljava/lang/String;
    .param p1, "themePkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 186
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTargetCacheDir(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .locals 1
    .param p0, "targetPkgName"    # Ljava/lang/String;
    .param p1, "themePkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 190
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "targetPkgName"    # Ljava/lang/String;
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/content/pm/ThemeUtils;->getOverlayResourceCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWallpaperPath(Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 4
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    const-string/jumbo v2, "wallpapers"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "assets":[Ljava/lang/String;
    invoke-static {v1}, Landroid/content/pm/ThemeUtils;->getFirstNonEmptyAsset([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "asset":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 592
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wallpapers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getWallpaperPathList(Landroid/content/res/AssetManager;)Ljava/util/List;
    .locals 8
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v5, "wallpaperList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "wallpapers"

    invoke-virtual {p0, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, "assets":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 600
    .local v1, "asset":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 601
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wallpapers"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 604
    .end local v1    # "asset":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public static isCompiledResources(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "targetPkgName"    # Ljava/lang/String;
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 857
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 870
    :cond_0
    :goto_0
    return v5

    .line 861
    :cond_1
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "resources.apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 862
    .local v4, "resourcePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 863
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 866
    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 867
    .local v2, "resourceLength":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 868
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "resourceLength":J
    .end local v4    # "resourcePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "ThemeUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "try to check compile resources happens "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPerAppThemeComponent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "component"    # Ljava/lang/String;

    .prologue
    .line 759
    const-string v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.systemui.navbar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSystemDefaultFont(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;

    .prologue
    .line 852
    const-string v0, "ZUKChinese.ttf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isValidAudible(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 460
    if-eqz p0, :cond_1

    const-string v0, ".mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".ogg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static preparePresetFontDir()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 324
    const-string v3, "/data/system/theme/presetfonts"

    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/theme/presetfonts"

    const-string v4, "fontslist.xml"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/data/system/theme/presetfonts"

    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->dirExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/vendor/etc"

    const-string v4, "fontslist.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .local v2, "srcFile":Ljava/io/File;
    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 329
    const/16 v3, 0x1e7

    invoke-static {v0, v3, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 332
    .end local v2    # "srcFile":Ljava/io/File;
    :cond_0
    const-string/jumbo v3, "persist.sys.fontpath"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 334
    :cond_1
    const-string/jumbo v3, "persist.sys.fontpath"

    const-string v4, "/system/fonts/ZUKChinese.ttf"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_2
    return-void
.end method

.method public static registerThemeChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 576
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.zui.intent.action.THEME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 578
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 579
    return-void
.end method

.method private static saveWallpaperStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 901
    const/4 v6, 0x0

    .line 902
    .local v6, "result":Z
    new-instance v3, Ljava/io/File;

    const-string/jumbo v8, "sdcard/.keyguard/customized"

    invoke-direct {v3, v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    .local v3, "file":Ljava/io/File;
    if-eqz p0, :cond_0

    if-nez v3, :cond_1

    .line 928
    :cond_0
    :goto_0
    return v7

    .line 906
    :cond_1
    const/4 v4, 0x0

    .line 908
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_0
    const-string v7, "ThemeUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "target file is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 910
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 912
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 913
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    .end local v4    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 915
    .local v1, "bytesRead":I
    const/16 v7, 0x2000

    :try_start_1
    new-array v0, v7, [B

    .line 916
    .local v0, "buffer":[B
    :goto_1
    const/4 v7, 0x0

    const/16 v8, 0x2000

    invoke-virtual {p0, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    .line 917
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 920
    .end local v0    # "buffer":[B
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 921
    .end local v1    # "bytesRead":I
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :goto_2
    :try_start_2
    const-string v7, "ThemeUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "save wallpaper stream to file failed! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 923
    if-eqz v4, :cond_3

    .line 924
    invoke-static {v4}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 926
    :cond_3
    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    move v7, v6

    .line 928
    goto :goto_0

    .line 919
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v5    # "out":Ljava/io/OutputStream;
    :cond_4
    const/4 v6, 0x1

    .line 923
    if-eqz v5, :cond_5

    .line 924
    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 926
    :cond_5
    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 927
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 923
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_6

    .line 924
    invoke-static {v4}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 926
    :cond_6
    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v7

    .line 923
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v1    # "bytesRead":I
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_4

    .line 920
    .end local v1    # "bytesRead":I
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private static saveWallpapers(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 933
    const/4 v7, 0x1

    .line 934
    .local v7, "result":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 959
    :cond_0
    :goto_0
    return v8

    .line 938
    :cond_1
    const/4 v5, 0x0

    .line 941
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 942
    .local v2, "assets":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v9, v2

    if-nez v9, :cond_3

    .line 943
    :cond_2
    const/4 v7, 0x0

    .line 945
    :cond_3
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_6

    aget-object v1, v0, v4

    .line 946
    .local v1, "asset":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 947
    const-string v9, "ThemeUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveWallpapers:path=file:///android_asset/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file:///android_asset/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 950
    if-eqz v7, :cond_5

    invoke-static {v5, v1}, Landroid/content/pm/ThemeUtils;->saveWallpaperStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_5

    const/4 v7, 0x1

    .line 945
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v7, v8

    .line 950
    goto :goto_2

    .line 957
    .end local v1    # "asset":Ljava/lang/String;
    :cond_6
    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "assets":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :goto_3
    move v8, v7

    .line 959
    goto :goto_0

    .line 953
    :catch_0
    move-exception v3

    .line 954
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "ThemeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There was an error save wallpapers to sdcard"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 955
    const/4 v7, 0x0

    .line 957
    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_3

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v8
.end method

.method public static setAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtone"    # Ljava/io/File;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 465
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 466
    .local v14, "path":Ljava/lang/String;
    const-string v2, ".ogg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v12, "audio/ogg"

    .line 467
    .local v12, "mimeType":Ljava/lang/String;
    :goto_0
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 468
    .local v15, "values":Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string/jumbo v2, "title"

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string/jumbo v2, "mime_type"

    invoke-virtual {v15, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v2, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 472
    const-string/jumbo v4, "is_ringtone"

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v15, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 473
    const-string/jumbo v4, "is_notification"

    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v15, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 475
    const-string/jumbo v4, "is_alarm"

    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v15, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 476
    const-string/jumbo v2, "is_music"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 478
    invoke-static {v14}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 479
    .local v3, "uri":Landroid/net/Uri;
    const/4 v13, 0x0

    .line 480
    .local v13, "newUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 484
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 485
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 486
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 487
    .local v10, "id":J
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 488
    const-string v2, "content://media/internal/audio/media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 489
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v15, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 492
    .end local v10    # "id":J
    :cond_0
    if-nez v13, :cond_1

    .line 493
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v3, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 495
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    const/4 v2, 0x1

    :goto_4
    return v2

    .line 466
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v13    # "newUri":Landroid/net/Uri;
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string v12, "audio/mp3"

    goto/16 :goto_0

    .line 472
    .restart local v12    # "mimeType":Ljava/lang/String;
    .restart local v15    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 473
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 475
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 496
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v13    # "newUri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 497
    .local v9, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_4
.end method

.method public static setDefaultAudible(Landroid/content/Context;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 503
    invoke-static {p1}, Landroid/content/pm/ThemeUtils;->getDefaultAudiblePath(I)Ljava/lang/String;

    move-result-object v6

    .line 504
    .local v6, "audiblePath":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 505
    invoke-static {v6}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 506
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 510
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 511
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 512
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 513
    .local v8, "id":J
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 514
    const-string v0, "content://media/internal/audio/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 517
    .end local v8    # "id":J
    :cond_0
    if-eqz v1, :cond_1

    .line 518
    invoke-static {p0, p1, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_1
    move v0, v10

    .line 522
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "c":Landroid/database/Cursor;
    :goto_0
    return v0

    :cond_2
    move v0, v11

    .line 520
    goto :goto_0
.end method

.method public static setWallpaper(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 963
    const/4 v4, 0x0

    .line 965
    .local v4, "result":Z
    const-string v9, "ThemeUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setWallpaper:packageName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    .line 967
    .local v7, "wm":Landroid/app/WallpaperManager;
    const-string/jumbo v9, "system"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 969
    :try_start_0
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v8, v4

    .line 1017
    :goto_1
    return v8

    .line 970
    :catch_0
    move-exception v1

    .line 971
    .local v1, "e":Ljava/io/IOException;
    const/4 v8, 0x1

    goto :goto_1

    .line 973
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 975
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v7, v9}, Landroid/app/WallpaperManager;->clear(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 976
    :catch_1
    move-exception v1

    .line 977
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 980
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v3, 0x0

    .line 981
    .local v3, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 983
    .local v2, "file":Ljava/io/File;
    :try_start_2
    const-string v8, "ThemeUtils"

    const-string/jumbo v9, "setWallpaper:read wallpaper from apk"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v8, 0x2

    invoke-virtual {p0, p1, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 986
    .local v5, "themeCtx":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 987
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string/jumbo v8, "wallpapers"

    invoke-static {v5, v0, p1, v8}, Landroid/content/pm/ThemeUtils;->saveWallpapers(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 989
    const/16 v8, 0x14

    invoke-static {p0, v8}, Landroid/content/pm/ThemeUtils;->setWallpaperSettingValue(Landroid/content/Context;I)V

    .line 990
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:///android_asset/wallpapers"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "wallpaper"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 992
    .local v6, "wallPaperFullPath":Ljava/lang/String;
    const-string v8, "ThemeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "normal wallpaper path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-static {v5, v6}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 994
    if-eqz v3, :cond_2

    .line 995
    invoke-virtual {v7, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 996
    const/4 v4, 0x1

    .line 1014
    .end local v6    # "wallPaperFullPath":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 998
    :cond_3
    :try_start_3
    const-string/jumbo v8, "lockscreen"

    invoke-static {v5, v0, p1, v8}, Landroid/content/pm/ThemeUtils;->saveWallpapers(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1001
    const/16 v8, 0x15

    invoke-static {p0, v8}, Landroid/content/pm/ThemeUtils;->setWallpaperSettingValue(Landroid/content/Context;I)V

    .line 1002
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:///android_asset/lockscreen"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "poly_blur"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1004
    .restart local v6    # "wallPaperFullPath":Ljava/lang/String;
    const-string v8, "ThemeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "complex wallpaper path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-static {v5, v6}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1006
    if-eqz v3, :cond_2

    .line 1007
    invoke-virtual {v7, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1008
    const/4 v4, 0x1

    goto :goto_2

    .line 1011
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v5    # "themeCtx":Landroid/content/Context;
    .end local v6    # "wallPaperFullPath":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 1012
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "ThemeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fetch wallpaper failed! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1014
    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v8
.end method

.method private static setWallpaperSettingValue(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 897
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "set_wallpaper_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 898
    return-void
.end method
