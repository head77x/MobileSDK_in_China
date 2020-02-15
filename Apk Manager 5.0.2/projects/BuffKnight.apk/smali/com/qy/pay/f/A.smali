.class Lcom/qy/pay/f/A;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qy/pay/network/a/a;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;

.field private final synthetic b:Lcom/qy/pay/network/b/f;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/A;->a:Lcom/qy/pay/f/i;

    iput-object p2, p0, Lcom/qy/pay/f/A;->b:Lcom/qy/pay/network/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    check-cast p2, Lcom/qy/pay/network/c/j;

    invoke-virtual {p2}, Lcom/qy/pay/network/c/j;->a()Lcom/qy/pay/network/b/f;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qy/pay/f/A;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/A;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qy/pay/f/A;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/A;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {p2}, Lcom/qy/pay/network/c/j;->a()Lcom/qy/pay/network/b/f;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qy/pay/f/A;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/A;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0
.end method
