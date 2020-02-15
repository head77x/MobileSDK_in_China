.class Lcom/qy/pay/f/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/x;->a:Lcom/qy/pay/f/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/qy/pay/f/x;->a:Lcom/qy/pay/f/i;

    iget v0, v0, Lcom/qy/pay/f/i;->j:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qy/pay/f/x;->a:Lcom/qy/pay/f/i;

    const/4 v1, 0x0

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qy/pay/f/x;->a:Lcom/qy/pay/f/i;

    const/16 v1, 0x3f1

    const-string v2, "\u652f\u4ed8\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
