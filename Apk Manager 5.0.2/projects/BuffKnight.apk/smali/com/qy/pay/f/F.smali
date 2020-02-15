.class Lcom/qy/pay/f/F;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qy/pay/network/a/a;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/F;->a:Lcom/qy/pay/f/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qy/pay/f/F;->a:Lcom/qy/pay/f/i;

    invoke-static {v0}, Lcom/qy/pay/f/i;->c(Lcom/qy/pay/f/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/a/d;->a(Landroid/content/Context;)Lcom/qy/pay/a/d;

    move-result-object v0

    const-string v1, "new_user"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "new_user"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/qy/pay/f/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
