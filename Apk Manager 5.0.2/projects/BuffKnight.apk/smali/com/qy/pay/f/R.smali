.class Lcom/qy/pay/f/R;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qy/pay/network/a/a;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/Q;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/Q;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/R;->a:Lcom/qy/pay/f/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v8, -0x1

    const-string v0, ""

    new-instance v3, Lcom/qy/pay/network/b/f;

    invoke-direct {v3}, Lcom/qy/pay/network/b/f;-><init>()V

    if-nez p1, :cond_4

    check-cast p2, Lcom/qy/pay/network/c/n;

    invoke-virtual {p2}, Lcom/qy/pay/network/c/n;->e()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v4, Lcom/qy/pay/network/connect/ProxyHttpClient;

    iget-object v0, p0, Lcom/qy/pay/f/R;->a:Lcom/qy/pay/f/Q;

    invoke-static {v0}, Lcom/qy/pay/f/Q;->a(Lcom/qy/pay/f/Q;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/qy/pay/network/connect/ProxyHttpClient;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/qy/pay/f/R;->a:Lcom/qy/pay/f/Q;

    invoke-static {v1}, Lcom/qy/pay/f/Q;->b(Lcom/qy/pay/f/Q;)Lcom/qy/pay/network/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    invoke-virtual {v4, v0}, Lcom/qy/pay/network/connect/ProxyHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-virtual {v4}, Lcom/qy/pay/network/connect/ProxyHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :try_start_1
    invoke-virtual {v4}, Lcom/qy/pay/network/connect/ProxyHttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {p2}, Lcom/qy/pay/network/c/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1}, Lcom/qy/pay/network/connect/ProxyHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    invoke-virtual {v4, v0}, Lcom/qy/pay/network/connect/ProxyHttpClient;->setCookieSpecs(Lorg/apache/http/cookie/CookieSpecRegistry;)V

    invoke-virtual {p2}, Lcom/qy/pay/network/c/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/qy/pay/network/c/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v8, :cond_0

    if-ne v1, v8, :cond_0

    const-string v6, "get button error"

    invoke-virtual {v3, v6}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v6

    iget-object v7, p0, Lcom/qy/pay/f/R;->a:Lcom/qy/pay/f/Q;

    invoke-static {v7}, Lcom/qy/pay/f/Q;->b(Lcom/qy/pay/f/Q;)Lcom/qy/pay/network/b/f;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amp;"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {v4, v1}, Lcom/qy/pay/network/connect/ProxyHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/f/R;->a:Lcom/qy/pay/f/Q;

    invoke-static {v1}, Lcom/qy/pay/f/Q;->b(Lcom/qy/pay/f/Q;)Lcom/qy/pay/network/b/f;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    return-void

    :cond_1
    :try_start_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :goto_3
    const-string v6, "http exception"

    invoke-virtual {v3, v6}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v6

    iget-object v7, p0, Lcom/qy/pay/f/R;->a:Lcom/qy/pay/f/Q;

    invoke-static {v7}, Lcom/qy/pay/f/Q;->b(Lcom/qy/pay/f/Q;)Lcom/qy/pay/network/b/f;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resp status code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/f/R;->a:Lcom/qy/pay/f/Q;

    invoke-static {v1}, Lcom/qy/pay/f/Q;->b(Lcom/qy/pay/f/Q;)Lcom/qy/pay/network/b/f;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/f/R;->a:Lcom/qy/pay/f/Q;

    invoke-static {v1}, Lcom/qy/pay/f/Q;->b(Lcom/qy/pay/f/Q;)Lcom/qy/pay/network/b/f;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resp error:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/qy/pay/network/c/n;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/f/R;->a:Lcom/qy/pay/f/Q;

    invoke-static {v1}, Lcom/qy/pay/f/Q;->b(Lcom/qy/pay/f/Q;)Lcom/qy/pay/network/b/f;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto/16 :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "net conn :{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/f/R;->a:Lcom/qy/pay/f/Q;

    invoke-static {v1}, Lcom/qy/pay/f/Q;->b(Lcom/qy/pay/f/Q;)Lcom/qy/pay/network/b/f;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    goto/16 :goto_3
.end method
