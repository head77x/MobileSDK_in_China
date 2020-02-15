.class public final Lcom/anysdk/Util/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/anysdk/Util/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/anysdk/Util/g;->a:Lcom/anysdk/Util/c;

    return-void
.end method

.method static synthetic a()Lcom/anysdk/Util/c;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/anysdk/Util/g;->a:Lcom/anysdk/Util/c;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v0, v3

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x5

    :goto_1
    move v1, v2

    :goto_2
    array-length v4, v3

    sub-int/2addr v4, v0

    if-ge v1, v4, :cond_2

    aget-byte v4, v3, v1

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v3, v5

    aput-byte v5, v3, v1

    add-int/lit8 v5, v1, 0x1

    aput-byte v4, v3, v5

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/anysdk/Util/SdkHttpListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "server_url"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "server_url"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "private_key"

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v2

    const-string v3, "private_key"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "server_id"

    invoke-static {}, Lcom/anysdk/framework/UserWrapper;->getLoginServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-interface {p2}, Lcom/anysdk/Util/SdkHttpListener;->onError()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/anysdk/Util/c;

    invoke-direct {v1, p0}, Lcom/anysdk/Util/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anysdk/Util/g;->a:Lcom/anysdk/Util/c;

    sget-object v1, Lcom/anysdk/Util/g;->a:Lcom/anysdk/Util/c;

    new-instance v2, Lcom/anysdk/Util/h;

    invoke-direct {v2, p2}, Lcom/anysdk/Util/h;-><init>(Lcom/anysdk/Util/SdkHttpListener;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/anysdk/Util/c;->a(Lcom/anysdk/Util/SdkHttpListener;Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/anysdk/Util/SdkHttpListener;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "uapi_key"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "uapi_key"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uapi_secret"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "uapi_secret"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "private_key"

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v4

    const-string v5, "private_key"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    move v3, v2

    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_0

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v2

    :goto_1
    array-length v2, v4

    if-ge v3, v2, :cond_1

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anysdk/Util/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anysdk/Util/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sign"

    invoke-virtual {p1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anysdk/Util/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anysdk/Util/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v6, 0x10

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "json_data"

    invoke-direct {v0, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/anysdk/Util/c;

    invoke-direct {v0, p0}, Lcom/anysdk/Util/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anysdk/Util/g;->a:Lcom/anysdk/Util/c;

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v2, "order_url"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v2, "order_url"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v2, "order_url"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/anysdk/Util/a;->a:Ljava/lang/String;

    :cond_2
    const-string v0, "SERVER_URL_GET_ORDER"

    sget-object v2, Lcom/anysdk/Util/a;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/anysdk/Util/g;->a:Lcom/anysdk/Util/c;

    new-instance v2, Lcom/anysdk/Util/i;

    invoke-direct {v2, p2}, Lcom/anysdk/Util/i;-><init>(Lcom/anysdk/Util/SdkHttpListener;)V

    sget-object v3, Lcom/anysdk/Util/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/anysdk/Util/c;->a(Lcom/anysdk/Util/SdkHttpListener;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-interface {p2}, Lcom/anysdk/Util/SdkHttpListener;->onError()V

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getChannelId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "999999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "privateKey"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "privateKey"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AnySDK"

    const-string v1, " the params(appKey\u3001appSecret\u3001privateKey) are wrong "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v0, v2

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_1

    aget-byte v3, v2, v1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    aput-byte v4, v2, v1

    add-int/lit8 v4, v1, 0x1

    aput-byte v3, v2, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/anysdk/Util/SdkHttpListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "server_url"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "server_url"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-interface {p2}, Lcom/anysdk/Util/SdkHttpListener;->onError()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/anysdk/Util/c;

    invoke-direct {v1, p0}, Lcom/anysdk/Util/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anysdk/Util/g;->a:Lcom/anysdk/Util/c;

    sget-object v1, Lcom/anysdk/Util/g;->a:Lcom/anysdk/Util/c;

    new-instance v2, Lcom/anysdk/Util/j;

    invoke-direct {v2, p2}, Lcom/anysdk/Util/j;-><init>(Lcom/anysdk/Util/SdkHttpListener;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/anysdk/Util/c;->a(Lcom/anysdk/Util/SdkHttpListener;Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    :goto_1
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method
