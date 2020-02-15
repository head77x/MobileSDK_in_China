.class public Lcom/qy/pay/f/Q;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/qy/pay/network/b/f;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/qy/pay/network/b/f;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/qy/pay/network/b/f;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/qy/pay/f/Q;->a:Lcom/qy/pay/network/b/f;

    iput-object p2, p0, Lcom/qy/pay/f/Q;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/Q;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/Q;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/qy/pay/f/Q;)Lcom/qy/pay/network/b/f;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/Q;->a:Lcom/qy/pay/network/b/f;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Lcom/qy/pay/network/b/f;)Ljava/lang/Boolean;
    .locals 4

    new-instance v0, Lcom/qy/pay/network/c/m;

    invoke-direct {v0}, Lcom/qy/pay/network/c/m;-><init>()V

    iget-object v1, p0, Lcom/qy/pay/f/Q;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/P;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/m;->a(Lcom/qy/pay/network/b/h;)V

    iget-object v1, p0, Lcom/qy/pay/f/Q;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/b;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/m;->a(Lcom/qy/pay/network/b/a;)V

    iget-object v1, p0, Lcom/qy/pay/f/Q;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/f;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/m;->a(Lcom/qy/pay/network/b/c;)V

    iget-object v1, p0, Lcom/qy/pay/f/Q;->a:Lcom/qy/pay/network/b/f;

    invoke-virtual {v1}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/m;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/network/connect/a;->a()Lcom/qy/pay/network/connect/a;

    move-result-object v1

    invoke-static {}, Lcom/qy/pay/network/f/b;->a()Lcom/qy/pay/network/b/e;

    move-result-object v2

    new-instance v3, Lcom/qy/pay/f/R;

    invoke-direct {v3, p0}, Lcom/qy/pay/f/R;-><init>(Lcom/qy/pay/f/Q;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/qy/pay/network/connect/a;->a(Lcom/qy/pay/network/b/e;Ljava/lang/Object;Lcom/qy/pay/network/a/a;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/qy/pay/network/b/f;

    invoke-virtual {p0, p1}, Lcom/qy/pay/f/Q;->a([Lcom/qy/pay/network/b/f;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/qy/pay/f/Q;->a(Ljava/lang/Boolean;)V

    return-void
.end method
