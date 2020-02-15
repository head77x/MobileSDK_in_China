.class Lcom/qy/pay/f/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qy/pay/network/a/a;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;

.field private final synthetic b:Lcom/qy/pay/network/b/f;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/p;->a:Lcom/qy/pay/f/i;

    iput-object p2, p0, Lcom/qy/pay/f/p;->b:Lcom/qy/pay/network/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x0

    new-instance v0, Lcom/qy/pay/network/b/f;

    invoke-direct {v0}, Lcom/qy/pay/network/b/f;-><init>()V

    if-nez p1, :cond_3

    check-cast p2, Lcom/qy/pay/network/c/p;

    invoke-virtual {p2}, Lcom/qy/pay/network/c/p;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/qy/pay/network/c/p;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/qy/pay/f/p;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/p;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v0, v1, v7}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/qy/pay/network/c/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qy/pay/network/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doWebFirstPay res:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qy/pay/f/p;->a:Lcom/qy/pay/f/i;

    iput-object v1, v2, Lcom/qy/pay/f/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/qy/pay/f/p;->b:Lcom/qy/pay/network/b/f;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Exception"

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v1

    iget-object v2, p0, Lcom/qy/pay/f/p;->b:Lcom/qy/pay/network/b/f;

    invoke-static {v1, v6, v5, v2, v0}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    iget-object v0, p0, Lcom/qy/pay/f/p;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/p;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v0, v1, v7}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/qy/pay/f/p;->b:Lcom/qy/pay/network/b/f;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    iget-object v1, p0, Lcom/qy/pay/f/p;->a:Lcom/qy/pay/f/i;

    iget-object v2, p0, Lcom/qy/pay/f/p;->b:Lcom/qy/pay/network/b/f;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    const-string v1, "net conn fail"

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v1

    iget-object v2, p0, Lcom/qy/pay/f/p;->b:Lcom/qy/pay/network/b/f;

    invoke-static {v1, v6, v5, v2, v0}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    iget-object v0, p0, Lcom/qy/pay/f/p;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/p;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v0, v1, v7}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0
.end method
