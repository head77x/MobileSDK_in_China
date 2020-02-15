.class Lcom/qy/pay/f/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qy/pay/d/a;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/l;

.field private final synthetic b:Lcom/qy/pay/network/b/f;

.field private final synthetic c:[Ljava/lang/String;

.field private final synthetic d:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/l;Lcom/qy/pay/network/b/f;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/m;->a:Lcom/qy/pay/f/l;

    iput-object p2, p0, Lcom/qy/pay/f/m;->b:Lcom/qy/pay/network/b/f;

    iput-object p3, p0, Lcom/qy/pay/f/m;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/qy/pay/f/m;->d:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/m;)Lcom/qy/pay/f/l;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/m;->a:Lcom/qy/pay/f/l;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    new-instance v1, Lcom/qy/pay/f/n;

    iget-object v2, p0, Lcom/qy/pay/f/m;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/qy/pay/f/m;->d:[Ljava/lang/String;

    iget-object v4, p0, Lcom/qy/pay/f/m;->b:Lcom/qy/pay/network/b/f;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/qy/pay/f/n;-><init>(Lcom/qy/pay/f/m;[Ljava/lang/String;[Ljava/lang/String;Lcom/qy/pay/network/b/f;)V

    iget-object v2, p0, Lcom/qy/pay/f/m;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v2}, Lcom/qy/pay/network/b/f;->f()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/qy/pay/network/b/f;

    invoke-direct {v0}, Lcom/qy/pay/network/b/f;-><init>()V

    iget-object v1, p0, Lcom/qy/pay/f/m;->c:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/f/m;->d:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/f/m;->a:Lcom/qy/pay/f/l;

    invoke-static {v1}, Lcom/qy/pay/f/l;->a(Lcom/qy/pay/f/l;)Lcom/qy/pay/f/i;

    move-result-object v1

    iget-object v2, p0, Lcom/qy/pay/f/m;->b:Lcom/qy/pay/network/b/f;

    invoke-virtual {v1, v2, v0}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    return-void
.end method
