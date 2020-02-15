.class public Lcom/netmego/miguyouxisdk/AnySDK_Manager;
.super Lcom/netmego/miguyouxisdk/SDKFactoryBase;
.source "AnySDK_Manager.java"


# static fields
.field private static _context:Landroid/app/Activity;

.field private static _singletonAnysdk:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

.field private static myLayout:Landroid/widget/LinearLayout;


# instance fields
.field public Initialized:Z

.field private MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

.field private TryToPay:Z

.field private TryToPayItem:Ljava/lang/String;

.field private mArchInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProductionInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShareInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTagInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "appKey"
    .parameter "appSecret"
    .parameter "privateKey"
    .parameter "oauthLoginServer"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/netmego/miguyouxisdk/SDKFactoryBase;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mUIHandler:Landroid/os/Handler;

    .line 45
    iput-object v1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;

    .line 46
    iput-object v1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mShareInfo:Ljava/util/Map;

    .line 47
    iput-object v1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mTagInfo:Ljava/util/ArrayList;

    .line 48
    iput-object v1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mArchInfo:Ljava/util/Map;

    .line 50
    iput-boolean v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->Initialized:Z

    .line 130
    iput-boolean v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->TryToPay:Z

    .line 93
    iget-object v6, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$1;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    invoke-virtual {p0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->initData()V

    .line 110
    return-void
.end method

.method public static Exit()V
    .locals 1

    .prologue
    .line 499
    sget-object v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->_context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 500
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 502
    return-void
.end method

.method static synthetic access$0(Lcom/netmego/miguyouxisdk/AnySDK_Manager;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->_context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/netmego/miguyouxisdk/AnySDK_Manager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->TryToPay:Z

    return-void
.end method

.method static synthetic access$4(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->TryToPayItem:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->_singletonAnysdk:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    return-object v0
.end method

.method private static getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "name"
    .parameter "type"

    .prologue
    .line 299
    sget-object v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->_context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->_context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static initSingleton(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netmego/miguyouxisdk/AnySDK_Manager;
    .locals 1
    .parameter "context"
    .parameter "appKey"
    .parameter "appSecret"
    .parameter "privateKey"
    .parameter "oauthLogin"

    .prologue
    .line 121
    sput-object p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->_context:Landroid/app/Activity;

    .line 123
    sget-object v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->_singletonAnysdk:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->_singletonAnysdk:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    .line 127
    :cond_0
    sget-object v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->_singletonAnysdk:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    return-object v0
.end method


# virtual methods
.method public ChoosePayMode(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, payMode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Landroid/widget/LinearLayout;

    sget-object v6, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->_context:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->myLayout:Landroid/widget/LinearLayout;

    .line 272
    new-instance v3, Lcom/netmego/miguyouxisdk/AnySDK_Manager$5;

    invoke-direct {v3, p0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$5;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)V

    .line 279
    .local v3, onclick:Landroid/view/View$OnClickListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 288
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->_context:Landroid/app/Activity;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    .local v1, dialog02:Landroid/app/AlertDialog$Builder;
    sget-object v5, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->myLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 290
    const-string v5, "UI PAY"

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 295
    return-void

    .line 280
    .end local v1           #dialog02:Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/widget/Button;

    sget-object v5, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->_context:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, button:Landroid/widget/Button;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "Channel"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, res:Ljava/lang/String;
    const-string v5, "string"

    invoke-static {v4, v5}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 283
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 285
    sget-object v5, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->myLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public doScreenShotShare(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 212
    return-void
.end method

.method public exitGame(Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 190
    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->Initialized:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKUser;->getInstance()Lcom/anysdk/framework/java/AnySDKUser;

    move-result-object v0

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/anysdk/framework/java/AnySDKUser;->isSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKUser;->getInstance()Lcom/anysdk/framework/java/AnySDKUser;

    move-result-object v0

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/anysdk/framework/java/AnySDKUser;->callFunction(Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method initAnySDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "appKey"
    .parameter "appSecret"
    .parameter "privateKey"
    .parameter "oauthLoginServer"

    .prologue
    const/4 v6, 0x1

    .line 74
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Brandon : InitAnySDK - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/anysdk/framework/java/AnySDK;->getInstance()Lcom/anysdk/framework/java/AnySDK;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/anysdk/framework/java/AnySDK;->getInstance()Lcom/anysdk/framework/java/AnySDK;

    move-result-object v0

    sget-object v1, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->_context:Landroid/app/Activity;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/anysdk/framework/java/AnySDK;->initPluginSystem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKUser;->getInstance()Lcom/anysdk/framework/java/AnySDKUser;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/anysdk/framework/java/AnySDKUser;->setDebugMode(Z)V

    .line 79
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKPush;->getInstance()Lcom/anysdk/framework/java/AnySDKPush;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/anysdk/framework/java/AnySDKPush;->setDebugMode(Z)V

    .line 80
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAnalytics;->getInstance()Lcom/anysdk/framework/java/AnySDKAnalytics;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/anysdk/framework/java/AnySDKAnalytics;->setDebugMode(Z)V

    .line 81
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAds;->getInstance()Lcom/anysdk/framework/java/AnySDKAds;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/anysdk/framework/java/AnySDKAds;->setDebugMode(Z)V

    .line 82
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKShare;->getInstance()Lcom/anysdk/framework/java/AnySDKShare;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/anysdk/framework/java/AnySDKShare;->setDebugMode(Z)V

    .line 83
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKSocial;->getInstance()Lcom/anysdk/framework/java/AnySDKSocial;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/anysdk/framework/java/AnySDKSocial;->setDebugMode(Z)V

    .line 84
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKIAP;->getInstance()Lcom/anysdk/framework/java/AnySDKIAP;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/anysdk/framework/java/AnySDKIAP;->setDebugMode(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->setListener()V

    .line 88
    iput-boolean v6, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->Initialized:Z

    .line 89
    return-void
.end method

.method public initData()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mShareInfo:Ljava/util/Map;

    .line 57
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mShareInfo:Ljava/util/Map;

    const-string v1, "title"

    const-string v2, "ShareSDK???\u8a1d\u3087\ucaa5\u4e5f\ub252\uc26aSDK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mShareInfo:Ljava/util/Map;

    const-string v1, "titleUrl"

    const-string v2, "http://sharesdk.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mShareInfo:Ljava/util/Map;

    const-string v1, "site"

    const-string v2, "ShareSDK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mShareInfo:Ljava/util/Map;

    const-string v1, "siteUrl"

    const-string v2, "http://sharesdk.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mShareInfo:Ljava/util/Map;

    const-string v1, "text"

    const-string v2, "ShareSDK?\ub177\ub2c7\u96c5\ub17a??\ube9b\u0080\uaceb\ubd71?\uace9\ucae9\u5b43?\uc5d0?\uaceb\ubf2d\u5f79\u3085\uc49c?\uc2e5\u0080\uacee\ub04d\u6eab?\uc49c?\uc2e9\ucdac\u9e7d\uc58c\ubca1\uf977\ub151\ub8ff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mShareInfo:Ljava/util/Map;

    const-string v1, "comment"

    const-string v2, "??"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mArchInfo:Ljava/util/Map;

    .line 65
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mArchInfo:Ljava/util/Map;

    const-string v1, "rank"

    const-string v2, "friends"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mTagInfo:Ljava/util/ArrayList;

    .line 68
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mTagInfo:Ljava/util/ArrayList;

    const-string v1, "easy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mTagInfo:Ljava/util/ArrayList;

    const-string v1, "fast"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public isMusicEnabled()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V
    .locals 7
    .parameter "context"
    .parameter "smsPayItem"
    .parameter "ext_code"
    .parameter "props"
    .parameter "Money"
    .parameter "listener"
    .parameter "isRepeated"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->TryToPay:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    const-string v1, "Already payment process..."

    invoke-interface {v0, p2, v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseCanceld(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->TryToPay:Z

    .line 143
    iput-object p2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->TryToPayItem:Ljava/lang/String;

    .line 145
    iput-object p6, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    .line 147
    iget-object v6, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setListener()V
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKUser;->getInstance()Lcom/anysdk/framework/java/AnySDKUser;

    move-result-object v0

    new-instance v1, Lcom/netmego/miguyouxisdk/AnySDK_Manager$6;

    invoke-direct {v1, p0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$6;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)V

    invoke-virtual {v0, v1}, Lcom/anysdk/framework/java/AnySDKUser;->setListener(Lcom/anysdk/framework/java/AnySDKListener;)V

    .line 352
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKIAP;->getInstance()Lcom/anysdk/framework/java/AnySDKIAP;

    move-result-object v0

    new-instance v1, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;

    invoke-direct {v1, p0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$7;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)V

    invoke-virtual {v0, v1}, Lcom/anysdk/framework/java/AnySDKIAP;->setListener(Lcom/anysdk/framework/java/AnySDKListener;)V

    .line 405
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAds;->getInstance()Lcom/anysdk/framework/java/AnySDKAds;

    move-result-object v0

    new-instance v1, Lcom/netmego/miguyouxisdk/AnySDK_Manager$8;

    invoke-direct {v1, p0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$8;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)V

    invoke-virtual {v0, v1}, Lcom/anysdk/framework/java/AnySDKAds;->setListener(Lcom/anysdk/framework/java/AnySDKListener;)V

    .line 431
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKShare;->getInstance()Lcom/anysdk/framework/java/AnySDKShare;

    move-result-object v0

    new-instance v1, Lcom/netmego/miguyouxisdk/AnySDK_Manager$9;

    invoke-direct {v1, p0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$9;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)V

    invoke-virtual {v0, v1}, Lcom/anysdk/framework/java/AnySDKShare;->setListener(Lcom/anysdk/framework/java/AnySDKListener;)V

    .line 453
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKSocial;->getInstance()Lcom/anysdk/framework/java/AnySDKSocial;

    move-result-object v0

    new-instance v1, Lcom/netmego/miguyouxisdk/AnySDK_Manager$10;

    invoke-direct {v1, p0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$10;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)V

    invoke-virtual {v0, v1}, Lcom/anysdk/framework/java/AnySDKSocial;->setListener(Lcom/anysdk/framework/java/AnySDKListener;)V

    .line 481
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKPush;->getInstance()Lcom/anysdk/framework/java/AnySDKPush;

    move-result-object v0

    new-instance v1, Lcom/netmego/miguyouxisdk/AnySDK_Manager$11;

    invoke-direct {v1, p0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$11;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)V

    invoke-virtual {v0, v1}, Lcom/anysdk/framework/java/AnySDKPush;->setListener(Lcom/anysdk/framework/java/AnySDKListener;)V

    .line 496
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 215
    move-object v0, p2

    .line 216
    .local v0, curMsg:Ljava/lang/String;
    move-object v1, p1

    .line 218
    .local v1, curTitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/netmego/miguyouxisdk/AnySDK_Manager$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$3;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    return-void
.end method

.method public showTipDialog()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netmego/miguyouxisdk/AnySDK_Manager$4;

    invoke-direct {v1, p0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$4;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method

.method public viewMoreGames(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 202
    return-void
.end method
