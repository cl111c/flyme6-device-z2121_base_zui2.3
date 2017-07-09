.class final Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverActivity$TargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ChooserTargetInfo"
.end annotation


# instance fields
.field private final mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mBadgeContentDescription:Ljava/lang/CharSequence;

.field private mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field private final mChooserTarget:Landroid/service/chooser/ChooserTarget;

.field private mDisplayChecked:Z

.field private mDisplayCheckedIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayIconLoadCompleted:Z

.field private final mFillInFlags:I

.field private final mFillInIntent:Landroid/content/Intent;

.field private final mModifiedScore:F

.field private final mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;Landroid/content/Intent;I)V
    .locals 2
    .param p2, "other"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 611
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 577
    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayChecked:Z

    .line 578
    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIconLoadCompleted:Z

    .line 612
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 613
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 614
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 615
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 616
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 617
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 618
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    .line 619
    iput p4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    .line 620
    iget v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    .line 621
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;F)V
    .locals 8
    .param p2, "sourceInfo"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "chooserTarget"    # Landroid/service/chooser/ChooserTarget;
    .param p4, "modifiedScore"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 582
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 577
    iput-boolean v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayChecked:Z

    .line 578
    iput-boolean v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIconLoadCompleted:Z

    .line 583
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 584
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 585
    iput p4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    .line 586
    if-eqz p2, :cond_0

    .line 587
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 588
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    .line 589
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 590
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 591
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 592
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 593
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 597
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual {p3}, Landroid/service/chooser/ChooserTarget;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 599
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 601
    if-eqz p2, :cond_2

    .line 602
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 607
    :goto_1
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    .line 608
    iput v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    .line 609
    return-void

    :cond_1
    move-object v4, v5

    .line 599
    goto :goto_0

    .line 604
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_1
.end method

.method private getBaseIntentToSend()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 647
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 649
    .local v0, "result":Landroid/content/Intent;
    :goto_0
    if-nez v0, :cond_1

    .line 650
    const-string v2, "ChooserActivity"

    const-string v3, "ChooserTargetInfo: no base intent available to send"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .end local v0    # "result":Landroid/content/Intent;
    :goto_1
    return-object v0

    .line 647
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 652
    .restart local v0    # "result":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 653
    .end local v0    # "result":Landroid/content/Intent;
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 654
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 656
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->access$300(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-object v0, v1

    .local v0, "result":Ljava/lang/Object;
    goto :goto_1
.end method


# virtual methods
.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 2
    .param p1, "fillInIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 728
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_0
    return-object v0
.end method

.method public getBadgeContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBadgeIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayCheckedIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayCheckedStatus()Z
    .locals 1

    .prologue
    .line 751
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayChecked:Z

    return v0
.end method

.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayIconLoadStatus()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIconLoadCompleted:Z

    return v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiedScore()F
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    return v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 643
    :goto_0
    return-object v0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    .line 640
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 632
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public hasDisplayCheckedIcon()Z
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayCheckedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayIcon()Z
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayCheckedIcon:Landroid/graphics/drawable/Drawable;

    .line 776
    return-void
.end method

.method public setDisplayCheckedStatus(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 763
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayChecked:Z

    .line 764
    return-void
.end method

.method public setDisplayIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 772
    return-void
.end method

.method public setDisplayIconLoadStatus(Z)V
    .locals 0
    .param p1, "loadCompleted"    # Z

    .prologue
    .line 767
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIconLoadCompleted:Z

    .line 768
    return-void
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 663
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 668
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getBaseIntentToSend()Landroid/content/Intent;

    move-result-object v1

    .line 669
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 687
    :goto_0
    return v0

    .line 672
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v3}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 673
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v3}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 683
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 686
    .local v0, "ignoreTargetSecurity":Z
    :cond_1
    invoke-virtual {p1, v1, p2, v0, p3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    move v0, v2

    .line 687
    goto :goto_0
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 692
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
