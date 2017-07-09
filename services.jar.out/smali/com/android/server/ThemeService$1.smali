.class Lcom/android/server/ThemeService$1;
.super Landroid/content/BroadcastReceiver;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThemeService;


# direct methods
.method constructor <init>(Lcom/android/server/ThemeService;)V
    .locals 0

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1358
    iget-object v2, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z
    invoke-static {v2}, Lcom/android/server/ThemeService;->access$1100(Lcom/android/server/ThemeService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1360
    new-instance v0, Landroid/content/res/ThemeChangeRequest$Builder;

    invoke-direct {v0}, Landroid/content/res/ThemeChangeRequest$Builder;-><init>()V

    .line 1361
    .local v0, "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/content/res/ThemeChangeRequest$Builder;->setWallpaper(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    .line 1363
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    invoke-virtual {v0}, Landroid/content/res/ThemeChangeRequest$Builder;->build()Landroid/content/res/ThemeChangeRequest;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # invokes: Lcom/android/server/ThemeService;->updateProvider(Landroid/content/res/ThemeChangeRequest;J)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/ThemeService;->access$1200(Lcom/android/server/ThemeService;Landroid/content/res/ThemeChangeRequest;J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    .end local v0    # "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    :goto_0
    return-void

    .line 1364
    .restart local v0    # "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    :catch_0
    move-exception v1

    .line 1365
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThemeService;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not updating the theme wallpaper provider since it is unavailable! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1368
    .end local v0    # "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    iget-object v2, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z
    invoke-static {v2, v3}, Lcom/android/server/ThemeService;->access$1102(Lcom/android/server/ThemeService;Z)Z

    goto :goto_0
.end method
