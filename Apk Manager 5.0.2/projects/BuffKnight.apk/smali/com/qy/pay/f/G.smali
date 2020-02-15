.class Lcom/qy/pay/f/G;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qy/pay/network/a/a;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/G;->a:Lcom/qy/pay/f/i;

    iput-object p2, p0, Lcom/qy/pay/f/G;->b:Ljava/lang/String;

    iput p3, p0, Lcom/qy/pay/f/G;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/G;)Lcom/qy/pay/f/i;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/G;->a:Lcom/qy/pay/f/i;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 5

    const/16 v4, 0x3e8

    const/4 v0, 0x0

    if-nez p1, :cond_3

    check-cast p2, Lcom/qy/pay/network/c/l;

    invoke-virtual {p2}, Lcom/qy/pay/network/c/l;->e()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x18

    if-ne v1, v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/qy/pay/f/G;->a:Lcom/qy/pay/f/i;

    invoke-static {v0}, Lcom/qy/pay/f/i;->e(Lcom/qy/pay/f/i;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/qy/pay/f/G;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/qy/pay/network/c/l;->a()Lcom/qy/pay/network/b/g;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qy/pay/f/G;->a:Lcom/qy/pay/f/i;

    invoke-virtual {p2}, Lcom/qy/pay/network/c/l;->a()Lcom/qy/pay/network/b/g;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/g;)V

    iget-object v0, p0, Lcom/qy/pay/f/G;->a:Lcom/qy/pay/f/i;

    invoke-static {v0}, Lcom/qy/pay/f/i;->f(Lcom/qy/pay/f/i;)Lcom/qy/pay/network/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qy/pay/f/G;->a:Lcom/qy/pay/f/i;

    invoke-virtual {p2}, Lcom/qy/pay/network/c/l;->a()Lcom/qy/pay/network/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qy/pay/network/b/g;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;Ljava/util/List;)V

    iget v0, p0, Lcom/qy/pay/f/G;->c:I

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/qy/pay/network/c/l;->a()Lcom/qy/pay/network/b/g;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    new-instance v2, Lcom/qy/pay/f/H;

    invoke-direct {v2, p0}, Lcom/qy/pay/f/H;-><init>(Lcom/qy/pay/f/G;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "resp{"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/qy/pay/network/c/l;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    move v0, v1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------end network req---------code["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qy/pay/network/b/f;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->h()B

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/qy/pay/f/G;->a:Lcom/qy/pay/f/i;

    invoke-virtual {p2}, Lcom/qy/pay/network/c/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/f/i;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/qy/pay/f/G;->a:Lcom/qy/pay/f/i;

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {v0, v4, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/qy/pay/f/G;->a:Lcom/qy/pay/f/i;

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {v0, v4, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    goto :goto_1
.end method
