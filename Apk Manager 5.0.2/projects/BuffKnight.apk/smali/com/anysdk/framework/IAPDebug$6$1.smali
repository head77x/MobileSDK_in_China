.class Lcom/anysdk/framework/IAPDebug$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/framework/ILoginCallback;


# instance fields
.field final synthetic this$1:Lcom/anysdk/framework/IAPDebug$6;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/IAPDebug$6;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/IAPDebug$6$1;->this$1:Lcom/anysdk/framework/IAPDebug$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/anysdk/framework/UserDebug;->setLoginState(Z)V

    const/4 v0, 0x1

    #calls: Lcom/anysdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V
    invoke-static {v0, p2}, Lcom/anysdk/framework/IAPDebug;->access$400(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccessed(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/anysdk/framework/UserDebug;->setLoginState(Z)V

    invoke-static {}, Lcom/anysdk/framework/IAPDebug;->access$700()Ljava/util/Hashtable;

    move-result-object v0

    #calls: Lcom/anysdk/framework/IAPDebug;->getOrderId(Ljava/util/Hashtable;)V
    invoke-static {v0}, Lcom/anysdk/framework/IAPDebug;->access$900(Ljava/util/Hashtable;)V

    return-void
.end method
