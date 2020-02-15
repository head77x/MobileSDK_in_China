.class Lcom/qy/pay/f/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/u;

.field private final synthetic b:Lcom/qy/pay/network/b/f;

.field private final synthetic c:Lcom/qy/pay/network/c/f;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/u;Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/v;->a:Lcom/qy/pay/f/u;

    iput-object p2, p0, Lcom/qy/pay/f/v;->b:Lcom/qy/pay/network/b/f;

    iput-object p3, p0, Lcom/qy/pay/f/v;->c:Lcom/qy/pay/network/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/qy/pay/f/v;->a:Lcom/qy/pay/f/u;

    invoke-static {v0}, Lcom/qy/pay/f/u;->a(Lcom/qy/pay/f/u;)Lcom/qy/pay/f/t;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/t;->a(Lcom/qy/pay/f/t;)Lcom/qy/pay/f/i;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/f/v;->b:Lcom/qy/pay/network/b/f;

    iget-object v2, p0, Lcom/qy/pay/f/v;->c:Lcom/qy/pay/network/c/f;

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/c/f;)V

    return-void
.end method
