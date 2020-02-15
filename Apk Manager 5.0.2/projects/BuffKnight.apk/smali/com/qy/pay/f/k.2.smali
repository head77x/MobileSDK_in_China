.class Lcom/qy/pay/f/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;

.field private final synthetic b:Lcom/qy/pay/network/b/f;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/k;->a:Lcom/qy/pay/f/i;

    iput-object p2, p0, Lcom/qy/pay/f/k;->b:Lcom/qy/pay/network/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/qy/pay/f/k;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/k;->b:Lcom/qy/pay/network/b/f;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    return-void
.end method
