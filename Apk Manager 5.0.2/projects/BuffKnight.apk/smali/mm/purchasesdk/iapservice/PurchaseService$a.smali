.class Lmm/purchasesdk/iapservice/PurchaseService$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmm/purchasesdk/iapservice/PurchaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lmm/purchasesdk/iapservice/PurchaseService;


# direct methods
.method constructor <init>(Lmm/purchasesdk/iapservice/PurchaseService;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a(Lmm/purchasesdk/core/protocol/MessengerInfo;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getIDToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    if-eq p2, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmm/purchasesdk/fingerprint/IdentifyApp;->IdTokenService([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setIdtoken_verf(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendToClient Server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p2, v4, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-static {v2, v0}, Lmm/purchasesdk/iapservice/PurchaseService;->b(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Messenger;)Landroid/os/Messenger;

    invoke-virtual {p1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->writeToBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/PurchaseService;->b(Lmm/purchasesdk/iapservice/PurchaseService;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/PurchaseService;->a(Lmm/purchasesdk/iapservice/PurchaseService;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/PurchaseService;->a(Lmm/purchasesdk/iapservice/PurchaseService;)Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_1
    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->a()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/PurchaseService;->a(Lmm/purchasesdk/iapservice/PurchaseService;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    invoke-interface {v0, p1}, Lmm/purchasesdk/core/IPurchase;->setMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/PurchaseService;->a(Lmm/purchasesdk/iapservice/PurchaseService;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Lmm/purchasesdk/core/IPurchase;->setMessenger(Landroid/os/Messenger;)V

    new-instance v1, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->readBundle(Landroid/os/Bundle;)V

    iget-object v2, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v2}, Lmm/purchasesdk/iapservice/PurchaseService;->a(Lmm/purchasesdk/iapservice/PurchaseService;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v2

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getClasseSha1()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmm/purchasesdk/core/IPurchase;->setClasseSha1(Ljava/lang/String;)V

    const-string v2, "PAYCODE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "TIMESTAMP"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_2

    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info.getTaskID() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, v2}, Lmm/purchasesdk/iapservice/PurchaseService;->a(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Messenger;)Landroid/os/Messenger;

    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " IncomingHandler info.getTaskID() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0, p1, v1}, Lmm/purchasesdk/iapservice/PurchaseService;->a(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0, p1, v1}, Lmm/purchasesdk/iapservice/PurchaseService;->b(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lmm/purchasesdk/iapservice/PurchaseService$a;->a(Lmm/purchasesdk/core/protocol/MessengerInfo;I)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0, p1, v1}, Lmm/purchasesdk/iapservice/PurchaseService;->c(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0, p1, v1}, Lmm/purchasesdk/iapservice/PurchaseService;->d(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0, p1, v1}, Lmm/purchasesdk/iapservice/PurchaseService;->e(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    goto :goto_1

    :pswitch_7
    const/4 v0, 0x3

    invoke-static {v5, v0, v4, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_BILLFINISH info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_BILLFINISH info.getTaskID() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-static {v3, v0}, Lmm/purchasesdk/iapservice/PurchaseService;->b(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Messenger;)Landroid/os/Messenger;

    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_BILLFINISH mMessengerFC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v4}, Lmm/purchasesdk/iapservice/PurchaseService;->a(Lmm/purchasesdk/iapservice/PurchaseService;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->writeToBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/PurchaseService;->b(Lmm/purchasesdk/iapservice/PurchaseService;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/PurchaseService;->a(Lmm/purchasesdk/iapservice/PurchaseService;)Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Lmm/purchasesdk/iapservice/PurchaseService;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0, v5}, Lmm/purchasesdk/iapservice/PurchaseService;->a(Lmm/purchasesdk/iapservice/PurchaseService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :pswitch_8
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/PurchaseService;->a(Lmm/purchasesdk/iapservice/PurchaseService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPackageName(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-direct {p0, v1, v0}, Lmm/purchasesdk/iapservice/PurchaseService$a;->a(Lmm/purchasesdk/core/protocol/MessengerInfo;I)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService$a;->a:Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-static {v0, p1, v1}, Lmm/purchasesdk/iapservice/PurchaseService;->f(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
