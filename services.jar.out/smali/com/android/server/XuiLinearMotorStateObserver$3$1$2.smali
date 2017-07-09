.class Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;
.super Landroid/text/style/ClickableSpan;
.source "XuiLinearMotorStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/XuiLinearMotorStateObserver$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;


# direct methods
.method constructor <init>(Lcom/android/server/XuiLinearMotorStateObserver$3$1;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 243
    const-string v9, "XuiLinearMotorStateObserver"

    const-string v10, "onTextClick(), send a notification"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v9, "XuiLinearMotorStateObserver"

    const-string v10, "send a notification of the exception of the linear motor."

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v9, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/XuiLinearMotorStateObserver;->access$500(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 247
    .local v5, "r":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 248
    .local v0, "id":I
    const/4 v6, 0x0

    .line 250
    .local v6, "summary_id":I
    iget-object v9, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorNotificationId:I
    invoke-static {v9}, Lcom/android/server/XuiLinearMotorStateObserver;->access$100(Lcom/android/server/XuiLinearMotorStateObserver;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 251
    iget-object v9, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v9}, Lcom/android/server/XuiLinearMotorStateObserver;->access$200(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/app/NotificationManager;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    iget-object v11, v11, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v11, v11, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorNotificationId:I
    invoke-static {v11}, Lcom/android/server/XuiLinearMotorStateObserver;->access$100(Lcom/android/server/XuiLinearMotorStateObserver;)I

    move-result v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 253
    iget-object v9, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorNotificationId:I
    invoke-static {v9, v10}, Lcom/android/server/XuiLinearMotorStateObserver;->access$102(Lcom/android/server/XuiLinearMotorStateObserver;I)I

    .line 256
    :cond_0
    const v0, 0x1040605

    .line 257
    const v6, 0x1040606

    .line 261
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 262
    .local v2, "message":Ljava/lang/CharSequence;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 264
    .local v7, "title":Ljava/lang/CharSequence;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    iget-object v10, v10, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v10, v10, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/XuiLinearMotorStateObserver;->access$500(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x108083b

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, -0x2

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    iget-object v10, v10, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v10, v10, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/XuiLinearMotorStateObserver;->access$500(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x1060059

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 279
    .local v3, "notification":Landroid/app/Notification;
    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v9, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/XuiLinearMotorStateObserver;->access$500(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x1090155

    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 282
    .local v8, "view":Landroid/widget/RemoteViews;
    const v9, 0x1020453

    const v10, 0x1080078

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 285
    const v9, 0x1020454

    invoke-virtual {v8, v9, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 286
    const v9, 0x1020455

    invoke-virtual {v8, v9, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 288
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 289
    .local v1, "intentFile":Landroid/content/Intent;
    const-string v9, "xui.zuk.linear.motor.power.off"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v9, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/XuiLinearMotorStateObserver;->access$500(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 292
    .local v4, "pendingPowerOff":Landroid/app/PendingIntent;
    const v9, 0x1020457

    invoke-virtual {v8, v9, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 293
    iput-object v8, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 295
    iget-object v9, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v9}, Lcom/android/server/XuiLinearMotorStateObserver;->access$200(Lcom/android/server/XuiLinearMotorStateObserver;)Landroid/app/NotificationManager;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v10, v0, v3, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 297
    iget-object v9, p0, Lcom/android/server/XuiLinearMotorStateObserver$3$1$2;->this$2:Lcom/android/server/XuiLinearMotorStateObserver$3$1;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3$1;->this$1:Lcom/android/server/XuiLinearMotorStateObserver$3;

    iget-object v9, v9, Lcom/android/server/XuiLinearMotorStateObserver$3;->this$0:Lcom/android/server/XuiLinearMotorStateObserver;

    # setter for: Lcom/android/server/XuiLinearMotorStateObserver;->mLinearMotorNotificationId:I
    invoke-static {v9, v0}, Lcom/android/server/XuiLinearMotorStateObserver;->access$102(Lcom/android/server/XuiLinearMotorStateObserver;I)I

    .line 299
    # getter for: Lcom/android/server/XuiLinearMotorStateObserver;->sXuiConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/server/XuiLinearMotorStateObserver;->access$400()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 300
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 238
    const v0, -0xffff01

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 240
    return-void
.end method
