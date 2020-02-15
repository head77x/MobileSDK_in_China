.class Lcom/qy/pay/f/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/J;->a:Lcom/qy/pay/f/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/qy/pay/f/J;->a:Lcom/qy/pay/f/i;

    iget-object v1, p0, Lcom/qy/pay/f/J;->a:Lcom/qy/pay/f/i;

    invoke-static {v1}, Lcom/qy/pay/f/i;->g(Lcom/qy/pay/f/i;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/qy/pay/f/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/qy/pay/f/i;->d()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/qy/pay/f/i;->a(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;II)V

    return-void
.end method
