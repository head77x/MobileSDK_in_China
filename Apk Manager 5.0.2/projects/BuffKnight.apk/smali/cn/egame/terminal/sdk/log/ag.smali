.class public Lcn/egame/terminal/sdk/log/ag;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:I

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Landroid/telephony/PhoneStateListener;

.field private static r:Landroid/telephony/SignalStrength;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->f:Ljava/lang/String;

    const-string v0, "110"

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->h:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->i:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->j:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->k:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->l:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcn/egame/terminal/sdk/log/ag;->m:I

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->n:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->o:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->p:Ljava/lang/String;

    sput-object v1, Lcn/egame/terminal/sdk/log/ag;->q:Landroid/telephony/PhoneStateListener;

    sput-object v1, Lcn/egame/terminal/sdk/log/ag;->r:Landroid/telephony/SignalStrength;

    return-void
.end method

.method static synthetic a(Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    sput-object p0, Lcn/egame/terminal/sdk/log/ag;->r:Landroid/telephony/SignalStrength;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/egame/terminal/sdk/log/ag;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ak;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/egame/terminal/sdk/log/ag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/al;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/egame/terminal/sdk/log/ag;->a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/al;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/al;Z)Ljava/lang/String;
    .locals 6

    new-instance v2, Lcn/egame/terminal/sdk/log/ap;

    invoke-direct {v2, p2}, Lcn/egame/terminal/sdk/log/ap;-><init>(Z)V

    const-string v0, "version"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->g:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcn/egame/terminal/sdk/log/al;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "app_key"

    iget-object v1, p1, Lcn/egame/terminal/sdk/log/al;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcn/egame/terminal/sdk/log/al;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "from"

    iget-object v1, p1, Lcn/egame/terminal/sdk/log/al;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    :goto_1
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcn/egame/terminal/sdk/log/al;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "channel_id"

    iget-object v1, p1, Lcn/egame/terminal/sdk/log/al;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    :goto_2
    const-string v0, "imsi"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    const-string v0, "mac"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->p:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    const-string v0, "msisdn"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    const-string v0, "user_id"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    const-string v0, "network"

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ar;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    const-string v0, "meid"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    const-string v0, "model"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    const-string v0, "build_id"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    const-string v0, "screen_px"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->k:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    const-string v0, "agency"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->l:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;J)Lcn/egame/terminal/sdk/log/v;

    const-string v0, "api_level"

    sget v1, Lcn/egame/terminal/sdk/log/ag;->m:I

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;I)Lcn/egame/terminal/sdk/log/v;

    const-string v0, "cpu_abi"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->n:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    const-string v0, "app_ver"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->o:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    sget-object v0, Lcn/egame/terminal/sdk/log/ag;->r:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/egame/terminal/sdk/log/ag;->r:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "signal_gsm"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->r:Landroid/telephony/SignalStrength;

    invoke-static {v1}, Lcn/egame/terminal/sdk/log/aq;->a(Landroid/telephony/SignalStrength;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;I)Lcn/egame/terminal/sdk/log/v;

    :cond_0
    :goto_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcn/egame/terminal/sdk/log/al;->a()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    goto :goto_4

    :cond_1
    const-string v0, "app_key"

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    goto/16 :goto_0

    :cond_2
    const-string v0, "from"

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ag;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    goto/16 :goto_1

    :cond_3
    const-string v0, "channel_id"

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ag;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/sdk/log/v;

    goto/16 :goto_2

    :cond_4
    const-string v0, "signal_cdma"

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->r:Landroid/telephony/SignalStrength;

    invoke-static {v1}, Lcn/egame/terminal/sdk/log/aq;->b(Landroid/telephony/SignalStrength;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcn/egame/terminal/sdk/log/ap;->a(Ljava/lang/String;I)Lcn/egame/terminal/sdk/log/v;

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcn/egame/terminal/sdk/log/ap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/sys/class/net/wlan0/address"

    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "r"

    invoke-direct {v2, v3, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "/sys/class/net/eth0/address"

    invoke-static {v0}, Lcn/egame/terminal/sdk/log/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "EGAME_LOG"

    const-string v2, "fetch mac address error."

    invoke-static {v1, v2}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "egame_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "egame_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->a:Ljava/lang/String;

    sget-object v0, Lcn/egame/terminal/sdk/log/ag;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/ak;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "key_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "key_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_3

    const-string v1, "AppKey\u83b7\u53d6\u5f02\u5e38,\u8bf7\u68c0\u67e5\n\'AndroidManifest.xml\'\n\u4e2d\u7684\u53c2\u6570\u914d\u7f6e. @Egame"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_3
    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->a:Ljava/lang/String;

    sget-object v0, Lcn/egame/terminal/sdk/log/ag;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/ak;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "AppKey\u83b7\u53d6\u5f02\u5e38,\u8bf7\u68c0\u67e5\n\'AndroidManifest.xml\'\n\u4e2d\u7684\u53c2\u6570\u914d\u7f6e. @Egame"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/egame/terminal/sdk/log/ag;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ak;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->b:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/egame/terminal/sdk/log/ag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcn/egame/terminal/sdk/log/al;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/egame/terminal/sdk/log/ag;->a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/al;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "cid_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "cid_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    sput-object p1, Lcn/egame/terminal/sdk/log/ag;->b:Ljava/lang/String;

    sget-object v0, Lcn/egame/terminal/sdk/log/ag;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/ak;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/egame/terminal/sdk/log/ag;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ak;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/sdk/log/ag;->c:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/egame/terminal/sdk/log/ag;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-object p1, Lcn/egame/terminal/sdk/log/ag;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/egame/terminal/sdk/log/ak;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/egame/terminal/sdk/log/ag;->d:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/egame/terminal/sdk/log/ag;->h:Ljava/lang/String;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/egame/terminal/sdk/log/ag;->k:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, Lcn/egame/terminal/sdk/log/ag;->i:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v1, Lcn/egame/terminal/sdk/log/ag;->j:Ljava/lang/String;

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->d:Ljava/lang/String;

    invoke-static {v1}, Lcn/egame/terminal/sdk/log/as;->a(Ljava/lang/String;)Lcn/egame/terminal/sdk/log/as;

    move-result-object v1

    invoke-virtual {v1}, Lcn/egame/terminal/sdk/log/as;->a()I

    move-result v1

    sget-object v2, Lcn/egame/terminal/sdk/log/as;->d:Lcn/egame/terminal/sdk/log/as;

    invoke-virtual {v2}, Lcn/egame/terminal/sdk/log/as;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/egame/terminal/sdk/log/ag;->l:Ljava/lang/String;

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v1, Lcn/egame/terminal/sdk/log/ag;->m:I

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v1, Lcn/egame/terminal/sdk/log/ag;->n:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcn/egame/terminal/sdk/log/ag;->o:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcn/egame/terminal/sdk/log/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/egame/terminal/sdk/log/ag;->p:Ljava/lang/String;

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->q:Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_1

    new-instance v1, Lcn/egame/terminal/sdk/log/ah;

    invoke-direct {v1}, Lcn/egame/terminal/sdk/log/ah;-><init>()V

    sput-object v1, Lcn/egame/terminal/sdk/log/ag;->q:Landroid/telephony/PhoneStateListener;

    sget-object v1, Lcn/egame/terminal/sdk/log/ag;->q:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/ag;->b(Landroid/content/Context;Lcn/egame/terminal/sdk/log/al;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
