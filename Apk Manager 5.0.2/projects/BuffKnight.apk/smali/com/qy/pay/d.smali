.class Lcom/qy/pay/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/qy/pay/a;


# direct methods
.method constructor <init>(Lcom/qy/pay/a;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/d;->a:Lcom/qy/pay/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/qy/pay/d;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "deliver fail"

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qy/pay/d;->a:Lcom/qy/pay/a;

    invoke-static {v0}, Lcom/qy/pay/a;->h(Lcom/qy/pay/a;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/qy/pay/a;->d(Lcom/qy/pay/a;I)V

    iget-object v0, p0, Lcom/qy/pay/d;->a:Lcom/qy/pay/a;

    invoke-static {v0}, Lcom/qy/pay/a;->b(Lcom/qy/pay/a;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "deliver suc"

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qy/pay/d;->a:Lcom/qy/pay/a;

    invoke-static {v0}, Lcom/qy/pay/a;->g(Lcom/qy/pay/a;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/qy/pay/a;->c(Lcom/qy/pay/a;I)V

    iget-object v0, p0, Lcom/qy/pay/d;->a:Lcom/qy/pay/a;

    invoke-static {v0}, Lcom/qy/pay/a;->e(Lcom/qy/pay/a;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
