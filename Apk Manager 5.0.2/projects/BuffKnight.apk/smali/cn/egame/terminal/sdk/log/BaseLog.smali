.class public Lcn/egame/terminal/sdk/log/BaseLog;
.super Ljava/lang/Object;


# static fields
.field public static final POLICY_OFF_LINE:I = 0x0

.field public static final POLICY_ON_LINE:I = 0x1

.field protected static a:Landroid/os/Handler;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "open.play.cn"

    sput-object v0, Lcn/egame/terminal/sdk/log/BaseLog;->b:Ljava/lang/String;

    sput-object v1, Lcn/egame/terminal/sdk/log/BaseLog;->c:Ljava/lang/String;

    sput-object v1, Lcn/egame/terminal/sdk/log/BaseLog;->a:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EgameLog"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcn/egame/terminal/sdk/log/BaseLog;->a:Landroid/os/Handler;

    sget-object v0, Lcn/egame/terminal/sdk/log/BaseLog;->a:Landroid/os/Handler;

    new-instance v1, Lcn/egame/terminal/sdk/log/w;

    invoke-direct {v1, p0, p1}, Lcn/egame/terminal/sdk/log/w;-><init>(Lcn/egame/terminal/sdk/log/BaseLog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/egame/terminal/sdk/log/BaseLog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "egame_app_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/egame/terminal/sdk/log/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "egame_channel_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/egame/terminal/sdk/log/ag;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "egame_sdk_from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/ag;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ag;->d(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ak;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/sdk/log/BaseLog;->c:Ljava/lang/String;

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ao;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/BaseLog;->c(Landroid/content/Context;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "EGAME_LOG"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/al;)V
    .locals 3

    invoke-static {p0, p1}, Lcn/egame/terminal/sdk/log/ag;->a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/al;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ak;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ar;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/BaseLog;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/BaseLog;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/egame/terminal/sdk/log/BaseLog;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/egame/terminal/sdk/log/BaseLog;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v2/egame/log.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcn/egame/terminal/sdk/log/x;

    invoke-direct {v0, p0}, Lcn/egame/terminal/sdk/log/x;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/ai;->a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/aj;)V

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ao;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcn/egame/terminal/sdk/log/BaseLog;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/egame/terminal/sdk/log/ai;->b()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcn/egame/terminal/sdk/log/ak;->c(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "EGAME_LOG"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "req_log"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/egame/terminal/sdk/log/m;

    invoke-direct {v1}, Lcn/egame/terminal/sdk/log/m;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/egame/terminal/sdk/log/m;->c(I)Lcn/egame/terminal/sdk/log/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/egame/terminal/sdk/log/m;->a(Ljava/util/Map;)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcn/egame/terminal/sdk/log/m;->a(I)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/egame/terminal/sdk/log/m;->b(I)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/egame/terminal/sdk/log/m;->a()Lcn/egame/terminal/sdk/log/l;

    move-result-object v1

    sget-object v0, Lcn/egame/terminal/sdk/log/BaseLog;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/egame/terminal/sdk/log/BaseLog;->c:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v1}, Lcn/egame/terminal/sdk/log/af;->a(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcn/egame/terminal/sdk/log/BaseLog;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcn/egame/terminal/sdk/log/BaseLog;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    const-string v0, "http://192.168.251.53:8102/api/v2/egame/log_error.json"

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/egame/terminal/sdk/log/BaseLog;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/egame/terminal/sdk/log/af;->a(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ext"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "log_switch_status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcn/egame/terminal/sdk/log/ak;->a(Landroid/content/Context;I)V

    :goto_1
    const-string v1, "log_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/ak;->e(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcn/egame/terminal/sdk/log/BaseLog;->c:Ljava/lang/String;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcn/egame/terminal/sdk/log/ak;->b(Landroid/content/Context;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "EGAME_LOG"

    const-string v1, "json error."

    invoke-static {v0, v1}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcn/egame/terminal/sdk/log/ak;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, v1}, Lcn/egame/terminal/sdk/log/ak;->a(Landroid/content/Context;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/egame/terminal/sdk/log/ai;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/egame/terminal/sdk/log/BaseLog;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v2/egame/log/config.json?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcn/egame/terminal/sdk/log/ai;->a()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Lcn/egame/terminal/sdk/log/s;

    invoke-direct {v5}, Lcn/egame/terminal/sdk/log/s;-><init>()V

    const/16 v0, 0x2000

    new-array v6, v0, [B

    array-length v0, v6

    div-int/lit8 v7, v0, 0x2

    move v0, v2

    move v1, v2

    :cond_0
    :goto_0
    if-eq v1, v8, :cond_3

    array-length v1, v6

    sub-int/2addr v1, v0

    invoke-virtual {v4, v6, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-eq v1, v8, :cond_1

    add-int/2addr v0, v1

    :cond_1
    if-eq v1, v8, :cond_2

    if-lt v0, v7, :cond_0

    :cond_2
    invoke-virtual {v5, v6, v2, v0}, Lcn/egame/terminal/sdk/log/s;->a([BII)V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    monitor-enter v5

    :try_start_0
    invoke-virtual {v5}, Lcn/egame/terminal/sdk/log/s;->b()I

    move-result v0

    new-array v1, v0, [B

    move v0, v2

    :goto_1
    invoke-virtual {v5}, Lcn/egame/terminal/sdk/log/s;->a()Lcn/egame/terminal/sdk/log/t;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {v1}, Lcn/egame/terminal/sdk/log/ao;->a([B)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v1

    monitor-exit v5

    if-nez v1, :cond_6

    move v0, v2

    :goto_2
    return v0

    :cond_4
    iget v6, v4, Lcn/egame/terminal/sdk/log/t;->b:I

    if-eqz v6, :cond_5

    iget-object v6, v4, Lcn/egame/terminal/sdk/log/t;->a:[B

    const/4 v7, 0x0

    iget v8, v4, Lcn/egame/terminal/sdk/log/t;->b:I

    invoke-static {v6, v7, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v4, Lcn/egame/terminal/sdk/log/t;->b:I

    add-int/2addr v0, v6

    :cond_5
    invoke-virtual {v4}, Lcn/egame/terminal/sdk/log/t;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move-object v0, v1

    check-cast v0, Lorg/apache/http/entity/AbstractHttpEntity;

    const-string v4, "text/plain"

    invoke-virtual {v0, v4}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/ag;->a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/al;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "req_log"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/egame/terminal/sdk/log/m;

    invoke-direct {v0}, Lcn/egame/terminal/sdk/log/m;-><init>()V

    invoke-virtual {v0, v3}, Lcn/egame/terminal/sdk/log/m;->c(I)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/egame/terminal/sdk/log/m;->a(Ljava/util/Map;)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    const/16 v4, 0x2710

    invoke-virtual {v0, v4}, Lcn/egame/terminal/sdk/log/m;->a(I)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/egame/terminal/sdk/log/m;->a(Lorg/apache/http/HttpEntity;)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/egame/terminal/sdk/log/m;->b(I)Lcn/egame/terminal/sdk/log/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/egame/terminal/sdk/log/m;->a()Lcn/egame/terminal/sdk/log/l;

    move-result-object v0

    invoke-static {}, Lcn/egame/terminal/sdk/log/BaseLog;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/egame/terminal/sdk/log/af;->b(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method public static setHostUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "open.play.cn"

    :cond_0
    sput-object p0, Lcn/egame/terminal/sdk/log/BaseLog;->b:Ljava/lang/String;

    return-void
.end method
