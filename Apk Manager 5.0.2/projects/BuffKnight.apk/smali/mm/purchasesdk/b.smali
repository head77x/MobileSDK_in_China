.class Lmm/purchasesdk/b;
.super Landroid/os/Handler;


# instance fields
.field private a:Landroid/os/Bundle;

.field final synthetic a:Lmm/purchasesdk/Purchase;


# direct methods
.method constructor <init>(Lmm/purchasesdk/Purchase;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/b;->a:Landroid/os/Bundle;

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    #getter for: Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;
    invoke-static {v0}, Lmm/purchasesdk/Purchase;->access$000(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/protocol/MessengerInfo;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/b;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->readBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmm/purchasesdk/core/protocol/MessengerInfo;

    #setter for: Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;
    invoke-static {v1, v0}, Lmm/purchasesdk/Purchase;->access$002(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/protocol/MessengerInfo;)Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v5}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getDyQuestion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getDyQuestion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/Purchase;->access$100()Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    invoke-interface {v0}, Lmm/purchasesdk/core/IPurchase;->getDyAnswer()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/Purchase;->access$100()Lmm/purchasesdk/core/IPurchase;

    move-result-object v1

    invoke-interface {v1}, Lmm/purchasesdk/core/IPurchase;->getStatus()I

    move-result v1

    invoke-virtual {v5, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setMarkStatus(I)V

    if-nez v1, :cond_1

    invoke-virtual {v5, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setDyAnswer(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {v5}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPurchasecode()I

    move-result v0

    const/16 v1, 0x11e

    if-ne v0, v1, :cond_2

    :try_start_0
    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "enter qiang zhuan ruo order"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    iget-object v1, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    iget-object v1, v1, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPaycode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getOrderCount()I

    move-result v3

    invoke-virtual {v5}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getUserData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lmm/purchasesdk/core/protocol/MessengerInfo;->ismNextCycle()Z

    move-result v5

    iget-object v6, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    #getter for: Lmm/purchasesdk/Purchase;->mListener:Lmm/purchasesdk/OnPurchaseListener;
    invoke-static {v6}, Lmm/purchasesdk/Purchase;->access$200(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/OnPurchaseListener;

    move-result-object v6

    #calls: Lmm/purchasesdk/Purchase;->orders2w(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)V
    invoke-static/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->access$300(Lmm/purchasesdk/Purchase;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v2, "qiang zhuan ruo order fail"

    invoke-static {v1, v2}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x190

    invoke-virtual {v5, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPurchasecode(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    #calls: Lmm/purchasesdk/Purchase;->bill(Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    invoke-static {v0, v5}, Lmm/purchasesdk/Purchase;->access$400(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Lmm/purchasesdk/Purchase;->unBind()V

    invoke-static {}, Lmm/purchasesdk/Purchase;->access$100()Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    invoke-interface {v0}, Lmm/purchasesdk/core/IPurchase;->resetParams1()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Lmm/purchasesdk/Purchase;->unBind()V

    invoke-static {}, Lmm/purchasesdk/Purchase;->access$100()Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    invoke-interface {v0}, Lmm/purchasesdk/core/IPurchase;->resetParams1()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Lmm/purchasesdk/Purchase;->unBind()V

    invoke-static {}, Lmm/purchasesdk/Purchase;->access$100()Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    invoke-interface {v0}, Lmm/purchasesdk/core/IPurchase;->resetParams1()V

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    #getter for: Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;
    invoke-static {v0}, Lmm/purchasesdk/Purchase;->access$000(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/protocol/MessengerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->reset()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Lmm/purchasesdk/Purchase;->unBind()V

    invoke-static {}, Lmm/purchasesdk/Purchase;->access$100()Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    invoke-interface {v0}, Lmm/purchasesdk/core/IPurchase;->resetParams1()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    iget-object v1, v0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    #getter for: Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;
    invoke-static {v0}, Lmm/purchasesdk/Purchase;->access$000(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/protocol/MessengerInfo;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->writeToBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->readBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    #getter for: Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;
    invoke-static {v0}, Lmm/purchasesdk/Purchase;->access$000(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/protocol/MessengerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    #getter for: Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;
    invoke-static {v0}, Lmm/purchasesdk/Purchase;->access$000(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/protocol/MessengerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    invoke-static {}, Lmm/purchasesdk/Purchase;->access$100()Lmm/purchasesdk/core/IPurchase;

    const/16 v1, 0x9

    #calls: Lmm/purchasesdk/Purchase;->createInfo(I)Lmm/purchasesdk/core/protocol/MessengerInfo;
    invoke-static {v0, v1}, Lmm/purchasesdk/Purchase;->access$500(Lmm/purchasesdk/Purchase;I)Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    #getter for: Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;
    invoke-static {v0}, Lmm/purchasesdk/Purchase;->access$000(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/protocol/MessengerInfo;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/Purchase;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPackageName(Ljava/lang/String;)V

    :goto_2
    new-instance v0, Lmm/purchasesdk/a;

    iget-object v1, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    iget-object v2, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    #getter for: Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;
    invoke-static {v2}, Lmm/purchasesdk/Purchase;->access$000(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/protocol/MessengerInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmm/purchasesdk/a;-><init>(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    iget-object v1, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    iget-object v1, v1, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    #getter for: Lmm/purchasesdk/Purchase;->mCurAction:I
    invoke-static {v2}, Lmm/purchasesdk/Purchase;->access$700(Lmm/purchasesdk/Purchase;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/a;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlemessage get packagename:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    #getter for: Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;
    invoke-static {v2}, Lmm/purchasesdk/Purchase;->access$000(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/protocol/MessengerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "and set to mPackageName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    #getter for: Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;
    invoke-static {v0}, Lmm/purchasesdk/Purchase;->access$000(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/protocol/MessengerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/Purchase;->access$602(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
