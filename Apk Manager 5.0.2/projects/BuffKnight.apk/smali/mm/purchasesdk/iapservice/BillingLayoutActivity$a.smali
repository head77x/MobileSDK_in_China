.class Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmm/purchasesdk/iapservice/BillingLayoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;


# direct methods
.method constructor <init>(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    invoke-interface {v0, p1}, Lmm/purchasesdk/core/IPurchase;->setMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Landroid/os/Messenger;)Landroid/os/Messenger;

    new-instance v1, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->readBundle(Landroid/os/Bundle;)V

    iget-object v2, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v2}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v2

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getClasseSha1()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmm/purchasesdk/core/IPurchase;->setClasseSha1(Ljava/lang/String;)V

    const-string v2, "PAYCODE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "TIMESTAMP"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    const-string v0, ""

    invoke-static {p0, v0}, Lmm/purchasesdk/fingerprint/IdentifyApp;->load(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/IPurchase;

    invoke-static {v2, v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Lmm/purchasesdk/core/IPurchase;)Lmm/purchasesdk/core/IPurchase;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mMessengerFromService == null"

    invoke-static {v0, v2}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->b(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mMessengerToService == null"

    invoke-static {v0, v2}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lmm/purchasesdk/core/IPurchase;->service_bill(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v2, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    const-string v0, ""

    invoke-static {p0, v0}, Lmm/purchasesdk/fingerprint/IdentifyApp;->load(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/IPurchase;

    invoke-static {v2, v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Lmm/purchasesdk/core/IPurchase;)Lmm/purchasesdk/core/IPurchase;

    :cond_3
    :try_start_1
    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mMessengerFromService == null"

    invoke-static {v0, v2}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->b(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mMessengerToService == null"

    invoke-static {v0, v2}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    iget-object v2, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v2}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Landroid/os/Messenger;

    move-result-object v2

    iget-object v3, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v3}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->b(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Landroid/os/Messenger;

    move-result-object v3

    invoke-interface {v0, p1, v1, v2, v3}, Lmm/purchasesdk/core/IPurchase;->service_weak_bill(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;Landroid/os/Messenger;Landroid/os/Messenger;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method
