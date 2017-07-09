.class Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$2;
.super Ljava/lang/Object;
.source "ZuiFingerprintService_Delegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->onAuthenticationSucceeded(Ljava/lang/String;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

.field final synthetic val$behavior:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$2;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    iput-object p2, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$2;->val$behavior:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$2;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$2;->this$0:Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;

    iget-object v1, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$2;->val$behavior:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate$2;->val$pkgName:Ljava/lang/String;

    # invokes: Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->processSmartFp(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;->access$400(Lcom/zui/server/fingerprint/ZuiFingerprintService_Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method
