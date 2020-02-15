.class public Lcom/qy/pay/f/P;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/qy/pay/network/b/h;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/qy/pay/network/b/h;
    .locals 2

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/qy/pay/f/P;->e(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    invoke-static {p0}, Lcom/qy/pay/network/f/b;->c(Landroid/content/Context;)B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/h;->a(B)V

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    const-string v1, "/proc/cpuinfo"

    const-string v0, ""

    const-string v0, ""

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v3, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    :goto_0
    array-length v2, v4

    if-lt v1, v2, :cond_0

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :goto_1
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v4, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static b()I
    .locals 6

    const-wide/16 v4, 0x400

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    long-to-int v0, v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v1, ""

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static c()I
    .locals 6

    const-wide/16 v4, 0x400

    invoke-static {}, Lcom/qy/pay/f/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v1, ""

    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static d()B
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/qy/pay/f/O;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/qy/pay/f/L;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/qy/pay/f/K;->a(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {p0, v0}, Lcom/qy/pay/f/L;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static e()I
    .locals 4

    const-string v1, "/proc/meminfo"

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit16 v0, v2, 0x400

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/qy/pay/network/b/h;

    invoke-direct {v0}, Lcom/qy/pay/network/b/h;-><init>()V

    sput-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/h;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/h;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/h;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lcom/qy/pay/network/b/h;->a(S)V

    sget-object v1, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Lcom/qy/pay/network/b/h;->b(S)V

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    invoke-static {}, Lcom/qy/pay/f/P;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/h;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    invoke-static {}, Lcom/qy/pay/f/P;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/h;->a(I)V

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    invoke-static {}, Lcom/qy/pay/f/P;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/h;->b(I)V

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    invoke-static {}, Lcom/qy/pay/f/P;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/h;->c(I)V

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    invoke-static {p0}, Lcom/qy/pay/f/K;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/h;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    invoke-static {p0}, Lcom/qy/pay/f/P;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/h;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    invoke-static {p0}, Lcom/qy/pay/f/P;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/h;->g(Ljava/lang/String;)V

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    invoke-static {}, Lcom/qy/pay/f/P;->d()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/h;->b(B)V

    sget-object v0, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    invoke-static {p0}, Lcom/qy/pay/network/f/b;->b(Landroid/content/Context;)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/h;->c(B)V

    invoke-static {p0}, Lcom/qy/pay/f/P;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/qy/pay/a/d;->a(Landroid/content/Context;)Lcom/qy/pay/a/d;

    move-result-object v0

    const-string v1, "mac"

    invoke-virtual {v0, v1}, Lcom/qy/pay/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/qy/pay/f/P;->a:Lcom/qy/pay/network/b/h;

    invoke-virtual {v1, v0}, Lcom/qy/pay/network/b/h;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/qy/pay/a/d;->a(Landroid/content/Context;)Lcom/qy/pay/a/d;

    move-result-object v1

    const-string v2, "mac"

    invoke-virtual {v1, v2, v0}, Lcom/qy/pay/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
