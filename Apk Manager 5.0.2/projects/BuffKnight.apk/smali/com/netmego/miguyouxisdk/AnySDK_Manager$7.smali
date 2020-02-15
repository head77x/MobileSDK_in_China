.class Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;
.super Ljava/lang/Object;
.source "AnySDK_Manager.java"

# interfaces
.implements Lcom/anysdk/framework/java/AnySDKListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/AnySDK_Manager;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    .line 357
    iget-object v3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #setter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->TryToPay:Z
    invoke-static {v3, v5}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$3(Lcom/netmego/miguyouxisdk/AnySDK_Manager;Z)V

    .line 359
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v2, "fail"

    .line 361
    .local v2, temp:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 400
    :goto_0
    :pswitch_0
    return-void

    .line 370
    :pswitch_1
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKIAP;->getInstance()Lcom/anysdk/framework/java/AnySDKIAP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anysdk/framework/java/AnySDKIAP;->getPluginId()Ljava/util/ArrayList;

    move-result-object v0

    .line 371
    .local v0, idArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKIAP;->getInstance()Lcom/anysdk/framework/java/AnySDKIAP;

    move-result-object v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/anysdk/framework/java/AnySDKIAP;->getOrderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, orderid:Ljava/lang/String;
    iget-object v3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;
    invoke-static {v3}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$4(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseSucceed(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v0           #idArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #orderid:Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;
    invoke-static {v3}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$4(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    move-result-object v3

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->TryToPayItem:Ljava/lang/String;
    invoke-static {v4}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$5(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->TryToPayItem:Ljava/lang/String;
    invoke-static {v4}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$5(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :pswitch_3
    iget-object v3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;
    invoke-static {v3}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$4(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    move-result-object v3

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->TryToPayItem:Ljava/lang/String;
    invoke-static {v4}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$5(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cancel"

    invoke-interface {v3, v4, v5}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseCanceld(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    const-string v4, "Cancel"

    iget-object v5, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->TryToPayItem:Ljava/lang/String;
    invoke-static {v5}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$5(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :pswitch_4
    iget-object v3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;
    invoke-static {v3}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$4(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    const-string v4, "NetworkError"

    invoke-virtual {v3, v2, v4}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :pswitch_5
    iget-object v3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;
    invoke-static {v3}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$4(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    const-string v4, "ProductionInforIncomplete"

    invoke-virtual {v3, v2, v4}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 395
    :pswitch_6
    iget-object v3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    invoke-virtual {v3}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->showTipDialog()V

    goto/16 :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
