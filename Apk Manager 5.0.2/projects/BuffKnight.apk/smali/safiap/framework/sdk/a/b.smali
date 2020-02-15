.class public Lsafiap/framework/sdk/a/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final PARAM_DEVICE:Ljava/lang/String; = "phone"

.field private static final PARAM_IMEI:Ljava/lang/String; = "imei"

.field private static final PARAM_IMSI:Ljava/lang/String; = "imsi"

.field private static final PARAM_MAC:Ljava/lang/String; = "mac"

.field private static final PARAM_PLATFORM:Ljava/lang/String; = "system"

.field private static final PARAM_UID:Ljava/lang/String; = "uid"

.field private static final RESPONSE_HEADER_PACKAGE_INFO:Ljava/lang/String; = "package-info"

.field private static final RESPONSE_HEADER_REASON:Ljava/lang/String; = "Reason"

.field private static final TAG:Ljava/lang/String; = "QueryTask"

.field private static sLogger:Lsafiap/framework/util/MyLogger;


# instance fields
.field protected a:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Lsafiap/framework/sdk/b/c;

.field private mNameValueArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    const-string v0, "QueryTask"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/a/b;->sLogger:Lsafiap/framework/util/MyLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object v0, p0, Lsafiap/framework/sdk/a/b;->mContext:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lsafiap/framework/sdk/a/b;->mDeviceInfo:Lsafiap/framework/sdk/b/c;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsafiap/framework/sdk/a/b;->mNameValueArray:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lsafiap/framework/sdk/a/b;->a:Ljava/lang/String;

    .line 58
    if-eqz p2, :cond_0

    .line 59
    iput-object p2, p0, Lsafiap/framework/sdk/a/b;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lsafiap/framework/sdk/b/c;

    iget-object v1, p0, Lsafiap/framework/sdk/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsafiap/framework/sdk/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/sdk/a/b;->mDeviceInfo:Lsafiap/framework/sdk/b/c;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method protected addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lsafiap/framework/sdk/a/b;->mNameValueArray:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsafiap/framework/sdk/a/b;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x4e20

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    sget-object v0, Lsafiap/framework/sdk/a/b;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QueryTask.doInBackground() ------------url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lsafiap/framework/sdk/a/b;->mDeviceInfo:Lsafiap/framework/sdk/b/c;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lsafiap/framework/sdk/b/c;

    iget-object v3, p0, Lsafiap/framework/sdk/a/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lsafiap/framework/sdk/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/sdk/a/b;->mDeviceInfo:Lsafiap/framework/sdk/b/c;

    .line 77
    :cond_0
    iget-object v0, p0, Lsafiap/framework/sdk/a/b;->mDeviceInfo:Lsafiap/framework/sdk/b/c;

    invoke-virtual {v0}, Lsafiap/framework/sdk/b/c;->d()Ljava/lang/String;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    const-string v3, ""

    if-ne v0, v3, :cond_2

    .line 79
    :cond_1
    const-string v0, "Saf-Uid-Unknown"

    .line 81
    :cond_2
    const-string v3, "uid"

    invoke-virtual {p0, v3, v0}, Lsafiap/framework/sdk/a/b;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lsafiap/framework/sdk/a/b;->mDeviceInfo:Lsafiap/framework/sdk/b/c;

    invoke-virtual {v0}, Lsafiap/framework/sdk/b/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_3

    const-string v3, ""

    if-ne v0, v3, :cond_4

    .line 85
    :cond_3
    const-string v0, "Android-Saf-MAC"

    .line 87
    :cond_4
    const-string v3, "mac"

    invoke-virtual {p0, v3, v0}, Lsafiap/framework/sdk/a/b;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lsafiap/framework/sdk/a/b;->mDeviceInfo:Lsafiap/framework/sdk/b/c;

    invoke-virtual {v0}, Lsafiap/framework/sdk/b/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_5

    const-string v3, ""

    if-ne v0, v3, :cond_6

    .line 91
    :cond_5
    const-string v0, "Android-Saf-IMEI"

    .line 93
    :cond_6
    const-string v3, "imei"

    invoke-virtual {p0, v3, v0}, Lsafiap/framework/sdk/a/b;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lsafiap/framework/sdk/a/b;->mDeviceInfo:Lsafiap/framework/sdk/b/c;

    invoke-virtual {v0}, Lsafiap/framework/sdk/b/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_7

    const-string v3, ""

    if-ne v0, v3, :cond_8

    .line 97
    :cond_7
    const-string v0, "Android-Saf-IMSI"

    .line 99
    :cond_8
    const-string v3, "imsi"

    invoke-virtual {p0, v3, v0}, Lsafiap/framework/sdk/a/b;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lsafiap/framework/sdk/b/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_9

    const-string v3, ""

    if-ne v0, v3, :cond_c

    .line 103
    :cond_9
    const-string v0, "{Android:0}"

    .line 107
    :goto_0
    const-string v3, "system"

    invoke-virtual {p0, v3, v0}, Lsafiap/framework/sdk/a/b;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsafiap/framework/sdk/b/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lsafiap/framework/sdk/b/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v3, " "

    if-eq v0, v3, :cond_a

    invoke-static {}, Lsafiap/framework/sdk/b/c;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-static {}, Lsafiap/framework/sdk/b/c;->e()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    .line 111
    :cond_a
    const-string v0, "Android-Saf-Phone"

    .line 113
    :cond_b
    const-string v3, "phone"

    invoke-virtual {p0, v3, v0}, Lsafiap/framework/sdk/a/b;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lsafiap/framework/sdk/a/b;->mNameValueArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    .line 117
    sget-object v4, Lsafiap/framework/sdk/a/b;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "{Android:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsafiap/framework/sdk/b/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 120
    :cond_d
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    aget-object v0, p1, v2

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 122
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v3, p0, Lsafiap/framework/sdk/a/b;->mNameValueArray:Ljava/util/List;

    const-string v5, "UTF-8"

    invoke-direct {v0, v3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_2
    const/4 v0, 0x4

    move v3, v0

    .line 131
    :goto_3
    if-lez v3, :cond_e

    .line 132
    sget-object v0, Lsafiap/framework/sdk/a/b;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "retry id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v6, v3, 0x5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 134
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 135
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 137
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 140
    :try_start_1
    invoke-interface {v5, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 141
    if-nez v0, :cond_f

    .line 142
    sget-object v0, Lsafiap/framework/sdk/a/b;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v6, "Get null response when connecting server!"

    invoke-virtual {v0, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 143
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 204
    :cond_e
    :goto_4
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-string v3, "QueryTask"

    const-string v5, "SAF-A Exception:511001"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 146
    :cond_f
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 147
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 148
    sget-object v8, Lsafiap/framework/sdk/a/b;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Task:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lsafiap/framework/sdk/a/b;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".responseCode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",reason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 150
    const/16 v6, 0xc8

    if-eq v7, v6, :cond_11

    .line 151
    const-string v6, "Reason"

    invoke-interface {v0, v6}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 152
    sget-object v6, Lsafiap/framework/sdk/a/b;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ResponseHeaderReason: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "Reason"

    invoke-interface {v0, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 156
    :cond_10
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 160
    :cond_11
    :try_start_3
    const-string v6, "package-info"

    invoke-interface {v0, v6}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 161
    const-string v6, "package-info"

    invoke-interface {v0, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    .line 202
    :goto_5
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v1, v0

    goto/16 :goto_4

    .line 164
    :cond_12
    :try_start_4
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    .line 165
    if-eqz v0, :cond_13

    .line 167
    :try_start_5
    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/apache/http/ParseException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v0

    goto :goto_5

    .line 169
    :catch_1
    move-exception v0

    .line 170
    :try_start_6
    const-string v6, "QueryTask"

    const-string v7, "SAF-A Exception:511002"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    move-object v0, v1

    .line 179
    goto :goto_5

    .line 174
    :catch_2
    move-exception v0

    .line 175
    const-string v6, "QueryTask"

    const-string v7, "SAF-A Exception:511003"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_13
    move-object v0, v1

    goto :goto_5

    .line 183
    :catch_3
    move-exception v0

    .line 184
    :try_start_7
    const-string v6, "QueryTask"

    const-string v7, "SAF-A Exception:511004"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    add-int/lit8 v3, v3, -0x1

    .line 188
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 202
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_3

    .line 189
    :catch_4
    move-exception v0

    .line 190
    :try_start_8
    const-string v6, "QueryTask"

    const-string v7, "SAF-A Exception:511005"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    instance-of v6, v0, Ljava/net/SocketTimeoutException;

    if-nez v6, :cond_14

    instance-of v6, v0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v6, :cond_14

    instance-of v6, v0, Lorg/apache/http/NoHttpResponseException;

    if-nez v6, :cond_14

    instance-of v0, v0, Ljava/net/SocketException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_15

    .line 197
    :cond_14
    add-int/lit8 v0, v3, -0x1

    .line 202
    :goto_6
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move v3, v0

    .line 203
    goto/16 :goto_3

    :cond_15
    move v0, v2

    .line 199
    goto :goto_6

    .line 202
    :catchall_0
    move-exception v0

    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0
.end method
