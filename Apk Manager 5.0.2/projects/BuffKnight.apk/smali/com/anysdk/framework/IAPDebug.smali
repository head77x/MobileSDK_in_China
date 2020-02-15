.class public Lcom/anysdk/framework/IAPDebug;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/framework/InterfaceIAP;


# static fields
.field private static final SIMSDK_LOGIN_URL:Ljava/lang/String; = "http://sim.qudao.info/account/login"

.field private static final SIMSDK_LOGOUT_URL:Ljava/lang/String; = "http://sim.qudao.info/account/logout"

.field private static final SIMSDK_PAY_URL:Ljava/lang/String; = "http://sim.qudao.info/api/pay/exec"

.field protected static TAG:Ljava/lang/String;

.field private static isDebug:Z

.field private static isInited:Z

.field private static mAdapter:Lcom/anysdk/framework/IAPDebug;

.field private static mContext:Landroid/content/Context;

.field private static mGoodsInfo:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mOrderId:Ljava/lang/String;

.field private static mServerUrl:Ljava/lang/String;

.field private static mUApiKey:Ljava/lang/String;

.field private static mUApiSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/anysdk/framework/IAPDebug;->mContext:Landroid/content/Context;

    const-string v0, "IAPDebug"

    sput-object v0, Lcom/anysdk/framework/IAPDebug;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/anysdk/framework/IAPDebug;->mAdapter:Lcom/anysdk/framework/IAPDebug;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/anysdk/framework/IAPDebug;->isInited:Z

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/IAPDebug;->mUApiKey:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/IAPDebug;->mUApiSecret:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/IAPDebug;->mServerUrl:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/IAPDebug;->mOrderId:Ljava/lang/String;

    sput-object v1, Lcom/anysdk/framework/IAPDebug;->mGoodsInfo:Ljava/util/Hashtable;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/anysdk/framework/IAPDebug;->isDebug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/anysdk/framework/IAPDebug;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/anysdk/framework/IAPDebug;->mAdapter:Lcom/anysdk/framework/IAPDebug;

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anysdk/framework/IAPDebug;->configDeveloperInfo(Ljava/util/Hashtable;)V

    return-void
.end method

.method protected static LogD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/IAPDebug;->isDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anysdk/framework/IAPDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lcom/anysdk/framework/IAPDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/IAPDebug;->isInited:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/anysdk/framework/IAPDebug;->isInited:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/IAPDebug;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/IAPDebug;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/anysdk/framework/IAPDebug;->mOrderId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/anysdk/framework/IAPDebug;->mServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/anysdk/framework/IAPDebug;->addPayment(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/anysdk/framework/IAPDebug;->pay(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/anysdk/framework/IAPDebug;Ljava/lang/String;Ljava/lang/String;Lcom/anysdk/framework/ILoginCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anysdk/framework/IAPDebug;->userLogin(Ljava/lang/String;Ljava/lang/String;Lcom/anysdk/framework/ILoginCallback;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/IAPDebug;->mUApiKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/anysdk/framework/IAPDebug;->mUApiKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/IAPDebug;->mUApiSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/anysdk/framework/IAPDebug;->mUApiSecret:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/anysdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/IAPDebug;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/anysdk/framework/IAPDebug;)Z
    .locals 1

    invoke-direct {p0}, Lcom/anysdk/framework/IAPDebug;->networkReachable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Ljava/util/Hashtable;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/IAPDebug;->mGoodsInfo:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/anysdk/framework/IAPDebug;)V
    .locals 0

    invoke-direct {p0}, Lcom/anysdk/framework/IAPDebug;->payLogin()V

    return-void
.end method

.method static synthetic access$900(Ljava/util/Hashtable;)V
    .locals 0

    invoke-static {p0}, Lcom/anysdk/framework/IAPDebug;->getOrderId(Ljava/util/Hashtable;)V

    return-void
.end method

.method private static addPayment(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/IAPDebug$5;

    invoke-direct {v0, p0, p1}, Lcom/anysdk/framework/IAPDebug$5;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private configDeveloperInfo(Ljava/util/Hashtable;)V
    .locals 1
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

    new-instance v0, Lcom/anysdk/framework/IAPDebug$1;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/IAPDebug$1;-><init>(Lcom/anysdk/framework/IAPDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getOrderId(Ljava/util/Hashtable;)V
    .locals 11
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

    const-string v0, "Product_Id"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Product_Name"

    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Product_Price"

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Product_Count"

    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Role_Id"

    invoke-virtual {p0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "Role_Name"

    invoke-virtual {p0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "Server_Id"

    invoke-virtual {p0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    :cond_0
    const/4 v0, 0x4

    const-string v1, "something is null"

    invoke-static {v0, v1}, Lcom/anysdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v5, "EXT"

    invoke-virtual {p0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    float-to-int v3, v7

    mul-int/2addr v3, v2

    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    const-string v9, "uapi_key"

    sget-object v10, Lcom/anysdk/framework/IAPDebug;->mUApiKey:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "uapi_secret"

    sget-object v10, Lcom/anysdk/framework/IAPDebug;->mUApiSecret:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "order_type"

    const-string v10, "999"

    invoke-virtual {v8, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "money"

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_user_id"

    invoke-virtual {v8, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_server_id"

    invoke-virtual {v8, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_id"

    invoke-virtual {v8, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user_id"

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->getSimUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "product_name"

    invoke-virtual {v8, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_2

    const-string v0, "private_data"

    invoke-virtual {v8, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/anysdk/framework/IAPDebug;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/anysdk/framework/IAPDebug$4;

    invoke-direct {v1, v3}, Lcom/anysdk/framework/IAPDebug$4;-><init>(I)V

    invoke-static {v0, v8, v1}, Lcom/anysdk/framework/IAPWrapper;->getPayOrderId(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1
.end method

.method public static getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/anysdk/framework/IAPDebug;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/anysdk/framework/IAPDebug;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private networkReachable()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/anysdk/framework/IAPDebug;->mContext:Landroid/content/Context;

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

    invoke-static {v1}, Lcom/anysdk/framework/IAPDebug;->LogD(Ljava/lang/String;)V

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

    invoke-static {v2, v0}, Lcom/anysdk/framework/IAPDebug;->LogE(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method private static pay(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "user_id"

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->getSimUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "session_id"

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->getSimSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cp_order_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "callback"

    const-string v2, "http://pay.anysdk.com/v5/SimsdkPayNotice/SimsdkPayNotice/"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "amount"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "server_url"

    const-string v2, "http://sim.qudao.info/api/pay/exec"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/anysdk/framework/IAPDebug;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/anysdk/framework/IAPDebug$7;

    invoke-direct {v2}, Lcom/anysdk/framework/IAPDebug$7;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/anysdk/Util/g;->c(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V

    return-void
.end method

.method private payLogin()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/anysdk/framework/IAPDebug;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "plugin_login_title"

    const-string v2, "string"

    invoke-static {v1, v2}, Lcom/anysdk/framework/IAPDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/anysdk/framework/IAPDebug;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "plugin_login"

    const-string v3, "layout"

    invoke-static {v2, v3}, Lcom/anysdk/framework/IAPDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/anysdk/framework/IAPDebug$6;

    invoke-direct {v2, p0, v1}, Lcom/anysdk/framework/IAPDebug$6;-><init>(Lcom/anysdk/framework/IAPDebug;Landroid/view/View;)V

    const-string v1, "plugin_login"

    const-string v3, "string"

    invoke-static {v1, v3}, Lcom/anysdk/framework/IAPDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "plugin_cancel"

    const-string v3, "string"

    invoke-static {v1, v3}, Lcom/anysdk/framework/IAPDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static payResult(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/anysdk/framework/IAPDebug;->mAdapter:Lcom/anysdk/framework/IAPDebug;

    invoke-static {v0, p0, p1}, Lcom/anysdk/framework/IAPWrapper;->onPayResult(Lcom/anysdk/framework/InterfaceIAP;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "payResult : "

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

    invoke-static {v0}, Lcom/anysdk/framework/IAPDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/IAPDebug$8;

    invoke-direct {v0, p0, p1}, Lcom/anysdk/framework/IAPDebug$8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private userLogin(Ljava/lang/String;Ljava/lang/String;Lcom/anysdk/framework/ILoginCallback;)V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "server_url"

    const-string v2, "http://sim.qudao.info/account/login"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/anysdk/framework/IAPDebug;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/anysdk/framework/IAPDebug$2;

    invoke-direct {v2, p0, p3}, Lcom/anysdk/framework/IAPDebug$2;-><init>(Lcom/anysdk/framework/IAPDebug;Lcom/anysdk/framework/ILoginCallback;)V

    invoke-static {v1, v0, v2}, Lcom/anysdk/Util/g;->c(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V

    return-void
.end method


# virtual methods
.method public getOrderId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/IAPDebug;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginId()Ljava/lang/String;
    .locals 1

    const-string v0, "999999"

    return-object v0
.end method

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

.method public isLogined()Z
    .locals 1

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->getLoginState()Z

    move-result v0

    return v0
.end method

.method public payForProduct(Ljava/util/Hashtable;)V
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

    const-string v1, "payForProduct invoked "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anysdk/framework/IAPDebug;->LogD(Ljava/lang/String;)V

    sput-object p1, Lcom/anysdk/framework/IAPDebug;->mGoodsInfo:Ljava/util/Hashtable;

    new-instance v0, Lcom/anysdk/framework/IAPDebug$3;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/IAPDebug$3;-><init>(Lcom/anysdk/framework/IAPDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    sput-boolean p1, Lcom/anysdk/framework/IAPDebug;->isDebug:Z

    return-void
.end method
