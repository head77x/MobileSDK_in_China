.class Lcom/anysdk/framework/IAPDebug$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/IAPDebug;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/IAPDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/IAPDebug$3;->this$0:Lcom/anysdk/framework/IAPDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/anysdk/framework/IAPDebug$3;->this$0:Lcom/anysdk/framework/IAPDebug;

    #calls: Lcom/anysdk/framework/IAPDebug;->networkReachable()Z
    invoke-static {v0}, Lcom/anysdk/framework/IAPDebug;->access$600(Lcom/anysdk/framework/IAPDebug;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Network error!"

    #calls: Lcom/anysdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V
    invoke-static {v1, v0}, Lcom/anysdk/framework/IAPDebug;->access$400(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/anysdk/framework/IAPDebug;->access$700()Ljava/util/Hashtable;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "info is null"

    #calls: Lcom/anysdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V
    invoke-static {v1, v0}, Lcom/anysdk/framework/IAPDebug;->access$400(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anysdk/framework/IAPDebug$3;->this$0:Lcom/anysdk/framework/IAPDebug;

    invoke-virtual {v0}, Lcom/anysdk/framework/IAPDebug;->isLogined()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anysdk/framework/IAPDebug$3;->this$0:Lcom/anysdk/framework/IAPDebug;

    #calls: Lcom/anysdk/framework/IAPDebug;->payLogin()V
    invoke-static {v0}, Lcom/anysdk/framework/IAPDebug;->access$800(Lcom/anysdk/framework/IAPDebug;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/anysdk/framework/IAPDebug;->access$700()Ljava/util/Hashtable;

    move-result-object v0

    #calls: Lcom/anysdk/framework/IAPDebug;->getOrderId(Ljava/util/Hashtable;)V
    invoke-static {v0}, Lcom/anysdk/framework/IAPDebug;->access$900(Ljava/util/Hashtable;)V

    goto :goto_0
.end method
