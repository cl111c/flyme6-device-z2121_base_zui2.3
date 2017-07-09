.class public final Lcom/zui/server/power/ZuiPowerManagerService_Delegate;
.super Ljava/lang/Object;
.source "ZuiPowerManagerService_Delegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/server/power/ZuiPowerManagerService_Delegate$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TAG_ZUK_AUTO_BRIGHTNESS:Ljava/lang/String;


# instance fields
.field private mActualBrightnessWhenUserSet:I

.field private mNewBrightnessWhenUserSet:I

.field private mTemporaryScreenBrightnessSettingInAutomaticModeOverride:I

.field private zukValueInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zuk_auto_brightness"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->TAG_ZUK_AUTO_BRIGHTNESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->zukValueInitialized:Z

    .line 36
    iput v1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mActualBrightnessWhenUserSet:I

    .line 38
    iput v1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mNewBrightnessWhenUserSet:I

    .line 40
    iput v1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mTemporaryScreenBrightnessSettingInAutomaticModeOverride:I

    .line 46
    return-void
.end method

.method private getCurrentAutoBrighntessFromSensor(Landroid/content/ContentResolver;)I
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 190
    const/4 v0, -0x1

    .line 191
    .local v0, "value":I
    if-eqz p1, :cond_0

    .line 192
    const-string v1, "actual_brightness_from_sensor"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 200
    :goto_0
    return v0

    .line 197
    :cond_0
    sget-object v1, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->TAG_ZUK_AUTO_BRIGHTNESS:Ljava/lang/String;

    const-string v2, "Error: getCurrentAutoBrighntessFromSensor(), resolver == null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isValidBrightness_ZUK(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 82
    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putZukValues(Landroid/content/ContentResolver;II)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "b"    # I
    .param p3, "zuk"    # I

    .prologue
    const/4 v1, -0x2

    .line 119
    const-string v0, "actual_brightness_when_user_set"

    invoke-static {p1, v0, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 123
    const-string v0, "new_brightness_when_user_set"

    invoke-static {p1, v0, p3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 127
    return-void
.end method

.method private readZukValues(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 107
    const-string v0, "actual_brightness_when_user_set"

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mActualBrightnessWhenUserSet:I

    .line 111
    const-string v0, "new_brightness_when_user_set"

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mNewBrightnessWhenUserSet:I

    .line 115
    return-void
.end method


# virtual methods
.method public dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mActualBrightnessWhenUserSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mActualBrightnessWhenUserSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNewBrightnessWhenUserSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mNewBrightnessWhenUserSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryScreenBrightnessSettingInAutomaticModeOverride ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mTemporaryScreenBrightnessSettingInAutomaticModeOverride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public handleDatabaseChangedLocked(Landroid/net/Uri;Landroid/content/Context;I)Z
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "brightnessMode"    # I

    .prologue
    const/4 v0, 0x1

    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "bypassed":Z
    const-string v4, "screen_brightness"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 170
    .local v3, "sbUri":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 173
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-ne p3, v0, :cond_1

    .line 174
    .local v0, "autoBrightness":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mTemporaryScreenBrightnessSettingInAutomaticModeOverride:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 183
    const/4 v1, 0x1

    .line 186
    :cond_0
    return v1

    .line 173
    .end local v0    # "autoBrightness":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBrightnessInAutomaticModeInternal(IILandroid/content/Context;)Z
    .locals 4
    .param p1, "brightness"    # I
    .param p2, "screenBrightnessSetting"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 139
    iput v2, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mTemporaryScreenBrightnessSettingInAutomaticModeOverride:I

    .line 141
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v0}, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->getCurrentAutoBrighntessFromSensor(Landroid/content/ContentResolver;)I

    move-result v1

    .line 144
    .local v1, "value":I
    if-ne v1, v2, :cond_0

    move v1, p2

    .line 146
    :cond_0
    iget v2, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mNewBrightnessWhenUserSet:I

    if-ne v2, p1, :cond_1

    iget v2, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mActualBrightnessWhenUserSet:I

    if-eq v1, v2, :cond_2

    .line 147
    :cond_1
    iput p1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mNewBrightnessWhenUserSet:I

    .line 148
    iput v1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mActualBrightnessWhenUserSet:I

    .line 149
    iget v2, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mActualBrightnessWhenUserSet:I

    iget v3, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mNewBrightnessWhenUserSet:I

    invoke-direct {p0, v0, v2, v3}, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->putZukValues(Landroid/content/ContentResolver;II)V

    .line 151
    const/4 v2, 0x1

    .line 153
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTemporaryBrightnessInAutomaticModeInternal(I)Z
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 130
    iget v0, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mTemporaryScreenBrightnessSettingInAutomaticModeOverride:I

    if-eq v0, p1, :cond_0

    .line 131
    iput p1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mTemporaryScreenBrightnessSettingInAutomaticModeOverride:I

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDisplayPowerStateLocked(ZILzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;)I
    .locals 2
    .param p1, "autoBrightness"    # Z
    .param p2, "screenBrightness"    # I
    .param p3, "displayPowerRequest"    # Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "turningTemporaryScreenBrightness":Z
    if-eqz p1, :cond_0

    .line 92
    iget v1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mTemporaryScreenBrightnessSettingInAutomaticModeOverride:I

    invoke-static {v1}, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->isValidBrightness_ZUK(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget p2, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mTemporaryScreenBrightnessSettingInAutomaticModeOverride:I

    .line 94
    const/4 v0, 0x1

    .line 99
    :cond_0
    iget v1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mActualBrightnessWhenUserSet:I

    iput v1, p3, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->actualBrightnessWhenUserSet:I

    .line 100
    iget v1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mNewBrightnessWhenUserSet:I

    iput v1, p3, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->newBrightnessWhenUserSet:I

    .line 101
    iput-boolean v0, p3, Lzui/hardware/display/ZuiDisplayManagerInternal$ZuiDisplayPowerRequest;->turningTemporaryScreenBrightness:Z

    .line 103
    return p2
.end method

.method public updateSettingsLocked(ILandroid/content/ContentResolver;)I
    .locals 5
    .param p1, "brightnessMode"    # I
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 52
    move v0, p1

    .line 54
    .local v0, "oldBrightnessMode":I
    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 58
    if-eq v0, p1, :cond_0

    .line 59
    iget-boolean v1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->zukValueInitialized:Z

    if-nez v1, :cond_1

    .line 61
    invoke-direct {p0, p2}, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->readZukValues(Landroid/content/ContentResolver;)V

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->zukValueInitialized:Z

    .line 75
    :goto_0
    iput v3, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mTemporaryScreenBrightnessSettingInAutomaticModeOverride:I

    .line 78
    :cond_0
    return p1

    .line 65
    :cond_1
    iput v3, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mActualBrightnessWhenUserSet:I

    .line 66
    iput v3, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mNewBrightnessWhenUserSet:I

    .line 67
    iget v1, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mActualBrightnessWhenUserSet:I

    iget v2, p0, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->mNewBrightnessWhenUserSet:I

    invoke-direct {p0, p2, v1, v2}, Lcom/zui/server/power/ZuiPowerManagerService_Delegate;->putZukValues(Landroid/content/ContentResolver;II)V

    .line 69
    const-string v1, "actual_brightness_from_sensor"

    invoke-static {p2, v1, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
