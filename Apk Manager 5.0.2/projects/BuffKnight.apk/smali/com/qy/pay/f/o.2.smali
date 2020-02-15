.class Lcom/qy/pay/f/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qy/pay/d/a;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;

.field private final synthetic b:Lcom/qy/pay/network/b/f;

.field private final synthetic c:Lcom/qy/pay/network/b/f;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/o;->a:Lcom/qy/pay/f/i;

    iput-object p2, p0, Lcom/qy/pay/f/o;->b:Lcom/qy/pay/network/b/f;

    iput-object p3, p0, Lcom/qy/pay/f/o;->c:Lcom/qy/pay/network/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/qy/pay/f/o;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->i()B

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qy/pay/f/o;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/o;->b:Lcom/qy/pay/network/b/f;

    iget-object v2, p0, Lcom/qy/pay/f/o;->c:Lcom/qy/pay/network/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/qy/pay/f/o;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/o;->b:Lcom/qy/pay/network/b/f;

    iget-object v2, p0, Lcom/qy/pay/f/o;->c:Lcom/qy/pay/network/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    return-void
.end method
