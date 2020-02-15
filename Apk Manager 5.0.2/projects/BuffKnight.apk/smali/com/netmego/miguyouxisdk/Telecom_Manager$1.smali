.class Lcom/netmego/miguyouxisdk/Telecom_Manager$1;
.super Ljava/lang/Object;
.source "Telecom_Manager.java"

# interfaces
.implements Lcn/egame/terminal/paysdk/EgamePayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/Telecom_Manager;-><init>(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field result:Ljava/lang/String;

.field final synthetic this$0:Lcom/netmego/miguyouxisdk/Telecom_Manager;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/Telecom_Manager;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/Telecom_Manager;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;->result:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public payCancel(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "cpParams"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "|2|\u4ed8\u6b3e\u53d6\u6d88"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;->result:Ljava/lang/String;

    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Brandon : dian xin pay cancel :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/Telecom_Manager;

    iget-object v1, v0, Lcom/netmego/miguyouxisdk/Telecom_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    const-string v0, "cpParams"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;->result:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseCanceld(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public payFailed(Ljava/util/Map;I)V
    .locals 3
    .parameter
    .parameter "errorInt"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "cpParams"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "|0|\u652f\u4ed8\u5931\u8d25\uff1a\u9519\u8bef\u4ee3\u7801\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;->result:Ljava/lang/String;

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Brandon : dian xin pay failed :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/Telecom_Manager;

    iget-object v1, v0, Lcom/netmego/miguyouxisdk/Telecom_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    const-string v0, "cpParams"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;->result:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public paySuccess(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "cpParams"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "|1|\u4ed8\u6b3e\u6210\u529f"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;->result:Ljava/lang/String;

    .line 47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Brandon : dian xin pay success :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/Telecom_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/Telecom_Manager;

    iget-object v1, v0, Lcom/netmego/miguyouxisdk/Telecom_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    const-string v0, "cpParams"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseSucceed(Ljava/lang/String;)V

    .line 50
    return-void
.end method
