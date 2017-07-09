.class Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;
.super Landroid/os/Handler;
.source "XuiApkInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/XuiApkInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XuiHandler"
.end annotation


# static fields
.field static final SHOW_XUI_DIALOG:I = 0x0

.field static final SHOW_XUI_SAFE_INTRODUCE_DIALOG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/XuiApkInterceptor;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/XuiApkInterceptor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    .line 169
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 170
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/pm/XuiApkInterceptor$XuiHandler;->this$0:Lcom/android/server/pm/XuiApkInterceptor;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "package_label"

    const-string v4, "App"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LocalSocket;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/pm/XuiApkInterceptor;->showXuiSafeAlertDialog(Ljava/lang/String;Landroid/net/LocalSocket;I)V
    invoke-static {v1, v2, v0, v4}, Lcom/android/server/pm/XuiApkInterceptor;->access$000(Lcom/android/server/pm/XuiApkInterceptor;Ljava/lang/String;Landroid/net/LocalSocket;I)V

    goto :goto_0

    .line 179
    :pswitch_1
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.android.packageinstaller.action.SAFECENTER_INTRODUCE"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v3, "intent_safe_introduce":Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 187
    .end local v3    # "intent_safe_introduce":Landroid/content/Intent;
    :catch_0
    move-exception v11

    .line 188
    .local v11, "e":Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v11    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 190
    .local v11, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v11}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
