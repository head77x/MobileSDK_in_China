.class final Lcom/estore/ui/b;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/estore/ui/CTEStoreSDKActivity;


# direct methods
.method constructor <init>(Lcom/estore/ui/CTEStoreSDKActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estore/ui/b;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/estore/ui/b;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    const/4 v1, 0x2

    iput v1, v0, Lcom/estore/ui/CTEStoreSDKActivity;->resultCode:I

    iget-object v0, p0, Lcom/estore/ui/b;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, p0, Lcom/estore/ui/b;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, v1, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;Landroid/os/Handler;Ljava/lang/String;I)V

    return-void
.end method
