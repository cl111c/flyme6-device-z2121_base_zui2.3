.class Lcom/android/server/pm/XuiApkInterceptor$InstallPackageAlertUtils;
.super Ljava/lang/Object;
.source "XuiApkInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/XuiApkInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallPackageAlertUtils"
.end annotation


# static fields
.field public static blackList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 410
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.qihoo360.mobilesafe_mtk6573"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.qihoo360.mobilesafe"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.qihoo.antivirus"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.baidu.security"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cn.opda.a.phonoalbumshoushou"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.lbe.security"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.ijinshan.mguard"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.anguanjia.safe"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.anyisheng.doctoran"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.nqmobile.antivirus20"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.tencent.qqpimsecure"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.tencent.token"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.tencent.qqpimsecure"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.cleanmaster.mguard_cn"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.pamirs.taoBaoLing"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "kvpioneer.cmcc"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.kindroid.security"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.yy.android.udbsec"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "project.rising"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.zrgiu.antivirus"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.kms"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.kms.free"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.mobileann.MobileAnnForJiangMin"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.symantec.mobilesecurity"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.ijinshan.duba"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.mobileann.MobileAnn"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.suning.phonesecurity"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.baidu.passport.securitycenter"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.antivirus"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.cleanmaster.security_cn"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.tdx.safe"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.netqin.mobileguard"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.anguanjia.security"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/XuiApkInterceptor$InstallPackageAlertUtils;->blackList:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPackageInBlackList(Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 446
    sget-object v0, Lcom/android/server/pm/XuiApkInterceptor$InstallPackageAlertUtils;->blackList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 447
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    const/4 v4, 0x1

    .line 451
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    return v4

    .line 446
    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
