.class public Lzui/hardware/fingerprint/ZuiFingerprintManager;
.super Ljava/lang/Object;
.source "ZuiFingerprintManager.java"


# static fields
.field public static final BEHAVIOR_ALIPAY_QRCODE:Ljava/lang/String; = "alipayQRCode"

.field public static final BEHAVIOR_NONE:Ljava/lang/String; = "none"

.field public static final BEHAVIOR_OPEN_APP:Ljava/lang/String; = "openApp"

.field public static final BEHAVIOR_WX_SCANNER:Ljava/lang/String; = "wxScanner"

.field public static final FINGERPRINT_ACQUIRED_VENDOR_LOCKOUT_MODE_TIMING:I = 0x3e8

.field public static final FINGERPRINT_ERROR_KEYGUARD_IS_WORKING:I = 0x3e8

.field public static final GX_FINGERPRINT_ACQUIRED_DUPLICATE_AREA:I = 0x452

.field public static final GX_FINGERPRINT_ACQUIRED_DUPLICATE_FINGER:I = 0x451

.field public static final GX_FINGERPRINT_ACQUIRED_FINGER_DOWN:I = 0x44e

.field public static final GX_FINGERPRINT_ACQUIRED_FINGER_UP:I = 0x44f

.field public static final GX_FINGERPRINT_ACQUIRED_INPUT_TOO_LONG:I = 0x450

.field public static final GX_FINGERPRINT_ACQUIRED_VENDOR_BASE:I = 0x44c

.field public static final GX_FINGERPRINT_ACQUIRED_WAIT_FINGER_INPUT:I = 0x44d

.field public static final KEY_DISPLAY_STATUS:Ljava/lang/String; = "key_display_status"

.field public static final KEY_SMART_FP_BEHAVIOR:Ljava/lang/String; = "key_smart_fp_behavior"

.field public static final KEY_SMART_FP_FINGERID:Ljava/lang/String; = "key_smart_fp_fingerid"

.field public static final KEY_SMART_FP_PKGNAME:Ljava/lang/String; = "key_smart_fp_pkgname"

.field public static final KEY_SMART_FP_USERID:Ljava/lang/String; = "key_smart_fp_userid"

.field public static final PKG_NAME_NONE:Ljava/lang/String; = "none"

.field private static final TAG:Ljava/lang/String;

.field public static final ZUK_CMD_CHECK_BOARD_TEST:I = 0x2

.field public static final ZUK_CMD_NOTIFY_DISPLAY_STATUS:I = 0x0

.field public static final ZUK_CMD_SELF_TEST:I = 0x1

.field public static final ZUK_CMD_UPDATE_SMART_FINGERPRINT:I = 0x3

.field private static final ZUK_FINGERPRINT_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field private static final ZUK_FINGERPRINT_ERROR_VENDOR_BASE:I = 0x3e8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lzui/hardware/fingerprint/ZuiFingerprintManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkerboardtest()I
    .locals 6

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "result":I
    iget-object v2, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    .line 142
    :try_start_0
    iget-object v2, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintService;->processCmd(Landroid/os/IBinder;ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lzui/hardware/fingerprint/ZuiFingerprintManager;->TAG:Ljava/lang/String;

    const-string v3, "Remote exception in checkerboard test: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getAcquiredString_Zui(I)Ljava/lang/String;
    .locals 2
    .param p1, "acquireInfo"    # I

    .prologue
    .line 196
    packed-switch p1, :pswitch_data_0

    .line 201
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 198
    :pswitch_0
    iget-object v0, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040601

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x451
        :pswitch_0
    .end packed-switch
.end method

.method public notifyDisplayStatus(I)I
    .locals 6
    .param p1, "on"    # I

    .prologue
    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, "result":I
    iget-object v3, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v3, :cond_0

    .line 99
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v1, "params":Landroid/os/Bundle;
    const-string v3, "key_display_status"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    :try_start_0
    iget-object v3, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v4, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v1}, Landroid/hardware/fingerprint/IFingerprintService;->processCmd(Landroid/os/IBinder;ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 107
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return v2

    .line 103
    .restart local v1    # "params":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lzui/hardware/fingerprint/ZuiFingerprintManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote exception in get_disp_tatus:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public selftest()I
    .locals 6

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "result":I
    iget-object v2, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    .line 122
    :try_start_0
    iget-object v2, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintService;->processCmd(Landroid/os/IBinder;ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lzui/hardware/fingerprint/ZuiFingerprintManager;->TAG:Ljava/lang/String;

    const-string v3, "Remote exception in self test: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateSmartFpBehavoir(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "fingerId"    # I
    .param p2, "behavior"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v3, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v3, :cond_0

    .line 167
    const/16 v2, -0x2710

    .line 169
    .local v2, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v1, "params":Landroid/os/Bundle;
    const-string v3, "key_smart_fp_fingerid"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string v3, "key_smart_fp_userid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string v3, "key_smart_fp_behavior"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v3, "key_smart_fp_pkgname"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :try_start_1
    iget-object v3, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v4, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5, v1}, Landroid/hardware/fingerprint/IFingerprintService;->processCmd(Landroid/os/IBinder;ILandroid/os/Bundle;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 185
    .end local v1    # "params":Landroid/os/Bundle;
    .end local v2    # "userId":I
    :goto_1
    return v3

    .line 170
    .restart local v2    # "userId":I
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lzui/hardware/fingerprint/ZuiFingerprintManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get current user id\n"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "params":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    .line 182
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v3, Lzui/hardware/fingerprint/ZuiFingerprintManager;->TAG:Ljava/lang/String;

    const-string v4, "Remote exception in checkerboard test: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "params":Landroid/os/Bundle;
    .end local v2    # "userId":I
    :cond_0
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public zuiInit(Landroid/content/Context;Ljava/lang/Object;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Ljava/lang/Object;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 83
    iput-object p1, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mContext:Landroid/content/Context;

    .line 84
    check-cast p2, Landroid/hardware/fingerprint/IFingerprintService;

    .end local p2    # "service":Ljava/lang/Object;
    iput-object p2, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 85
    iput-object p3, p0, Lzui/hardware/fingerprint/ZuiFingerprintManager;->mToken:Landroid/os/IBinder;

    .line 86
    return-void
.end method
