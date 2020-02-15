.class public Lcom/cmcc/omp/security/CmccOmpUtility;
.super Ljava/lang/Object;
.source "CmccOmpUtility.java"


# static fields
.field public static final COMUNICATE_TIME:Ljava/lang/String; = "COMUNICATE_TIME"

.field public static final C_EXECTIME:Ljava/lang/String; = "C_EXECTIME"

.field private static IS_CHANGE_MANUAL:Z = false

.field protected static IS_CMWAP:Z = false

.field private static IS_SETTING_APN:Z = false

.field protected static IS_SIMULATOR:Z = false

.field private static IS_TEST_APN:Z = false

.field protected static Install_apk_path:Ljava/lang/String; = null

.field public static final OMSSEXECTIME:Ljava/lang/String; = "OMSSEXECTIME"

.field private static SEED_STR:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "CmccOmpUtility"

.field private static cmwapApn:Ljava/lang/String; = null

.field protected static cmwapApnPort:I = 0x0

.field protected static confXMLFieldList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcc/omp/util/ConfUrlField;",
            ">;"
        }
    .end annotation
.end field

.field protected static curConfUrlField:Lcom/cmcc/omp/util/ConfUrlField; = null

.field public static final errorCode:Ljava/lang/String; = "errorCode"

.field private static headlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static init_Url:Ljava/lang/String;

.field private static isVerifyHmac:Ljava/lang/String;

.field protected static packageName:Ljava/lang/String;

.field protected static path:Ljava/lang/String;

.field public static t1:J

.field public static t2:J

.field public static t3:J

.field public static t4:J

.field public static t5:J

.field public static t6:J

.field public static t7:J

.field private static temp:Ljava/lang/String;

.field protected static timestamp:Ljava/lang/String;

.field protected static wapApn:Ljava/lang/String;

.field protected static wapApnPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 45
    sput-wide v0, Lcom/cmcc/omp/security/CmccOmpUtility;->t1:J

    .line 46
    sput-wide v0, Lcom/cmcc/omp/security/CmccOmpUtility;->t2:J

    .line 47
    sput-wide v0, Lcom/cmcc/omp/security/CmccOmpUtility;->t3:J

    .line 48
    sput-wide v0, Lcom/cmcc/omp/security/CmccOmpUtility;->t4:J

    .line 49
    sput-wide v0, Lcom/cmcc/omp/security/CmccOmpUtility;->t5:J

    .line 50
    sput-wide v0, Lcom/cmcc/omp/security/CmccOmpUtility;->t6:J

    .line 51
    sput-wide v0, Lcom/cmcc/omp/security/CmccOmpUtility;->t7:J

    .line 53
    const-string v0, "0"

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->temp:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->isVerifyHmac:Ljava/lang/String;

    .line 63
    const-string v0, "100920031464"

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->timestamp:Ljava/lang/String;

    .line 67
    sput-boolean v2, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_CMWAP:Z

    .line 72
    const-string v0, "192.168.230.8"

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->wapApn:Ljava/lang/String;

    .line 74
    const/16 v0, 0x2344

    sput v0, Lcom/cmcc/omp/security/CmccOmpUtility;->wapApnPort:I

    .line 79
    sput-boolean v2, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_TEST_APN:Z

    .line 84
    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->cmwapApn:Ljava/lang/String;

    .line 86
    const/16 v0, 0x50

    sput v0, Lcom/cmcc/omp/security/CmccOmpUtility;->cmwapApnPort:I

    .line 91
    sput-boolean v3, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_SETTING_APN:Z

    .line 96
    sput-boolean v3, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_CHANGE_MANUAL:Z

    .line 98
    sput-boolean v2, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_SIMULATOR:Z

    .line 105
    new-instance v0, Lcom/cmcc/omp/util/ConfUrlField;

    invoke-direct {v0}, Lcom/cmcc/omp/util/ConfUrlField;-><init>()V

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->curConfUrlField:Lcom/cmcc/omp/util/ConfUrlField;

    .line 106
    const-string v0, "com.cmcc.omp.security"

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    .line 107
    const-string v0, ""

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->path:Ljava/lang/String;

    .line 108
    const-string v0, ""

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    .line 109
    const-string v0, ""

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->init_Url:Ljava/lang/String;

    .line 988
    const-string v0, "cmcc_rusteze"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 989
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Base64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native GetAPKMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native GetCERMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native GetDEXMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native GetDeviceID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native GetEncryptedContFlex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native GetRegMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected static InitUnZip(Landroid/content/Context;)I
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 122
    if-nez p0, :cond_0

    .line 123
    const/16 v1, 0x13bd

    .line 145
    .end local p0
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return v1

    .line 124
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/cmcc/omp/security/CmccOmpUtility;->path:Ljava/lang/String;

    .line 126
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    .line 129
    :try_start_0
    const-string v2, "CmccOmpUtility"

    const-string v3, "unzipFile"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v2, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcc/omp/util/XZip;->UnZipAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 777 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cmcc/omp/security/CmccOmpUtility;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "readme.data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 777 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cmcc/omp/security/CmccOmpUtility;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "help.data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 136
    const-string v2, "CmccOmpUtility"

    sget-object v3, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "CmccOmpUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unzip bin file failed, errorCode=5206OMSSException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sput-boolean v1, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->INIT_STATE:Z

    .line 142
    sget-boolean v1, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->INIT_STATE:Z

    invoke-static {v1}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->setInitState(Z)V

    .line 143
    const/16 v1, 0x1456

    goto/16 :goto_0
.end method

.method public static native SetRegSeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected static checkAppid(Ljava/lang/String;)I
    .locals 4
    .parameter "appid"

    .prologue
    const/16 v1, 0x13f0

    .line 863
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_1

    .line 864
    :cond_0
    const-string v2, "CmccOmpUtility"

    const-string v3, "input appid is error... 5104"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :goto_0
    return v1

    .line 869
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    const/4 v1, 0x0

    goto :goto_0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CmccOmpUtility"

    const-string v3, "parse appid failed... 5104"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static checkAppid2(Ljava/lang/String;)I
    .locals 4
    .parameter "appid"

    .prologue
    const/16 v1, 0x13f0

    .line 880
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-eq v2, v3, :cond_1

    .line 881
    :cond_0
    const-string v2, "CmccOmpUtility"

    const-string v3, "input appid is error... 5104"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :goto_0
    return v1

    .line 886
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    const/4 v1, 0x0

    goto :goto_0

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CmccOmpUtility"

    const-string v3, "parse appid failed... 5104"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static checkChannelId(Ljava/lang/String;)I
    .locals 4
    .parameter "channelId"

    .prologue
    const/16 v1, 0x13f1

    .line 912
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_1

    .line 913
    :cond_0
    const-string v2, "CmccOmpUtility"

    const-string v3, "input channelid is error...5105"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :goto_0
    return v1

    .line 917
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    const/4 v1, 0x0

    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CmccOmpUtility"

    const-string v3, "input channelid is error...5105"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static checkChannelId2(Ljava/lang/String;)I
    .locals 4
    .parameter "channelId"

    .prologue
    const/16 v1, 0x13f1

    .line 897
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 898
    :cond_0
    const-string v2, "CmccOmpUtility"

    const-string v3, "input channelid is error...5105"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :goto_0
    return v1

    .line 902
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    const/4 v1, 0x0

    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CmccOmpUtility"

    const-string v3, "input channelid is error...5105"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static checkConnect()I
    .locals 4

    .prologue
    .line 540
    const/4 v1, 0x0

    .line 541
    .local v1, statuscode:I
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpUtility;->isConnect()Z

    move-result v0

    .line 542
    .local v0, isConnectSucceed:Z
    if-nez v0, :cond_0

    .line 544
    const-string v2, "CmccOmpUtility"

    const-string v3, "Connection is failed...5150"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/16 v1, 0x141e

    .line 547
    .end local v1           #statuscode:I
    :cond_0
    return v1
.end method

.method protected static checkConnect(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, th:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkConnect()I

    move-result v0

    .line 533
    .local v0, status:I
    if-eqz v0, :cond_0

    .line 534
    const-string v1, "errorCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :cond_0
    return-object p0
.end method

.method protected static checkCtx(Landroid/content/Context;)I
    .locals 2
    .parameter "ctx"

    .prologue
    .line 844
    if-nez p0, :cond_0

    .line 845
    const-string v0, "CmccOmpUtility"

    const-string v1, "\u672c\u5730\u521d\u59cb\u5316context\u5931\u8d25 error = 5053\uff0ccontext\u4e3anull"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/16 v0, 0x13bd

    .line 849
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static checkExData(Ljava/lang/String;)I
    .locals 5
    .parameter "ExData"

    .prologue
    const/16 v2, 0x13f4

    .line 928
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_0

    .line 929
    const-string v3, "CmccOmpUtility"

    const-string v4, "input ExData is error...5108"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_0
    return v2

    .line 933
    :cond_0
    const-string v3, "^[0-9a-zA-Z]+$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 935
    .local v1, pt:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 936
    .local v0, mt:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1

    .line 938
    const-string v3, "CmccOmpUtility"

    const-string v4, "input ExData is error...5108"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 942
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static checkInitCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "url"
    .parameter "appid"
    .parameter "pid"
    .parameter "channelId"

    .prologue
    .line 466
    sget-object v1, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->context:Landroid/content/Context;

    invoke-static {v1, p0, p1, p2, p3}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->ssoDeviceRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 468
    .local v0, isDeviceReg:I
    if-eqz v0, :cond_0

    .line 469
    const-string v1, "CmccOmpUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device register failed, code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0           #isDeviceReg:I
    :goto_0
    return v0

    .restart local v0       #isDeviceReg:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static checkInitCondition(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 4
    .parameter
    .parameter "url"
    .parameter "appid"
    .parameter "pid"
    .parameter "channelId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, hash:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1, p2, p3, p4}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkInitCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 459
    .local v0, statuscode:I
    if-eqz v0, :cond_0

    .line 460
    const-string v1, "errorCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_0
    return-object p0
.end method

.method protected static checkParameters(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "appid"
    .parameter "pid"
    .parameter "channelId"

    .prologue
    .line 478
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkCtx(Landroid/content/Context;)I

    move-result v0

    .line 479
    .local v0, stateCode:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 498
    :goto_0
    return v1

    .line 482
    :cond_0
    invoke-static {p1}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkURL(Ljava/lang/String;)I

    move-result v0

    .line 483
    if-eqz v0, :cond_1

    move v1, v0

    .line 484
    goto :goto_0

    .line 486
    :cond_1
    invoke-static {p2}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkAppid(Ljava/lang/String;)I

    move-result v0

    .line 487
    if-eqz v0, :cond_2

    move v1, v0

    .line 488
    goto :goto_0

    .line 490
    :cond_2
    invoke-static {p3}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkPid(Ljava/lang/String;)I

    move-result v0

    .line 491
    if-eqz v0, :cond_3

    move v1, v0

    .line 492
    goto :goto_0

    .line 494
    :cond_3
    invoke-static {p4}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkChannelId(Ljava/lang/String;)I

    move-result v0

    .line 495
    if-eqz v0, :cond_4

    move v1, v0

    .line 496
    goto :goto_0

    .line 498
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static checkPid(Ljava/lang/String;)I
    .locals 6
    .parameter "pid"

    .prologue
    .line 560
    const/4 v1, 0x0

    .line 562
    .local v1, errorcode:I
    if-eqz p0, :cond_0

    .line 563
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 568
    :goto_0
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 569
    const-string v3, "CmccOmpUtility"

    const-string v4, "getPid exception ...5052"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/16 v1, 0x13bc

    .line 571
    const-string v3, "CmccOmpUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error pid : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 583
    .end local v1           #errorcode:I
    .local v2, errorcode:I
    :goto_1
    return v2

    .line 565
    .end local v2           #errorcode:I
    .restart local v1       #errorcode:I
    :cond_0
    const-string p0, ""

    goto :goto_0

    .line 575
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 583
    .end local v1           #errorcode:I
    .restart local v2       #errorcode:I
    goto :goto_1

    .line 576
    .end local v2           #errorcode:I
    .restart local v1       #errorcode:I
    :catch_0
    move-exception v0

    .line 578
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CmccOmpUtility"

    const-string v4, "getPid exception ...5052"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v1, 0x13bc

    .line 580
    const-string v3, "CmccOmpUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error pid : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 581
    .end local v1           #errorcode:I
    .restart local v2       #errorcode:I
    goto :goto_1
.end method

.method protected static checkPid(Ljava/util/Hashtable;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 4
    .parameter
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, th:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkPid(Ljava/lang/String;)I

    move-result v0

    .line 553
    .local v0, status:I
    if-eqz v0, :cond_0

    .line 554
    const-string v1, "errorCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_0
    return-object p0
.end method

.method protected static checkPid2(Ljava/lang/String;)I
    .locals 6
    .parameter "pid"

    .prologue
    .line 588
    const/4 v1, 0x0

    .line 590
    .local v1, errorcode:I
    if-eqz p0, :cond_1

    .line 591
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 596
    :goto_0
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    .line 597
    :cond_0
    const-string v3, "CmccOmpUtility"

    const-string v4, "getPid exception ...5052"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/16 v1, 0x13bc

    .line 599
    const-string v3, "CmccOmpUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error pid : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 611
    .end local v1           #errorcode:I
    .local v2, errorcode:I
    :goto_1
    return v2

    .line 593
    .end local v2           #errorcode:I
    .restart local v1       #errorcode:I
    :cond_1
    const-string p0, ""

    goto :goto_0

    .line 603
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 611
    .end local v1           #errorcode:I
    .restart local v2       #errorcode:I
    goto :goto_1

    .line 604
    .end local v2           #errorcode:I
    .restart local v1       #errorcode:I
    :catch_0
    move-exception v0

    .line 606
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CmccOmpUtility"

    const-string v4, "getPid exception ...5052"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/16 v1, 0x13bc

    .line 608
    const-string v3, "CmccOmpUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error pid : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 609
    .end local v1           #errorcode:I
    .restart local v2       #errorcode:I
    goto :goto_1
.end method

.method protected static checkSidSignature(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, th:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, httphead:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "sidSignature"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sidSignature"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    const-string v0, "sidSignature"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 626
    :cond_0
    const-string v0, "errorCode"

    const/16 v1, 0x1485

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :cond_1
    return-object p0
.end method

.method protected static checkTToken(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, th:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, httphead:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ttoken"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ttoken"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    const-string v0, "ttoken"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 634
    :cond_0
    const-string v0, "errorCode"

    const/16 v1, 0x1486

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_1
    return-object p0
.end method

.method protected static checkToken(Ljava/lang/String;)I
    .locals 5
    .parameter "token"

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, statuscode:I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    .line 642
    :cond_0
    const/16 v0, 0x138c

    .line 643
    const-string v2, "CmccOmpUtility"

    const-string v3, "Token is invalid....5004"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v2, "CmccOmpUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Token is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 647
    .end local v0           #statuscode:I
    .local v1, statuscode:I
    :goto_0
    return v1

    .end local v1           #statuscode:I
    .restart local v0       #statuscode:I
    :cond_1
    move v1, v0

    .end local v0           #statuscode:I
    .restart local v1       #statuscode:I
    goto :goto_0
.end method

.method protected static checkToken(Ljava/util/Hashtable;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 4
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    .local p0, th:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkToken(Ljava/lang/String;)I

    move-result v0

    .line 616
    .local v0, status:I
    if-eqz v0, :cond_0

    .line 617
    const-string v1, "errorCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_0
    return-object p0
.end method

.method protected static checkURL(Ljava/lang/String;)I
    .locals 4
    .parameter "url"

    .prologue
    const/16 v0, 0x13ed

    .line 853
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 854
    :cond_0
    const-string v1, "CmccOmpUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url error, url=("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), errorcode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 855
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 854
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native getEncryptedIMSI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected static getEncryptedInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "ctx"
    .parameter "counter"
    .parameter "plaincontent"
    .parameter "enccontent"
    .parameter "ids"

    .prologue
    .line 982
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    .line 983
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    .line 984
    sget-object v4, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/cmcc/omp/security/CmccOmpUtility;->GetEncryptedContFlex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHeadField(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "fieldname"

    .prologue
    .line 351
    const-string v0, ""

    .line 352
    .local v0, field:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/cmcc/omp/security/CmccOmpUtility;->headlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 359
    return-object v0

    .line 353
    :cond_0
    sget-object v4, Lcom/cmcc/omp/security/CmccOmpUtility;->headlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 354
    .local v3, line:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 355
    .local v2, index:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 356
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static getRandomIMSI()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 256
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    .local v1, imsi:Ljava/lang/StringBuffer;
    new-array v2, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, "2"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "3"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "4"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, "5"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    const-string v6, "6"

    aput-object v6, v2, v5

    const/4 v5, 0x7

    const-string v6, "7"

    aput-object v6, v2, v5

    const/16 v5, 0x8

    const-string v6, "8"

    aput-object v6, v2, v5

    const/16 v5, 0x9

    const-string v6, "9"

    aput-object v6, v2, v5

    .line 258
    .local v2, numstr:[Ljava/lang/String;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 259
    .local v3, r:Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v5, 0xe

    if-lt v0, v5, :cond_0

    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, s:Ljava/lang/String;
    return-object v4

    .line 260
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static native getSeed(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected static gettimestamp()Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0xa

    .line 214
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 215
    .local v5, t:Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 216
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 217
    .local v7, time:Ljava/lang/StringBuffer;
    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, v5, Landroid/text/format/Time;->year:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 218
    .local v8, year:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    iget v9, v5, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v9, 0x1

    .line 221
    .local v2, month:I
    if-ge v2, v11, :cond_0

    .line 222
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/cmcc/omp/security/CmccOmpUtility;->temp:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    :goto_0
    iget v3, v5, Landroid/text/format/Time;->monthDay:I

    .line 226
    .local v3, monthDay:I
    if-ge v3, v11, :cond_1

    .line 227
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/cmcc/omp/security/CmccOmpUtility;->temp:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/cmcc/omp/security/CmccOmpUtility;->isVerifyHmac:Ljava/lang/String;

    .line 228
    sget-object v9, Lcom/cmcc/omp/security/CmccOmpUtility;->isVerifyHmac:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    :goto_1
    iget v0, v5, Landroid/text/format/Time;->hour:I

    .line 234
    .local v0, hour:I
    if-ge v0, v11, :cond_2

    .line 235
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/cmcc/omp/security/CmccOmpUtility;->temp:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    :goto_2
    iget v1, v5, Landroid/text/format/Time;->minute:I

    .line 239
    .local v1, minute:I
    if-ge v1, v11, :cond_3

    .line 240
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/cmcc/omp/security/CmccOmpUtility;->temp:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    :goto_3
    iget v4, v5, Landroid/text/format/Time;->second:I

    .line 244
    .local v4, second:I
    if-ge v4, v11, :cond_4

    .line 245
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/cmcc/omp/security/CmccOmpUtility;->temp:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    :goto_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, tempTimestamp:Ljava/lang/String;
    const-string v9, "CmccOmpUtilitytime"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " gettimestamp() , timestamp = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/cmcc/omp/security/CmccOmpUtility;->timestamp:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {v6}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->setTimestamp(Ljava/lang/String;)V

    .line 252
    return-object v6

    .line 224
    .end local v0           #hour:I
    .end local v1           #minute:I
    .end local v3           #monthDay:I
    .end local v4           #second:I
    .end local v6           #tempTimestamp:Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 230
    .restart local v3       #monthDay:I
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/cmcc/omp/security/CmccOmpUtility;->isVerifyHmac:Ljava/lang/String;

    .line 231
    sget-object v9, Lcom/cmcc/omp/security/CmccOmpUtility;->isVerifyHmac:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 237
    .restart local v0       #hour:I
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 242
    .restart local v1       #minute:I
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 247
    .restart local v4       #second:I
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method protected static initParameters(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "ctx"
    .parameter "url"
    .parameter "appid"

    .prologue
    const/4 v9, 0x0

    .line 158
    const-string v10, "CmccOmpUtility"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "url = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , appid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-nez p0, :cond_0

    .line 160
    const-string v10, "CmccOmpUtility"

    const-string v11, "local init failed...5053context is null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sput-boolean v9, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->INIT_STATE:Z

    .line 163
    sget-boolean v9, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->INIT_STATE:Z

    invoke-static {v9}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->setInitState(Z)V

    .line 165
    const/16 v9, 0x13bd

    .line 207
    :goto_0
    return v9

    .line 167
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    if-eqz p2, :cond_1

    .line 168
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 169
    :cond_1
    const-string v10, "CmccOmpUtility"

    const-string v11, "init parameters error...5100appid or url error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sput-boolean v9, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->INIT_STATE:Z

    .line 172
    const/16 v9, 0x13ec

    goto :goto_0

    .line 175
    :cond_2
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 174
    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 176
    .local v8, telephonyManager:Landroid/telephony/TelephonyManager;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 177
    .local v4, devicemodel:Ljava/lang/String;
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 178
    .local v6, release:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, carrier:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, devId:Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 182
    .local v2, deviceId:J
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 186
    :goto_1
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, subscriberID:Ljava/lang/String;
    const-string v10, "CmccOmpUtility"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "devicemodel = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , carrier = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 188
    const-string v12, " , deviceId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,release = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 189
    const-string v12, " ,subscriberID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 187
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v10, "google_sdk"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_4

    .line 192
    :cond_3
    const-string v10, "CmccOmpUtility"

    const-string v11, "google_sdk...simulator is running...not apn setting"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sput-boolean v9, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_SETTING_APN:Z

    .line 194
    const/4 v10, 0x1

    sput-boolean v10, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_SIMULATOR:Z

    .line 201
    :goto_2
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->initSharedPreferences(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 183
    .end local v7           #subscriberID:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 184
    .local v5, e:Ljava/lang/Exception;
    const-string v10, "CmccOmpUtility"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "deviceID exception,e="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v7       #subscriberID:Ljava/lang/String;
    :cond_4
    sput-boolean v9, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_SIMULATOR:Z

    .line 197
    sget-boolean v10, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_CHANGE_MANUAL:Z

    sput-boolean v10, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_SETTING_APN:Z

    .line 199
    const-string v10, "CmccOmpUtility"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "apn setting wap...IS_SETTING_APN = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v12, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_SETTING_APN:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected static inputStreamToByte(Ljava/io/InputStream;)[B
    .locals 21
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 372
    .local v4, bytestream:Ljava/io/ByteArrayOutputStream;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    sput-object v18, Lcom/cmcc/omp/security/CmccOmpUtility;->headlist:Ljava/util/ArrayList;

    .line 373
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 374
    .local v16, temp:[I
    const/4 v9, 0x0

    .line 375
    .local v9, i:I
    const/4 v3, 0x0

    .line 376
    .local v3, bodySize:I
    const-string v18, "CmccOmpUtility"

    const-string v19, "start while header info ........."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 380
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 381
    .local v2, a:I
    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 382
    rem-int/lit8 v18, v9, 0x4

    aput v2, v16, v18

    .line 383
    const/16 v18, 0x0

    aget v18, v16, v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    aget v18, v16, v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x2

    aget v18, v16, v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x3

    aget v18, v16, v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 384
    :cond_1
    const/16 v18, 0x0

    aget v18, v16, v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    aget v18, v16, v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0x2

    aget v18, v16, v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0x3

    aget v18, v16, v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 386
    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 387
    .local v6, headerData:[B
    new-instance v7, Ljava/lang/String;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v7, v6, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 389
    .local v7, headerStr:Ljava/lang/String;
    const-string v13, "\r\n"

    .line 390
    .local v13, regex:Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 391
    .local v8, headstrarray:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, j:I
    :goto_0
    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v11, v0, :cond_7

    .line 394
    const-string v18, "CONTENT-LENGTH"

    invoke-static/range {v18 .. v18}, Lcom/cmcc/omp/security/CmccOmpUtility;->getHeadField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, contlen:Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 396
    :cond_3
    const-string v5, "0"

    .line 398
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 406
    .end local v5           #contlen:Ljava/lang/String;
    .end local v6           #headerData:[B
    .end local v7           #headerStr:Ljava/lang/String;
    .end local v8           #headstrarray:[Ljava/lang/String;
    .end local v11           #j:I
    .end local v13           #regex:Ljava/lang/String;
    :goto_1
    const/4 v12, 0x0

    .line 407
    .local v12, len:I
    const/4 v14, 0x0

    .line 409
    .local v14, returnData:[B
    :cond_5
    if-nez v3, :cond_9

    .line 410
    const-string v18, "CmccOmpUtility"

    const-string v19, " bodySize == 0 ......"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_6
    :goto_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 429
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 430
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V

    .line 431
    const-string v18, "CmccOmpUtility"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " httpbodyArray.length = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v14

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-object v14

    .line 392
    .end local v12           #len:I
    .end local v14           #returnData:[B
    .restart local v6       #headerData:[B
    .restart local v7       #headerStr:Ljava/lang/String;
    .restart local v8       #headstrarray:[Ljava/lang/String;
    .restart local v11       #j:I
    .restart local v13       #regex:Ljava/lang/String;
    :cond_7
    sget-object v18, Lcom/cmcc/omp/security/CmccOmpUtility;->headlist:Ljava/util/ArrayList;

    aget-object v19, v8, v11

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 400
    .end local v6           #headerData:[B
    .end local v7           #headerStr:Ljava/lang/String;
    .end local v8           #headstrarray:[Ljava/lang/String;
    .end local v11           #j:I
    .end local v13           #regex:Ljava/lang/String;
    :cond_8
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_0

    .line 401
    const-string v18, "CmccOmpUtility"

    const-string v19, "read  -1 end ........"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 413
    .restart local v12       #len:I
    .restart local v14       #returnData:[B
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    move-result v15

    .line 414
    .local v15, size:I
    if-nez v15, :cond_a

    .line 415
    const/4 v15, 0x1

    .line 417
    :cond_a
    new-array v0, v15, [B

    move-object/from16 v17, v0

    .line 418
    .local v17, tempdata:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .line 419
    .local v10, isRead:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v10, v0, :cond_6

    .line 422
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 423
    add-int/2addr v12, v15

    .line 424
    if-lt v12, v3, :cond_5

    goto :goto_2
.end method

.method protected static isConnect()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 273
    sget-object v8, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->context:Landroid/content/Context;

    .line 274
    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 273
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 275
    .local v2, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 277
    .local v3, networkinfo:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 279
    .local v1, i:I
    :goto_0
    const/16 v8, 0x28

    if-le v1, v8, :cond_1

    .line 281
    const-string v7, "CmccOmpUtility"

    const-string v8, "waiting get networkinfo time out"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    :goto_1
    return v6

    .line 284
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 296
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, stringExtraInfo:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, typeName:Ljava/lang/String;
    const-string v8, "CmccOmpUtility_isConnect"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "networkinfo = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 300
    const-string v10, " typeName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 299
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v8, "CmccOmpUtility"

    .line 302
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "curConfUrlField.getWapMode() is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    sget-object v10, Lcom/cmcc/omp/security/CmccOmpUtility;->curConfUrlField:Lcom/cmcc/omp/util/ConfUrlField;

    invoke-virtual {v10}, Lcom/cmcc/omp/util/ConfUrlField;->getWapMode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 302
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 301
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v8, Lcom/cmcc/omp/security/CmccOmpUtility;->curConfUrlField:Lcom/cmcc/omp/util/ConfUrlField;

    invoke-virtual {v8}, Lcom/cmcc/omp/util/ConfUrlField;->getWapMode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 305
    sput-boolean v6, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_CMWAP:Z

    .line 306
    const-string v6, "CmccOmpUtility"

    const-string v8, "SMS initialize"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 307
    goto :goto_1

    .line 288
    .end local v4           #stringExtraInfo:Ljava/lang/String;
    .end local v5           #typeName:Ljava/lang/String;
    :cond_2
    const-wide/16 v8, 0x1f4

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_2
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 293
    add-int/lit8 v1, v1, 0x1

    .line 278
    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 309
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v4       #stringExtraInfo:Ljava/lang/String;
    .restart local v5       #typeName:Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 311
    sput-boolean v6, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_CMWAP:Z

    .line 312
    const-string v6, "CmccOmpUtility"

    const-string v8, "wifi"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 313
    goto/16 :goto_1

    .line 316
    :cond_4
    if-eqz v4, :cond_0

    .line 318
    const-string v8, "labwap3"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 319
    const-string v6, "CmccOmpUtility"

    const-string v8, "labwap3"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sput-boolean v7, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_TEST_APN:Z

    .line 321
    sput-boolean v7, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_CMWAP:Z

    .line 323
    const-string v6, "192.168.230.8"

    sput-object v6, Lcom/cmcc/omp/security/CmccOmpUtility;->wapApn:Ljava/lang/String;

    .line 324
    const/16 v6, 0x2344

    sput v6, Lcom/cmcc/omp/security/CmccOmpUtility;->wapApnPort:I

    :goto_3
    move v6, v7

    .line 338
    goto/16 :goto_1

    .line 326
    :cond_5
    const-string v8, "cmwap"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 327
    const-string v8, "CmccOmpUtility"

    const-string v9, "cmwap"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sput-boolean v6, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_TEST_APN:Z

    .line 329
    sput-boolean v7, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_CMWAP:Z

    .line 331
    sget-object v6, Lcom/cmcc/omp/security/CmccOmpUtility;->cmwapApn:Ljava/lang/String;

    sput-object v6, Lcom/cmcc/omp/security/CmccOmpUtility;->wapApn:Ljava/lang/String;

    .line 332
    sget v6, Lcom/cmcc/omp/security/CmccOmpUtility;->cmwapApnPort:I

    sput v6, Lcom/cmcc/omp/security/CmccOmpUtility;->wapApnPort:I

    goto :goto_3

    .line 335
    :cond_6
    sput-boolean v6, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_CMWAP:Z

    .line 336
    const-string v6, "CmccOmpUtility"

    const-string v8, "cmnet"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected static isDeviceRegister(Ljava/lang/String;)I
    .locals 5
    .parameter "ids"

    .prologue
    .line 502
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getDeviceid()Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, storeDeviceid:Ljava/lang/String;
    const-string v2, "CmccOmpUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "storeDeviceid length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sget-object v2, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->context:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->getDeviceid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, curDeviceid:Ljava/lang/String;
    const-string v2, "CmccOmpUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "curDeviceid length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {v1}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->strIsNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 508
    :cond_0
    const-string v2, "CmccOmpUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceid is error : storeDeviceid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 509
    const-string v4, " , curDeviceid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 508
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->clearAllData()V

    .line 511
    const/16 v2, 0x138a

    .line 513
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static parseHttpUrlConnResp(Ljava/net/HttpURLConnection;Ljava/util/Hashtable;ILjava/lang/String;)Ljava/util/Hashtable;
    .locals 12
    .parameter "httpUrlConnection"
    .parameter
    .parameter "code"
    .parameter "statuscode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    .local p1, th:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 690
    .local v2, is:Ljava/io/InputStream;
    const/16 v8, 0xc8

    if-ne p2, v8, :cond_2

    .line 691
    :try_start_0
    sget-object v8, Lcom/cmcc/omp/security/CmccOmpUtility;->curConfUrlField:Lcom/cmcc/omp/util/ConfUrlField;

    invoke-virtual {v8}, Lcom/cmcc/omp/util/ConfUrlField;->getTestMode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 692
    const-string v8, "0"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 693
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 695
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 696
    .local v0, bytestream:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 697
    .local v4, len:I
    const/4 v5, 0x0

    .line 700
    .local v5, returnData:[B
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 701
    .local v6, size:I
    if-nez v6, :cond_1

    .line 702
    const/4 v6, 0x1

    .line 704
    :cond_1
    new-array v7, v6, [B

    .line 705
    .local v7, tempdata:[B
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 706
    .local v3, isRead:I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_3

    .line 712
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 713
    const-string v8, "CmccOmpUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "EnableCalling answer is ...:\n"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 714
    new-instance v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v10, v5, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 713
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 716
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 718
    const-string v8, "CmccOmpUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "returnData = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    new-instance v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v10, v5, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 718
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v8, "CmccOmpUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "received len = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v8, "respBody"

    invoke-virtual {p1, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .end local v0           #bytestream:Ljava/io/ByteArrayOutputStream;
    .end local v3           #isRead:I
    .end local v4           #len:I
    .end local v5           #returnData:[B
    .end local v6           #size:I
    .end local v7           #tempdata:[B
    :cond_2
    :goto_1
    return-object p1

    .line 709
    .restart local v0       #bytestream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #isRead:I
    .restart local v4       #len:I
    .restart local v5       #returnData:[B
    .restart local v6       #size:I
    .restart local v7       #tempdata:[B
    :cond_3
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    add-int/2addr v4, v6

    .line 699
    goto :goto_0

    .line 724
    .end local v0           #bytestream:Ljava/io/ByteArrayOutputStream;
    .end local v3           #isRead:I
    .end local v4           #len:I
    .end local v5           #returnData:[B
    .end local v6           #size:I
    .end local v7           #tempdata:[B
    :catch_0
    move-exception v1

    .line 725
    .local v1, e:Ljava/io/IOException;
    const-string v8, "errorCode"

    const-string v9, "5151"

    invoke-virtual {p1, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected static sendSocketRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .parameter "url"
    .parameter "postUrl"
    .parameter "Str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sput-wide v18, Lcom/cmcc/omp/security/CmccOmpUtility;->t3:J

    .line 735
    const-string v17, "OMSSEXECTIME"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "COMUNICATE_TIME: start time = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 736
    sget-wide v20, Lcom/cmcc/omp/security/CmccOmpUtility;->t3:J

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 735
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    sget-wide v18, Lcom/cmcc/omp/security/CmccOmpUtility;->t3:J

    sget-wide v20, Lcom/cmcc/omp/security/CmccOmpUtility;->t1:J

    sub-long v18, v18, v20

    sput-wide v18, Lcom/cmcc/omp/security/CmccOmpUtility;->t7:J

    .line 738
    const-string v17, "OMSSEXECTIME"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "C_EXECTIME: consuming time = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 739
    sget-wide v20, Lcom/cmcc/omp/security/CmccOmpUtility;->t7:J

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 738
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const-string v10, ""

    .line 741
    .local v10, returnStr:Ljava/lang/String;
    const/4 v15, 0x0

    .line 742
    .local v15, wr:Ljava/io/BufferedWriter;
    const/4 v12, 0x0

    .line 743
    .local v12, socket:Ljava/net/Socket;
    const/4 v7, 0x0

    .line 744
    .local v7, length:I
    if-eqz p2, :cond_5

    .line 745
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    .line 750
    :try_start_0
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 751
    .local v9, purl:Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 752
    .local v6, hostname:Ljava/lang/String;
    const-string v17, "CmccOmpUtility"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "hostname = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v8

    .line 756
    .local v8, port:I
    if-gez v8, :cond_0

    .line 757
    const/16 v8, 0x50

    .line 760
    :cond_0
    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 762
    const-string v17, "CmccOmpUtility"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "port = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    sget-boolean v17, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_CMWAP:Z

    if-eqz v17, :cond_6

    .line 764
    new-instance v13, Ljava/net/Socket;

    sget-object v17, Lcom/cmcc/omp/security/CmccOmpUtility;->wapApn:Ljava/lang/String;

    sget v18, Lcom/cmcc/omp/security/CmccOmpUtility;->wapApnPort:I

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v13, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .end local v12           #socket:Ljava/net/Socket;
    .local v13, socket:Ljava/net/Socket;
    move-object v12, v13

    .line 769
    .end local v13           #socket:Ljava/net/Socket;
    .restart local v12       #socket:Ljava/net/Socket;
    :goto_0
    const v17, 0x15f90

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 770
    invoke-virtual {v12}, Ljava/net/Socket;->getSoTimeout()I

    move-result v14

    .line 771
    .local v14, to:I
    const-string v17, "CmccOmpUtility"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "default timeout"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance v16, Ljava/io/BufferedWriter;

    new-instance v17, Ljava/io/OutputStreamWriter;

    .line 775
    invoke-virtual {v12}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    const-string v19, "utf-8"

    invoke-direct/range {v17 .. v19}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 774
    invoke-direct/range {v16 .. v17}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 776
    .end local v15           #wr:Ljava/io/BufferedWriter;
    .local v16, wr:Ljava/io/BufferedWriter;
    :try_start_1
    sget-boolean v17, Lcom/cmcc/omp/security/CmccOmpUtility;->IS_CMWAP:Z

    if-eqz v17, :cond_7

    .line 777
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "POST http://"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 778
    const-string v18, " HTTP/1.1\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 777
    invoke-virtual/range {v16 .. v17}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 782
    :goto_1
    const-string v17, "Content-type: application/x-java-serialized-object\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 783
    const-string v17, "Cache-Control: no-cache\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 784
    const-string v17, "Pragma: no-cache\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 785
    const-string v17, "User-Agent: Java/1.5.0_07\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 786
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Host: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 787
    const-string v17, "Accept: text/html, image/gif, image/jpeg, *; q=.2, */*; q=.2\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 788
    const-string v17, "Connection: keep-alive\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 789
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Content-Length: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 790
    const-string v17, "\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 793
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->flush()V

    .line 796
    new-instance v10, Ljava/lang/String;

    .end local v10           #returnStr:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/cmcc/omp/security/CmccOmpUtility;->inputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object v17

    .line 797
    const-string v18, "UTF-8"

    .line 796
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 801
    .restart local v10       #returnStr:Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 803
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 808
    :cond_1
    :goto_2
    if-eqz v12, :cond_2

    .line 810
    :try_start_3
    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 814
    const/4 v12, 0x0

    .line 819
    :cond_2
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sput-wide v18, Lcom/cmcc/omp/security/CmccOmpUtility;->t4:J

    .line 820
    const-string v17, "OMSSEXECTIME"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "COMUNICATE_TIME: end time = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 821
    sget-wide v20, Lcom/cmcc/omp/security/CmccOmpUtility;->t4:J

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 820
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    sget-wide v18, Lcom/cmcc/omp/security/CmccOmpUtility;->t4:J

    sget-wide v20, Lcom/cmcc/omp/security/CmccOmpUtility;->t3:J

    sub-long v18, v18, v20

    sput-wide v18, Lcom/cmcc/omp/security/CmccOmpUtility;->t6:J

    .line 823
    const-string v17, "OMSSEXECTIME"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "COMUNICATE_TIME: consuming time = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 824
    sget-wide v20, Lcom/cmcc/omp/security/CmccOmpUtility;->t6:J

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 823
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    if-eqz v10, :cond_4

    .line 827
    const-string v17, " "

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 828
    const-string v17, "<statuscode>"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 830
    const-string v17, "<statuscode>"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v17, v17, 0xc

    .line 831
    const-string v18, "</statuscode>"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 829
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 832
    .local v4, code:Ljava/lang/String;
    const-string v17, "CmccOmpUtility"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "sendSocketRequest: return statuscode = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string v17, "8603"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "8609"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 834
    :cond_3
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->clearAllData()V

    .line 835
    const-string v17, "CmccOmpUtility"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "statuscode = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 836
    const-string v19, ", deviceid or seed is invalid at all."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 835
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #code:Ljava/lang/String;
    :cond_4
    move-object/from16 v15, v16

    .end local v16           #wr:Ljava/io/BufferedWriter;
    .restart local v15       #wr:Ljava/io/BufferedWriter;
    move-object v11, v10

    .line 840
    .end local v6           #hostname:Ljava/lang/String;
    .end local v8           #port:I
    .end local v9           #purl:Ljava/net/URL;
    .end local v10           #returnStr:Ljava/lang/String;
    .end local v14           #to:I
    .local v11, returnStr:Ljava/lang/String;
    :goto_4
    return-object v11

    .end local v11           #returnStr:Ljava/lang/String;
    .restart local v10       #returnStr:Ljava/lang/String;
    :cond_5
    move-object v11, v10

    .line 747
    .end local v10           #returnStr:Ljava/lang/String;
    .restart local v11       #returnStr:Ljava/lang/String;
    goto :goto_4

    .line 766
    .end local v11           #returnStr:Ljava/lang/String;
    .restart local v6       #hostname:Ljava/lang/String;
    .restart local v8       #port:I
    .restart local v9       #purl:Ljava/net/URL;
    .restart local v10       #returnStr:Ljava/lang/String;
    :cond_6
    :try_start_4
    new-instance v13, Ljava/net/Socket;

    invoke-direct {v13, v6, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .end local v12           #socket:Ljava/net/Socket;
    .restart local v13       #socket:Ljava/net/Socket;
    move-object v12, v13

    .end local v13           #socket:Ljava/net/Socket;
    .restart local v12       #socket:Ljava/net/Socket;
    goto/16 :goto_0

    .line 780
    .end local v15           #wr:Ljava/io/BufferedWriter;
    .restart local v14       #to:I
    .restart local v16       #wr:Ljava/io/BufferedWriter;
    :cond_7
    :try_start_5
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "POST "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " HTTP/1.1\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 798
    .end local v10           #returnStr:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object/from16 v15, v16

    .line 799
    .end local v6           #hostname:Ljava/lang/String;
    .end local v8           #port:I
    .end local v9           #purl:Ljava/net/URL;
    .end local v14           #to:I
    .end local v16           #wr:Ljava/io/BufferedWriter;
    .local v5, e:Ljava/lang/Exception;
    .restart local v15       #wr:Ljava/io/BufferedWriter;
    :goto_5
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 800
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 801
    :goto_6
    if-eqz v15, :cond_8

    .line 803
    :try_start_7
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 808
    :cond_8
    :goto_7
    if-eqz v12, :cond_9

    .line 810
    :try_start_8
    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 814
    const/4 v12, 0x0

    .line 817
    :cond_9
    :goto_8
    throw v17

    .line 804
    :catch_1
    move-exception v5

    .line 805
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 811
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 812
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 814
    const/4 v12, 0x0

    goto :goto_8

    .line 813
    .end local v5           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v17

    .line 814
    const/4 v12, 0x0

    .line 815
    throw v17

    .line 804
    .end local v15           #wr:Ljava/io/BufferedWriter;
    .restart local v6       #hostname:Ljava/lang/String;
    .restart local v8       #port:I
    .restart local v9       #purl:Ljava/net/URL;
    .restart local v10       #returnStr:Ljava/lang/String;
    .restart local v14       #to:I
    .restart local v16       #wr:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v5

    .line 805
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 811
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 812
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 814
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 813
    .end local v5           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v17

    .line 814
    const/4 v12, 0x0

    .line 815
    throw v17

    .line 800
    .end local v10           #returnStr:Ljava/lang/String;
    :catchall_3
    move-exception v17

    move-object/from16 v15, v16

    .end local v16           #wr:Ljava/io/BufferedWriter;
    .restart local v15       #wr:Ljava/io/BufferedWriter;
    goto :goto_6

    .line 798
    .end local v6           #hostname:Ljava/lang/String;
    .end local v8           #port:I
    .end local v9           #purl:Ljava/net/URL;
    .end local v14           #to:I
    .restart local v10       #returnStr:Ljava/lang/String;
    :catch_5
    move-exception v5

    goto :goto_5
.end method

.method protected static setHttpUrlConnOutput(Ljava/net/HttpURLConnection;[B)Z
    .locals 3
    .parameter "httpUrlConnection"
    .parameter "httpbody"

    .prologue
    .line 671
    if-eqz p1, :cond_0

    .line 673
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 674
    .local v1, outputStream:Ljava/io/OutputStream;
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 675
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 676
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v1           #outputStream:Ljava/io/OutputStream;
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 679
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static setHttpUrlConnReqProperty(Ljava/net/HttpURLConnection;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 6
    .parameter "httpUrlConnection"
    .parameter
    .parameter "Authorization"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 653
    .local p1, httphead:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 654
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 655
    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 664
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    const-string v3, "CmccOmpUtility"

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-string v3, "Authorization"

    invoke-virtual {p0, v3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-void

    .line 656
    .restart local v0       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 657
    .local v1, tempElement:Ljava/lang/String;
    const-string v3, "CmccOmpUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "head key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 659
    .local v2, tempValues:Ljava/lang/String;
    const-string v3, "CmccOmpUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "head key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "----head value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 660
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 659
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
