.class public Lcom/cmcc/omp/security/CmccOmpSecurityInterface;
.super Ljava/lang/Object;
.source "CmccOmpSecurityInterface.java"


# static fields
.field public static final version:Ljava/lang/String; = "OMSS-SICHUAN-1.5.1.20130618"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EnablerCallingBySSO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;[B)Ljava/util/Hashtable;
    .locals 5
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
    .line 49
    .local p5, httphead:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "001100"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 53
    .local v0, hs:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkURL(Ljava/lang/String;)I

    move-result v1

    .line 54
    .local v1, stateCode:I
    if-eqz v1, :cond_1

    .line 55
    const-string v2, "errorCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v0           #hs:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object v0

    .line 58
    .restart local v0       #hs:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-static {p1}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkAppid(Ljava/lang/String;)I

    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    const-string v2, "errorCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {p2}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkPid(Ljava/lang/String;)I

    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    const-string v2, "errorCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_3
    invoke-static {p3}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkChannelId(Ljava/lang/String;)I

    move-result v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    const-string v2, "errorCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_4
    invoke-static/range {p0 .. p6}, Lcom/cmcc/omp/security/CmccOmpEnableCallingBySSO;->enablerCallingBySSO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;[B)Ljava/util/Hashtable;

    move-result-object v0

    goto :goto_0
.end method

.method public static InitOmpEnvBySSO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "ctx"
    .parameter "url"
    .parameter "appid"
    .parameter "pid"
    .parameter "channelId"

    .prologue
    .line 20
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkCtx(Landroid/content/Context;)I

    move-result v0

    .line 21
    .local v0, stateCode:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 42
    :goto_0
    return v1

    .line 24
    :cond_0
    invoke-static {p1}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkURL(Ljava/lang/String;)I

    move-result v0

    .line 25
    if-eqz v0, :cond_1

    move v1, v0

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p2}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkAppid2(Ljava/lang/String;)I

    move-result v0

    .line 29
    if-eqz v0, :cond_2

    move v1, v0

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p3}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkPid2(Ljava/lang/String;)I

    move-result v0

    .line 33
    if-eqz v0, :cond_3

    move v1, v0

    .line 34
    goto :goto_0

    .line 36
    :cond_3
    invoke-static {p4}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkChannelId2(Ljava/lang/String;)I

    move-result v0

    .line 37
    if-eqz v0, :cond_4

    move v1, v0

    .line 38
    goto :goto_0

    .line 40
    :cond_4
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpUtility;->InitUnZip(Landroid/content/Context;)I

    .line 41
    sput-object p1, Lcom/cmcc/omp/security/CmccOmpUtility;->init_Url:Ljava/lang/String;

    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cmcc/omp/security/CmccOmpInitEnvBySSO;->InitOmpEnvLight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getEncryptedContentByOffCharge(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 6
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
    .line 115
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 116
    .local v0, hash:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkCtx(Landroid/content/Context;)I

    move-result v2

    .line 117
    .local v2, stateCode:I
    if-eqz v2, :cond_0

    .line 118
    const-string v3, "errorCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 144
    .end local v0           #hash:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v1, hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    .line 121
    .end local v1           #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0       #hash:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {p1}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkAppid2(Ljava/lang/String;)I

    move-result v2

    .line 122
    if-eqz v2, :cond_1

    .line 123
    const-string v3, "errorCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 124
    .restart local v1       #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 126
    .end local v1           #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-static {p2}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkPid2(Ljava/lang/String;)I

    move-result v2

    .line 127
    if-eqz v2, :cond_2

    .line 128
    const-string v3, "errorCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 129
    .restart local v1       #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 131
    .end local v1           #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-static {p3}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkChannelId2(Ljava/lang/String;)I

    move-result v2

    .line 132
    if-eqz v2, :cond_3

    .line 133
    const-string v3, "errorCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 134
    .restart local v1       #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 137
    .end local v1           #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-static {p6}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkExData(Ljava/lang/String;)I

    move-result v2

    .line 138
    if-eqz v2, :cond_4

    .line 139
    const-string v3, "errorCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 140
    .restart local v1       #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 143
    .end local v1           #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-static/range {p0 .. p6}, Lcom/cmcc/omp/security/CmccOmpGetEncryptedContentBySSO;->getEncryptedContentBySSO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    move-object v1, v0

    .line 144
    .restart local v1       #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public static getEncryptedContentBySSO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 6
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
    .line 78
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_0

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "001100"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 82
    .local v0, hash:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkCtx(Landroid/content/Context;)I

    move-result v2

    .line 83
    .local v2, stateCode:I
    if-eqz v2, :cond_1

    .line 84
    const-string v3, "errorCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 104
    .end local v0           #hash:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v1, hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    .line 87
    .end local v1           #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0       #hash:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-static {p1}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkAppid(Ljava/lang/String;)I

    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    const-string v3, "errorCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 90
    .restart local v1       #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 92
    .end local v1           #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-static {p2}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkPid(Ljava/lang/String;)I

    move-result v2

    .line 93
    if-eqz v2, :cond_3

    .line 94
    const-string v3, "errorCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 95
    .restart local v1       #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 97
    .end local v1           #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-static {p3}, Lcom/cmcc/omp/security/CmccOmpUtility;->checkChannelId(Ljava/lang/String;)I

    move-result v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    const-string v3, "errorCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 100
    .restart local v1       #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 103
    .end local v1           #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-static/range {p0 .. p5}, Lcom/cmcc/omp/security/CmccOmpGetEncryptedContentBySSO;->getEncryptedContentBySSO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    move-object v1, v0

    .line 104
    .restart local v1       #hash:Ljava/lang/Object;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "OMSS-SICHUAN-1.5.1.20130618"

    return-object v0
.end method
