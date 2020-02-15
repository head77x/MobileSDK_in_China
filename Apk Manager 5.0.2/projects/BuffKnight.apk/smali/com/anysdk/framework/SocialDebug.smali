.class public Lcom/anysdk/framework/SocialDebug;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/framework/InterfaceSocial;


# static fields
.field private static final SIMSDK_LOGIN_URL:Ljava/lang/String; = "http://sim.qudao.info/account/login"

.field private static final SIMSDK_LOGOUT_URL:Ljava/lang/String; = "http://sim.qudao.info/account/logout"

.field private static final SIMSDK_PAY_URL:Ljava/lang/String; = "http://sim.qudao.info/api/pay/exec"

.field protected static TAG:Ljava/lang/String;

.field private static isDebug:Z

.field private static isInited:Z

.field private static mAdapter:Lcom/anysdk/framework/SocialDebug;

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

    sput-object v1, Lcom/anysdk/framework/SocialDebug;->mContext:Landroid/content/Context;

    const-string v0, "DebugMode"

    sput-object v0, Lcom/anysdk/framework/SocialDebug;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/anysdk/framework/SocialDebug;->mAdapter:Lcom/anysdk/framework/SocialDebug;

    sput-boolean v2, Lcom/anysdk/framework/SocialDebug;->isInited:Z

    sput-boolean v2, Lcom/anysdk/framework/SocialDebug;->mLogined:Z

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/SocialDebug;->mUserId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/SocialDebug;->mSessionId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/SocialDebug;->mUApiKey:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/SocialDebug;->mUApiSecret:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/SocialDebug;->mServerUrl:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/anysdk/framework/SocialDebug;->mOrderId:Ljava/lang/String;

    sput-object v1, Lcom/anysdk/framework/SocialDebug;->mGoodsInfo:Ljava/util/Hashtable;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/anysdk/framework/SocialDebug;->isDebug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/anysdk/framework/SocialDebug;->PluginType:I

    sput-object p1, Lcom/anysdk/framework/SocialDebug;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/anysdk/framework/SocialDebug;->mAdapter:Lcom/anysdk/framework/SocialDebug;

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anysdk/framework/SocialDebug;->configDeveloperInfo(Ljava/util/Hashtable;)V

    return-void
.end method

.method protected static LogD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/SocialDebug;->isDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anysdk/framework/SocialDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lcom/anysdk/framework/SocialDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/SocialDebug;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/anysdk/framework/SocialDebug;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/SocialDebug;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/anysdk/framework/SocialDebug;->mSessionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/SocialDebug;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/SocialDebug;->mUApiKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/SocialDebug;->mUApiSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/SocialDebug;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/SocialDebug;->mLogined:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/anysdk/framework/SocialDebug;->mLogined:Z

    return p0
.end method

.method static synthetic access$700()Lcom/anysdk/framework/SocialDebug;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/SocialDebug;->mAdapter:Lcom/anysdk/framework/SocialDebug;

    return-object v0
.end method

.method static synthetic access$800(Lcom/anysdk/framework/SocialDebug;Ljava/lang/String;Ljava/lang/String;Lcom/anysdk/framework/ILoginCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anysdk/framework/SocialDebug;->userLogin(Ljava/lang/String;Ljava/lang/String;Lcom/anysdk/framework/ILoginCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/anysdk/framework/SocialDebug;)V
    .locals 0

    invoke-direct {p0}, Lcom/anysdk/framework/SocialDebug;->userLogout()V

    return-void
.end method

.method private configDeveloperInfo(Ljava/util/Hashtable;)V
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

    sget-boolean v0, Lcom/anysdk/framework/SocialDebug;->isInited:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anysdk/framework/SocialDebug;->isInited:Z

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "server_url"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/anysdk/framework/SocialDebug;->mServerUrl:Ljava/lang/String;

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "uapi_key"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/anysdk/framework/SocialDebug;->mUApiKey:Ljava/lang/String;

    invoke-static {}, Lcom/anysdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "uapi_secret"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/anysdk/framework/SocialDebug;->mUApiSecret:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/anysdk/framework/SocialDebug;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/anysdk/framework/SocialDebug;->mContext:Landroid/content/Context;

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
    sget-object v0, Lcom/anysdk/framework/SocialDebug;->mContext:Landroid/content/Context;

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

    invoke-static {v1}, Lcom/anysdk/framework/SocialDebug;->LogD(Ljava/lang/String;)V

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

    invoke-static {v2, v0}, Lcom/anysdk/framework/SocialDebug;->LogE(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method public static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/SocialDebug$3;

    invoke-direct {v0, p0, p1}, Lcom/anysdk/framework/SocialDebug$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    sget-object v1, Lcom/anysdk/framework/SocialDebug;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/anysdk/framework/SocialDebug$1;

    invoke-direct {v2, p0, p3}, Lcom/anysdk/framework/SocialDebug$1;-><init>(Lcom/anysdk/framework/SocialDebug;Lcom/anysdk/framework/ILoginCallback;)V

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

    sget-object v2, Lcom/anysdk/framework/SocialDebug;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "session_id"

    sget-object v2, Lcom/anysdk/framework/SocialDebug;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "server_url"

    const-string v2, "http://sim.qudao.info/account/logout"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/anysdk/framework/SocialDebug;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/anysdk/framework/SocialDebug$2;

    invoke-direct {v2, p0}, Lcom/anysdk/framework/SocialDebug$2;-><init>(Lcom/anysdk/framework/SocialDebug;)V

    invoke-static {v1, v0, v2}, Lcom/anysdk/Util/g;->c(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V

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

.method public isLogined()Z
    .locals 1

    sget-boolean v0, Lcom/anysdk/framework/SocialDebug;->mLogined:Z

    return v0
.end method

.method public setDebugMode(Z)V
    .locals 0

    sput-boolean p1, Lcom/anysdk/framework/SocialDebug;->isDebug:Z

    return-void
.end method

.method public showAchievements()V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/SocialDebug$9;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/SocialDebug$9;-><init>(Lcom/anysdk/framework/SocialDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showLeaderboard(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/SocialDebug$7;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/SocialDebug$7;-><init>(Lcom/anysdk/framework/SocialDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public signIn()V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/SocialDebug$4;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/SocialDebug$4;-><init>(Lcom/anysdk/framework/SocialDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public signOut()V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/SocialDebug$5;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/SocialDebug$5;-><init>(Lcom/anysdk/framework/SocialDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitScore(Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/SocialDebug$6;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/SocialDebug$6;-><init>(Lcom/anysdk/framework/SocialDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unlockAchievement(Ljava/util/Hashtable;)V
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

    new-instance v0, Lcom/anysdk/framework/SocialDebug$8;

    invoke-direct {v0, p0}, Lcom/anysdk/framework/SocialDebug$8;-><init>(Lcom/anysdk/framework/SocialDebug;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
