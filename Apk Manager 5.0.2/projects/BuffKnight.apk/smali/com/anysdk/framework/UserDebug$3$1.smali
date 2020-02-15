.class Lcom/anysdk/framework/UserDebug$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/Util/SdkHttpListener;


# instance fields
.field final synthetic this$1:Lcom/anysdk/framework/UserDebug$3;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/UserDebug$3;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/UserDebug$3$1;->this$1:Lcom/anysdk/framework/UserDebug$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    iget-object v0, p0, Lcom/anysdk/framework/UserDebug$3$1;->this$1:Lcom/anysdk/framework/UserDebug$3;

    iget-object v0, v0, Lcom/anysdk/framework/UserDebug$3;->val$callback:Lcom/anysdk/framework/ILoginCallback;

    const/4 v1, 0x5

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anysdk/framework/ILoginCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x5

    const-string v0, "onResponse"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ext"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/anysdk/framework/UserDebug$3$1;->this$1:Lcom/anysdk/framework/UserDebug$3;

    iget-object v1, v1, Lcom/anysdk/framework/UserDebug$3;->val$callback:Lcom/anysdk/framework/ILoginCallback;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/anysdk/framework/ILoginCallback;->onSuccessed(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/anysdk/framework/UserDebug$3$1;->this$1:Lcom/anysdk/framework/UserDebug$3;

    iget-object v0, v0, Lcom/anysdk/framework/UserDebug$3;->val$callback:Lcom/anysdk/framework/ILoginCallback;

    const/4 v1, 0x5

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anysdk/framework/ILoginCallback;->onFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/anysdk/framework/UserDebug$3$1;->this$1:Lcom/anysdk/framework/UserDebug$3;

    iget-object v0, v0, Lcom/anysdk/framework/UserDebug$3;->val$callback:Lcom/anysdk/framework/ILoginCallback;

    const-string v1, ""

    invoke-interface {v0, v3, v1}, Lcom/anysdk/framework/ILoginCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0
.end method
