.class public Lmm/purchasesdk/sdk/g;
.super Landroid/os/Handler;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/os/Bundle;

.field private mHandler:Landroid/os/Handler;

.field private mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

.field private mListener:Lmm/purchasesdk/OnPurchaseListener;

.field private mReturnData:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IABClientHandler"

    sput-object v0, Lmm/purchasesdk/sdk/g;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmm/purchasesdk/OnPurchaseListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lmm/purchasesdk/sdk/g;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iput-object p1, p0, Lmm/purchasesdk/sdk/g;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    iput-object p3, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/util/HashMap;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getAuthstr()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lmm/purchasesdk/fingerprint/IdentifyApp;->getPurchseCore()Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lmm/purchasesdk/core/IPurchase;->readImsi(Landroid/content/Context;)V

    invoke-static {}, Lmm/purchasesdk/fingerprint/IdentifyApp;->getPurchseCore()Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/content/Context;

    iget-object v3, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v3}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getCopyrightCert()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v4}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getOrderID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-interface/range {v0 .. v5}, Lmm/purchasesdk/core/IPurchase;->checkAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/core/protocol/MessengerInfo;)I

    move-result v0

    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setStatusCode(I)V

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method private dyQuest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lmm/purchasesdk/sdk/g;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dyQuestion-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/fingerprint/IdentifyApp;->getPurchseCore()Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmm/purchasesdk/core/IPurchase;->SetIsNeedDyquestion(Z)V

    invoke-static {}, Lmm/purchasesdk/fingerprint/IdentifyApp;->getPurchseCore()Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lmm/purchasesdk/core/IPurchase;->getDyQuestion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lmm/purchasesdk/fingerprint/IdentifyApp;->getPurchseCore()Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmm/purchasesdk/core/IPurchase;->SetIsNeedDyquestion(Z)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/16 v8, 0x66

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x32a

    const-string v0, "Client "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage Client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v4, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Lmm/purchasesdk/core/protocol/MessengerInfo;->readBundle(Landroid/os/Bundle;)V

    const-string v0, "Client "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage Client sessionId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v5}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getSessionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x9

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getIDToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/content/Context;

    const-string v4, "\u670d\u52a1\u4e0d\u5408\u6cd5\uff0c\u8bf7\u6b63\u786e\u8bbe\u7f6e\u4f18\u5148\u7ea7\uff0c\u6216\u5347\u7ea7\u5230\u6700\u65b0\u7684\u8ba1\u8d39\u670d\u52a1"

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getIDToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v4, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v4}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v5}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getResult()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lmm/purchasesdk/fingerprint/IdentifyApp;->IdTokenService([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v4}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getIdtoken_verf()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v4}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getIdtoken_verf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/content/Context;

    const-string v4, "\u670d\u52a1\u4e0d\u5408\u6cd5"

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    if-nez v1, :cond_3

    new-instance v1, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->readBundle(Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Paycode"

    iget-object v4, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v4}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPaycode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getOrderID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "OrderId"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getLeftDay()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "LeftDay"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTradeID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "TradeID"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getOrderType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "OrderType"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmm/purchasesdk/PurchaseCode;->setMessage(Ljava/lang/String;)V

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPurchasecode()I

    move-result v2

    if-eqz v0, :cond_b

    const/16 v0, 0x65

    if-eq v2, v0, :cond_b

    if-eq v2, v8, :cond_8

    if-ne v2, v8, :cond_a

    :cond_8
    invoke-direct {p0, v1}, Lmm/purchasesdk/sdk/g;->a(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPurchasecode()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lmm/purchasesdk/OnPurchaseListener;->onBillingFinish(ILjava/util/HashMap;)V

    :goto_2
    const/4 v0, 0x5

    iput v0, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0, v6, v7}, Lmm/purchasesdk/OnPurchaseListener;->onBillingFinish(ILjava/util/HashMap;)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPurchasecode()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lmm/purchasesdk/OnPurchaseListener;->onBillingFinish(ILjava/util/HashMap;)V

    goto :goto_2

    :cond_b
    const/16 v0, 0x65

    if-ne v2, v0, :cond_c

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0, v8, v1}, Lmm/purchasesdk/OnPurchaseListener;->onBillingFinish(ILjava/util/HashMap;)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0, v6, v7}, Lmm/purchasesdk/OnPurchaseListener;->onBillingFinish(ILjava/util/HashMap;)V

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    if-nez v1, :cond_d

    new-instance v1, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    :cond_d
    if-nez v0, :cond_e

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0, v6, v7}, Lmm/purchasesdk/OnPurchaseListener;->onBillingFinish(ILjava/util/HashMap;)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->readBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getDyQuestion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getAppID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lmm/purchasesdk/sdk/g;->dyQuest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/fingerprint/IdentifyApp;->getPurchseCore()Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2}, Lmm/purchasesdk/core/IPurchase;->StartDyQuestThread(Lmm/purchasesdk/core/protocol/MessengerInfo;Landroid/os/Handler;)V

    goto/16 :goto_1

    :cond_f
    const/4 v0, 0x2

    iput v0, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :pswitch_3
    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    if-nez v1, :cond_10

    new-instance v1, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    :cond_10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v4, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v4}, Lmm/purchasesdk/core/protocol/MessengerInfo;->readBundle(Landroid/os/Bundle;)V

    invoke-static {v7}, Lmm/purchasesdk/PurchaseCode;->setMessage(Ljava/lang/String;)V

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPurchasecode()I

    move-result v1

    invoke-interface {v0, v1}, Lmm/purchasesdk/OnPurchaseListener;->onInitFinish(I)V

    :goto_3
    iput v2, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0, v6}, Lmm/purchasesdk/OnPurchaseListener;->onInitFinish(I)V

    goto :goto_3

    :pswitch_4
    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    if-nez v2, :cond_12

    new-instance v2, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    iput-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    :cond_12
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v4, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Lmm/purchasesdk/core/protocol/MessengerInfo;->readBundle(Landroid/os/Bundle;)V

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mReturnData:Ljava/util/HashMap;

    if-nez v2, :cond_13

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmm/purchasesdk/sdk/g;->mReturnData:Ljava/util/HashMap;

    :cond_13
    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmm/purchasesdk/PurchaseCode;->setMessage(Ljava/lang/String;)V

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mReturnData:Ljava/util/HashMap;

    const-string v4, "LeftDay"

    iget-object v5, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v5}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getLeftDay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mReturnData:Ljava/util/HashMap;

    const-string v4, "OrderId"

    iget-object v5, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v5}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getOrderID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mReturnData:Ljava/util/HashMap;

    const-string v4, "Paycode"

    iget-object v5, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v5}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPaycode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPurchasecode()I

    move-result v2

    iget-object v4, p0, Lmm/purchasesdk/sdk/g;->mReturnData:Ljava/util/HashMap;

    invoke-interface {v0, v2, v4}, Lmm/purchasesdk/OnPurchaseListener;->onQueryFinish(ILjava/util/HashMap;)V

    :goto_4
    iput v1, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0, v6, v7}, Lmm/purchasesdk/OnPurchaseListener;->onQueryFinish(ILjava/util/HashMap;)V

    goto :goto_4

    :pswitch_5
    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    if-nez v1, :cond_15

    new-instance v1, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    :cond_15
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v2, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->readBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/PurchaseCode;->setMessage(Ljava/lang/String;)V

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPurchasecode()I

    move-result v1

    invoke-interface {v0, v1}, Lmm/purchasesdk/OnPurchaseListener;->onUnsubscribeFinish(I)V

    :goto_5
    const/4 v0, 0x3

    iput v0, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_16
    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0, v6}, Lmm/purchasesdk/OnPurchaseListener;->onUnsubscribeFinish(I)V

    goto :goto_5

    :pswitch_6
    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    if-nez v0, :cond_17

    new-instance v0, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    :cond_17
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v1, p0, Lmm/purchasesdk/sdk/g;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->readBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/PurchaseCode;->setMessage(Ljava/lang/String;)V

    const/16 v0, 0x9

    iput v0, v3, Landroid/os/Message;->what:I

    iget-object v0, p0, Lmm/purchasesdk/sdk/g;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
