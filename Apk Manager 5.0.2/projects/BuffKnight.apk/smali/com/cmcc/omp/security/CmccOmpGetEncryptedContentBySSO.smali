.class public Lcom/cmcc/omp/security/CmccOmpGetEncryptedContentBySSO;
.super Ljava/lang/Object;
.source "CmccOmpGetEncryptedContentBySSO.java"


# static fields
.field private static final ENC:Ljava/lang/String; = "encryptedContent"

.field private static final TAG:Ljava/lang/String; = "CmccOmpGetEncryptedContentBySSO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getEncryptedContentBySSO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 9
    .parameter "context"
    .parameter "appid"
    .parameter "pid"
    .parameter "channelId"
    .parameter "plaincontent"
    .parameter "enccontent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
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
    const/16 v8, 0xa

    .line 18
    const-string v6, "CmccOmpGetEncryptedContentBySSO"

    const-string v7, "CmccOmpGetEncryptedContentBySSO is calling......start"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 20
    .local v5, th:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x5b

    if-eq v6, v7, :cond_1

    .line 22
    :cond_0
    const-string v6, "errorCode"

    const-string v7, "5100"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v6, "CmccOmpGetEncryptedContentBySSO"

    const-string v7, "errorCode:5100; input plaincontent error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-object v5

    .line 27
    :cond_1
    const-string v0, ""

    .line 28
    .local v0, ENCCONTENT:Ljava/lang/String;
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 29
    :cond_2
    const-string v6, "errorCode"

    const-string v7, "5100"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v6, "CmccOmpGetEncryptedContentBySSO"

    const-string v7, "errorCode:5100; input enccontent error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_3
    :try_start_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_6

    .line 35
    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-virtual {p5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v6, "CmccOmpGetEncryptedContentBySSO"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "enccontent length is :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_1
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->initSharedPreferences(Landroid/content/Context;)V

    .line 51
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpUtility;->InitUnZip(Landroid/content/Context;)I

    .line 52
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getSMSCounter()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, counter:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_7

    .line 60
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-static {p0, v2, p4, v0, v6}, Lcom/cmcc/omp/security/CmccOmpUtility;->getEncryptedInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, encryptedInfo:Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8

    .line 63
    :cond_5
    const-string v6, "errorCode"

    const-string v7, "5107"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v6, "CmccOmpGetEncryptedContentBySSO"

    const-string v7, "encryptedInfo is error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 39
    .end local v2           #counter:Ljava/lang/String;
    .end local v4           #encryptedInfo:Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v6, "%10s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v6, "CmccOmpGetEncryptedContentBySSO"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "enccontent length is :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 43
    :catch_0
    move-exception v3

    .line 44
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    const-string v6, "CmccOmpGetEncryptedContentBySSO"

    const-string v7, "errorCode:5100; input enccontent error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v6, "errorCode"

    const-string v7, "5100"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 56
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #counter:Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 68
    .restart local v4       #encryptedInfo:Ljava/lang/String;
    :cond_8
    const-string v6, "\u52a0\u5bc6\u540e"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "----\u957f\u5ea6\u4e3a\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_2
    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 77
    .local v1, cipherContent:[B
    const-string v6, "errorCode"

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v6, "encryptedContent"

    invoke-virtual {v5, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 72
    .end local v1           #cipherContent:[B
    :catch_1
    move-exception v3

    .line 73
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v6, "CmccOmpGetEncryptedContentBySSO"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ERROR MESSAGE is:5102; "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v6, "errorCode"

    const-string v7, "5102"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected static getEncryptedContentBySSO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 11
    .parameter "context"
    .parameter "appid"
    .parameter "pid"
    .parameter "channelId"
    .parameter "plaincontent"
    .parameter "enccontent"
    .parameter "ExData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 86
    const-string v8, "CmccOmpGetEncryptedContentBySSO"

    const-string v9, "CmccOmpGetEncryptedContentBySSO is calling......start"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 88
    .local v7, th:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x33

    if-eq v8, v9, :cond_1

    .line 90
    :cond_0
    const-string v8, "errorCode"

    const-string v9, "5100"

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v8, "CmccOmpGetEncryptedContentBySSO"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "errorCode:5100; input plaincontent error!   length:  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-object v7

    .line 95
    :cond_1
    const-string v1, ""

    .line 96
    .local v1, ENCCONTENT:Ljava/lang/String;
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    if-eq v8, v9, :cond_3

    .line 97
    :cond_2
    const-string v8, "errorCode"

    const-string v9, "5100"

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v8, "CmccOmpGetEncryptedContentBySSO"

    const-string v9, "errorCode:5100; input enccontent error!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_3
    move-object/from16 v1, p5

    .line 104
    const-string v8, "CmccOmpGetEncryptedContentBySSO"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "enccontent length is :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->initSharedPreferences(Landroid/content/Context;)V

    .line 109
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpUtility;->InitUnZip(Landroid/content/Context;)I

    .line 110
    invoke-static {}, Lcom/cmcc/omp/security/CmccOmpSharedPreferences;->getSMSCounter()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, counter:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_6

    .line 117
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 117
    invoke-static {p0, v3, v8, v1, v9}, Lcom/cmcc/omp/security/CmccOmpUtility;->getEncryptedInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, encryptedInfo:Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 121
    :cond_5
    const-string v8, "errorCode"

    const-string v9, "5107"

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v8, "CmccOmpGetEncryptedContentBySSO"

    const-string v9, "encryptedInfo is error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 114
    .end local v5           #encryptedInfo:Ljava/lang/String;
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 126
    .restart local v5       #encryptedInfo:Ljava/lang/String;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, newEncryptedInfo:Ljava/lang/String;
    const-string v8, "\u52a0\u5bc6\u540e"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "----\u957f\u5ea6\u4e3a\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :try_start_0
    const-string v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 137
    .local v2, cipherContent:[B
    const-string v8, "errorCode"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v8, "encryptedContent"

    invoke-virtual {v7, v8, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 132
    .end local v2           #cipherContent:[B
    :catch_0
    move-exception v4

    .line 133
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "CmccOmpGetEncryptedContentBySSO"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ERROR MESSAGE is:5102; "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v8, "errorCode"

    const-string v9, "5102"

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
