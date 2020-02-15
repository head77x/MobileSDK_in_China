.class public final Lcom/anysdk/Util/b;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method private static a(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    move-object v3, v2

    move v2, v0

    :goto_1
    if-eqz v3, :cond_1

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v3, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    move-object v3, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Lorg/apache/http/HttpResponse;
    .locals 5

    sput p2, Lcom/anysdk/Util/b;->a:I

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/anysdk/Util/b;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    invoke-static {p0}, Lcom/anysdk/Util/b;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.route.default-proxy"

    invoke-interface {v3, v4, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :goto_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "text/html; application/x-www-form-urlencoded; charset=UTF-8"

    invoke-interface {v0, v1, v3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v3, "http.route.default-proxy"

    invoke-interface {v0, v3}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Lorg/apache/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;I)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    sput p3, Lcom/anysdk/Util/b;->a:I

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anysdk/Util/b;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    invoke-static {p0}, Lcom/anysdk/Util/b;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.route.default-proxy"

    invoke-interface {v3, v4, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :goto_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v0, p2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static a()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    sget v2, Lcom/anysdk/Util/b;->a:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v2, Lcom/anysdk/Util/b;->a:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v1, v5}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    sget v2, Lcom/anysdk/Util/b;->a:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v6}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    return-object v0
.end method
