.class Lcom/android/internal/widget/LockPatternView$9;
.super Ljava/lang/Thread;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startErrorAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field loopStart:J

.field plus:Z

.field start:J

.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternView;)V
    .locals 2

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$9;->plus:Z

    .line 1111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/LockPatternView$9;->start:J

    .line 1112
    iget-wide v0, p0, Lcom/android/internal/widget/LockPatternView$9;->start:J

    iput-wide v0, p0, Lcom/android/internal/widget/LockPatternView$9;->loopStart:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1115
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/internal/widget/LockPatternView$9;->start:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-gez v7, :cond_8

    .line 1116
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v7, 0x3

    if-ge v5, v7, :cond_7

    .line 1117
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    const/4 v7, 0x3

    if-ge v6, v7, :cond_6

    .line 1118
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$400(Lcom/android/internal/widget/LockPatternView;)[[Z

    move-result-object v7

    aget-object v7, v7, v5

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_2

    .line 1119
    rem-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_1

    rem-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_4

    .line 1120
    :cond_1
    iget-boolean v7, p0, Lcom/android/internal/widget/LockPatternView$9;->plus:Z

    if-eqz v7, :cond_3

    .line 1121
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    iget v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transX:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    iput v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transX:F

    .line 1122
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    iget v7, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transX:F

    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 1123
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    const/high16 v8, 0x40400000    # 3.0f

    iput v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transX:F

    .line 1124
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView$9;->plus:Z

    .line 1117
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1127
    :cond_3
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    iget v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transX:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transX:F

    .line 1128
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    iget v7, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transX:F

    const/high16 v8, -0x3fc00000    # -3.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 1129
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    const/high16 v8, -0x3fc00000    # -3.0f

    iput v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transX:F

    .line 1130
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView$9;->plus:Z

    goto :goto_3

    .line 1134
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/widget/LockPatternView$9;->plus:Z

    if-eqz v7, :cond_5

    .line 1135
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    iget v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transY:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    iput v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transY:F

    .line 1136
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    iget v7, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transY:F

    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 1137
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    const/high16 v8, 0x40400000    # 3.0f

    iput v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transY:F

    .line 1138
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView$9;->plus:Z

    goto :goto_3

    .line 1141
    :cond_5
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    iget v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transY:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transY:F

    .line 1142
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    iget v7, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transY:F

    const/high16 v8, -0x3fc00000    # -3.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 1143
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    const/high16 v8, -0x3fc00000    # -3.0f

    iput v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transY:F

    .line 1144
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView$9;->plus:Z

    goto/16 :goto_3

    .line 1116
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1151
    .end local v6    # "j":I
    :cond_7
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView;->postInvalidate()V

    .line 1153
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1154
    .local v2, "cur":J
    iget-wide v8, p0, Lcom/android/internal/widget/LockPatternView$9;->loopStart:J

    sub-long v0, v2, v8

    .line 1155
    .local v0, "cost":J
    iput-wide v2, p0, Lcom/android/internal/widget/LockPatternView$9;->loopStart:J

    .line 1156
    const-wide/16 v8, 0x10

    cmp-long v7, v0, v8

    if-gez v7, :cond_0

    .line 1157
    const-wide/16 v8, 0x10

    sub-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1159
    .end local v0    # "cost":J
    .end local v2    # "cur":J
    :catch_0
    move-exception v4

    .line 1160
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1163
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "i":I
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    const/4 v7, 0x3

    if-ge v5, v7, :cond_b

    .line 1164
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_5
    const/4 v7, 0x3

    if-ge v6, v7, :cond_a

    .line 1165
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$400(Lcom/android/internal/widget/LockPatternView;)[[Z

    move-result-object v7

    aget-object v7, v7, v5

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_9

    .line 1166
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    const/4 v8, 0x0

    iput v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transX:F

    .line 1167
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$500(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v7

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    const/4 v8, 0x0

    iput v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->transY:F

    .line 1164
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1163
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1171
    .end local v6    # "j":I
    :cond_b
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView;->postInvalidate()V

    .line 1172
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$9;->this$0:Lcom/android/internal/widget/LockPatternView;

    const/4 v8, 0x0

    # setter for: Lcom/android/internal/widget/LockPatternView;->mDelayPatternSize:I
    invoke-static {v7, v8}, Lcom/android/internal/widget/LockPatternView;->access$602(Lcom/android/internal/widget/LockPatternView;I)I

    .line 1173
    return-void
.end method
