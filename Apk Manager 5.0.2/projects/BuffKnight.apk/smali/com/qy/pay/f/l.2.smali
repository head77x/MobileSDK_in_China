.class Lcom/qy/pay/f/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qy/pay/network/a/a;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;

.field private final synthetic b:Lcom/qy/pay/network/b/f;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/l;->a:Lcom/qy/pay/f/i;

    iput-object p2, p0, Lcom/qy/pay/f/l;->b:Lcom/qy/pay/network/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/l;)Lcom/qy/pay/f/i;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/l;->a:Lcom/qy/pay/f/i;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_2

    check-cast p2, Lcom/qy/pay/network/c/j;

    invoke-virtual {p2}, Lcom/qy/pay/network/c/j;->a()Lcom/qy/pay/network/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/qy/pay/network/c/j;->a()Lcom/qy/pay/network/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/qy/pay/f/l;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/l;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "QY"

    invoke-virtual {p2}, Lcom/qy/pay/network/c/j;->a()Lcom/qy/pay/network/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qy/pay/network/b/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/qy/pay/network/c/j;->a()Lcom/qy/pay/network/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/qy/pay/a;

    iget-object v3, p0, Lcom/qy/pay/f/l;->a:Lcom/qy/pay/f/i;

    invoke-static {v3}, Lcom/qy/pay/f/i;->c(Lcom/qy/pay/f/i;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/qy/pay/f/m;

    iget-object v5, p0, Lcom/qy/pay/f/l;->b:Lcom/qy/pay/network/b/f;

    invoke-direct {v4, p0, v5, v0, v1}, Lcom/qy/pay/f/m;-><init>(Lcom/qy/pay/f/l;Lcom/qy/pay/network/b/f;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v5, p0, Lcom/qy/pay/f/l;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v5}, Lcom/qy/pay/network/b/f;->b()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/qy/pay/a;-><init>(Landroid/content/Context;Lcom/qy/pay/d/a;II)V

    aget-object v1, v1, v7

    aget-object v0, v0, v7

    invoke-virtual {v2, v1, v0}, Lcom/qy/pay/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/qy/pay/f/l;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/l;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0
.end method
