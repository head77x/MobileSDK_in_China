.class public Lcn/egame/terminal/sdk/log/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/apache/http/client/HttpClient;

.field private b:Lorg/apache/http/HttpEntity;

.field private c:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpEntity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/g;->a:Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/g;->b:Lorg/apache/http/HttpEntity;

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/g;->c:Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object p1, p0, Lcn/egame/terminal/sdk/log/g;->a:Lorg/apache/http/client/HttpClient;

    iput-object p2, p0, Lcn/egame/terminal/sdk/log/g;->c:Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object p3, p0, Lcn/egame/terminal/sdk/log/g;->b:Lorg/apache/http/HttpEntity;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/g;->b:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/egame/terminal/sdk/log/g;->b:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcn/egame/terminal/sdk/log/e;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TUBE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Result: \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/g;->c:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/g;->c:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/g;->c:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    :cond_0
    iget-object v0, p0, Lcn/egame/terminal/sdk/log/g;->a:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/g;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_1
    return-void
.end method
