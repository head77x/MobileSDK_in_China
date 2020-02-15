.class Lcom/qy/pay/f/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/m;

.field private final synthetic b:[Ljava/lang/String;

.field private final synthetic c:[Ljava/lang/String;

.field private final synthetic d:Lcom/qy/pay/network/b/f;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/m;[Ljava/lang/String;[Ljava/lang/String;Lcom/qy/pay/network/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/n;->a:Lcom/qy/pay/f/m;

    iput-object p2, p0, Lcom/qy/pay/f/n;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/qy/pay/f/n;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/qy/pay/f/n;->d:Lcom/qy/pay/network/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/qy/pay/network/b/f;

    invoke-direct {v0}, Lcom/qy/pay/network/b/f;-><init>()V

    iget-object v1, p0, Lcom/qy/pay/f/n;->b:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/f/n;->c:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/f/n;->a:Lcom/qy/pay/f/m;

    invoke-static {v1}, Lcom/qy/pay/f/m;->a(Lcom/qy/pay/f/m;)Lcom/qy/pay/f/l;

    move-result-object v1

    invoke-static {v1}, Lcom/qy/pay/f/l;->a(Lcom/qy/pay/f/l;)Lcom/qy/pay/f/i;

    move-result-object v1

    iget-object v2, p0, Lcom/qy/pay/f/n;->d:Lcom/qy/pay/network/b/f;

    invoke-static {v1, v2, v0}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    return-void
.end method
