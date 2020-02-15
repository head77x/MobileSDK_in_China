.class Lcom/netmego/miguyouxisdk/SP_Manager$1;
.super Landroid/os/Handler;
.source "SP_Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/SP_Manager;-><init>(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/SP_Manager;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/SP_Manager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/SP_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/SP_Manager;

    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 47
    iget-object v4, p0, Lcom/netmego/miguyouxisdk/SP_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/SP_Manager;

    const/4 v5, 0x0

    #setter for: Lcom/netmego/miguyouxisdk/SP_Manager;->TryToPay:Z
    invoke-static {v4, v5}, Lcom/netmego/miguyouxisdk/SP_Manager;->access$0(Lcom/netmego/miguyouxisdk/SP_Manager;Z)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 50
    const-string v4, "code"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, code:I
    const-string v4, "msg"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, msg1:Ljava/lang/String;
    const-string v3, ""

    .line 53
    .local v3, result:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netmego/miguyouxisdk/SP_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/SP_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/SP_Manager;->TryToPayItem:Ljava/lang/String;
    invoke-static {v5}, Lcom/netmego/miguyouxisdk/SP_Manager;->access$1(Lcom/netmego/miguyouxisdk/SP_Manager;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|1|\u4ed8\u6b3e\u6210\u529f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    iget-object v4, p0, Lcom/netmego/miguyouxisdk/SP_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/SP_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/SP_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;
    invoke-static {v4}, Lcom/netmego/miguyouxisdk/SP_Manager;->access$2(Lcom/netmego/miguyouxisdk/SP_Manager;)Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    move-result-object v4

    iget-object v5, p0, Lcom/netmego/miguyouxisdk/SP_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/SP_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/SP_Manager;->TryToPayItem:Ljava/lang/String;
    invoke-static {v5}, Lcom/netmego/miguyouxisdk/SP_Manager;->access$1(Lcom/netmego/miguyouxisdk/SP_Manager;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseSucceed(Ljava/lang/String;)V

    .line 62
    .end local v1           #code:I
    .end local v2           #msg1:Ljava/lang/String;
    .end local v3           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local v1       #code:I
    .restart local v2       #msg1:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netmego/miguyouxisdk/SP_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/SP_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/SP_Manager;->TryToPayItem:Ljava/lang/String;
    invoke-static {v5}, Lcom/netmego/miguyouxisdk/SP_Manager;->access$1(Lcom/netmego/miguyouxisdk/SP_Manager;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|0|\u4ed8\u6b3e\u5931\u8d25"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/netmego/miguyouxisdk/SP_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/SP_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/SP_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;
    invoke-static {v4}, Lcom/netmego/miguyouxisdk/SP_Manager;->access$2(Lcom/netmego/miguyouxisdk/SP_Manager;)Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    move-result-object v4

    iget-object v5, p0, Lcom/netmego/miguyouxisdk/SP_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/SP_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/SP_Manager;->TryToPayItem:Ljava/lang/String;
    invoke-static {v5}, Lcom/netmego/miguyouxisdk/SP_Manager;->access$1(Lcom/netmego/miguyouxisdk/SP_Manager;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
