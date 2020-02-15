.class Lcom/qy/pay/f/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/B;->a:Lcom/qy/pay/f/i;

    iput-object p2, p0, Lcom/qy/pay/f/B;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/qy/pay/f/B;->b:Ljava/lang/String;

    const-string v1, "QY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qy/pay/a;

    iget-object v2, p0, Lcom/qy/pay/f/B;->a:Lcom/qy/pay/f/i;

    invoke-static {v2}, Lcom/qy/pay/f/i;->c(Lcom/qy/pay/f/i;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/qy/pay/f/C;

    iget-object v4, p0, Lcom/qy/pay/f/B;->b:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/qy/pay/f/C;-><init>(Lcom/qy/pay/f/B;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/qy/pay/a;-><init>(Landroid/content/Context;Lcom/qy/pay/d/a;II)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    aget-object v0, v0, v5

    invoke-virtual {v1, v2, v0}, Lcom/qy/pay/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
