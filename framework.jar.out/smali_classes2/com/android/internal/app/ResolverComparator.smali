.class Lcom/android/internal/app/ResolverComparator;
.super Ljava/lang/Object;
.source "ResolverComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final RECENCY_MULTIPLIER:F = 3.0f

.field private static final RECENCY_TIME_PERIOD:J = 0x2932e00L

.field private static final TAG:Ljava/lang/String; = "ResolverComparator"

.field private static final USAGE_STATS_PERIOD:J = 0x48190800L


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mCurrentTime:J

.field private final mHttp:Z

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mReferrerPackage:Ljava/lang/String;

.field private final mScoredTargets:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/app/ResolverComparator$ScoredTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mSinceTime:J

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsm:Landroid/app/usage/UsageStatsManager;

.field private priorityApps:[Ljava/lang/String;

.field private resolver_gridview_flag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrerPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    .line 69
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverComparator;->resolver_gridview_flag:Z

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    .line 75
    iput-object p3, p0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 78
    const-string v2, "usagestats"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    iput-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    .line 81
    iget-wide v4, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    const-wide/32 v6, 0x48190800

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    .line 82
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    iget-wide v4, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    iget-wide v6, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    .line 84
    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x147

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverComparator;->resolver_gridview_flag:Z

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverComparator;->priorityApps:[Ljava/lang/String;

    .line 90
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    move v2, v3

    .line 74
    goto :goto_0
.end method

.method static isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 2
    .param p0, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    const/4 v0, 0x0

    .line 157
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 161
    :cond_0
    return v0
.end method


# virtual methods
.method public IspriorityApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "AppName"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->priorityApps:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->priorityApps:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v1, 0x1

    .line 266
    :goto_1
    return v1

    .line 261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 16
    .param p1, "lhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    .line 166
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 167
    .local v2, "lhs":Landroid/content/pm/ResolveInfo;
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 170
    .local v5, "rhs":Landroid/content/pm/ResolveInfo;
    iget v12, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_0

    .line 171
    const/4 v12, 0x1

    .line 227
    :goto_0
    return v12

    .line 174
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    if-eqz v12, :cond_2

    .line 178
    iget v12, v2, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v12}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v3

    .line 179
    .local v3, "lhsSpecific":Z
    iget v12, v5, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v12}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v6

    .line 180
    .local v6, "rhsSpecific":Z
    if-eq v3, v6, :cond_2

    .line 181
    if-eqz v3, :cond_1

    const/4 v12, -0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x1

    goto :goto_0

    .line 185
    .end local v3    # "lhsSpecific":Z
    .end local v6    # "rhsSpecific":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    if-eqz v12, :cond_8

    .line 187
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/app/ResolverComparator;->resolver_gridview_flag:Z

    if-eqz v12, :cond_6

    .line 188
    const/4 v10, 0x0

    .line 189
    .local v10, "tmp_timel":F
    const/4 v11, 0x0

    .line 190
    .local v11, "tmp_timer":F
    iget-object v12, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ResolverComparator;->IspriorityApp(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 191
    const/high16 v11, 0x3f800000    # 1.0f

    .line 195
    :goto_1
    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ResolverComparator;->IspriorityApp(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 196
    const/high16 v10, 0x3f800000    # 1.0f

    .line 200
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .line 202
    .local v4, "lhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .line 204
    .local v7, "rhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    iget v12, v7, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    add-float/2addr v12, v11

    iget v13, v4, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    add-float/2addr v13, v10

    sub-float v1, v12, v13

    .line 205
    .local v1, "diff":F
    const/4 v12, 0x0

    cmpl-float v12, v1, v12

    if-eqz v12, :cond_8

    .line 206
    const/4 v12, 0x0

    cmpl-float v12, v1, v12

    if-lez v12, :cond_5

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 193
    .end local v1    # "diff":F
    .end local v4    # "lhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v7    # "rhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 198
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 206
    .restart local v1    # "diff":F
    .restart local v4    # "lhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .restart local v7    # "rhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    :cond_5
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 210
    .end local v1    # "diff":F
    .end local v4    # "lhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v7    # "rhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v10    # "tmp_timel":F
    .end local v11    # "tmp_timer":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .line 212
    .restart local v4    # "lhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .line 214
    .restart local v7    # "rhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    iget v12, v7, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    iget v13, v4, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    sub-float v1, v12, v13

    .line 216
    .restart local v1    # "diff":F
    const/4 v12, 0x0

    cmpl-float v12, v1, v12

    if-eqz v12, :cond_8

    .line 217
    const/4 v12, 0x0

    cmpl-float v12, v1, v12

    if-lez v12, :cond_7

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 222
    .end local v1    # "diff":F
    .end local v4    # "lhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v7    # "rhsTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 223
    .local v8, "sa":Ljava/lang/CharSequence;
    if-nez v8, :cond_9

    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 224
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 225
    .local v9, "sb":Ljava/lang/CharSequence;
    if-nez v9, :cond_a

    iget-object v12, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 227
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result v0

    return v0
.end method

.method public compute(Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedHashMap;->clear()V

    .line 95
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x2932e00

    sub-long v16, v22, v24

    .line 97
    .local v16, "recentSinceTime":J
    const-wide/16 v22, 0x1

    add-long v8, v16, v22

    .line 98
    .local v8, "mostRecentlyUsedTime":J
    const-wide/16 v10, 0x1

    .line 99
    .local v10, "mostTimeSpent":J
    const/4 v7, 0x1

    .line 101
    .local v7, "mostLaunched":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 102
    .local v18, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    new-instance v15, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Lcom/android/internal/app/ResolverComparator$ScoredTarget;-><init>(Landroid/content/pm/ComponentInfo;)V

    .line 104
    .local v15, "scoredTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStats;

    .line 106
    .local v12, "pkStats":Landroid/app/usage/UsageStats;
    if-eqz v12, :cond_0

    .line 110
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/ResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 112
    invoke-virtual {v12}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    .line 113
    .local v4, "lastTimeUsed":J
    iput-wide v4, v15, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->lastTimeUsed:J

    .line 114
    cmp-long v22, v4, v8

    if-lez v22, :cond_1

    .line 115
    move-wide v8, v4

    .line 118
    .end local v4    # "lastTimeUsed":J
    :cond_1
    invoke-virtual {v12}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v20

    .line 119
    .local v20, "timeSpent":J
    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->timeSpent:J

    .line 120
    cmp-long v22, v20, v10

    if-lez v22, :cond_2

    .line 121
    move-wide/from16 v10, v20

    .line 123
    :cond_2
    iget v6, v12, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 124
    .local v6, "launched":I
    int-to-long v0, v6

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v15, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->launchCount:J

    .line 125
    if-le v6, v7, :cond_0

    .line 126
    move v7, v6

    goto/16 :goto_0

    .line 139
    .end local v6    # "launched":I
    .end local v12    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v15    # "scoredTarget":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v18    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v20    # "timeSpent":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .line 140
    .local v18, "target":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->lastTimeUsed:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v16

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    sub-long v24, v8, v16

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    div-float v13, v22, v23

    .line 142
    .local v13, "recency":F
    mul-float v22, v13, v13

    const/high16 v23, 0x40400000    # 3.0f

    mul-float v14, v22, v23

    .line 143
    .local v14, "recencyScore":F
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->timeSpent:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    long-to-float v0, v10

    move/from16 v23, v0

    div-float v19, v22, v23

    .line 144
    .local v19, "usageTimeScore":F
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->launchCount:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v7

    move/from16 v23, v0

    div-float v3, v22, v23

    .line 146
    .local v3, "launchCountScore":F
    add-float v22, v14, v19

    add-float v22, v22, v3

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    goto :goto_1

    .line 154
    .end local v3    # "launchCountScore":F
    .end local v13    # "recency":F
    .end local v14    # "recencyScore":F
    .end local v18    # "target":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    .end local v19    # "usageTimeScore":F
    :cond_4
    return-void
.end method

.method public getScore(Landroid/content/ComponentName;)F
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mScoredTargets:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;

    .line 232
    .local v0, "target":Lcom/android/internal/app/ResolverComparator$ScoredTarget;
    if-eqz v0, :cond_0

    .line 233
    iget v1, v0, Lcom/android/internal/app/ResolverComparator$ScoredTarget;->score:F

    .line 235
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
