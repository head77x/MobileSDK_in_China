.class Lcom/qy/pay/f/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/r;

.field private final synthetic b:Lcom/qy/pay/network/b/f;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/r;Lcom/qy/pay/network/b/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/s;->a:Lcom/qy/pay/f/r;

    iput-object p2, p0, Lcom/qy/pay/f/s;->b:Lcom/qy/pay/network/b/f;

    iput-object p3, p0, Lcom/qy/pay/f/s;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/qy/pay/f/s;->a:Lcom/qy/pay/f/r;

    invoke-static {v0}, Lcom/qy/pay/f/r;->a(Lcom/qy/pay/f/r;)Lcom/qy/pay/f/i;

    move-result-object v0

    iget-object v1, p0, Lcom/qy/pay/f/s;->b:Lcom/qy/pay/network/b/f;

    iget-object v2, p0, Lcom/qy/pay/f/s;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;Ljava/lang/String;)V

    return-void
.end method
