.class Lcom/zui/server/ZuiPowerControlService$3;
.super Landroid/os/UEventObserver;
.source "ZuiPowerControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/server/ZuiPowerControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/server/ZuiPowerControlService;


# direct methods
.method constructor <init>(Lcom/zui/server/ZuiPowerControlService;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 30
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 553
    const-string v24, "SUBSYSTEM"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 554
    .local v16, "sub_system":Ljava/lang/String;
    const-string v24, "POWER_SUPPLY_NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 556
    .local v9, "power_supply":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatUpdatesStopped:Z
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1300(Lcom/zui/server/ZuiPowerControlService;)Z

    move-result v24

    if-nez v24, :cond_11

    if-eqz v16, :cond_11

    const-string v24, "power_supply"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    if-eqz v9, :cond_11

    const-string v24, "temp"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$400(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    const-string v24, "POWER_SUPPLY_TEMP_CPU0"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 562
    .local v12, "s_temp_cpu0":Ljava/lang/String;
    const-string v24, "POWER_SUPPLY_TEMP_CPU1"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 563
    .local v13, "s_temp_cpu1":Ljava/lang/String;
    const-string v24, "POWER_SUPPLY_TEMP_CPU2"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 564
    .local v14, "s_temp_cpu2":Ljava/lang/String;
    const-string v24, "POWER_SUPPLY_TEMP_CPU3"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 566
    .local v15, "s_temp_cpu3":Ljava/lang/String;
    if-nez v12, :cond_0

    const/16 v19, 0x0

    .line 567
    .local v19, "temp_cpu0":I
    :goto_0
    if-nez v13, :cond_1

    const/16 v20, 0x0

    .line 568
    .local v20, "temp_cpu1":I
    :goto_1
    if-nez v14, :cond_2

    const/16 v21, 0x0

    .line 569
    .local v21, "temp_cpu2":I
    :goto_2
    if-nez v15, :cond_3

    const/16 v22, 0x0

    .line 571
    .local v22, "temp_cpu3":I
    :goto_3
    add-int v24, v19, v20

    add-int v24, v24, v21

    add-int v24, v24, v22

    div-int/lit8 v18, v24, 0x4

    .line 573
    .local v18, "temp_average":I
    const/4 v6, 0x4

    .local v6, "i":I
    :goto_4
    if-lez v6, :cond_4

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureSample:[I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1400(Lcom/zui/server/ZuiPowerControlService;)[I

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v25, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureSample:[I
    invoke-static/range {v25 .. v25}, Lcom/zui/server/ZuiPowerControlService;->access$1400(Lcom/zui/server/ZuiPowerControlService;)[I

    move-result-object v25

    add-int/lit8 v26, v6, -0x1

    aget v25, v25, v26

    aput v25, v24, v6

    .line 573
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 566
    .end local v6    # "i":I
    .end local v18    # "temp_average":I
    .end local v19    # "temp_cpu0":I
    .end local v20    # "temp_cpu1":I
    .end local v21    # "temp_cpu2":I
    .end local v22    # "temp_cpu3":I
    :cond_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    goto :goto_0

    .line 567
    .restart local v19    # "temp_cpu0":I
    :cond_1
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    goto :goto_1

    .line 568
    .restart local v20    # "temp_cpu1":I
    :cond_2
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    goto :goto_2

    .line 569
    .restart local v21    # "temp_cpu2":I
    :cond_3
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    goto :goto_3

    .line 576
    .restart local v6    # "i":I
    .restart local v18    # "temp_average":I
    .restart local v22    # "temp_cpu3":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureSample:[I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1400(Lcom/zui/server/ZuiPowerControlService;)[I

    move-result-object v24

    const/16 v25, 0x0

    aput v18, v24, v25

    .line 578
    const/16 v17, 0x0

    .line 579
    .local v17, "sum":I
    const/4 v6, 0x0

    :goto_5
    const/16 v24, 0x5

    move/from16 v0, v24

    if-ge v6, v0, :cond_5

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureSample:[I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1400(Lcom/zui/server/ZuiPowerControlService;)[I

    move-result-object v24

    aget v24, v24, v6

    add-int v17, v17, v24

    .line 579
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 582
    :cond_5
    div-int/lit8 v23, v17, 0x5

    .line 584
    .local v23, "temp_smooth":I
    const-string v24, "ZuiPowerControl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CpuTemperature ["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecentNum:I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1500(Lcom/zui/server/ZuiPowerControlService;)I

    move-result v24

    add-int/lit8 v6, v24, -0x1

    :goto_6
    if-lez v6, :cond_6

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecent:[I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1600(Lcom/zui/server/ZuiPowerControlService;)[I

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v25, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecent:[I
    invoke-static/range {v25 .. v25}, Lcom/zui/server/ZuiPowerControlService;->access$1600(Lcom/zui/server/ZuiPowerControlService;)[I

    move-result-object v25

    add-int/lit8 v26, v6, -0x1

    aget v25, v25, v26

    aput v25, v24, v6

    .line 587
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 590
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecent:[I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1600(Lcom/zui/server/ZuiPowerControlService;)[I

    move-result-object v24

    const/16 v25, 0x0

    aput v23, v24, v25

    .line 592
    const/4 v11, 0x1

    .line 593
    .local v11, "recordEnable":Z
    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecentNum:I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1500(Lcom/zui/server/ZuiPowerControlService;)I

    move-result v24

    move/from16 v0, v24

    if-ge v6, v0, :cond_7

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecent:[I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1600(Lcom/zui/server/ZuiPowerControlService;)[I

    move-result-object v24

    aget v24, v24, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v25, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordThreshold:I
    invoke-static/range {v25 .. v25}, Lcom/zui/server/ZuiPowerControlService;->access$1700(Lcom/zui/server/ZuiPowerControlService;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_12

    .line 595
    const/4 v11, 0x0

    .line 599
    :cond_7
    const/4 v10, 0x1

    .line 600
    .local v10, "recordDisable":Z
    const/4 v6, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecentNum:I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1500(Lcom/zui/server/ZuiPowerControlService;)I

    move-result v24

    move/from16 v0, v24

    if-ge v6, v0, :cond_8

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecent:[I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1600(Lcom/zui/server/ZuiPowerControlService;)[I

    move-result-object v24

    aget v24, v24, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v25, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordThreshold:I
    invoke-static/range {v25 .. v25}, Lcom/zui/server/ZuiPowerControlService;->access$1700(Lcom/zui/server/ZuiPowerControlService;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_13

    .line 602
    const/4 v10, 0x0

    .line 607
    :cond_8
    const/4 v5, 0x1

    .line 608
    .local v5, "cleanEnable":Z
    const/4 v6, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecentNum:I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1500(Lcom/zui/server/ZuiPowerControlService;)I

    move-result v24

    move/from16 v0, v24

    if-ge v6, v0, :cond_9

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecent:[I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1600(Lcom/zui/server/ZuiPowerControlService;)[I

    move-result-object v24

    aget v24, v24, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v25, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanThreshold:I
    invoke-static/range {v25 .. v25}, Lcom/zui/server/ZuiPowerControlService;->access$1800(Lcom/zui/server/ZuiPowerControlService;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_14

    .line 610
    const/4 v5, 0x0

    .line 614
    :cond_9
    const/4 v4, 0x1

    .line 615
    .local v4, "cleanDisable":Z
    const/4 v6, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecentNum:I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1500(Lcom/zui/server/ZuiPowerControlService;)I

    move-result v24

    move/from16 v0, v24

    if-ge v6, v0, :cond_a

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mCpuTemperatureRecent:[I
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1600(Lcom/zui/server/ZuiPowerControlService;)[I

    move-result-object v24

    aget v24, v24, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v25, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanThreshold:I
    invoke-static/range {v25 .. v25}, Lcom/zui/server/ZuiPowerControlService;->access$1800(Lcom/zui/server/ZuiPowerControlService;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_15

    .line 617
    const/4 v4, 0x0

    .line 630
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mLock:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$000(Lcom/zui/server/ZuiPowerControlService;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 631
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordEnabled:Z
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1900(Lcom/zui/server/ZuiPowerControlService;)Z

    move-result v24

    if-eqz v24, :cond_b

    if-nez v10, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordEnabled:Z
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1900(Lcom/zui/server/ZuiPowerControlService;)Z

    move-result v24

    if-nez v24, :cond_d

    if-eqz v11, :cond_d

    .line 632
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordEnabled:Z
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1900(Lcom/zui/server/ZuiPowerControlService;)Z

    move-result v24

    if-nez v24, :cond_16

    const/16 v24, 0x1

    :goto_b
    move-object/from16 v0, v26

    move/from16 v1, v24

    # setter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordEnabled:Z
    invoke-static {v0, v1}, Lcom/zui/server/ZuiPowerControlService;->access$1902(Lcom/zui/server/ZuiPowerControlService;Z)Z

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatRecordEnabled:Z
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$1900(Lcom/zui/server/ZuiPowerControlService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v24

    if-eqz v24, :cond_17

    .line 635
    const/4 v8, 0x0

    .line 640
    .local v8, "plugType":I
    :goto_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$2000(Lcom/zui/server/ZuiPowerControlService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Lcom/android/internal/app/IBatteryStats;->setHeatState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    .end local v8    # "plugType":I
    :cond_d
    :goto_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$200(Lcom/zui/server/ZuiPowerControlService;)Z

    move-result v24

    if-eqz v24, :cond_e

    if-nez v4, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$200(Lcom/zui/server/ZuiPowerControlService;)Z

    move-result v24

    if-nez v24, :cond_10

    if-eqz v5, :cond_10

    .line 647
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$200(Lcom/zui/server/ZuiPowerControlService;)Z

    move-result v24

    if-nez v24, :cond_18

    const/16 v24, 0x1

    :goto_e
    move-object/from16 v0, v26

    move/from16 v1, v24

    # setter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z
    invoke-static {v0, v1}, Lcom/zui/server/ZuiPowerControlService;->access$202(Lcom/zui/server/ZuiPowerControlService;Z)Z

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # invokes: Lcom/zui/server/ZuiPowerControlService;->sendOverheatCleanChanged()V
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$300(Lcom/zui/server/ZuiPowerControlService;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mOverheatCleanEnabled:Z
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$200(Lcom/zui/server/ZuiPowerControlService;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$400(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/Handler;

    move-result-object v24

    const/16 v26, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 651
    .local v7, "msg":Landroid/os/Message;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$400(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/Handler;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v26, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mDefaultOverheatCheckInterval:J
    invoke-static/range {v26 .. v26}, Lcom/zui/server/ZuiPowerControlService;->access$500(Lcom/zui/server/ZuiPowerControlService;)J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 657
    .end local v7    # "msg":Landroid/os/Message;
    :cond_10
    :goto_f
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$400(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 662
    .restart local v7    # "msg":Landroid/os/Message;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$400(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/Handler;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v25, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mTsensTemperaturePollInterval:J
    invoke-static/range {v25 .. v25}, Lcom/zui/server/ZuiPowerControlService;->access$2100(Lcom/zui/server/ZuiPowerControlService;)J

    move-result-wide v26

    const-wide/16 v28, 0x2

    mul-long v26, v26, v28

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 665
    .end local v4    # "cleanDisable":Z
    .end local v5    # "cleanEnable":Z
    .end local v6    # "i":I
    .end local v7    # "msg":Landroid/os/Message;
    .end local v10    # "recordDisable":Z
    .end local v11    # "recordEnable":Z
    .end local v12    # "s_temp_cpu0":Ljava/lang/String;
    .end local v13    # "s_temp_cpu1":Ljava/lang/String;
    .end local v14    # "s_temp_cpu2":Ljava/lang/String;
    .end local v15    # "s_temp_cpu3":Ljava/lang/String;
    .end local v17    # "sum":I
    .end local v18    # "temp_average":I
    .end local v19    # "temp_cpu0":I
    .end local v20    # "temp_cpu1":I
    .end local v21    # "temp_cpu2":I
    .end local v22    # "temp_cpu3":I
    .end local v23    # "temp_smooth":I
    :cond_11
    return-void

    .line 593
    .restart local v6    # "i":I
    .restart local v11    # "recordEnable":Z
    .restart local v12    # "s_temp_cpu0":Ljava/lang/String;
    .restart local v13    # "s_temp_cpu1":Ljava/lang/String;
    .restart local v14    # "s_temp_cpu2":Ljava/lang/String;
    .restart local v15    # "s_temp_cpu3":Ljava/lang/String;
    .restart local v17    # "sum":I
    .restart local v18    # "temp_average":I
    .restart local v19    # "temp_cpu0":I
    .restart local v20    # "temp_cpu1":I
    .restart local v21    # "temp_cpu2":I
    .restart local v22    # "temp_cpu3":I
    .restart local v23    # "temp_smooth":I
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 600
    .restart local v10    # "recordDisable":Z
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    .line 608
    .restart local v5    # "cleanEnable":Z
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    .line 615
    .restart local v4    # "cleanDisable":Z
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a

    .line 632
    :cond_16
    const/16 v24, 0x0

    goto/16 :goto_b

    .line 637
    :cond_17
    const/4 v8, 0x1

    .restart local v8    # "plugType":I
    goto/16 :goto_c

    .line 647
    .end local v8    # "plugType":I
    :cond_18
    const/16 v24, 0x0

    goto/16 :goto_e

    .line 654
    :cond_19
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zui/server/ZuiPowerControlService$3;->this$0:Lcom/zui/server/ZuiPowerControlService;

    move-object/from16 v24, v0

    # getter for: Lcom/zui/server/ZuiPowerControlService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/zui/server/ZuiPowerControlService;->access$400(Lcom/zui/server/ZuiPowerControlService;)Landroid/os/Handler;

    move-result-object v24

    const/16 v26, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_f

    .line 657
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v24

    .line 641
    .restart local v8    # "plugType":I
    :catch_0
    move-exception v24

    goto/16 :goto_d
.end method
