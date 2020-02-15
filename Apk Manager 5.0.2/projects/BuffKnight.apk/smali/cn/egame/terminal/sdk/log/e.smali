.class public Lcn/egame/terminal/sdk/log/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/egame/terminal/sdk/log/e;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcn/egame/terminal/sdk/log/j;Lcn/egame/terminal/sdk/log/l;)Lcn/egame/terminal/sdk/log/g;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcn/egame/terminal/sdk/log/k;

    invoke-direct {v0}, Lcn/egame/terminal/sdk/log/k;-><init>()V

    invoke-virtual {v0}, Lcn/egame/terminal/sdk/log/k;->a()Lcn/egame/terminal/sdk/log/j;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p1, Lcn/egame/terminal/sdk/log/j;->d:Lcn/egame/terminal/sdk/log/l;

    :cond_1
    iget-object v0, p2, Lcn/egame/terminal/sdk/log/l;->d:Ljava/util/Map;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcn/egame/terminal/sdk/log/j;->e:Ljava/util/HashMap;

    iput-object v0, p2, Lcn/egame/terminal/sdk/log/l;->d:Ljava/util/Map;

    :goto_0
    iget-object v0, p1, Lcn/egame/terminal/sdk/log/j;->c:Ljava/util/Map;

    iget-object v1, p2, Lcn/egame/terminal/sdk/log/l;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-static {p0, p2, v0}, Lcn/egame/terminal/sdk/log/e;->a(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;Ljava/util/LinkedList;)Lcn/egame/terminal/sdk/log/g;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p2, Lcn/egame/terminal/sdk/log/l;->d:Ljava/util/Map;

    iget-object v1, p1, Lcn/egame/terminal/sdk/log/j;->e:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;Ljava/util/LinkedList;)Lcn/egame/terminal/sdk/log/g;
    .locals 13

    iget v6, p1, Lcn/egame/terminal/sdk/log/l;->j:I

    iget v2, p1, Lcn/egame/terminal/sdk/log/l;->a:I

    iget v3, p1, Lcn/egame/terminal/sdk/log/l;->b:I

    iget v1, p1, Lcn/egame/terminal/sdk/log/l;->c:I

    iget-object v4, p1, Lcn/egame/terminal/sdk/log/l;->e:Ljava/util/List;

    iget-object v5, p1, Lcn/egame/terminal/sdk/log/l;->d:Ljava/util/Map;

    iget-object v7, p1, Lcn/egame/terminal/sdk/log/l;->f:Lorg/apache/http/HttpEntity;

    iget-object v8, p1, Lcn/egame/terminal/sdk/log/l;->i:Ljava/lang/String;

    iget-object v9, p1, Lcn/egame/terminal/sdk/log/l;->h:Lorg/apache/http/HttpHost;

    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/egame/terminal/sdk/log/e;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    :goto_0
    if-eqz v9, :cond_0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    const-string v11, "http.route.default-proxy"

    invoke-interface {v10, v11, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    if-nez v6, :cond_2

    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p0, v8, p2}, Lcn/egame/terminal/sdk/log/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;)Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    move-object v12, v6

    move v6, v1

    move-object v1, v12

    :goto_1
    invoke-static/range {v0 .. v5}, Lcn/egame/terminal/sdk/log/e;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;IILjava/util/List;Ljava/util/Map;)V

    :try_start_0
    invoke-static {v0, v1, v8, p2, v6}, Lcn/egame/terminal/sdk/log/e;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Ljava/util/LinkedList;I)Lorg/apache/http/HttpEntity;

    move-result-object v2

    new-instance v3, Lcn/egame/terminal/sdk/log/g;

    invoke-direct {v3, v0, v1, v2}, Lcn/egame/terminal/sdk/log/g;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Lcn/egame/terminal/sdk/log/p; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_1
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {p0, v8, p2}, Lcn/egame/terminal/sdk/log/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;)Ljava/net/URI;

    move-result-object v9

    invoke-direct {v6, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    if-eqz v7, :cond_3

    invoke-virtual {v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const/4 v1, 0x1

    :cond_3
    move-object v12, v6

    move v6, v1

    move-object v1, v12

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    :cond_4
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v2
.end method

.method static synthetic a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/e;->b(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;)Ljava/net/URI;
    .locals 2

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/egame/terminal/sdk/log/e;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcn/egame/terminal/sdk/log/e;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Ljava/util/LinkedList;I)Lorg/apache/http/HttpEntity;
    .locals 9

    const/4 v8, 0x3

    const-string v0, ""

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x0

    :goto_0
    if-le v0, p4, :cond_0

    new-instance v0, Lcn/egame/terminal/sdk/log/p;

    const-string v1, "All connections is failed. Please check the network."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/egame/terminal/sdk/log/p;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-lez v0, :cond_1

    invoke-static {p1, p2, p3}, Lcn/egame/terminal/sdk/log/e;->a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Ljava/util/LinkedList;)V

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long v4, v6, v4

    add-long/2addr v2, v4

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Lcn/egame/terminal/sdk/log/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpStatus is not OK. -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v8}, Lcn/egame/terminal/sdk/log/p;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    add-long/2addr v2, v6

    if-eq v0, p4, :cond_2

    invoke-static {}, Lcn/egame/terminal/sdk/log/e;->a()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_1
    const-string v0, "location"

    invoke-interface {v1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    const-string v1, "TUBE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RedirectUrl-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, p4}, Lcn/egame/terminal/sdk/log/e;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Ljava/util/LinkedList;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Lcn/egame/terminal/sdk/log/p;

    const-string v1, "We got 302 redirect code, but no location."

    invoke-direct {v0, v1, v8}, Lcn/egame/terminal/sdk/log/p;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
    .end sparse-switch
.end method

.method private static a()V
    .locals 2

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;IILjava/util/List;Ljava/util/Map;)V
    .locals 3

    instance-of v0, p1, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcn/egame/terminal/sdk/log/f;

    invoke-direct {v1}, Lcn/egame/terminal/sdk/log/f;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    :cond_0
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    if-lez p2, :cond_1

    const-string v1, "http.socket.timeout"

    invoke-interface {v0, v1, p2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    :cond_1
    if-lez p3, :cond_2

    const-string v1, "http.connection.timeout"

    invoke-interface {v0, v1, p3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    :cond_2
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-eqz p5, :cond_4

    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    return-void

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcn/egame/terminal/sdk/log/e;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/egame/terminal/sdk/log/e;->a:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcn/egame/terminal/sdk/log/e;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    move v0, v1

    :cond_1
    sget-object v1, Lcn/egame/terminal/sdk/log/e;->a:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    return-void
.end method

.method private static b(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 9

    const/4 v8, -0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Entity is null!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v5, Lcn/egame/terminal/sdk/log/s;

    invoke-direct {v5}, Lcn/egame/terminal/sdk/log/s;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_2
    const/16 v3, 0x2000

    new-array v6, v3, [B

    array-length v3, v6

    div-int/lit8 v7, v3, 0x2

    move v4, v1

    move v3, v1

    :cond_3
    :goto_3
    if-ne v4, v8, :cond_7

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    monitor-enter v5

    :try_start_0
    invoke-virtual {v5}, Lcn/egame/terminal/sdk/log/s;->b()I

    move-result v0

    new-array v2, v0, [B

    move v0, v1

    :goto_4
    invoke-virtual {v5}, Lcn/egame/terminal/sdk/log/s;->a()Lcn/egame/terminal/sdk/log/t;

    move-result-object v1

    if-nez v1, :cond_a

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move-object v0, v2

    goto :goto_2

    :cond_7
    array-length v4, v6

    sub-int/2addr v4, v3

    invoke-virtual {v0, v6, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v8, :cond_8

    add-int/2addr v3, v4

    :cond_8
    if-eq v4, v8, :cond_9

    if-lt v3, v7, :cond_3

    :cond_9
    invoke-virtual {v5, v6, v1, v3}, Lcn/egame/terminal/sdk/log/s;->a([BII)V

    move v3, v1

    goto :goto_3

    :cond_a
    :try_start_1
    iget v3, v1, Lcn/egame/terminal/sdk/log/t;->b:I

    if-eqz v3, :cond_b

    iget-object v3, v1, Lcn/egame/terminal/sdk/log/t;->a:[B

    const/4 v4, 0x0

    iget v6, v1, Lcn/egame/terminal/sdk/log/t;->b:I

    invoke-static {v3, v4, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v1, Lcn/egame/terminal/sdk/log/t;->b:I

    add-int/2addr v0, v3

    :cond_b
    invoke-virtual {v1}, Lcn/egame/terminal/sdk/log/t;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method private static b()Lorg/apache/http/client/HttpClient;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v1, Lcn/egame/terminal/sdk/log/h;

    invoke-direct {v1, v0}, Lcn/egame/terminal/sdk/log/h;-><init>(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lcn/egame/terminal/sdk/log/h;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-nez v1, :cond_0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v2, "TUBE"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v0, "ISO-8859-1"

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
