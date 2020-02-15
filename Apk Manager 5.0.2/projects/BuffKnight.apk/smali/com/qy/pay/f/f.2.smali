.class public Lcom/qy/pay/f/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/qy/pay/network/b/c;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/qy/pay/network/b/c;
    .locals 3

    sget-object v0, Lcom/qy/pay/f/f;->a:Lcom/qy/pay/network/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qy/pay/network/b/c;

    invoke-direct {v0}, Lcom/qy/pay/network/b/c;-><init>()V

    sput-object v0, Lcom/qy/pay/f/f;->a:Lcom/qy/pay/network/b/c;

    sget-object v0, Lcom/qy/pay/f/f;->a:Lcom/qy/pay/network/b/c;

    invoke-static {p0}, Lcom/qy/pay/f/f;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/c;->b(I)V

    sget-object v0, Lcom/qy/pay/f/f;->a:Lcom/qy/pay/network/b/c;

    invoke-static {}, Lcom/qy/pay/f/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/c;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/qy/pay/f/f;->a:Lcom/qy/pay/network/b/c;

    invoke-static {p0}, Lcom/qy/pay/f/f;->c(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/c;->a(I)V

    invoke-static {p0}, Lcom/qy/pay/f/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/qy/pay/a/d;->a(Landroid/content/Context;)Lcom/qy/pay/a/d;

    move-result-object v0

    const-string v1, "sms_center"

    invoke-virtual {v0, v1}, Lcom/qy/pay/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/qy/pay/f/f;->a:Lcom/qy/pay/network/b/c;

    invoke-virtual {v1, v0}, Lcom/qy/pay/network/b/c;->b(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/qy/pay/f/f;->a:Lcom/qy/pay/network/b/c;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/qy/pay/f/f;->a:Lcom/qy/pay/network/b/c;

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/qy/pay/a/d;->a(Landroid/content/Context;)Lcom/qy/pay/a/d;

    move-result-object v1

    const-string v2, "sms_center"

    invoke-virtual {v1, v2, v0}, Lcom/qy/pay/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v6, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/qy/pay/c/a;->a()Lcom/qy/pay/c/a;

    move-result-object v1

    iget-object v1, v1, Lcom/qy/pay/c/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string v0, "address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "service_center"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v6

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_2
    move-object v0, v6

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method
