.class public Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
.super Landroid/app/Dialog;
.source "ZuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/policy/ZuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShutdownDialog"
.end annotation


# static fields
.field private static final DYNAMIC_BLUR:I = 0x2

.field private static final NONE_BLUR:I = 0x0

.field private static final STATIC_BLUR:I = 0x1


# instance fields
.field private ga:Lcom/zui/server/policy/ZuiGlobalActions;

.field private mAntiFalseTouch:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private rebootListener:Landroid/view/View$OnClickListener;

.field private shutdownListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/zui/server/policy/ZuiGlobalActions;


# direct methods
.method public constructor <init>(Lcom/zui/server/policy/ZuiGlobalActions;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/zui/server/policy/ZuiGlobalActions;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "reboot_l"    # Landroid/view/View$OnClickListener;
    .param p4, "shutdown_l"    # Landroid/view/View$OnClickListener;
    .param p5, "globalAction"    # Lcom/zui/server/policy/ZuiGlobalActions;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    .line 257
    const v0, 0x10304bd

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 258
    iput-object p3, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->rebootListener:Landroid/view/View$OnClickListener;

    .line 259
    iput-object p4, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->shutdownListener:Landroid/view/View$OnClickListener;

    .line 260
    iput-object p5, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->ga:Lcom/zui/server/policy/ZuiGlobalActions;

    .line 261
    return-void
.end method

.method private EnableBtn(Z)V
    .locals 2
    .param p1, "btnEnable"    # Z

    .prologue
    .line 346
    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->mAntiFalseTouch:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 360
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$900(Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->EnableBtn(Z)V

    return-void
.end method

.method private enableGaussianBlur(I)V
    .locals 7
    .param p1, "blurType"    # I

    .prologue
    .line 372
    :try_start_0
    const-string v3, "android.view.Window"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 373
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setBlurBackgroundType_lenovo"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/Window;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 375
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "LenovoBlurJava"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initViewAction(Landroid/view/View;IILandroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "btnResId"    # I
    .param p3, "titleResId"    # I
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 320
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 321
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 322
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    new-instance v2, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$3;

    invoke-direct {v2, p0, v1}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$3;-><init>(Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 342
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 7

    .prologue
    .line 308
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mRebootOrShutdown:Z
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$500(Lcom/zui/server/policy/ZuiGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mAutoDismissed:Z
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$300(Lcom/zui/server/policy/ZuiGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mZuiDcUtils:Lzui/util/ZuiDataCollectorUtils;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$100(Lcom/zui/server/policy/ZuiGlobalActions;)Lzui/util/ZuiDataCollectorUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mZuiDcUtils:Lzui/util/ZuiDataCollectorUtils;
    invoke-static {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->access$100(Lcom/zui/server/policy/ZuiGlobalActions;)Lzui/util/ZuiDataCollectorUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->this$0:Lcom/zui/server/policy/ZuiGlobalActions;

    # getter for: Lcom/zui/server/policy/ZuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zui/server/policy/ZuiGlobalActions;->access$200(Lcom/zui/server/policy/ZuiGlobalActions;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "SHUTDOWN_UI"

    const-string v4, "CLICK"

    const-string v5, "CANCEL"

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lzui/util/ZuiDataCollectorUtils;->trackXuiSysEvent(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 315
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 316
    iget-object v0, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->ga:Lcom/zui/server/policy/ZuiGlobalActions;

    invoke-virtual {v0}, Lcom/zui/server/policy/ZuiGlobalActions;->ReleaseProximitySensor()V

    .line 317
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 266
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 269
    invoke-virtual {p0}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 270
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 271
    const v2, 0x109011f

    invoke-virtual {p0, v2}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->setContentView(I)V

    .line 273
    const v2, 0x10203ea

    invoke-virtual {p0, v2}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->mRootView:Landroid/view/View;

    .line 274
    iget-object v2, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->mRootView:Landroid/view/View;

    new-instance v3, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$1;

    invoke-direct {v3, p0}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$1;-><init>(Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const v2, 0x10203f4

    invoke-virtual {p0, v2}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->mAntiFalseTouch:Landroid/view/View;

    .line 282
    iget-object v2, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->mAntiFalseTouch:Landroid/view/View;

    new-instance v3, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$2;

    invoke-direct {v3, p0}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog$2;-><init>(Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v2, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->mRootView:Landroid/view/View;

    const v3, 0x10203ef

    const v4, 0x10203f0

    iget-object v5, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->rebootListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->initViewAction(Landroid/view/View;IILandroid/view/View$OnClickListener;)V

    .line 295
    iget-object v2, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->mRootView:Landroid/view/View;

    const v3, 0x10203f2

    const v4, 0x10203f3

    iget-object v5, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->shutdownListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->initViewAction(Landroid/view/View;IILandroid/view/View$OnClickListener;)V

    .line 300
    iget-object v2, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->ga:Lcom/zui/server/policy/ZuiGlobalActions;

    invoke-virtual {v2}, Lcom/zui/server/policy/ZuiGlobalActions;->InitProximitySensor()V

    .line 301
    invoke-direct {p0, v6}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->enableGaussianBlur(I)V

    .line 302
    invoke-virtual {p0}, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a007a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 303
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/zui/server/policy/ZuiGlobalActions$ShutdownDialog;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 304
    return-void
.end method
