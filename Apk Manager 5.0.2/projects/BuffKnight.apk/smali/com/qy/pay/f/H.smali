.class Lcom/qy/pay/f/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/G;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/G;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/H;->a:Lcom/qy/pay/f/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/qy/pay/f/H;->a:Lcom/qy/pay/f/G;

    invoke-static {v0}, Lcom/qy/pay/f/G;->a(Lcom/qy/pay/f/G;)Lcom/qy/pay/f/i;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qy/pay/f/H;->a:Lcom/qy/pay/f/G;

    invoke-static {v3}, Lcom/qy/pay/f/G;->a(Lcom/qy/pay/f/G;)Lcom/qy/pay/f/i;

    move-result-object v3

    invoke-static {v3}, Lcom/qy/pay/f/i;->f(Lcom/qy/pay/f/i;)Lcom/qy/pay/network/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qy/pay/network/b/g;->e()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qy/pay/f/i;->a(BBLjava/util/ArrayList;Lcom/qy/pay/network/b/f;)V

    iget-object v0, p0, Lcom/qy/pay/f/H;->a:Lcom/qy/pay/f/G;

    invoke-static {v0}, Lcom/qy/pay/f/G;->a(Lcom/qy/pay/f/G;)Lcom/qy/pay/f/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qy/pay/f/i;->b()V

    return-void
.end method
