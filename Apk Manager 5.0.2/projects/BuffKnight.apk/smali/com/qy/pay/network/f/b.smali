.class public Lcom/qy/pay/network/f/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lcom/qy/pay/network/b/e;
    .locals 2

    new-instance v0, Lcom/qy/pay/network/b/e;

    invoke-static {}, Lcom/qy/pay/f/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qy/pay/network/b/e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/Throwable;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static b()Lcom/qy/pay/network/b/e;
    .locals 2

    new-instance v0, Lcom/qy/pay/network/b/e;

    invoke-static {}, Lcom/qy/pay/f/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qy/pay/network/b/e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)B
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_0
    move v0, v2

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
