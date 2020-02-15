.class Lcom/qy/pay/f/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/D;->a:Lcom/qy/pay/f/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/qy/pay/f/D;->a:Lcom/qy/pay/f/i;

    invoke-static {v0}, Lcom/qy/pay/f/i;->d(Lcom/qy/pay/f/i;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/qy/pay/f/D;->a:Lcom/qy/pay/f/i;

    invoke-static {v2}, Lcom/qy/pay/f/i;->d(Lcom/qy/pay/f/i;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qy/pay/network/b/g;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qy/pay/network/b/f;

    new-instance v3, Lcom/qy/pay/a;

    iget-object v4, p0, Lcom/qy/pay/f/D;->a:Lcom/qy/pay/f/i;

    invoke-static {v4}, Lcom/qy/pay/f/i;->c(Lcom/qy/pay/f/i;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/qy/pay/f/E;

    invoke-direct {v5, p0}, Lcom/qy/pay/f/E;-><init>(Lcom/qy/pay/f/D;)V

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->b()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/qy/pay/a;-><init>(Landroid/content/Context;Lcom/qy/pay/d/a;I)V

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/qy/pay/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
