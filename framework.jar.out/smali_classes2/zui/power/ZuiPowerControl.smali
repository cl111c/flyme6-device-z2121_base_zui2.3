.class public Lzui/power/ZuiPowerControl;
.super Ljava/lang/Object;
.source "ZuiPowerControl.java"


# static fields
.field private static sInstance:Lzui/power/ZuiPowerControl;

.field private static sService:Lzui/power/IZuiPowerControlService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lzui/power/ZuiPowerControl;->getService()Lzui/power/IZuiPowerControlService;

    move-result-object v0

    sput-object v0, Lzui/power/ZuiPowerControl;->sService:Lzui/power/IZuiPowerControlService;

    .line 16
    return-void
.end method

.method public static getInstance()Lzui/power/ZuiPowerControl;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lzui/power/ZuiPowerControl;->sInstance:Lzui/power/ZuiPowerControl;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lzui/power/ZuiPowerControl;

    invoke-direct {v0}, Lzui/power/ZuiPowerControl;-><init>()V

    sput-object v0, Lzui/power/ZuiPowerControl;->sInstance:Lzui/power/ZuiPowerControl;

    .line 31
    :cond_0
    sget-object v0, Lzui/power/ZuiPowerControl;->sInstance:Lzui/power/ZuiPowerControl;

    return-object v0
.end method

.method private static getService()Lzui/power/IZuiPowerControlService;
    .locals 2

    .prologue
    .line 19
    sget-object v1, Lzui/power/ZuiPowerControl;->sService:Lzui/power/IZuiPowerControlService;

    if-eqz v1, :cond_0

    .line 20
    sget-object v1, Lzui/power/ZuiPowerControl;->sService:Lzui/power/IZuiPowerControlService;

    .line 24
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 22
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "zui_power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 23
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Lzui/power/IZuiPowerControlService$Stub;->asInterface(Landroid/os/IBinder;)Lzui/power/IZuiPowerControlService;

    move-result-object v1

    sput-object v1, Lzui/power/ZuiPowerControl;->sService:Lzui/power/IZuiPowerControlService;

    .line 24
    sget-object v1, Lzui/power/ZuiPowerControl;->sService:Lzui/power/IZuiPowerControlService;

    goto :goto_0
.end method


# virtual methods
.method public cpuBalanceControl(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    sget-object v0, Lzui/power/ZuiPowerControl;->sService:Lzui/power/IZuiPowerControlService;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lzui/power/ZuiPowerControl;->sService:Lzui/power/IZuiPowerControlService;

    invoke-interface {v0, p1}, Lzui/power/IZuiPowerControlService;->cpuBalanceControl(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public gpuBalanceControl(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 51
    :try_start_0
    sget-object v0, Lzui/power/ZuiPowerControl;->sService:Lzui/power/IZuiPowerControlService;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lzui/power/ZuiPowerControl;->sService:Lzui/power/IZuiPowerControlService;

    invoke-interface {v0, p1}, Lzui/power/IZuiPowerControlService;->gpuBalanceControl(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setEnableDisplayBoostForPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 62
    :try_start_0
    sget-object v0, Lzui/power/ZuiPowerControl;->sService:Lzui/power/IZuiPowerControlService;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lzui/power/ZuiPowerControl;->sService:Lzui/power/IZuiPowerControlService;

    invoke-interface {v0, p1}, Lzui/power/IZuiPowerControlService;->setEnableDisplayBoostForPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0
.end method
