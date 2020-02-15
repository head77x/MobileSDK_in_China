.class Lcom/anysdk/framework/SocialDebug$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/Util/SdkHttpListener;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/SocialDebug;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/SocialDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/SocialDebug$2;->this$0:Lcom/anysdk/framework/SocialDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    invoke-static {}, Lcom/anysdk/framework/SocialDebug;->access$700()Lcom/anysdk/framework/SocialDebug;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/anysdk/framework/SocialWrapper;->onSocialResult(Lcom/anysdk/framework/InterfaceSocial;ILjava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const-string v0, "onResponse"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/anysdk/framework/SocialDebug;->access$602(Z)Z

    invoke-static {}, Lcom/anysdk/framework/SocialDebug;->access$700()Lcom/anysdk/framework/SocialDebug;

    move-result-object v0

    const/4 v1, 0x7

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/anysdk/framework/SocialWrapper;->onSocialResult(Lcom/anysdk/framework/InterfaceSocial;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/anysdk/framework/SocialDebug;->access$700()Lcom/anysdk/framework/SocialDebug;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2, v0}, Lcom/anysdk/framework/SocialWrapper;->onSocialResult(Lcom/anysdk/framework/InterfaceSocial;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/anysdk/framework/SocialDebug;->access$700()Lcom/anysdk/framework/SocialDebug;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/anysdk/framework/SocialWrapper;->onSocialResult(Lcom/anysdk/framework/InterfaceSocial;ILjava/lang/String;)V

    goto :goto_0
.end method
