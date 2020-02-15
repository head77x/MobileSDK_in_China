.class final Lcom/anysdk/Util/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anysdk/Util/c;


# direct methods
.method constructor <init>(Lcom/anysdk/Util/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/Util/e;->c:Lcom/anysdk/Util/c;

    iput-object p2, p0, Lcom/anysdk/Util/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anysdk/Util/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/anysdk/Util/e;->c:Lcom/anysdk/Util/c;

    invoke-static {v0}, Lcom/anysdk/Util/c;->a(Lcom/anysdk/Util/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anysdk/Util/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/anysdk/Util/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anysdk/Util/e;->c:Lcom/anysdk/Util/c;

    invoke-static {v2}, Lcom/anysdk/Util/c;->b(Lcom/anysdk/Util/c;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/anysdk/Util/e;->c:Lcom/anysdk/Util/c;

    invoke-static {v3}, Lcom/anysdk/Util/c;->c(Lcom/anysdk/Util/c;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/anysdk/Util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/anysdk/Util/c;->a()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/anysdk/Util/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anysdk/Util/e;->c:Lcom/anysdk/Util/c;

    invoke-static {v1}, Lcom/anysdk/Util/c;->d(Lcom/anysdk/Util/c;)Lcom/anysdk/Util/SdkHttpListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/anysdk/Util/SdkHttpListener;->onResponse(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/anysdk/Util/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/anysdk/Util/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anysdk/Util/e;->c:Lcom/anysdk/Util/c;

    invoke-static {v2}, Lcom/anysdk/Util/c;->c(Lcom/anysdk/Util/c;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/anysdk/Util/b;->a(Landroid/content/Context;Ljava/lang/String;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anysdk/Util/e;->c:Lcom/anysdk/Util/c;

    invoke-static {v0}, Lcom/anysdk/Util/c;->d(Lcom/anysdk/Util/c;)Lcom/anysdk/Util/SdkHttpListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anysdk/Util/SdkHttpListener;->onError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/anysdk/Util/c;->a()V

    iget-object v1, p0, Lcom/anysdk/Util/e;->c:Lcom/anysdk/Util/c;

    invoke-static {v1}, Lcom/anysdk/Util/c;->d(Lcom/anysdk/Util/c;)Lcom/anysdk/Util/SdkHttpListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/anysdk/Util/SdkHttpListener;->onError()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
