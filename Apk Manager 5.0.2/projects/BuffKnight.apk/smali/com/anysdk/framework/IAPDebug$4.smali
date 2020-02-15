.class final Lcom/anysdk/framework/IAPDebug$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/Util/SdkHttpListener;


# instance fields
.field final synthetic val$money:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/anysdk/framework/IAPDebug$4;->val$money:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    #calls: Lcom/anysdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V
    invoke-static {v0, v1}, Lcom/anysdk/framework/IAPDebug;->access$400(ILjava/lang/String;)V

    return-void
.end method

.method public final onResponse(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/anysdk/framework/IAPDebug;->LogD(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anysdk/framework/IAPDebug;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/anysdk/framework/IAPDebug;->access$1000()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/anysdk/framework/IAPDebug$4;->val$money:I

    #calls: Lcom/anysdk/framework/IAPDebug;->addPayment(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/anysdk/framework/IAPDebug;->access$1100(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    #calls: Lcom/anysdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V
    invoke-static {v0, v1}, Lcom/anysdk/framework/IAPDebug;->access$400(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    #calls: Lcom/anysdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V
    invoke-static {v3, v4}, Lcom/anysdk/framework/IAPDebug;->access$400(ILjava/lang/String;)V

    goto :goto_0
.end method
