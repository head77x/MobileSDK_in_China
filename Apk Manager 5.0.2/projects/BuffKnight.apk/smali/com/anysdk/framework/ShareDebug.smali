.class public Lcom/anysdk/framework/ShareDebug;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/framework/InterfaceShare;


# static fields
.field protected static TAG:Ljava/lang/String;

.field private static isDebug:Z

.field private static mAdapter:Lcom/anysdk/framework/ShareDebug;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/anysdk/framework/ShareDebug;->mContext:Landroid/content/Context;

    const-string v0, "ShareDebug"

    sput-object v0, Lcom/anysdk/framework/ShareDebug;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/anysdk/framework/ShareDebug;->mAdapter:Lcom/anysdk/framework/ShareDebug;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/anysdk/framework/ShareDebug;->isDebug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/anysdk/framework/ShareDebug;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/anysdk/framework/ShareDebug;->mAdapter:Lcom/anysdk/framework/ShareDebug;

    return-void
.end method

.method protected static LogD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/ShareDebug;->isDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anysdk/framework/ShareDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lcom/anysdk/framework/ShareDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/ShareDebug;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private networkReachable()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/anysdk/framework/ShareDebug;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetWork reachable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anysdk/framework/ShareDebug;->LogD(Ljava/lang/String;)V

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Fail to check network status"

    invoke-static {v2, v0}, Lcom/anysdk/framework/ShareDebug;->LogE(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method public static shareResult(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/anysdk/framework/ShareDebug;->mAdapter:Lcom/anysdk/framework/ShareDebug;

    invoke-static {v0, p0, p1}, Lcom/anysdk/framework/ShareWrapper;->onShareResult(Lcom/anysdk/framework/InterfaceShare;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shareResult result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anysdk/framework/ShareDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.3"

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.3"

    return-object v0
.end method

.method public setDebugMode(Z)V
    .locals 0

    sput-boolean p1, Lcom/anysdk/framework/ShareDebug;->isDebug:Z

    return-void
.end method

.method public share(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "share invoked "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anysdk/framework/ShareDebug;->LogD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/anysdk/framework/ShareDebug;->networkReachable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "Network error!"

    invoke-static {v0, v1}, Lcom/anysdk/framework/ShareDebug;->shareResult(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/anysdk/framework/ShareDebug$1;

    invoke-direct {v0, p0, p1}, Lcom/anysdk/framework/ShareDebug$1;-><init>(Lcom/anysdk/framework/ShareDebug;Ljava/util/Hashtable;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
