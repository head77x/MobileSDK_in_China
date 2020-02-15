.class public Lcom/cmcc/omp/security/CmccOmpEnableCallingBySSO;
.super Ljava/lang/Object;
.source "CmccOmpEnableCallingBySSO.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EnableCallingBySSO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static enablerCallingBase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;[BLjava/lang/String;)Ljava/util/Hashtable;
    .locals 16
    .parameter "url"
    .parameter "appid"
    .parameter "method"
    .parameter
    .parameter "httpbody"
    .parameter "Authorization"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[B",
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
    .line 100
    .local p3, httphead:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, ""

    .line 101
    .local v7, httpbodyString:Ljava/lang/String;
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 103
    .local v9, th:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_1

    .line 104
    :cond_0
    const-string v11, "errorCode"

    const-string v12, "5100"

    invoke-virtual {v9, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    .line 210
    .end local v9           #th:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v10, th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object v10

    .line 108
    .end local v10           #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9       #th:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sput-wide v12, Lcom/cmcc/omp/security/CmccOmpUtility;->t3:J

    .line 109
    const-string v11, "OMSSEXECTIME"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "COMUNICATE_TIME: start time = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v14, Lcom/cmcc/omp/security/CmccOmpUtility;->t3:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz p4, :cond_2

    .line 112
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    .line 113
    const-string v11, "EnableCallingBySSO"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "httpbodyString : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " length : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    invoke-static {v9}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkConnect(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v9

    .line 117
    const-string v11, "errorCode"

    invoke-virtual {v9, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v10, v9

    .line 118
    .restart local v10       #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 119
    .end local v10           #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    const/4 v3, -0x2

    .line 120
    .local v3, code:I
    const-string v8, ""

    .line 125
    .local v8, statuscode:Ljava/lang/String;
    :try_start_0
    const-string v11, "EnableCallingBySSO"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Enable Calling url = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static/range {p0 .. p0}, Lcom/cmcc/omp/security/CmccOmpEnableCallingBySSO;->getHttpURLCon(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 134
    .local v6, httpUrlConnection:Ljava/net/HttpURLConnection;
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v6, v0, v1}, Lcom/cmcc/omp/security/CmccOmpUtility;->setHttpUrlConnReqProperty(Ljava/net/HttpURLConnection;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 137
    :try_start_1
    const-string v11, "EnableCallingBySSO"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "method = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    move-object/from16 v0, p4

    invoke-static {v6, v0}, Lcom/cmcc/omp/security/CmccOmpUtility;->setHttpUrlConnOutput(Ljava/net/HttpURLConnection;[B)Z

    move-result v11

    if-nez v11, :cond_4

    .line 147
    const-string v11, "errorCode"

    const-string v12, "5151"

    invoke-virtual {v9, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    .line 148
    .restart local v10       #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 128
    .end local v6           #httpUrlConnection:Ljava/net/HttpURLConnection;
    .end local v10           #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v4

    .line 130
    .local v4, e:Ljava/io/IOException;
    const-string v11, "EnableCallingBySSO"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "net timeout...errorcode=5151OMSSException ="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v11, "errorCode"

    const-string v12, "5151"

    invoke-virtual {v9, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    .line 132
    .restart local v10       #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 140
    .end local v4           #e:Ljava/io/IOException;
    .end local v10           #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6       #httpUrlConnection:Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v4

    .line 142
    .restart local v4       #e:Ljava/io/IOException;
    const-string v11, "EnableCallingBySSO"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "net timeout...errorcode=5151OMSSException ="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v11, "errorCode"

    const-string v12, "5151"

    invoke-virtual {v9, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    .line 144
    .restart local v10       #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 152
    .end local v4           #e:Ljava/io/IOException;
    .end local v10           #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 153
    const-string v11, "EnableCallingBySSO"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getResponseCode = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 161
    const-string v11, "statuscode"

    invoke-virtual {v6, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 162
    const-string v11, "EnableCallingBySSO"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "statuscode = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-nez v8, :cond_5

    .line 165
    const-string v11, "errorCode"

    const-string v12, "5101"

    invoke-virtual {v9, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    .line 166
    .restart local v10       #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 155
    .end local v10           #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_2
    move-exception v4

    .line 157
    .restart local v4       #e:Ljava/io/IOException;
    const-string v11, "EnableCallingBySSO"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "net timeout...errorcode=5151OMSSException ="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v11, "errorCode"

    const-string v12, "5151"

    invoke-virtual {v9, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    .line 159
    .restart local v10       #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 169
    .end local v4           #e:Ljava/io/IOException;
    .end local v10           #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    const-string v11, "EnableCallingBySSO"

    const-string v12, "EnableCalling request..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v11, Lcom/cmcc/omp/security/CmccOmpUtility;->curConfUrlField:Lcom/cmcc/omp/util/ConfUrlField;

    invoke-virtual {v11}, Lcom/cmcc/omp/util/ConfUrlField;->getTestMode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 173
    const-string v11, "0"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "OK"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 175
    const-string v11, "8603"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "8609"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 176
    :cond_6
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->clearAllData()V

    .line 177
    const-string v11, "EnableCallingBySSO"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "statuscode = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", deviceid or seed is invalid at all."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_7
    const-string v11, "errorCode"

    invoke-virtual {v9, v11, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    .line 180
    .restart local v10       #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 186
    .end local v10           #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    const/4 v2, 0x0

    .line 189
    .local v2, bodySize:I
    :try_start_3
    const-string v11, "Content-Length"

    invoke-virtual {v6, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, headlength:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 191
    const-string v11, "EnableCallingBySSO"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "!bodySize = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 197
    .end local v5           #headlength:Ljava/lang/String;
    :goto_1
    invoke-static {v6, v9, v3, v8}, Lcom/cmcc/omp/security/CmccOmpUtility;->parseHttpUrlConnResp(Ljava/net/HttpURLConnection;Ljava/util/Hashtable;ILjava/lang/String;)Ljava/util/Hashtable;

    move-result-object v9

    .line 198
    const-string v11, "EnableCallingBySSO"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "code = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v11, "EnableCallingBySSO"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "statuscode = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 202
    const-string v11, "errorCode"

    invoke-virtual {v9, v11, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sput-wide v12, Lcom/cmcc/omp/security/CmccOmpUtility;->t4:J

    .line 207
    const-string v11, "OMSSEXECTIME"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "EnableCallingBySSOCOMUNICATE_TIME: end time = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v14, Lcom/cmcc/omp/security/CmccOmpUtility;->t4:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-wide v12, Lcom/cmcc/omp/security/CmccOmpUtility;->t4:J

    sget-wide v14, Lcom/cmcc/omp/security/CmccOmpUtility;->t3:J

    sub-long/2addr v12, v14

    sput-wide v12, Lcom/cmcc/omp/security/CmccOmpUtility;->t6:J

    .line 209
    const-string v11, "OMSSEXECTIME"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "EnableCallingBySSOCOMUNICATE_TIME: consuming time = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v14, Lcom/cmcc/omp/security/CmccOmpUtility;->t6:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v9

    .line 210
    .restart local v10       #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 193
    .end local v10           #th:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_3
    move-exception v4

    .line 195
    .local v4, e:Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method protected static enablerCallingBySSO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;[B)Ljava/util/Hashtable;
    .locals 23
    .parameter "url"
    .parameter "appid"
    .parameter "pid"
    .parameter "channelId"
    .parameter "method"
    .parameter
    .parameter "httpbody"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[B)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    .local p5, httphead:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "EnableCallingBySSO"

    const-string v5, "enablerCallingBySSO is Calling"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/cmcc/omp/security/CmccOmpUtility;->t1:J

    .line 21
    const-string v4, "OMSSEXECTIME"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EnableCallingBySSO: start time = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/cmcc/omp/security/CmccOmpUtility;->t1:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v19, Ljava/util/Hashtable;

    invoke-direct/range {v19 .. v19}, Ljava/util/Hashtable;-><init>()V

    .line 23
    .local v19, th:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "EnableCallingBySSO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CmccOmpUtility.init_Url is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/cmcc/omp/security/CmccOmpUtility;->init_Url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object v4, Lcom/cmcc/omp/security/CmccOmpUtility;->init_Url:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v4, v1, v2, v3}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkInitCondition(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v19

    .line 25
    const-string v4, "errorCode"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v15, v19

    .line 95
    :goto_0
    return-object v15

    .line 28
    :cond_0
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getCounter()Ljava/lang/String;

    move-result-object v13

    .line 29
    .local v13, counter:Ljava/lang/String;
    sget-object v4, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-static {v13, v4, v5}, Lcom/cmcc/omp/security/CmccOmpUtility;->getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 31
    .local v21, token:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 32
    .local v11, GenPara:Ljava/lang/String;
    sget-object v4, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-static {v11, v13, v4, v5}, Lcom/cmcc/omp/security/CmccOmpUtility;->GetAPKMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 33
    .local v12, apkMacString:Ljava/lang/String;
    sget-object v4, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-static {v11, v13, v4, v5}, Lcom/cmcc/omp/security/CmccOmpUtility;->GetDEXMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 34
    .local v14, dexMacString:Ljava/lang/String;
    sget-object v4, Lcom/cmcc/omp/security/CmccOmpUtility;->packageName:Ljava/lang/String;

    sget-object v5, Lcom/cmcc/omp/security/CmccOmpUtility;->Install_apk_path:Ljava/lang/String;

    invoke-static {v11, v13, v4, v5}, Lcom/cmcc/omp/security/CmccOmpUtility;->GetCERMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 37
    .local v10, CERMacString:Ljava/lang/String;
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpUtility;->gettimestamp()Ljava/lang/String;

    move-result-object v20

    .line 38
    .local v20, timestamp:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkToken(Ljava/util/Hashtable;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v19

    .line 39
    const-string v4, "errorCode"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v15, v19

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getDeviceid()Ljava/lang/String;

    move-result-object v4

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 42
    move-object/from16 v0, v20

    invoke-static {v0, v4, v5}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->getEncryptedDeviceid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 45
    .local v16, encrypteddeviceid:Ljava/lang/String;
    sget-object v4, Lcom/cmcc/omp/security/CmccOmpUtility;->curConfUrlField:Lcom/cmcc/omp/util/ConfUrlField;

    invoke-virtual {v4}, Lcom/cmcc/omp/util/ConfUrlField;->getSdkVersion()Ljava/lang/String;

    move-result-object v17

    .line 46
    .local v17, sdkversion:Ljava/lang/String;
    const-string v18, ""

    .line 47
    .local v18, sidSignature:Ljava/lang/String;
    const-string v22, ""

    .line 49
    .local v22, ttokenString:Ljava/lang/String;
    const-string v4, "1"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 51
    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkSidSignature(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v19

    .line 52
    const-string v4, "errorCode"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    const-string v4, "sidSignature"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    const-string v5, "EnableCallingBySSO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "sidSignature = "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "sidSignature"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v15, v19

    .line 58
    goto/16 :goto_0

    .line 56
    :cond_2
    const-string v4, "EnableCallingBySSO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sidSignature = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 60
    :cond_3
    const-string v4, "sidSignature"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #sidSignature:Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 75
    .restart local v18       #sidSignature:Ljava/lang/String;
    :cond_4
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OMPAUTH realm=\"OMP\",appid=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 78
    const-string v5, ",pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 79
    const-string v5, ",channelid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 80
    const-string v5, ",encrypteddeviceid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 81
    const-string v5, ",devicetoken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 82
    const-string v5, ",ttoken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 83
    const-string v5, ",keystoremac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 84
    const-string v5, ",dexsignmac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 85
    const-string v5, ",apksignmac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 86
    const-string v5, ",counter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 87
    const-string v5, ",sdkversion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 88
    const-string v5, ",sidSignature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, Authorization:Ljava/lang/String;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 89
    invoke-static/range {v4 .. v9}, Lcom/cmcc/omp/security/CmccOmpEnableCallingBySSO;->enablerCallingBase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;[BLjava/lang/String;)Ljava/util/Hashtable;

    move-result-object v15

    .line 90
    .local v15, enableHashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "EnableCallingBySSO_001"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "counter = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/cmcc/omp/security/CmccOmpUtility;->t2:J

    .line 92
    const-string v4, "OMSSEXECTIME"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EnableCallingBySSO: end time = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/cmcc/omp/security/CmccOmpUtility;->t2:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-wide v4, Lcom/cmcc/omp/security/CmccOmpUtility;->t2:J

    sget-wide v6, Lcom/cmcc/omp/security/CmccOmpUtility;->t1:J

    sub-long/2addr v4, v6

    sput-wide v4, Lcom/cmcc/omp/security/CmccOmpUtility;->t5:J

    .line 94
    const-string v4, "OMSSEXECTIME"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EnableCallingBySSO: consuming time = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/cmcc/omp/security/CmccOmpUtility;->t5:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 61
    .end local v9           #Authorization:Ljava/lang/String;
    .end local v15           #enableHashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    const-string v4, "2"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 62
    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkTToken(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v19

    .line 63
    const-string v4, "errorCode"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 64
    const-string v4, "ttoken"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 65
    const-string v5, "EnableCallingBySSO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "ttoken = "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "ttoken"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object/from16 v15, v19

    .line 69
    goto/16 :goto_0

    .line 67
    :cond_6
    const-string v4, "EnableCallingBySSO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ttoken = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 71
    :cond_7
    const-string v4, "ttoken"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #ttokenString:Ljava/lang/String;
    check-cast v22, Ljava/lang/String;

    .restart local v22       #ttokenString:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method protected static getHttpURLCon(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .parameter "urlString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0x15f90

    const/4 v3, 0x1

    .line 216
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .local v2, urlConnection:Ljava/net/URLConnection;
    move-object v0, v2

    .line 218
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 219
    .local v0, httpUrlConnection:Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 220
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 221
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 222
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 223
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 224
    return-object v0
.end method
