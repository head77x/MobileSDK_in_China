.class Lcom/qy/pay/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qy/pay/a;


# direct methods
.method constructor <init>(Lcom/qy/pay/a;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/b;->a:Lcom/qy/pay/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/qy/pay/b;->a:Lcom/qy/pay/a;

    iget-object v1, p0, Lcom/qy/pay/b;->a:Lcom/qy/pay/a;

    invoke-static {v1}, Lcom/qy/pay/a;->a(Lcom/qy/pay/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/qy/pay/a;->a(Lcom/qy/pay/a;I)V

    iget-object v0, p0, Lcom/qy/pay/b;->a:Lcom/qy/pay/a;

    invoke-static {v0}, Lcom/qy/pay/a;->b(Lcom/qy/pay/a;)V

    return-void
.end method
