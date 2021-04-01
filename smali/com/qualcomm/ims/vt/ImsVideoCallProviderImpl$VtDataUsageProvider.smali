.class public Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;
.super Landroid/net/netstats/provider/NetworkStatsProvider;
.source "ImsVideoCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VtDataUsageProvider"
.end annotation


# instance fields
.field private mIfaceSnapshot:Landroid/net/NetworkStats;

.field private mRemainingAlertQuota:J

.field private mUidSnapshot:Landroid/net/NetworkStats;

.field final synthetic this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;


# direct methods
.method public constructor <init>(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;)V
    .locals 4
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 492
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-direct {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;-><init>()V

    .line 493
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 494
    new-instance v0, Landroid/net/NetworkStats;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    .line 495
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->mRemainingAlertQuota:J

    return-void
.end method

.method private updateAlertQuota(J)V
    .locals 3
    .param p1, "newQuota"    # J

    .line 572
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 575
    iget-wide v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->mRemainingAlertQuota:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 576
    :cond_0
    iput-wide p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->mRemainingAlertQuota:J

    .line 577
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    const-string v1, "onAlertReached"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->access$000(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->notifyAlertReached()V

    .line 581
    :cond_1
    return-void

    .line 573
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid quota value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method onCallDataUsageChanged(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 41
    .param p1, "dataUsage"    # Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    .line 512
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 513
    .local v1, "currentTime":J
    const/16 v39, 0x0

    .local v39, "isRoaming":I
    move/from16 v27, v39

    move/from16 v9, v39

    .line 515
    new-instance v3, Landroid/net/NetworkStats;

    const/4 v13, 0x1

    invoke-direct {v3, v1, v2, v13}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 516
    .local v3, "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    iget-object v4, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-static {v4}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->access$400(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;)Landroid/net/NetworkStats;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v14

    .line 518
    .end local v3    # "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    .local v14, "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    new-instance v21, Landroid/net/NetworkStats$Entry;

    move-object/from16 v3, v21

    .line 522
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteRxDataUsage()J

    move-result-wide v11

    .line 523
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteTxDataUsage()J

    move-result-wide v15

    const-string v4, "vt_data0"

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    const-wide/16 v17, 0x0

    move-object/from16 v40, v14

    .end local v14    # "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    .local v40, "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    move-wide/from16 v13, v17

    const-wide/16 v19, 0x0

    invoke-direct/range {v3 .. v20}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 524
    .local v3, "mobileEntry":Landroid/net/NetworkStats$Entry;
    new-instance v4, Landroid/net/NetworkStats$Entry;

    move-object/from16 v21, v4

    .line 528
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanRxDataUsage()J

    move-result-wide v29

    .line 529
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanTxDataUsage()J

    move-result-wide v33

    const-string v22, "wlan0"

    const/16 v23, -0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x1

    const-wide/16 v31, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    invoke-direct/range {v21 .. v38}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 530
    .local v4, "wifiEntry":Landroid/net/NetworkStats$Entry;
    move-object/from16 v5, v40

    .end local v40    # "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    .local v5, "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    invoke-virtual {v5, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 531
    invoke-virtual {v5, v4}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 532
    iget-object v6, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-static {v6, v5}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->access$402(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    .line 536
    new-instance v6, Landroid/net/NetworkStats;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v2, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 537
    .local v6, "vtDataUsageUidSnapshot":Landroid/net/NetworkStats;
    iget-object v7, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->access$500(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;)Landroid/net/NetworkStats;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 551
    const/16 v7, -0xa

    iput v7, v3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 552
    iput v7, v4, Landroid/net/NetworkStats$Entry;->uid:I

    .line 553
    invoke-virtual {v6, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 554
    invoke-virtual {v6, v4}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 555
    iget-object v7, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-static {v7, v6}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->access$502(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    .line 557
    iget-object v7, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-static {v7}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->access$400(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;)Landroid/net/NetworkStats;

    move-result-object v7

    iget-object v8, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v7, v8}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v7

    .line 558
    .local v7, "ifaceDiff":Landroid/net/NetworkStats;
    iget-object v8, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-static {v8}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->access$500(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;)Landroid/net/NetworkStats;

    move-result-object v8

    iget-object v9, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v8, v9}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v8

    .line 560
    .local v8, "uidDiff":Landroid/net/NetworkStats;
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v7, v8}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 561
    iget-object v9, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v9, v7}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v9

    iput-object v9, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 562
    iget-object v9, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v9, v8}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v9

    iput-object v9, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    .line 563
    invoke-virtual {v7}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v9

    .line 565
    .local v9, "usedAlertQuota":J
    iget-wide v11, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->mRemainingAlertQuota:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_0

    cmp-long v15, v9, v13

    if-lez v15, :cond_0

    .line 567
    sub-long/2addr v11, v9

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 568
    .local v11, "newQuota":J
    invoke-direct {v0, v11, v12}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->updateAlertQuota(J)V

    .line 570
    .end local v11    # "newQuota":J
    :cond_0
    return-void
.end method

.method public onRequestStatsUpdate(I)V
    .locals 1
    .param p1, "token"    # I

    .line 501
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onRequestCallDataUsage()V

    .line 502
    return-void
.end method

.method public onSetAlert(J)V
    .locals 0
    .param p1, "quotaBytes"    # J

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$VtDataUsageProvider;->updateAlertQuota(J)V

    .line 510
    return-void
.end method

.method public onSetLimit(Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 506
    return-void
.end method
