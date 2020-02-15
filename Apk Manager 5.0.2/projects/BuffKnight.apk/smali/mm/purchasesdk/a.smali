.class public Lmm/purchasesdk/a;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private a:Lmm/purchasesdk/core/protocol/MessengerInfo;

.field private mPurchase:Lmm/purchasesdk/Purchase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmm/purchasesdk/a;->TAG:Ljava/lang/String;

    const-string v1, "OnSAFListener"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lmm/purchasesdk/a;->a:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iput-object p1, p0, Lmm/purchasesdk/a;->mPurchase:Lmm/purchasesdk/Purchase;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v1, -0x1

    sget-object v0, Lmm/purchasesdk/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "act ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lmm/purchasesdk/a;->a:Lmm/purchasesdk/core/protocol/MessengerInfo;

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lmm/purchasesdk/a;->mPurchase:Lmm/purchasesdk/Purchase;

    iget-object v1, p0, Lmm/purchasesdk/a;->a:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/Purchase;->sendMessage(Lmm/purchasesdk/core/protocol/MessengerInfo;I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/a;->a:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setTimeStamp(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/a;->mPurchase:Lmm/purchasesdk/Purchase;

    iget-object v1, p0, Lmm/purchasesdk/a;->a:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/Purchase;->sendMessage(Lmm/purchasesdk/core/protocol/MessengerInfo;I)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/fingerprint/IdentifyApp;->getPurchseCore()Lmm/purchasesdk/core/IPurchase;

    move-result-object v3

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getAppID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v4, v5, v0}, Lmm/purchasesdk/core/IPurchase;->getStaticMark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmm/purchasesdk/fingerprint/IdentifyApp;->getPurchseCore()Lmm/purchasesdk/core/IPurchase;

    move-result-object v4

    invoke-interface {v4}, Lmm/purchasesdk/core/IPurchase;->getStatus()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v0, 0xf3

    sget-object v3, Lmm/purchasesdk/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create static mark failed.code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eq v0, v1, :cond_0

    invoke-virtual {v2, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPurchasecode(I)V

    :cond_0
    sget-object v0, Lmm/purchasesdk/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info.getPurchasecode() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPurchasecode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/purchasesdk/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info.getResult() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getResult()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/a;->mPurchase:Lmm/purchasesdk/Purchase;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lmm/purchasesdk/Purchase;->sendMessage(Lmm/purchasesdk/core/protocol/MessengerInfo;I)V

    iget-object v0, p0, Lmm/purchasesdk/a;->mPurchase:Lmm/purchasesdk/Purchase;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->writeToBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/Purchase;->startOrder(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setTimeStamp(Ljava/lang/String;)V

    sget-object v0, Lmm/purchasesdk/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Static Mark->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setStackMark(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lmm/purchasesdk/a;->mPurchase:Lmm/purchasesdk/Purchase;

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1}, Lmm/purchasesdk/Purchase;->sendMessage(Lmm/purchasesdk/core/protocol/MessengerInfo;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
