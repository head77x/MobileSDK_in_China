.class public Lcom/anysdk/framework/UserDebug;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/framework/InterfaceUser;


# static fields
.field private static final SIMSDK_LOGIN_URL:Ljava/lang/String; = "http://sim.qudao.info/account/login"

.field private static final SIMSDK_LOGOUT_URL:Ljava/lang/String; = "http://sim.qudao.info/account/logout"

.field private static final SIMSDK_PAY_URL:Ljava/lang/String; = "http://sim.qudao.info/api/pay/exec"

.field protected static TAG:Ljava/lang/String;

.field private static isDebug:Z

.field private static isInited:Z

.field private static mAdapter:Lcom/anysdk/framework/UserDebug;

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

.field private static mLogined:Z

.field private static mOrderId:Ljava/lang/String;

.field private static mServerUrl:Ljava/lang/String;

.field private static mSessionId:Ljava/lang/String;

.field private static mUApiKey:Ljava/lang/String;

.field private static mUApiSecret:Ljava/lang/String;

.field private static mUserId:Ljava/lang/String;


# instance fields
.field public final PluginType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/anysdk/framework/UserDebug;->mContext:Landroid/content/Context;

    const-string v0, "DebugMode"

    sput-object v0, Lcom/anysdk/framework/UserDebug;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/anysdk/framework/UserDebug;->mAdapter:Lcom/anysdk/framework/UserDebug;

    sput-boolean v2, Lcom/anysdk/framework/UserDebug;->isInited:Z

    sput-boolean v2, Lcom/anysdk/framework/UserDebug;->mLogined:Z

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/UserDebug;->mUserId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/UserDebug;->mSessionId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/UserDebug;->mUApiKey:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/UserDebug;->mUApiSecret:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/UserDebug;->mServerUrl:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/UserDebug;->mOrderId:Ljava/lang/String;

    sput-object v1, Lcom/anysdk/framework/UserDebug;->mGoodsInfo:Ljava/util/Hashtable;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/anysdk/framework/UserDebug;->isDebug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/anysdk/framework/UserDebug;->PluginType:I

    sput-object p1, Lcom/anysdk/framework/UserDebug;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/anysdk/framework/UserDebug;->mAdapter:Lcom/anysdk/framework/UserDebug;

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anysdk/framework/UserDebug;->configDeveloperInfo(Ljava/util/Hashtable;)V

    return-void
.end method

.method protected static LogD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/UserDebug;->isDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anysdk/framework/UserDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lcom/anysdk/framework/UserDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/UserDebug;->isInited:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/anysdk/framework/UserDebug;->isInited:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/UserDebug;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/anysdk/framework/UserDebug;)V
    .locals 0

    invoke-direct {p0}, Lcom/anysdk/framework/UserDebug;->userLogout()V

    return-void
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/anysdk/framework/UserDebug;->mServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/UserDebug;->mUApiKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/anysdk/framework/UserDebug;->mUApiKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/UserDebug;->mUApiSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/anysdk/framework/UserDebug;->mUApiSecret:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Lcom/anysdk/framework/UserDebug;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/UserDebug;->mAdapter:Lcom/anysdk/framework/UserDebug;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/UserDebug;->mLogined:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/anysdk/framework/UserDebug;->mLogined:Z

    return p0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/UserDebug;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/anysdk/framework/UserDebug;Ljava/lang/String;Ljava/lang/String;Lcom/anysdk/framework/ILoginCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anysdk/framework/UserDebug;->userLogin(Ljava/lang/String;Ljava/lang/String;Lcom/anysdk/framework/ILoginCallback;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/UserDebug;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/anysdk/framework/UserDebug;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/UserDebug;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/anysdk/framework/UserDebug;->mSessionId:Ljava/lang/String;

    return-object p0
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

    new-instance v0, Lcom/anysdk/framework/UserDebug$1;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/UserDebug$1;-><init>(Lcom/anysdk/framework/UserDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getLoginState()Z
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/UserDebug;->mLogined:Z

    return v0
.end method

.method public static getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/anysdk/framework/UserDebug;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/anysdk/framework/UserDebug;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSimSessionId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/UserDebug;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimUserId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/UserDebug;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method private networkReachable()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/anysdk/framework/UserDebug;->mContext:Landroid/content/Context;

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

    invoke-static {v1}, Lcom/anysdk/framework/UserDebug;->LogD(Ljava/lang/String;)V

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

    invoke-static {v2, v0}, Lcom/anysdk/framework/UserDebug;->LogE(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method public static setLoginState(Z)V
    .locals 0

    sput-boolean p0, Lcom/anysdk/framework/UserDebug;->mLogined:Z

    return-void
.end method

.method public static setSimUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/anysdk/framework/UserDebug;->mUserId:Ljava/lang/String;

    sput-object p1, Lcom/anysdk/framework/UserDebug;->mSessionId:Ljava/lang/String;

    return-void
.end method

.method public static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/UserDebug$7;

    invoke-direct {v0, p0, p1}, Lcom/anysdk/framework/UserDebug$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    sget-object v1, Lcom/anysdk/framework/UserDebug;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/anysdk/framework/UserDebug$3;

    invoke-direct {v2, p0, p3}, Lcom/anysdk/framework/UserDebug$3;-><init>(Lcom/anysdk/framework/UserDebug;Lcom/anysdk/framework/ILoginCallback;)V

    invoke-static {v1, v0, v2}, Lcom/anysdk/Util/g;->c(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V

    return-void
.end method

.method private userLogout()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "user_id"

    sget-object v2, Lcom/anysdk/framework/UserDebug;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "session_id"

    sget-object v2, Lcom/anysdk/framework/UserDebug;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "server_url"

    const-string v2, "http://sim.qudao.info/account/logout"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/anysdk/framework/UserDebug;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/anysdk/framework/UserDebug$5;

    invoke-direct {v2, p0}, Lcom/anysdk/framework/UserDebug$5;-><init>(Lcom/anysdk/framework/UserDebug;)V

    invoke-static {v1, v0, v2}, Lcom/anysdk/Util/g;->c(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V

    return-void
.end method


# virtual methods
.method public accountSwitch()V
    .locals 2

    const-string v0, "plugin_accountSwitch"

    const-string v1, "plugin_accountSwitch"

    invoke-static {v0, v1}, Lcom/anysdk/framework/UserDebug;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public antiAddictionQuery()V
    .locals 2

    const-string v0, "plugin_antiAddictionQuery"

    const-string v1, "plugin_antiAddictionQuery"

    invoke-static {v0, v1}, Lcom/anysdk/framework/UserDebug;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const-string v0, "destroy"

    invoke-static {v0}, Lcom/anysdk/framework/UserDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public enterPlatform()V
    .locals 2

    const-string v0, "plugin_center"

    const-string v1, "plugin_center"

    invoke-static {v0, v1}, Lcom/anysdk/framework/UserDebug;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/UserDebug$6;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/UserDebug$6;-><init>(Lcom/anysdk/framework/UserDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
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

.method public getUserID()Ljava/lang/String;
    .locals 1

    const-string v0, "getUserID() invoked!"

    invoke-static {v0}, Lcom/anysdk/framework/UserDebug;->LogD(Ljava/lang/String;)V

    sget-object v0, Lcom/anysdk/framework/UserDebug;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public hideToolBar()V
    .locals 2

    const-string v0, "plugin_hideTool"

    const-string v1, "plugin_hideTool"

    invoke-static {v0, v1}, Lcom/anysdk/framework/UserDebug;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isLogined()Z
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/UserDebug;->mLogined:Z

    return v0
.end method

.method public isSupportFunction(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public login()V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/UserDebug$2;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/UserDebug$2;-><init>(Lcom/anysdk/framework/UserDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logout()V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/UserDebug$4;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/UserDebug$4;-><init>(Lcom/anysdk/framework/UserDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "plugin_pause"

    const-string v1, "plugin_pause"

    invoke-static {v0, v1}, Lcom/anysdk/framework/UserDebug;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public realNameRegister()V
    .locals 2

    const-string v0, "plugin_realNameRegister"

    const-string v1, "plugin_realNameRegister"

    invoke-static {v0, v1}, Lcom/anysdk/framework/UserDebug;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    sput-boolean p1, Lcom/anysdk/framework/UserDebug;->isDebug:Z

    return-void
.end method

.method public showToolBar(I)V
    .locals 2

    const-string v0, "plugin_showTool"

    const-string v1, "plugin_showTool"

    invoke-static {v0, v1}, Lcom/anysdk/framework/UserDebug;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public submitLoginGameRole(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "plugin_submitLoginGameRole"

    const-string v1, "plugin_submitLoginGameRole"

    invoke-static {v0, v1}, Lcom/anysdk/framework/UserDebug;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
