.class Lcom/qy/pay/f/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qy/pay/network/a/a;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;

.field private final synthetic b:Lcom/qy/pay/network/b/f;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/t;->a:Lcom/qy/pay/f/i;

    iput-object p2, p0, Lcom/qy/pay/f/t;->b:Lcom/qy/pay/network/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/t;)Lcom/qy/pay/f/i;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/t;->a:Lcom/qy/pay/f/i;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_3

    check-cast p2, Lcom/qy/pay/network/c/f;

    invoke-virtual {p2}, Lcom/qy/pay/network/c/f;->b()Lcom/qy/pay/network/b/f;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qy/pay/f/t;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/t;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/qy/pay/network/c/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/qy/pay/a;

    iget-object v1, p0, Lcom/qy/pay/f/t;->a:Lcom/qy/pay/f/i;

    invoke-static {v1}, Lcom/qy/pay/f/i;->c(Lcom/qy/pay/f/i;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/qy/pay/f/u;

    iget-object v3, p0, Lcom/qy/pay/f/t;->b:Lcom/qy/pay/network/b/f;

    invoke-direct {v2, p0, v3, p2}, Lcom/qy/pay/f/u;-><init>(Lcom/qy/pay/f/t;Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/c/f;)V

    iget-object v3, p0, Lcom/qy/pay/f/t;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v3}, Lcom/qy/pay/network/b/f;->b()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qy/pay/a;-><init>(Landroid/content/Context;Lcom/qy/pay/d/a;II)V

    invoke-virtual {p2}, Lcom/qy/pay/network/c/f;->b()Lcom/qy/pay/network/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qy/pay/network/b/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/qy/pay/network/c/f;->b()Lcom/qy/pay/network/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/qy/pay/network/c/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    new-instance v1, Lcom/qy/pay/f/w;

    iget-object v2, p0, Lcom/qy/pay/f/t;->b:Lcom/qy/pay/network/b/f;

    invoke-direct {v1, p0, v2, p2}, Lcom/qy/pay/f/w;-><init>(Lcom/qy/pay/f/t;Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/c/f;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/qy/pay/f/t;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/t;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/qy/pay/f/t;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/t;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0
.end method
