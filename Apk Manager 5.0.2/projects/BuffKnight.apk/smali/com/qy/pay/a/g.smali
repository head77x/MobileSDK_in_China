.class Lcom/qy/pay/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/qy/pay/a/b;


# direct methods
.method constructor <init>(Lcom/qy/pay/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/a/g;->a:Lcom/qy/pay/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/a/g;->a:Lcom/qy/pay/a/b;

    iget-object v0, v0, Lcom/qy/pay/a/b;->a:Lcom/qy/pay/a/c;

    invoke-virtual {v0}, Lcom/qy/pay/a/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qy/pay/a/g;->a:Lcom/qy/pay/a/b;

    iget-object v0, v0, Lcom/qy/pay/a/b;->a:Lcom/qy/pay/a/c;

    invoke-virtual {v0}, Lcom/qy/pay/a/c;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/qy/pay/a/g;->a:Lcom/qy/pay/a/b;

    invoke-static {v0}, Lcom/qy/pay/a/b;->b(Lcom/qy/pay/a/b;)V

    return-void
.end method
