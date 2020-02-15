.class Lcom/anysdk/framework/UserDebug$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/Util/SdkHttpListener;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/UserDebug;

.field final synthetic val$callback:Lcom/anysdk/framework/ILoginCallback;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/UserDebug;Lcom/anysdk/framework/ILoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/UserDebug$3;->this$0:Lcom/anysdk/framework/UserDebug;

    iput-object p2, p0, Lcom/anysdk/framework/UserDebug$3;->val$callback:Lcom/anysdk/framework/ILoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    iget-object v0, p0, Lcom/anysdk/framework/UserDebug$3;->val$callback:Lcom/anysdk/framework/ILoginCallback;

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

    const-string v1, "errMsg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anysdk/framework/UserDebug;->access$802(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anysdk/framework/UserDebug;->access$902(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user_id"

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "session_id"

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$900()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "channel"

    const-string v2, "simsdk"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "server_url"

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "session_id"

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$900()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user_id"

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uapi_key"

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uapi_secret"

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$600()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/anysdk/framework/UserDebug$3$1;

    invoke-direct {v2, p0}, Lcom/anysdk/framework/UserDebug$3$1;-><init>(Lcom/anysdk/framework/UserDebug$3;)V

    invoke-static {v1, v0, v2}, Lcom/anysdk/framework/UserWrapper;->getAccessToken(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/anysdk/framework/UserDebug$3;->val$callback:Lcom/anysdk/framework/ILoginCallback;

    const/4 v1, 0x5

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anysdk/framework/ILoginCallback;->onFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/anysdk/framework/UserDebug$3;->val$callback:Lcom/anysdk/framework/ILoginCallback;

    const-string v1, ""

    invoke-interface {v0, v3, v1}, Lcom/anysdk/framework/ILoginCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0
.end method
