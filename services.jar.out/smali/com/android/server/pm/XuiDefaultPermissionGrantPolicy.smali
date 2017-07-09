.class final Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "XuiDefaultPermissionGrantPolicy.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "XuiDefaultPermGrantPol"


# instance fields
.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mXuiDefaultSystemPackages:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/16 v0, 0x4c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.zui.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.zui.calculator"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.zui.deskclock"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.zui.compass"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.zui.filemanager"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.zui.recorder"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.zui.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.zui.youku.video"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.zui.net.data.monitor"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.zui.setupwizard"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.lenovo.lsf"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.zui.browser"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.sohu.inputmethod.sogou.zui"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.zui.search"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.zui.safecenter"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.android.server.telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.zui.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.ted.yellowpage"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.zui.mms"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.zui.ue"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sina.mobile.tianqitong"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.zui.cloudservice"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.zui.auservice"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.zui.xlog"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.zui.bugtogo"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.zui.sdac"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.lenovo.leos.appstore"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.zui.cameragallery"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.zui.usercenter"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.zui.ota"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.android.packageinstaller"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.zui.reader"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.zui.appsmanager"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.zui.xuisys"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.netease.mobimail.zui"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.baidu.map.location"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.zui.incallui"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.zui.gameworldphone"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.oupeng.max.sdk"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.zui.wallpapercropper"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.google.android.gms"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.google.android.gsf"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.google.android.gsf.login"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "com.zui.zhealthy"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "com.zui.zroaming"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "com.redteamobile.virtual.softsim"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "com.android.htmlviewer"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "com.google.android.youtube"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "com.shenqi.xuipermissionmanager"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "com.android.wallpapercropper"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "com.google.android.deskclock"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "com.google.android.apps.docs"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "com.google.android.feedback"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "com.google.android.inputmethod.latin"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "com.android.messaging"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "com.google.android.googlequicksearchbox"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "com.google.android.syncadapters.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "com.android.dialer"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "com.google.android.packageinstaller"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "com.google.android.apps.photos"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "com.google.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "com.google.android.backuptransport"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "com.google.android.inputmethod.pinyin"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "com.lenovo.anyshare.gps"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "com.moji.zuk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "com.zui.flowrecharge"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "com.zui.position.travel"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mXuiDefaultSystemPackages:[Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 41
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 188
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V
    .locals 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "overrideUserChoice"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :cond_0
    return-void

    .line 196
    :cond_1
    iget-object v12, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 197
    .local v12, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 199
    .local v10, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 201
    .local v13, "sysPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_2

    .line 202
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v12, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 206
    new-instance v10, Landroid/util/ArraySet;

    .end local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v10, v12}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 207
    .restart local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 212
    .end local v13    # "sysPs":Lcom/android/server/pm/PackageSetting;
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 213
    .local v9, "grantablePermissionCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_0

    .line 214
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 218
    .local v2, "permission":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 213
    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 222
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    iget-object v1, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 231
    .local v8, "flags":I
    if-eqz v8, :cond_5

    if-eqz p4, :cond_3

    .line 233
    :cond_5
    const/16 v7, 0x14

    .line 235
    .local v7, "fixedFlags":I
    and-int/lit8 v1, v8, 0x14

    if-nez v1, :cond_3

    .line 239
    iget-object v1, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    const-string v1, "XuiDefaultPermGrantPol"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Granted "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to default handler "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/16 v4, 0x22

    .line 246
    .local v4, "newFlags":I
    if-eqz p3, :cond_6

    .line 247
    or-int/lit8 v4, v4, 0x10

    .line 250
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move v5, v4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_1
.end method


# virtual methods
.method public grantPermissionToUserApps(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 44
    const-string v4, "XuiDefaultPermGrantPol"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Granting permissions to user Apps for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 46
    .local v3, "userApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 47
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 48
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mXuiDefaultSystemPackages:[Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    .line 51
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x16

    if-le v4, v6, :cond_0

    .line 54
    :cond_1
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 57
    const-string v4, "XuiDefaultPermGrantPol"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "grantPermissionToUserApps add package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 63
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "app":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermissionsToPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    .end local v0    # "app":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public grantPermissionsToXuiDefaultSystemApps(I)V
    .locals 11
    .param p1, "userId"    # I

    .prologue
    .line 70
    const-string v7, "XuiDefaultPermGrantPol"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Granting permissions to Xui System Apps for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v7, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 73
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 74
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v7, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mXuiDefaultSystemPackages:[Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x16

    if-le v7, v9, :cond_0

    .line 80
    :cond_1
    const-string v7, "XuiDefaultPermGrantPol"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Granting permissions to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 82
    .local v5, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 83
    .local v4, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 84
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 85
    .local v3, "permission":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 86
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/pm/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 87
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v3    # "permission":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 91
    const/4 v7, 0x0

    invoke-direct {p0, v6, v5, v7, p1}, Lcom/android/server/pm/XuiDefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "permissionCount":I
    .end local v5    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    return-void
.end method
