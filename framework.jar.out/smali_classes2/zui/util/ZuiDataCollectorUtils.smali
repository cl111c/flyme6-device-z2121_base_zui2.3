.class public Lzui/util/ZuiDataCollectorUtils;
.super Ljava/lang/Object;
.source "ZuiDataCollectorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/util/ZuiDataCollectorUtils$XlogBroadcastRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_XUI_SYS:Ljava/lang/String; = "action_zuk_sys_common"

.field private static final SYS_ACTION_KEY:Ljava/lang/String; = "ACTION"

.field private static final SYS_CATEGORY_KEY:Ljava/lang/String; = "CATEGORY"

.field private static final SYS_KEY_ARRAY_KEY:Ljava/lang/String; = "KEY_ARRAY"

.field private static final SYS_LABEL_KEY:Ljava/lang/String; = "LABEL"

.field private static final SYS_VALUE_ARRAY_KEY:Ljava/lang/String; = "VALUE_ARRAY"

.field private static final SYS_VALUE_KEY:Ljava/lang/String; = "VALUE"

.field private static final TAG:Ljava/lang/String;

.field private static final XUI_SYS_BUNDLE_KEY:Ljava/lang/String; = "xui_sys_bundle_key"

.field private static final XUI_SYS_CLS:Ljava/lang/String; = "com.zui.xuisys.ActionReceiver"

.field private static final XUI_SYS_PKG:Ljava/lang/String; = "com.zui.xuisys"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lzui/util/ZuiDataCollectorUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/util/ZuiDataCollectorUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lzui/util/ZuiDataCollectorUtils;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lzui/util/ZuiDataCollectorUtils;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lzui/util/ZuiDataCollectorUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public trackXuiSysEvent(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "value"    # I

    .prologue
    .line 83
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lzui/util/ZuiDataCollectorUtils;->trackXuiSysEventWithParams(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/LinkedHashMap;)Z

    move-result v0

    return v0
.end method

.method public trackXuiSysEventWithParams(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/LinkedHashMap;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p7, "paramsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v6, "action_zuk_sys_common"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.zui.xuisys"

    const-string v8, "com.zui.xuisys.ActionReceiver"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "xui_sys_bundle_key"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 101
    const-string v6, "CATEGORY"

    invoke-virtual {v0, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v6, "ACTION"

    invoke-virtual {v0, v6, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v6, "LABEL"

    invoke-virtual {v0, v6, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v6, "VALUE"

    invoke-virtual {v0, v6, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    if-eqz p7, :cond_0

    .line 107
    invoke-virtual/range {p7 .. p7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v4

    .line 108
    .local v4, "size":I
    new-array v2, v4, [Ljava/lang/String;

    .line 109
    .local v2, "keyArray":[Ljava/lang/String;
    new-array v5, v4, [Ljava/lang/String;

    .line 110
    .local v5, "valueArray":[Ljava/lang/String;
    invoke-virtual/range {p7 .. p7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 111
    invoke-virtual/range {p7 .. p7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 112
    sget-object v6, Lzui/util/ZuiDataCollectorUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keyArray = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v6, Lzui/util/ZuiDataCollectorUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "valueArray = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v6, "KEY_ARRAY"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    const-string v6, "VALUE_ARRAY"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    .end local v2    # "keyArray":[Ljava/lang/String;
    .end local v4    # "size":I
    .end local v5    # "valueArray":[Ljava/lang/String;
    :cond_0
    if-nez p2, :cond_1

    .line 119
    invoke-direct {p0, p1, v1}, Lzui/util/ZuiDataCollectorUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 125
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 121
    :cond_1
    new-instance v3, Lzui/util/ZuiDataCollectorUtils$XlogBroadcastRunnable;

    invoke-direct {v3, p0, p1, v1}, Lzui/util/ZuiDataCollectorUtils$XlogBroadcastRunnable;-><init>(Lzui/util/ZuiDataCollectorUtils;Landroid/content/Context;Landroid/content/Intent;)V

    .line 122
    .local v3, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
