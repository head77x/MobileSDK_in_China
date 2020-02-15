.class Lcom/qy/pay/f/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qy/pay/d/a;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;

.field private final synthetic b:Lcom/qy/pay/network/b/f;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/r;->a:Lcom/qy/pay/f/i;

    iput-object p2, p0, Lcom/qy/pay/f/r;->b:Lcom/qy/pay/network/b/f;

    iput-object p3, p0, Lcom/qy/pay/f/r;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/r;)Lcom/qy/pay/f/i;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/r;->a:Lcom/qy/pay/f/i;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    new-instance v1, Lcom/qy/pay/f/s;

    iget-object v2, p0, Lcom/qy/pay/f/r;->b:Lcom/qy/pay/network/b/f;

    iget-object v3, p0, Lcom/qy/pay/f/r;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/qy/pay/f/s;-><init>(Lcom/qy/pay/f/r;Lcom/qy/pay/network/b/f;Ljava/lang/String;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/qy/pay/f/r;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/r;->b:Lcom/qy/pay/network/b/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    return-void
.end method
