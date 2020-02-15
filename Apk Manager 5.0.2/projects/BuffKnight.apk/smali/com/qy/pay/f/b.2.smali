.class public Lcom/qy/pay/f/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/qy/pay/network/b/a;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/qy/pay/network/b/a;
    .locals 2

    sget-object v0, Lcom/qy/pay/f/b;->a:Lcom/qy/pay/network/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qy/pay/network/b/a;

    invoke-direct {v0}, Lcom/qy/pay/network/b/a;-><init>()V

    sput-object v0, Lcom/qy/pay/f/b;->a:Lcom/qy/pay/network/b/a;

    sget-object v0, Lcom/qy/pay/f/b;->a:Lcom/qy/pay/network/b/a;

    invoke-static {p0}, Lcom/qy/pay/f/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/qy/pay/f/b;->a:Lcom/qy/pay/network/b/a;

    invoke-static {p0}, Lcom/qy/pay/f/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/a;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/qy/pay/f/b;->a:Lcom/qy/pay/network/b/a;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/a;->b(I)V

    sget-object v0, Lcom/qy/pay/f/b;->a:Lcom/qy/pay/network/b/a;

    const-string v1, "1.1.5"

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/a;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/qy/pay/f/b;->a:Lcom/qy/pay/network/b/a;

    invoke-static {p0}, Lcom/qy/pay/f/h;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/a;->a(I)V

    sget-object v0, Lcom/qy/pay/f/b;->a:Lcom/qy/pay/network/b/a;

    invoke-static {p0}, Lcom/qy/pay/f/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/a;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/qy/pay/f/b;->a:Lcom/qy/pay/network/b/a;

    invoke-static {p0}, Lcom/qy/pay/f/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/a;->d(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/qy/pay/f/b;->a:Lcom/qy/pay/network/b/a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "config.properties"

    const-string v1, "QY_APP_KEY"

    invoke-static {p0, v0, v1}, Lcom/qy/pay/f/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "config.properties"

    const-string v2, "QY_APP_KEY"

    invoke-static {p0, v1, v2}, Lcom/qy/pay/f/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/qy/pay/a/d;->a(Landroid/content/Context;)Lcom/qy/pay/a/d;

    move-result-object v1

    const-string v2, "QY_APP_KEY"

    invoke-virtual {v1, v2, v0}, Lcom/qy/pay/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "app id is null!"

    invoke-static {v1}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "config.properties"

    const-string v1, "QY_CHANNEL_ID"

    invoke-static {p0, v0, v1}, Lcom/qy/pay/f/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "config.properties"

    const-string v2, "QY_CHANNEL_ID"

    invoke-static {p0, v1, v2}, Lcom/qy/pay/f/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/qy/pay/a/d;->a(Landroid/content/Context;)Lcom/qy/pay/a/d;

    move-result-object v1

    const-string v2, "QY_CHANNEL_ID"

    invoke-virtual {v1, v2, v0}, Lcom/qy/pay/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "channel id is null!"

    invoke-static {v1}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
