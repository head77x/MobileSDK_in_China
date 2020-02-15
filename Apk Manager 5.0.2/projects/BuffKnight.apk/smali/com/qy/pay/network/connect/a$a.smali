.class Lcom/qy/pay/network/connect/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qy/pay/network/connect/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/qy/pay/network/connect/a;

.field private c:Lcom/qy/pay/network/d/d;

.field private d:Lcom/qy/pay/network/a/a;


# direct methods
.method public constructor <init>(Lcom/qy/pay/network/connect/a;Lcom/qy/pay/network/b/e;Lcom/qy/pay/network/d/d;Lcom/qy/pay/network/a/a;)V
    .locals 1

    iput-object p1, p0, Lcom/qy/pay/network/connect/a$a;->b:Lcom/qy/pay/network/connect/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/qy/pay/network/b/e;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qy/pay/network/connect/a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/qy/pay/network/connect/a$a;->c:Lcom/qy/pay/network/d/d;

    iput-object p4, p0, Lcom/qy/pay/network/connect/a$a;->d:Lcom/qy/pay/network/a/a;

    return-void
.end method


# virtual methods
.method protected a(Lcom/qy/pay/network/d/d;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget v1, p1, Lcom/qy/pay/network/d/d;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/qy/pay/network/d/d;->c:I

    iget-object v1, p1, Lcom/qy/pay/network/d/d;->b:Ljava/lang/Object;

    invoke-static {v1}, Lcom/qy/pay/network/d/a;->a(Ljava/lang/Object;)Lcom/qy/pay/network/d/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/qy/pay/network/d/i;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/qy/pay/network/d/d;->c:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/qy/pay/network/d/d;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/qy/pay/network/d/d;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), retry :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/qy/pay/network/d/d;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/qy/pay/network/d/d;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cancel :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 7

    const/4 v6, 0x1

    :cond_0
    const/16 v0, 0x2800

    :try_start_0
    new-array v1, v0, [B

    iget-object v0, p0, Lcom/qy/pay/network/connect/a$a;->b:Lcom/qy/pay/network/connect/a;

    invoke-static {v0}, Lcom/qy/pay/network/connect/a;->a(Lcom/qy/pay/network/connect/a;)Lcom/qy/pay/network/d/e;

    move-result-object v0

    iget-object v2, p0, Lcom/qy/pay/network/connect/a$a;->c:Lcom/qy/pay/network/d/d;

    invoke-virtual {v0, v2}, Lcom/qy/pay/network/d/e;->a(Lcom/qy/pay/network/d/d;)[B

    move-result-object v2

    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/qy/pay/network/connect/a$a;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v3, 0x61a8

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v3, 0xafc8

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/qy/pay/network/connect/a$a;->c:Lcom/qy/pay/network/d/d;

    iget-object v3, v3, Lcom/qy/pay/network/d/d;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qy/pay/network/connect/a$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    const/16 v3, 0xce

    if-eq v2, v3, :cond_2

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get response fail , response code = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/qy/pay/network/connect/a$a;->c:Lcom/qy/pay/network/d/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/qy/pay/network/connect/a$a;->a(Lcom/qy/pay/network/d/d;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qy/pay/network/connect/a$a;->d:Lcom/qy/pay/network/a/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/qy/pay/network/connect/a$a;->d:Lcom/qy/pay/network/a/a;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Lcom/qy/pay/network/a/a;->a(ILjava/lang/Object;)V

    :goto_0
    const-string v0, "connection is closed"

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_2
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v0, Lcom/qy/pay/network/d/d;

    invoke-direct {v0}, Lcom/qy/pay/network/d/d;-><init>()V

    iget-object v2, p0, Lcom/qy/pay/network/connect/a$a;->b:Lcom/qy/pay/network/connect/a;

    invoke-static {v2}, Lcom/qy/pay/network/connect/a;->a(Lcom/qy/pay/network/connect/a;)Lcom/qy/pay/network/d/e;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/qy/pay/network/d/e;->a([BI)Lcom/qy/pay/network/d/f;

    move-result-object v2

    iput-object v2, v0, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    iget-object v2, v0, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    iget-wide v2, v2, Lcom/qy/pay/network/d/f;->e:J

    iget-object v4, p0, Lcom/qy/pay/network/connect/a$a;->c:Lcom/qy/pay/network/d/d;

    iget-object v4, v4, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    iget-wide v4, v4, Lcom/qy/pay/network/d/f;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    iget-wide v2, v2, Lcom/qy/pay/network/d/f;->f:J

    iget-object v4, p0, Lcom/qy/pay/network/connect/a$a;->c:Lcom/qy/pay/network/d/d;

    iget-object v4, v4, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    iget-wide v4, v4, Lcom/qy/pay/network/d/f;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "receive data fail, uuid not equal"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_5
    array-length v2, v1

    iget-object v3, v0, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    iget v3, v3, Lcom/qy/pay/network/d/f;->b:I

    if-ge v2, v3, :cond_6

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "receive data fail, recv "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes < message length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    iget v0, v0, Lcom/qy/pay/network/d/f;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    iget-object v2, p0, Lcom/qy/pay/network/connect/a$a;->b:Lcom/qy/pay/network/connect/a;

    invoke-static {v2}, Lcom/qy/pay/network/connect/a;->a(Lcom/qy/pay/network/connect/a;)Lcom/qy/pay/network/d/e;

    move-result-object v2

    const/16 v3, 0x1c

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1c

    iget-object v5, v0, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    iget v5, v5, Lcom/qy/pay/network/d/f;->g:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/qy/pay/network/d/e;->a([BIII)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/qy/pay/network/d/d;->b:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recv "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/qy/pay/network/d/d;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/network/connect/a$a;->d:Lcom/qy/pay/network/a/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qy/pay/network/connect/a$a;->d:Lcom/qy/pay/network/a/a;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/qy/pay/network/d/d;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/qy/pay/network/a/a;->a(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_7
    const-string v0, "mCallback is null"

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
