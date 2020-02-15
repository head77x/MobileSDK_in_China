.class final Lcom/estore/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/estore/ui/CTEStoreSDKActivity;


# direct methods
.method constructor <init>(Lcom/estore/ui/CTEStoreSDKActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estore/ui/f;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estore/ui/f;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, p0, Lcom/estore/ui/f;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, v1, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    const-string v2, ""

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;Landroid/os/Handler;Ljava/lang/String;I)V

    return-void
.end method
