.class public Lcom/qy/pay/listener/PayAgent;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qy/pay/f/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static netWorkPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/qy/pay/f/i;->a(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;II)V

    return-void
.end method

.method public static pay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/qy/pay/f/i;->a(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;I)V

    return-void
.end method

.method public static statistics(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/qy/pay/f/i;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
