.class public Lmm/purchasesdk/iapservice/PurchaseService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmm/purchasesdk/iapservice/PurchaseService$a;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static a:Ljava/util/HashMap;

.field private static b:Ljava/util/HashMap;


# instance fields
.field private final a:Landroid/os/Messenger;

.field private b:Landroid/os/Messenger;

.field private c:Landroid/os/Messenger;

.field private k:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPurchaseCore:Lmm/purchasesdk/core/IPurchase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ap PurchaseService"

    sput-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lmm/purchasesdk/iapservice/PurchaseService$a;

    invoke-direct {v1, p0}, Lmm/purchasesdk/iapservice/PurchaseService$a;-><init>(Lmm/purchasesdk/iapservice/PurchaseService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->a:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/PurchaseService;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->b:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/PurchaseService;->c:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/PurchaseService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/PurchaseService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/PurchaseService;)Lmm/purchasesdk/core/IPurchase;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    return-object v0
.end method

.method private a(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPaycode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, p2}, Lmm/purchasesdk/core/IPurchase;->service_unsubscribe(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/iapservice/PurchaseService;->f(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    return-void
.end method

.method static synthetic b(Lmm/purchasesdk/iapservice/PurchaseService;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->a:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/PurchaseService;->b:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic b()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method private b(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 6

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPaycode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTradeID()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lmm/purchasesdk/core/IPurchase;->service_query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/iapservice/PurchaseService;->e(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    return-void
.end method

.method private c(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bill:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    :try_start_0
    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->c:Landroid/os/Messenger;

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->writeToBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->a:Landroid/os/Messenger;

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->c:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->k:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/iapservice/PurchaseService;->c(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private d(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bill:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0xb

    invoke-static {v0, v1, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    :try_start_0
    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->c:Landroid/os/Messenger;

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->writeToBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->a:Landroid/os/Messenger;

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->c:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->k:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/iapservice/PurchaseService;->b(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    return-void
.end method

.method private e(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 3

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/iapservice/PurchaseService;->a(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    return-void
.end method

.method private f(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 3

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p0, p1, p2}, Lmm/purchasesdk/core/IPurchase;->service_init(Landroid/content/Context;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/iapservice/PurchaseService;->d(Landroid/os/Message;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-static {}, Lmm/purchasesdk/core/utils/LogUtil;->readDebugConfig()V

    const-string v0, ""

    invoke-static {p0, v0}, Lmm/purchasesdk/fingerprint/IdentifyApp;->load(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/IPurchase;

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_0

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->TAG:Ljava/lang/String;

    const-string v1, "\u52a8\u6001\u52a0\u8f7d\u5931\u8d25\u8fd4\u56denull"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->a:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->TAG:Ljava/lang/String;

    const-string v1, "\u52a8\u6001\u52a0\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
