.class final Lcom/estore/ui/a;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/estore/ui/CTEStoreSDKActivity;


# direct methods
.method constructor <init>(Lcom/estore/ui/CTEStoreSDKActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-static {v0}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-static {v0, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;I)V

    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-static {v0, v1}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-static {v0, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;I)V

    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-static {v0, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-virtual {v0}, Lcom/estore/ui/CTEStoreSDKActivity;->replyCalculation()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-static {v0}, Lcom/estore/ui/CTEStoreSDKActivity;->b(Lcom/estore/ui/CTEStoreSDKActivity;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-boolean v0, v0, Lcom/estore/ui/CTEStoreSDKActivity;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iput v1, v0, Lcom/estore/ui/CTEStoreSDKActivity;->resultCode:I

    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, v1, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    const-string v2, ""

    invoke-static {v0, v1, v2, v4}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;Landroid/os/Handler;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v0, "/mnt/sdcard/localpaylog.txt"

    const-string v1, "***\u6263\u8d39\u77ed\u4fe1\u521d\u59cb\u5316Dialog & \u6ce8\u518c\u76d1\u542c"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->writePayLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, v1, Lcom/estore/ui/CTEStoreSDKActivity;->b:Lcom/estore/lsms/tools/Person;

    invoke-virtual {v1}, Lcom/estore/lsms/tools/Person;->getCtestoreCodeLoading()Ljava/lang/String;

    move-result-object v1

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-static {v0}, Lcom/estore/ui/CTEStoreSDKActivity;->c(Lcom/estore/ui/CTEStoreSDKActivity;)V

    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-static {v0}, Lcom/estore/ui/CTEStoreSDKActivity;->d(Lcom/estore/ui/CTEStoreSDKActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "/mnt/sdcard/localpaylog.txt"

    const-string v1, "***\u6263\u8d39\u77ed\u4fe1\u5f00\u59cb\u53d1\u9001"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->writePayLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    const-string v1, "11803080"

    iget-object v2, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-static {v2}, Lcom/estore/ui/CTEStoreSDKActivity;->d(Lcom/estore/ui/CTEStoreSDKActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/mnt/sdcard/localpaylog.txt"

    const-string v1, "***sendSMS---end"

    invoke-static {v0, v1}, Lcom/estore/lsms/tools/Tools;->writePayLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iput v4, v0, Lcom/estore/ui/CTEStoreSDKActivity;->resultCode:I

    const-string v0, "---sdk---"

    const-string v1, "sendSMS --- error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    iget-object v1, v1, Lcom/estore/ui/CTEStoreSDKActivity;->handler:Landroid/os/Handler;

    const-string v2, ""

    invoke-static {v0, v1, v2, v3}, Lcom/estore/ui/CTEStoreSDKActivity;->a(Lcom/estore/ui/CTEStoreSDKActivity;Landroid/os/Handler;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estore/ui/a;->a:Lcom/estore/ui/CTEStoreSDKActivity;

    invoke-virtual {v0}, Lcom/estore/ui/CTEStoreSDKActivity;->replyCalculation()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
