.class Lcom/qy/pay/f/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qy/pay/d/a;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/t;

.field private final synthetic b:Lcom/qy/pay/network/b/f;

.field private final synthetic c:Lcom/qy/pay/network/c/f;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/t;Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/u;->a:Lcom/qy/pay/f/t;

    iput-object p2, p0, Lcom/qy/pay/f/u;->b:Lcom/qy/pay/network/b/f;

    iput-object p3, p0, Lcom/qy/pay/f/u;->c:Lcom/qy/pay/network/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/u;)Lcom/qy/pay/f/t;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/u;->a:Lcom/qy/pay/f/t;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    new-instance v1, Lcom/qy/pay/f/v;

    iget-object v2, p0, Lcom/qy/pay/f/u;->b:Lcom/qy/pay/network/b/f;

    iget-object v3, p0, Lcom/qy/pay/f/u;->c:Lcom/qy/pay/network/c/f;

    invoke-direct {v1, p0, v2, v3}, Lcom/qy/pay/f/v;-><init>(Lcom/qy/pay/f/u;Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/c/f;)V

    iget-object v2, p0, Lcom/qy/pay/f/u;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v2}, Lcom/qy/pay/network/b/f;->f()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/qy/pay/network/b/f;

    invoke-direct {v0}, Lcom/qy/pay/network/b/f;-><init>()V

    iget-object v1, p0, Lcom/qy/pay/f/u;->c:Lcom/qy/pay/network/c/f;

    invoke-virtual {v1}, Lcom/qy/pay/network/c/f;->b()Lcom/qy/pay/network/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/f/u;->c:Lcom/qy/pay/network/c/f;

    invoke-virtual {v1}, Lcom/qy/pay/network/c/f;->b()Lcom/qy/pay/network/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qy/pay/network/b/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qy/pay/f/u;->a:Lcom/qy/pay/f/t;

    invoke-static {v0}, Lcom/qy/pay/f/t;->a(Lcom/qy/pay/f/t;)Lcom/qy/pay/f/i;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/f/u;->b:Lcom/qy/pay/network/b/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    return-void
.end method
