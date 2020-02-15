.class Lcom/netmego/miguyouxisdk/CMGD_Manager$1;
.super Ljava/lang/Object;
.source "CMGD_Manager.java"

# interfaces
.implements Lcn/cmgame/billing/api/GameInterface$IPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/CMGD_Manager;-><init>(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/CMGD_Manager;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/CMGD_Manager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/CMGD_Manager;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "resultCode"
    .parameter "billingIndex"
    .parameter "obj"

    .prologue
    .line 42
    const-string v0, ""

    .line 43
    .local v0, result:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|2|\u4ed8\u6b3e\u53d6\u6d88"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/CMGD_Manager;

    iget-object v1, v1, Lcom/netmego/miguyouxisdk/CMGD_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    invoke-interface {v1, p2, v0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseCanceld(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 45
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|1|\u4ed8\u6b3e\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/CMGD_Manager;

    iget-object v1, v1, Lcom/netmego/miguyouxisdk/CMGD_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    invoke-interface {v1, p2}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseSucceed(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|0|\u4ed8\u6b3e\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/CMGD_Manager;

    iget-object v1, v1, Lcom/netmego/miguyouxisdk/CMGD_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    invoke-interface {v1, p2, v0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
