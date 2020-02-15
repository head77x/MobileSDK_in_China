.class final Lcom/estore/ui/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/estore/ui/CTEStoreSDKActivity;


# direct methods
.method constructor <init>(Lcom/estore/ui/CTEStoreSDKActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estore/ui/c;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/estore/ui/c;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "/mnt/sdcard/localpaylog.txt"

    const-string v1, "***\u6263\u8d39\u77ed\u4fe1\u53d1\u9001\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->writePayLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estore/ui/c;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-static {v0}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;)V

    iget-object v0, p0, Lcom/estore/ui/c;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iput v3, v0, Lcom/estore/ui/CTEStoreSDKActivity;->resultCode:I

    iget-object v0, p0, Lcom/estore/ui/c;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, p0, Lcom/estore/ui/c;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, v1, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;Landroid/os/Handler;Ljava/lang/String;I)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "/mnt/sdcard/localpaylog.txt"

    const-string v1, "***\u6263\u8d39\u77ed\u4fe1\u53d1\u9001\u6210\u529f"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->writePayLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ndk-printf"

    const-string v1, "\u77ed\u4fe1\u53d1\u9001\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estore/ui/c;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-static {v0}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;)V

    iget-object v0, p0, Lcom/estore/ui/c;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/estore/ui/CTEStoreSDKActivity;->resultCode:I

    iget-object v0, p0, Lcom/estore/ui/c;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, p0, Lcom/estore/ui/c;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, v1, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    const-string v2, ""

    invoke-static {v0, v1, v2, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;Landroid/os/Handler;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
