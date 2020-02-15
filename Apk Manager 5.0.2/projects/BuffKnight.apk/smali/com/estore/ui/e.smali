.class final Lcom/estore/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/estore/ui/CTEStoreSDKActivity;


# direct methods
.method constructor <init>(Lcom/estore/ui/CTEStoreSDKActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estore/ui/e;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estore/ui/e;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-static {v0}, Lcom/estore/ui/CTEStoreSDKActivity;->e(Lcom/estore/ui/CTEStoreSDKActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estore/ui/e;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estore/ui/CTEStoreSDKActivity;->b(Lcom/estore/ui/CTEStoreSDKActivity;Z)V

    iget-object v0, p0, Lcom/estore/ui/e;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, p0, Lcom/estore/ui/e;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, v1, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    const-string v2, ""

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;Landroid/os/Handler;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
