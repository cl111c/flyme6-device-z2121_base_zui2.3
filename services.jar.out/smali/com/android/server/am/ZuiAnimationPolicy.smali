.class public Lcom/android/server/am/ZuiAnimationPolicy;
.super Ljava/lang/Object;
.source "ZuiAnimationPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyZuiAppTransiton(ZLjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "enter"    # Z
    .param p1, "startingPkg"    # Ljava/lang/String;
    .param p2, "callerPkg"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, -0x1

    .line 117
    .local v0, "zuiTransition":I
    invoke-static {p2, p1}, Lcom/android/server/am/ZuiAnimationPolicy;->filterApp2AppAnim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    if-eqz p0, :cond_1

    const/16 v0, 0x12

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    const/16 v0, 0x13

    goto :goto_0
.end method

.method public static applyZuiStackTransiton(ZLjava/lang/String;)I
    .locals 3
    .param p0, "toFront"    # Z
    .param p1, "nextPkg"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, -0x1

    .line 127
    .local v0, "zuiTransition":I
    invoke-static {p1}, Lcom/android/server/am/ZuiAnimationPolicy;->filterAppAnimForSwitchingTask(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 128
    if-eqz p0, :cond_2

    const/4 v0, 0x6

    .line 131
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "com.zui.incallui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const/4 v0, 0x0

    .line 135
    :cond_1
    return v0

    .line 128
    :cond_2
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private static filterApp2AppAnim(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "launchedPackage"    # Ljava/lang/String;
    .param p1, "startingPackage"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "filtered":Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 96
    :goto_0
    return v1

    .line 29
    :cond_1
    const-string v1, "com.zui.contacts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.ted.yellowpage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.server.telecom"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.zui.mms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.stk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.phone"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    const-string v1, "com.zui.contacts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.ted.yellowpage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.server.telecom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.zui.mms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.stk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.phone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39
    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_1
    move v1, v0

    .line 96
    goto :goto_0

    .line 40
    :cond_5
    const-string v1, "com.zui.safecenter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.zui.mms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.zui.net.data.monitor"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.zui.filemanager"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.zui.appsmanager"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.zui.homesettings"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "com.zui.safecenter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.zui.mms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.zui.net.data.monitor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.zui.filemanager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.zui.appsmanager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.zui.homesettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 46
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 47
    :cond_7
    const-string v1, "com.zui.cloudservice"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "com.lenovo.lsf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "com.zui.setupwizard"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_8
    const-string v1, "com.zui.cloudservice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.lenovo.lsf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.zui.setupwizard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 51
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 52
    :cond_a
    const-string v1, "com.zui.homesettings"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "com.zui.gallery"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 53
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 54
    :cond_b
    const-string v1, "android"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 55
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 56
    :cond_d
    const-string v1, "com.zui.appsmanager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 57
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 58
    :cond_e
    const-string v1, "com.android.packageinstaller"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.android.packageinstaller"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 59
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 60
    :cond_10
    const-string v1, "com.android.providers.media"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 61
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 62
    :cond_11
    const-string v1, "com.zui.usercenter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "com.zui.usercenter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 63
    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 64
    :cond_13
    const-string v1, "com.zui.incallui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "com.zui.incallui"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 65
    :cond_14
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 66
    :cond_15
    const-string v1, "com.zui.fingerprintsettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 67
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 68
    :cond_16
    const-string v1, "com.android.settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "com.android.settings"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 69
    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 70
    :cond_18
    const-string v1, "com.zui.legalinfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "com.zui.legalinfo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 71
    :cond_19
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 72
    :cond_1a
    const-string v1, "com.lenovo.lsf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "com.lenovo.lsf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 73
    :cond_1b
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 74
    :cond_1c
    const-string v1, "com.zui.simsettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "com.zui.simsettings"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 75
    :cond_1d
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 76
    :cond_1e
    const-string v1, "com.lenovo.leos.simsettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "com.lenovo.leos.simsettings"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 77
    :cond_1f
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 78
    :cond_20
    const-string v1, "com.lenovo.leos.mobileNetworkSettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "com.lenovo.leos.mobileNetworkSettings"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 80
    :cond_21
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 81
    :cond_22
    const-string v1, "com.zui.launcher"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "com.zui.launcher"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 82
    :cond_23
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 83
    :cond_24
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 84
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 85
    :cond_25
    const-string v1, "com.sohu.inputmethod.sogou.zui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 86
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 87
    :cond_26
    const-string v1, "com.android.phone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "com.android.systemui"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 88
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 89
    :cond_27
    const-string v1, "com.zui.davdroid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "com.zui.cloudservice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_28
    const-string v1, "com.zui.contacts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 91
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 92
    :cond_29
    const-string v1, "com.zui.resolver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "com.zui.resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    :cond_2a
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method private static filterAppAnimForSwitchingTask(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "filtered":Z
    if-nez p0, :cond_0

    move v1, v0

    .line 112
    .end local v0    # "filtered":Z
    .local v1, "filtered":I
    :goto_0
    return v1

    .line 106
    .end local v1    # "filtered":I
    .restart local v0    # "filtered":Z
    :cond_0
    const-string v2, "com.zui.contacts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 112
    .restart local v1    # "filtered":I
    goto :goto_0

    .line 108
    .end local v1    # "filtered":I
    :cond_2
    const-string v2, "com.zui.zhealthy"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    const/4 v0, 0x1

    goto :goto_1
.end method
