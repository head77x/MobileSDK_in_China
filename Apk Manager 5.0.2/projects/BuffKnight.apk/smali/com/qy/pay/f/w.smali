.class Lcom/qy/pay/f/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/t;

.field private final synthetic b:Lcom/qy/pay/network/b/f;

.field private final synthetic c:Lcom/qy/pay/network/c/f;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/t;Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/w;->a:Lcom/qy/pay/f/t;

    iput-object p2, p0, Lcom/qy/pay/f/w;->b:Lcom/qy/pay/network/b/f;

    iput-object p3, p0, Lcom/qy/pay/f/w;->c:Lcom/qy/pay/network/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/qy/pay/f/w;->a:Lcom/qy/pay/f/t;

    invoke-static {v0}, Lcom/qy/pay/f/t;->a(Lcom/qy/pay/f/t;)Lcom/qy/pay/f/i;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/f/w;->b:Lcom/qy/pay/network/b/f;

    iget-object v2, p0, Lcom/qy/pay/f/w;->c:Lcom/qy/pay/network/c/f;

    invoke-virtual {v2}, Lcom/qy/pay/network/c/f;->b()Lcom/qy/pay/network/b/f;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    return-void
.end method
