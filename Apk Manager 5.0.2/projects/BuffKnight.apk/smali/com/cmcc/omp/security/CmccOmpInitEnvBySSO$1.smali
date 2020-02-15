.class Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;
.super Ljava/lang/Object;
.source "CmccOmpInitEnvBySSO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->ssoDeviceRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$appid:Ljava/lang/String;

.field private final synthetic val$channelId:Ljava/lang/String;

.field private final synthetic val$pid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;->val$appid:Ljava/lang/String;

    iput-object p2, p0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;->val$pid:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;->val$channelId:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 73
    .local v14, total_mac1:J
    const-string v18, "OmpInitEnvBySSO"

    const-string v19, "start getApkMac..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    .local v2, t1_mac1:J
    const-string v18, "OMSSEXECTIME"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "OmpInitEnvBySSOGetAPKMac start time = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;->val$appid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;->val$pid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;->val$channelId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getCounter()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v21, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-static/range {v18 .. v21}, Lcom/cmcc/omp/security/CmccOmpUtility;->GetAPKMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 78
    .local v4, t1_mac2:J
    const-string v18, "OMSSEXECTIME"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "OmpInitEnvBySSOGetAPKMac end time = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v18, "OmpInitEnvBySSO"

    const-string v19, "start getDexMac..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 81
    .local v6, t2_mac1:J
    const-string v18, "OMSSEXECTIME"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "OmpInitEnvBySSOgetDexMac start time = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;->val$appid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;->val$pid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;->val$channelId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getCounter()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v21, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-static/range {v18 .. v21}, Lcom/cmcc/omp/security/CmccOmpUtility;->GetDEXMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 84
    .local v8, t2_mac2:J
    const-string v18, "OMSSEXECTIME"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "OmpInitEnvBySSOgetDexMac end time = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v18, "OmpInitEnvBySSO"

    const-string v19, "start getCerMac..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 87
    .local v10, t3_mac1:J
    const-string v18, "OMSSEXECTIME"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "OmpInitEnvBySSOgetCerMac start time = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;->val$appid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;->val$pid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;->val$channelId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getCounter()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v21, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-static/range {v18 .. v21}, Lcom/cmcc/omp/security/CmccOmpUtility;->GetCERMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 90
    .local v12, t3_mac2:J
    const-string v18, "OMSSEXECTIME"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "OmpInitEnvBySSOgetCerMac end time = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 92
    .local v16, total_mac2:J
    const-string v18, "OmpInitEnvBySSO"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "total time for calculating three macs = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v20, v16, v14

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method
