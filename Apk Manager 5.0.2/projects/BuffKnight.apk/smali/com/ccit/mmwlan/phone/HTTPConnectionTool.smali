.class public Lcom/ccit/mmwlan/phone/HTTPConnectionTool;
.super Ljava/lang/Object;
.source "HTTPConnectionTool.java"


# static fields
.field private static final APPUIDDATA_END:Ljava/lang/String; = "</appuid>"

.field private static final APPUIDDATA_START:Ljava/lang/String; = "<appuid>"

.field private static final HTTPCONNTOOL:Ljava/lang/String; = "HTTPConnectionTool"

.field private static final IMSIDATA_END:Ljava/lang/String; = "</imsi>"

.field private static final IMSIDATA_START:Ljava/lang/String; = "<imsi>"

.field private static final PUBKEYDATA_END:Ljava/lang/String; = "</pubkey>"

.field private static final PUBKEYDATA_START:Ljava/lang/String; = "<pubkey>"

.field private static final SERVLET_POST:Ljava/lang/String; = "POST"

.field private static final SIDDATA_END:Ljava/lang/String; = "</sid>"

.field private static final SIDDATA_START:Ljava/lang/String; = "<sid>"

.field private static final XMLLABLE_END:Ljava/lang/String; = "</request>"

.field private static final XMLLABLE_START:Ljava/lang/String; = "<request>"

.field private static final XMLTitle:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"


# instance fields
.field private strBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ConbinCertApply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strSid"
    .parameter "strPubKey"
    .parameter "strImsi"
    .parameter "strAppUid"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, result:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;->strBuilder:Ljava/lang/StringBuilder;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;->strBuilder:Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<request>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<sid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</sid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<appuid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    const-string v2, "</appuid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<pubkey>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    const-string v2, "</pubkey>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "<imsi>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</imsi>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;->strBuilder:Ljava/lang/StringBuilder;

    const-string v2, "</request>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Lcom/ccit/mmwlan/phone/HTTPConnectionTool;->strBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method public doPost(Ljava/lang/String;[BLorg/apache/http/HttpHost;Ljava/lang/String;)[B
    .locals 18
    .parameter "urlStr"
    .parameter "byteRequest"
    .parameter "gHttpProxy"
    .parameter "strFlag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    const-string v13, "HTTPConnectionTool"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "doPost() url -> "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-eqz p3, :cond_1

    .line 217
    const-string v13, "HTTPConnectionTool"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "doPost() proxy ->"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 224
    .local v4, client:Lorg/apache/http/client/HttpClient;
    if-eqz p4, :cond_2

    .line 226
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 227
    .local v14, sleepTime:J
    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    .line 228
    monitor-enter v4

    .line 234
    :try_start_0
    invoke-virtual {v4, v14, v15}, Ljava/lang/Object;->wait(J)V

    .line 228
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .end local v14           #sleepTime:J
    :goto_1
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    .line 257
    .local v9, params:Lorg/apache/http/params/HttpParams;
    const/16 v13, 0x4e20

    invoke-static {v9, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 258
    const/16 v13, 0x7530

    invoke-static {v9, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 260
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v13

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 261
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    const-string v16, "http.route.default-proxy"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-interface {v13, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 262
    const-string v13, "HTTPConnectionTool"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "doPostByHttpClient()  used wapHost -> "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 265
    .local v7, hp:Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "Charset"

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v7, v13, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v13, "Content-Type"

    const-string v16, "text/xml"

    move-object/from16 v0, v16

    invoke-virtual {v7, v13, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 270
    .local v6, entity:Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v7, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 272
    const/4 v11, 0x0

    .line 273
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 276
    new-instance v5, Ljava/io/DataInputStream;

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 277
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 276
    invoke-direct {v5, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 278
    .local v5, dis:Ljava/io/DataInputStream;
    const/4 v10, 0x0

    check-cast v10, [B

    .line 279
    .local v10, rResult:[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 280
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x1000

    new-array v3, v13, [B

    .line 281
    .local v3, bufferByte:[B
    const/4 v8, -0x1

    .line 282
    .local v8, l:I
    :goto_2
    invoke-virtual {v5, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v8

    const/4 v13, -0x1

    if-gt v8, v13, :cond_3

    .line 289
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 291
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 292
    new-instance v12, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-direct {v12, v10, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 293
    .local v12, responseStr:Ljava/lang/String;
    const-string v13, "HTTPConnectionTool"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "doPost() responnse StatusCode="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " StatusReason="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v13, "HTTPConnectionTool"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "doPost() response -> "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-object v10

    .line 219
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #bufferByte:[B
    .end local v4           #client:Lorg/apache/http/client/HttpClient;
    .end local v5           #dis:Ljava/io/DataInputStream;
    .end local v6           #entity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v7           #hp:Lorg/apache/http/client/methods/HttpPost;
    .end local v8           #l:I
    .end local v9           #params:Lorg/apache/http/params/HttpParams;
    .end local v10           #rResult:[B
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #responseStr:Ljava/lang/String;
    :cond_1
    const-string v13, "HTTPConnectionTool"

    const-string v16, "doPost() without proxy ->"

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 228
    .restart local v4       #client:Lorg/apache/http/client/HttpClient;
    .restart local v14       #sleepTime:J
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 242
    .end local v14           #sleepTime:J
    :cond_2
    monitor-enter v4

    .line 247
    const-wide/16 v16, 0x1b58

    :try_start_2
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 242
    monitor-exit v4

    goto/16 :goto_1

    :catchall_1
    move-exception v13

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v13

    .line 283
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bufferByte:[B
    .restart local v5       #dis:Ljava/io/DataInputStream;
    .restart local v6       #entity:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v7       #hp:Lorg/apache/http/client/methods/HttpPost;
    .restart local v8       #l:I
    .restart local v9       #params:Lorg/apache/http/params/HttpParams;
    .restart local v10       #rResult:[B
    .restart local v11       #response:Lorg/apache/http/HttpResponse;
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 284
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto/16 :goto_2
.end method

.method public doPost_0ld(Ljava/lang/String;[BLorg/apache/http/HttpHost;Ljava/lang/String;)[B
    .locals 18
    .parameter "urlStr"
    .parameter "byteRequest"
    .parameter "gHttpProxy"
    .parameter "strFlag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    move-object/from16 v0, p2

    array-length v7, v0

    .line 101
    .local v7, messageBodyLen:I
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    .local v14, url:Ljava/net/URL;
    const/4 v3, 0x0

    .line 108
    .local v3, conn:Ljava/net/HttpURLConnection;
    if-eqz p3, :cond_0

    .line 110
    new-instance v10, Ljava/net/InetSocketAddress;

    .line 111
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v16

    .line 110
    move/from16 v0, v16

    invoke-direct {v10, v15, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 112
    .local v10, proxy:Ljava/net/SocketAddress;
    new-instance v15, Ljava/net/Proxy;

    .line 113
    sget-object v16, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v10}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 112
    invoke-virtual {v14, v15}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    .end local v3           #conn:Ljava/net/HttpURLConnection;
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 138
    .end local v10           #proxy:Ljava/net/SocketAddress;
    .restart local v3       #conn:Ljava/net/HttpURLConnection;
    :goto_0
    if-eqz p4, :cond_1

    .line 140
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 141
    .local v12, sleepTime:J
    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    .line 142
    monitor-enter v3

    .line 148
    :try_start_0
    invoke-virtual {v3, v12, v13}, Ljava/lang/Object;->wait(J)V

    .line 142
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local v12           #sleepTime:J
    :goto_1
    const-string v15, "POST"

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 169
    const-string v15, "Connection"

    const-string v16, "close"

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v15, "Charset"

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v15, "Content-Type"

    const-string v16, "text/xml"

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v15, "Content-length"

    .line 174
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 173
    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 177
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 178
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 179
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 181
    .local v8, os:Ljava/io/OutputStream;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 182
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 183
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 185
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v5, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 186
    .local v5, input:Ljava/io/DataInputStream;
    const/4 v11, 0x0

    check-cast v11, [B

    .line 187
    .local v11, rResult:[B
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 188
    .local v9, out:Ljava/io/ByteArrayOutputStream;
    const/16 v15, 0x1770

    new-array v2, v15, [B

    .line 189
    .local v2, bufferByte:[B
    const/4 v6, -0x1

    .line 190
    .local v6, l:I
    const/4 v4, 0x0

    .line 191
    .local v4, downloadSize:I
    :goto_2
    invoke-virtual {v5, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    const/4 v15, -0x1

    if-gt v6, v15, :cond_2

    .line 196
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 198
    return-object v11

    .line 116
    .end local v2           #bufferByte:[B
    .end local v4           #downloadSize:I
    .end local v5           #input:Ljava/io/DataInputStream;
    .end local v6           #l:I
    .end local v8           #os:Ljava/io/OutputStream;
    .end local v9           #out:Ljava/io/ByteArrayOutputStream;
    .end local v11           #rResult:[B
    :cond_0
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .end local v3           #conn:Ljava/net/HttpURLConnection;
    check-cast v3, Ljava/net/HttpURLConnection;

    .restart local v3       #conn:Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 142
    .restart local v12       #sleepTime:J
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 156
    .end local v12           #sleepTime:J
    :cond_1
    monitor-enter v3

    .line 161
    const-wide/16 v16, 0x1b58

    :try_start_2
    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 156
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v15

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v15

    .line 192
    .restart local v2       #bufferByte:[B
    .restart local v4       #downloadSize:I
    .restart local v5       #input:Ljava/io/DataInputStream;
    .restart local v6       #l:I
    .restart local v8       #os:Ljava/io/OutputStream;
    .restart local v9       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #rResult:[B
    :cond_2
    add-int/2addr v4, v6

    .line 193
    const/4 v15, 0x0

    invoke-virtual {v9, v2, v15, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 194
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_2
.end method
