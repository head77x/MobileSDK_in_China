.class public Lcom/cmcc/omp/security/CmccOmpSharedPreferences;
.super Ljava/lang/Object;
.source "CmccOmpSharedPreferences.java"


# static fields
.field private static SEED_STR:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CmccompSharedPreferences"

.field private static counter:I = 0x0

.field private static final counterKey:Ljava/lang/String; = "COUNTER"

.field private static final deviceId:Ljava/lang/String; = "deviceid"

.field private static final deviceRegistered:Ljava/lang/String; = "deviceRegistered"

.field private static final deviceSupport:Ljava/lang/String; = "devicesupport"

.field private static fileurl_c:Ljava/lang/String; = null

.field private static final initState:Ljava/lang/String; = "initState"

.field private static final pidKey:Ljava/lang/String; = "PID"

.field private static saveEditor:Landroid/content/SharedPreferences$Editor; = null

.field private static saveInfo:Landroid/content/SharedPreferences; = null

.field private static shareContext:Landroid/content/Context; = null

.field private static smscounter:I = 0x0

.field private static final smscounterKey:Ljava/lang/String; = "SMSCOUNTER"

.field private static final timestampKey:Ljava/lang/String; = "TIME_STAMP"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/seed.reinforce"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->fileurl_c:Ljava/lang/String;

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->SEED_STR:Ljava/lang/String;

    .line 192
    const/4 v0, 0x0

    sput v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->counter:I

    .line 197
    const/4 v0, -0x1

    sput v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->smscounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addCounter(II)V
    .locals 1
    .parameter "counter"
    .parameter "key"

    .prologue
    const/4 v0, -0x1

    .line 264
    packed-switch p1, :pswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 266
    :pswitch_0
    if-gt p0, v0, :cond_0

    .line 268
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getSMSCounterOver()I

    move-result p0

    .line 270
    :cond_0
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->setSMSCounter(I)V

    goto :goto_0

    .line 273
    :pswitch_1
    if-gt p0, v0, :cond_1

    .line 275
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getCounterOver()I

    move-result p0

    .line 277
    :cond_1
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->setCounter(I)V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static clearAllData()V
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    :cond_0
    return-void
.end method

.method protected static declared-synchronized getCounter()Ljava/lang/String;
    .locals 4

    .prologue
    .line 246
    const-class v1, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getCounterOver()I

    move-result v0

    sput v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->counter:I

    .line 247
    sget v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->counter:I

    const v2, 0x55d4a7f

    if-lt v0, v2, :cond_0

    .line 248
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->addCounter(II)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getCounterOver()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 254
    :goto_0
    monitor-exit v1

    return-object v0

    .line 251
    :cond_0
    :try_start_1
    const-string v0, "CmccompSharedPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCounter file counter = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->counter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->counter:I

    .line 253
    sget v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->counter:I

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->addCounter(II)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    sget v2, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->counter:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCounterOver()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->shareContext:Landroid/content/Context;

    const-string v1, "cmcc_omp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "COUNTER"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static getDeviceReg()Z
    .locals 3

    .prologue
    .line 150
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveInfo:Landroid/content/SharedPreferences;

    const-string v1, "deviceRegistered"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static getDeviceSupport()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveInfo:Landroid/content/SharedPreferences;

    const-string v1, "devicesupport"

    const-string v2, "1000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getDeviceid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveInfo:Landroid/content/SharedPreferences;

    const-string v1, "deviceid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getInitState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 162
    sget-object v1, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveInfo:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 164
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveInfo:Landroid/content/SharedPreferences;

    const-string v2, "initState"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected static getPid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 60
    const-string v1, ""

    .line 61
    .local v1, tempPid:Ljava/lang/String;
    sget-object v2, Lcom/cmcc/omp/security/CmccOmpUtility;->curConfUrlField:Lcom/cmcc/omp/util/ConfUrlField;

    invoke-virtual {v2}, Lcom/cmcc/omp/util/ConfUrlField;->getTestMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    const-string v1, "12345678901234567890123456789012"

    .line 78
    :cond_0
    :goto_0
    return-object v1

    .line 68
    :cond_1
    :try_start_0
    sget-object v2, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveInfo:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 70
    sget-object v2, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveInfo:Landroid/content/SharedPreferences;

    const-string v3, "PID"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const-string v2, "CmccompSharedPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPid exception ...= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static declared-synchronized getSMSCounter()Ljava/lang/String;
    .locals 4

    .prologue
    .line 210
    const-class v1, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getSMSCounterOver()I

    move-result v0

    sput v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->smscounter:I

    .line 212
    sget v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->smscounter:I

    const/16 v2, 0x26ac

    if-ge v0, v2, :cond_0

    sget v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->smscounter:I

    const/4 v2, -0x1

    if-gt v0, v2, :cond_1

    .line 213
    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->addCounter(II)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getSMSCounterOver()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 220
    :goto_0
    monitor-exit v1

    return-object v0

    .line 216
    :cond_1
    :try_start_1
    const-string v0, "CmccompSharedPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getsmsCounter file smscounter = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->smscounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->smscounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->smscounter:I

    .line 218
    sget v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->smscounter:I

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->addCounter(II)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    sget v2, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->smscounter:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSMSCounterOver()I
    .locals 3

    .prologue
    .line 108
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->shareContext:Landroid/content/Context;

    const-string v1, "cmcc_omp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SMSCOUNTER"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static declared-synchronized getSeed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 343
    const-class v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->SEED_STR:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static declared-synchronized getSeedLength()I
    .locals 5

    .prologue
    .line 320
    const-class v2, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;

    monitor-enter v2

    const/4 v0, 0x0

    .line 321
    .local v0, len:I
    :try_start_0
    sget-object v1, Lcom/cmcc/omp/security/CmccOmpUtility;->curConfUrlField:Lcom/cmcc/omp/util/ConfUrlField;

    invoke-virtual {v1}, Lcom/cmcc/omp/util/ConfUrlField;->getTestMode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    const-string v1, "12345678901234567890123456789012345678901234"

    sput-object v1, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->SEED_STR:Ljava/lang/String;

    .line 325
    sget-object v1, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->SEED_STR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 333
    :goto_0
    monitor-exit v2

    return v0

    .line 329
    :cond_0
    :try_start_1
    sget-object v1, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/cmcc/omp/security/CmccOmpUtility;->getSeed(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 330
    const-string v1, "CmccompSharedPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "current seed len is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v1, ""

    sput-object v1, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->SEED_STR:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected static getTimestamp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveInfo:Landroid/content/SharedPreferences;

    const-string v1, "TIME_STAMP"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initSeedSave()V
    .locals 4

    .prologue
    .line 291
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->fileurl_c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v2, file_c:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    :cond_0
    :goto_1
    return-void

    .line 297
    :catch_0
    move-exception v1

    .line 299
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 305
    .end local v1           #e1:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 307
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static initSharedPreferences(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    sput-object p0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->shareContext:Landroid/content/Context;

    .line 51
    const-string v0, "cmcc_omp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveInfo:Landroid/content/SharedPreferences;

    .line 52
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/seed.reinforce"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->fileurl_c:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->initSeedSave()V

    .line 56
    return-void
.end method

.method private static setCounter(I)V
    .locals 2
    .parameter "counter"

    .prologue
    .line 114
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "COUNTER"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    return-void
.end method

.method protected static setDeviceReg(Z)V
    .locals 3
    .parameter "deviceReg"

    .prologue
    .line 155
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "deviceRegistered"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    const-string v0, "CmccompSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveEditor , deviceRegistered = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    return-void
.end method

.method protected static setDeviceSupport(Ljava/lang/String;)V
    .locals 3
    .parameter "devicesupport"

    .prologue
    .line 143
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "devicesupport"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    const-string v0, "CmccompSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveEditor , devicesupport = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method

.method protected static setDeviceid(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceid"

    .prologue
    .line 95
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "deviceid"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    const-string v0, "CmccompSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save editor deviceid  length : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method protected static setInitState(Z)V
    .locals 2
    .parameter "isInit"

    .prologue
    .line 169
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "initState"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v0, "CmccompSharedPreferences"

    const-string v1, "saveEditor , initState = initState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method

.method protected static setPid(Ljava/lang/String;)V
    .locals 3
    .parameter "pid"

    .prologue
    .line 83
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PID"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string v0, "CmccompSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " setPid start! pid length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void
.end method

.method private static setSMSCounter(I)V
    .locals 2
    .parameter "counter"

    .prologue
    .line 120
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SMSCOUNTER"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method protected static setTimestamp(Ljava/lang/String;)V
    .locals 3
    .parameter "timestamp"

    .prologue
    .line 131
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "TIME_STAMP"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    const-string v0, "CmccompSharedPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveEditor , timestamp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v0, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->saveEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    return-void
.end method
