.class public Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;
.super Ljava/lang/Object;
.source "CmccOmpInitEnvBySSO.java"


# static fields
.field protected static INIT_STATE:Z = false

.field private static final Operation:Ljava/lang/String; = "ompssodeviceregrequest"

.field private static final TAG:Ljava/lang/String; = "OmpInitEnvBySSO"

.field protected static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->INIT_STATE:Z

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->context:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static InitOmpEnvLight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "ctx"
    .parameter "url"
    .parameter "appid"
    .parameter "pid"
    .parameter "channelId"

    .prologue
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/cmcc/omp/security/CmccOmpUtility;->t1:J

    .line 23
    const-string v2, "OMSSEXECTIME"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OmpInitEnvBySSO: start time = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/cmcc/omp/security/CmccOmpUtility;->t1:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p0, p1, p2}, Lcom/cmcc/omp/security/CmccOmpUtility;->initParameters(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 25
    .local v0, returnValue:I
    sput-object p0, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->context:Landroid/content/Context;

    .line 26
    if-eqz v0, :cond_0

    .line 40
    .end local v0           #returnValue:I
    :goto_0
    return v0

    .line 34
    .restart local v0       #returnValue:I
    :cond_0
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpUtility;->InitUnZip(Landroid/content/Context;)I

    .line 35
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->ssoDeviceRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 36
    .local v1, tmp:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/cmcc/omp/security/CmccOmpUtility;->t2:J

    .line 37
    const-string v2, "OMSSEXECTIME"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OmpInitEnvBySSO: end time = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/cmcc/omp/security/CmccOmpUtility;->t2:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-wide v2, Lcom/cmcc/omp/security/CmccOmpUtility;->t2:J

    sget-wide v4, Lcom/cmcc/omp/security/CmccOmpUtility;->t1:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/cmcc/omp/security/CmccOmpUtility;->t5:J

    .line 39
    const-string v2, "OMSSEXECTIME"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OmpInitEnvBySSO: consuming time = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/cmcc/omp/security/CmccOmpUtility;->t5:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 40
    goto :goto_0
.end method

.method protected static getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "ids"

    .prologue
    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSecurityInterface;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, deviceinfo:Ljava/lang/String;
    const-string v4, "OmpInitEnvBySSO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deviceinfo = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v4, "[^A-Za-z0-9._-]+"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 238
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 239
    .local v1, m:Ljava/util/regex/Matcher;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 240
    .local v3, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_0

    .line 243
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string v4, "OmpInitEnvBySSO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "matched deviceinfo = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v4, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/cmcc/omp/security/CmccOmpUtility;->Base64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 241
    :cond_0
    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0
.end method

.method protected static getDeviceid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ctx"
    .parameter "ids"

    .prologue
    .line 250
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 251
    .local v3, mTm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, imei:Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 253
    .local v5, mtype:Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 254
    .local v4, mtyb:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, DeviceMac:Ljava/lang/String;
    :try_start_0
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 262
    sget-object v6, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-static {v0, p1, v6, v7}, Lcom/cmcc/omp/security/CmccOmpUtility;->GetDeviceID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "OmpInitEnvBySSO"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Get DeviceMac Failed, Exception = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected static getEncryptedDeviceid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "timestamp"
    .parameter "deviceid"
    .parameter "ids"

    .prologue
    .line 274
    invoke-static {p1}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "OmpInitEnvBySSO"

    const-string v1, "deviceid is null...errorcode=5059need initialize.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/cmcc/omp/security/CmccOmpUtility;->getEncryptedIMSI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "request"
    .parameter "ids"

    .prologue
    .line 266
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "OmpInitEnvBySSO"

    const-string v1, "getMac failed..getMac request is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/cmcc/omp/security/CmccOmpUtility;->GetRegMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static initNeed(Ljava/lang/String;)Z
    .locals 6
    .parameter "ids"

    .prologue
    const/4 v2, 0x1

    .line 210
    sget-object v3, Lcom/cmcc/omp/security/CmccOmpUtility;->curConfUrlField:Lcom/cmcc/omp/util/ConfUrlField;

    invoke-virtual {v3}, Lcom/cmcc/omp/util/ConfUrlField;->getTestMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    const-string v3, "OmpInitEnvBySSO"

    const-string v4, "app is test mode...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getSeedLength()I

    move-result v1

    .line 215
    .local v1, seedLen:I
    const/16 v3, 0x2c

    if-eq v1, v3, :cond_2

    .line 216
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->clearAllData()V

    .line 217
    const-string v3, "OmpInitEnvBySSO"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "seed is error or seed length =  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , need initialize ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    :goto_0
    return v2

    .line 221
    :cond_2
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getCounterOver()I

    move-result v0

    .line 222
    .local v0, count:I
    const v3, 0x55d4a7f

    if-lt v0, v3, :cond_3

    .line 223
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->clearAllData()V

    .line 224
    const-string v3, "OmpInitEnvBySSO"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "count is error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , need initialize ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_3
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpUtility;->isDeviceRegister(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 230
    const-string v2, "OmpInitEnvBySSO"

    const-string v3, " not need initialize ..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static declared-synchronized ssoDeviceRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 30
    .parameter "ctx"
    .parameter "url"
    .parameter "appid"
    .parameter "pid"
    .parameter "channelId"

    .prologue
    .line 45
    const-class v23, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;

    monitor-enter v23

    :try_start_0
    const-string v5, "OmpInitEnvBySSO"

    const-string v8, "ssoDeviceRegister is calling..."

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 47
    .local v24, t1:J
    const-string v5, "OMSSEXECTIME"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OmpInitEnvBySSOssoDeviceRegisterstart time = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static/range {p0 .. p4}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkParameters(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 49
    .local v21, statuscode:I
    if-eqz v21, :cond_0

    .line 50
    const-string v5, "OmpInitEnvBySSO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "checkParameters failed, code="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v5, v21

    .line 200
    :goto_0
    monitor-exit v23

    return v5

    .line 53
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->initNeed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 54
    const/4 v5, 0x0

    goto :goto_0

    .line 56
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->getDeviceid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 57
    .local v12, deviceid:Ljava/lang/String;
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpUtility;->gettimestamp()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, timestamp:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v12, v5}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->getEncryptedDeviceid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 59
    .local v16, encrypteddeviceid:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "1"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 60
    if-eqz v4, :cond_2

    if-eqz v16, :cond_2

    .line 61
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3

    .line 62
    :cond_2
    const-string v5, "OmpInitEnvBySSO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Get Req for ssoDeviceRegister action failed, timestamp="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", appid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", encrypteddeviceid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/16 v5, 0x13ec

    goto/16 :goto_0

    .line 65
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 66
    .local v13, deviceinfo:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 68
    .local v17, mac:Ljava/lang/String;
    new-instance v22, Ljava/lang/Thread;

    new-instance v5, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v5, v0, v1, v2}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    .local v22, t:Ljava/lang/Thread;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    .line 97
    const-string v5, "OmpInitEnvBySSO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "start initialize ... cmcc omp timestamp"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><request><operation>ompssodeviceregrequest</operation><appid>"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</appid>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 104
    const-string v8, "<pid>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</pid>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 105
    const-string v8, "<channelid>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</channelid>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 106
    const-string v8, "<timestamp>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</timestamp>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 107
    const-string v8, "<encrypteddeviceid>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</encrypteddeviceid>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 108
    const-string v8, "<mac>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</mac>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 109
    const-string v8, "<deviceinfo>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</deviceinfo>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 110
    const-string v8, "</request>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 111
    .local v11, Str:Ljava/lang/String;
    const-string v5, "OmpInitEnvBySSO"

    const-string v8, "----------------------ssoDeviceRegister start-----------------------\r\n"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v5, "OmpInitEnvBySSO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Str is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkConnect()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v21

    .line 117
    if-eqz v21, :cond_4

    move/from16 v5, v21

    .line 118
    goto/16 :goto_0

    .line 123
    :cond_4
    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v0, v5, v11}, Lcom/cmcc/omp/security/CmccOmpUtility;->sendSocketRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 125
    .local v20, s:Ljava/lang/String;
    const-string v5, "OmpInitEnvBySSO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "reponse is : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v5, " "

    const-string v8, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 127
    const/16 v19, 0x0

    .line 128
    .local v19, reslt:Ljava/lang/String;
    const/16 v18, -0x1

    .line 129
    .local v18, maccode:I
    const/4 v6, 0x0

    .line 130
    .local v6, encryptseed:Ljava/lang/String;
    const/4 v14, 0x0

    .line 131
    .local v14, devicesupport:Ljava/lang/String;
    const-string v5, "<statuscode>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 132
    const-string v5, "<statuscode>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    const-string v8, "</statuscode>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 133
    const-string v5, "<statuscode>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    const-string v8, "</statuscode>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 134
    const-string v5, "OmpInitEnvBySSO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "statuscode = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v5, "0"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "OK"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 142
    :cond_5
    const-string v5, "<encryptedseed>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "<encryptedseed>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xf

    const-string v8, "</encryptedseed>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_7

    .line 143
    :cond_6
    const-string v5, "<encryptseed>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "<encryptseed>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xd

    const-string v8, "</encryptseed>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    .line 144
    :cond_7
    const-string v5, "<mac>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "<mac>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    const-string v8, "</mac>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    .line 146
    const-string v5, "<encryptedseed>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 147
    const-string v5, "<encryptedseed>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xf

    const-string v8, "</encryptedseed>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 150
    :goto_1
    const-string v5, "<mac>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    const-string v8, "</mac>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, retMac:Ljava/lang/String;
    const-string v5, "OmpInitEnvBySSO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "-------seed length = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    move-object/from16 v5, p2

    invoke-static/range {v4 .. v10}, Lcom/cmcc/omp/security/CmccOmpUtility;->SetRegSeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 158
    if-eqz v18, :cond_a

    .line 159
    const-string v5, "Seed"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "verify failed. "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 204
    .local v26, t2:J
    const-string v5, "OMSSEXECTIME"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OmpInitEnvBySSOssoDeviceRegister : end time = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v5, "OMSSEXECTIME"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OmpInitEnvBySSOssoDeviceRegister : consuming time = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v28, v26, v24

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    const/16 v5, 0x13c0

    goto/16 :goto_0

    .line 136
    .end local v7           #retMac:Ljava/lang/String;
    .end local v26           #t2:J
    :cond_8
    :try_start_4
    const-string v5, "OmpInitEnvBySSO"

    const-string v8, "no statuscode error..."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 203
    :goto_2
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 204
    .restart local v26       #t2:J
    const-string v5, "OMSSEXECTIME"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OmpInitEnvBySSOssoDeviceRegister : end time = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v5, "OMSSEXECTIME"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OmpInitEnvBySSOssoDeviceRegister : consuming time = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v28, v26, v24

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    const/16 v5, 0x1484

    goto/16 :goto_0

    .line 149
    .end local v26           #t2:J
    :cond_9
    :try_start_6
    const-string v5, "<encryptseed>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xd

    const-string v8, "</encryptseed>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 163
    .restart local v7       #retMac:Ljava/lang/String;
    :cond_a
    const-string v5, "<devicesupport>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 165
    const-string v5, "<devicesupport>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xf

    const-string v8, "</devicesupport>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 166
    invoke-static {v14}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->setDeviceSupport(Ljava/lang/String;)V

    .line 167
    const-string v5, "OmpInitEnvBySSO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "devicesupport = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_b
    const/4 v5, 0x1

    sput-boolean v5, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->INIT_STATE:Z

    .line 170
    sget-boolean v5, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->INIT_STATE:Z

    invoke-static {v5}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->setInitState(Z)V

    .line 171
    sget-boolean v5, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->INIT_STATE:Z

    invoke-static {v5}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->setDeviceReg(Z)V

    .line 172
    invoke-static {v12}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->setDeviceid(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 203
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 204
    .restart local v26       #t2:J
    const-string v5, "OMSSEXECTIME"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OmpInitEnvBySSOssoDeviceRegister : end time = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v5, "OMSSEXECTIME"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OmpInitEnvBySSOssoDeviceRegister : consuming time = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v28, v26, v24

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 173
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 177
    .end local v7           #retMac:Ljava/lang/String;
    .end local v26           #t2:J
    :cond_c
    :try_start_8
    const-string v5, "OmpInitEnvBySSO"

    const-string v8, "no seed error..."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    .line 197
    .end local v6           #encryptseed:Ljava/lang/String;
    .end local v14           #devicesupport:Ljava/lang/String;
    .end local v18           #maccode:I
    .end local v19           #reslt:Ljava/lang/String;
    .end local v20           #s:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 199
    .local v15, e:Ljava/lang/Exception;
    :try_start_9
    const-string v5, "OmpInitEnvBySSO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Communicate with server failed, errorcode=5151,OMSSExcepiton ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 203
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 204
    .restart local v26       #t2:J
    const-string v5, "OMSSEXECTIME"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OmpInitEnvBySSOssoDeviceRegister : end time = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v5, "OMSSEXECTIME"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OmpInitEnvBySSOssoDeviceRegister : consuming time = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v28, v26, v24

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 200
    const/16 v5, 0x141f

    goto/16 :goto_0

    .line 182
    .end local v15           #e:Ljava/lang/Exception;
    .end local v26           #t2:J
    .restart local v6       #encryptseed:Ljava/lang/String;
    .restart local v14       #devicesupport:Ljava/lang/String;
    .restart local v18       #maccode:I
    .restart local v19       #reslt:Ljava/lang/String;
    .restart local v20       #s:Ljava/lang/String;
    :cond_d
    :try_start_b
    const-string v5, "OmpInitEnvBySSO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "error maccode = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 184
    :try_start_c
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move-result v5

    .line 203
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 204
    .restart local v26       #t2:J
    const-string v8, "OMSSEXECTIME"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "OmpInitEnvBySSOssoDeviceRegister : end time = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v8, "OMSSEXECTIME"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "OmpInitEnvBySSOssoDeviceRegister : consuming time = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v28, v26, v24

    move-wide/from16 v0, v28

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 45
    .end local v4           #timestamp:Ljava/lang/String;
    .end local v6           #encryptseed:Ljava/lang/String;
    .end local v11           #Str:Ljava/lang/String;
    .end local v12           #deviceid:Ljava/lang/String;
    .end local v13           #deviceinfo:Ljava/lang/String;
    .end local v14           #devicesupport:Ljava/lang/String;
    .end local v16           #encrypteddeviceid:Ljava/lang/String;
    .end local v17           #mac:Ljava/lang/String;
    .end local v18           #maccode:I
    .end local v19           #reslt:Ljava/lang/String;
    .end local v20           #s:Ljava/lang/String;
    .end local v21           #statuscode:I
    .end local v22           #t:Ljava/lang/Thread;
    .end local v24           #t1:J
    .end local v26           #t2:J
    :catchall_0
    move-exception v5

    monitor-exit v23

    throw v5

    .line 186
    .restart local v4       #timestamp:Ljava/lang/String;
    .restart local v6       #encryptseed:Ljava/lang/String;
    .restart local v11       #Str:Ljava/lang/String;
    .restart local v12       #deviceid:Ljava/lang/String;
    .restart local v13       #deviceinfo:Ljava/lang/String;
    .restart local v14       #devicesupport:Ljava/lang/String;
    .restart local v16       #encrypteddeviceid:Ljava/lang/String;
    .restart local v17       #mac:Ljava/lang/String;
    .restart local v18       #maccode:I
    .restart local v19       #reslt:Ljava/lang/String;
    .restart local v20       #s:Ljava/lang/String;
    .restart local v21       #statuscode:I
    .restart local v22       #t:Ljava/lang/Thread;
    .restart local v24       #t1:J
    :catch_1
    move-exception v15

    .line 187
    .restart local v15       #e:Ljava/lang/Exception;
    :try_start_e
    const-string v5, "OmpInitEnvBySSO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Get return code from server failed, code="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uff0cOMSSException="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 203
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 204
    .restart local v26       #t2:J
    const-string v5, "OMSSEXECTIME"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OmpInitEnvBySSOssoDeviceRegister : end time = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v5, "OMSSEXECTIME"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OmpInitEnvBySSOssoDeviceRegister : consuming time = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v28, v26, v24

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 188
    const/16 v5, 0x1484

    goto/16 :goto_0

    .line 193
    .end local v15           #e:Ljava/lang/Exception;
    .end local v26           #t2:J
    :cond_e
    :try_start_10
    const-string v5, "OmpInitEnvBySSO"

    const-string v8, "no statuscode error.   "

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_2

    .line 202
    .end local v6           #encryptseed:Ljava/lang/String;
    .end local v14           #devicesupport:Ljava/lang/String;
    .end local v18           #maccode:I
    .end local v19           #reslt:Ljava/lang/String;
    .end local v20           #s:Ljava/lang/String;
    :catchall_1
    move-exception v5

    .line 203
    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 204
    .restart local v26       #t2:J
    const-string v8, "OMSSEXECTIME"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "OmpInitEnvBySSOssoDeviceRegister : end time = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v8, "OMSSEXECTIME"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "OmpInitEnvBySSOssoDeviceRegister : consuming time = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v28, v26, v24

    move-wide/from16 v0, v28

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    throw v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
.end method

.method public static strIsNull(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 282
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
