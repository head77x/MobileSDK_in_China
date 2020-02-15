.class Lcom/qy/pay/f/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/j;->a:Lcom/qy/pay/f/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "init succ"

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qy/pay/f/j;->a:Lcom/qy/pay/f/i;

    invoke-static {v0}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;)V

    iget-object v0, p0, Lcom/qy/pay/f/j;->a:Lcom/qy/pay/f/i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;Ljava/lang/String;I)V

    return-void
.end method
