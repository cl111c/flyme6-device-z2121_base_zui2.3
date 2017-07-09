.class Landroid/app/ShenqiOpsPolicy$PermsData;
.super Ljava/lang/Object;
.source "ShenqiOpsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ShenqiOpsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermsData"
.end annotation


# instance fields
.field public mMode:I

.field mNotes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPermsName:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/ShenqiOpsPolicy;


# direct methods
.method public constructor <init>(Landroid/app/ShenqiOpsPolicy;Ljava/lang/String;I)V
    .locals 0
    .param p2, "permsName"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 758
    iput-object p1, p0, Landroid/app/ShenqiOpsPolicy$PermsData;->this$0:Landroid/app/ShenqiOpsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-object p2, p0, Landroid/app/ShenqiOpsPolicy$PermsData;->mPermsName:Ljava/lang/String;

    .line 760
    iput p3, p0, Landroid/app/ShenqiOpsPolicy$PermsData;->mMode:I

    .line 761
    return-void
.end method


# virtual methods
.method public getNote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 763
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy$PermsData;->mNotes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 764
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ShenqiOpsPolicy$PermsData;->mNotes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public setNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "lan"    # Ljava/lang/String;
    .param p2, "note"    # Ljava/lang/String;

    .prologue
    .line 767
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy$PermsData;->mNotes:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 768
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/ShenqiOpsPolicy$PermsData;->mNotes:Ljava/util/HashMap;

    .line 770
    :cond_0
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy$PermsData;->mNotes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 771
    .local v0, "mNote":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 772
    iget-object v1, p0, Landroid/app/ShenqiOpsPolicy$PermsData;->mNotes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :goto_0
    return-void

    .line 774
    :cond_1
    move-object v0, p2

    goto :goto_0
.end method
