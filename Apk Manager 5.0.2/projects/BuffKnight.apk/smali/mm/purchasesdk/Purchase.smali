.class public Lmm/purchasesdk/Purchase;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static mLocked:Ljava/lang/Boolean;

.field private static mPackageName:Ljava/lang/String;

.field private static mPurchase:Lmm/purchasesdk/Purchase;

.field private static mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

.field private static mRamNum:Ljava/lang/String;


# instance fields
.field private mAppID:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mBound:Ljava/lang/Boolean;

.field private mConnection:Landroid/content/ServiceConnection;

.field public mContext:Landroid/content/Context;

.field private mCurAction:I

.field private mFramework:Lsafiap/framework/sdk/SAFFramework;

.field private mFrameworkListener:Lmm/purchasesdk/d;

.field private mHandler:Landroid/os/Handler;

.field public mIPAPackageName:Ljava/lang/String;

.field public mIPAServiceAction:Ljava/lang/String;

.field private mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

.field private mListener:Lmm/purchasesdk/OnPurchaseListener;

.field private mMessengerFromService:Landroid/os/Messenger;

.field private mMessengerToService:Landroid/os/Messenger;

.field private mNextCycle:Z

.field private mPaycode:Ljava/lang/String;

.field private mReturnData:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    const-class v0, Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mBound:Ljava/lang/Boolean;

    iput-object v1, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    const-string v0, "ipa.ability"

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mIPAPackageName:Ljava/lang/String;

    const-string v0, "com.aspire.purchaseservice.BIND"

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mIPAServiceAction:Ljava/lang/String;

    iput-object v1, p0, Lmm/purchasesdk/Purchase;->mAppkey:Ljava/lang/String;

    iput-object v1, p0, Lmm/purchasesdk/Purchase;->mAppID:Ljava/lang/String;

    new-instance v0, Lmm/purchasesdk/b;

    invoke-direct {v0, p0}, Lmm/purchasesdk/b;-><init>(Lmm/purchasesdk/Purchase;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmm/purchasesdk/c;

    invoke-direct {v0, p0}, Lmm/purchasesdk/c;-><init>(Lmm/purchasesdk/Purchase;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/protocol/MessengerInfo;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    return-object v0
.end method

.method static synthetic access$002(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/protocol/MessengerInfo;)Lmm/purchasesdk/core/protocol/MessengerInfo;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    return-object p1
.end method

.method static synthetic access$100()Lmm/purchasesdk/core/IPurchase;
    .locals 1

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    return-object v0
.end method

.method static synthetic access$1002(Lmm/purchasesdk/Purchase;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mMessengerToService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1100(Lmm/purchasesdk/Purchase;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/OnPurchaseListener;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    return-object v0
.end method

.method static synthetic access$300(Lmm/purchasesdk/Purchase;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lmm/purchasesdk/Purchase;->orders2w(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)V

    return-void
.end method

.method static synthetic access$400(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/Purchase;->bill(Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    return-void
.end method

.method static synthetic access$500(Lmm/purchasesdk/Purchase;I)Lmm/purchasesdk/core/protocol/MessengerInfo;
    .locals 1

    invoke-direct {p0, p1}, Lmm/purchasesdk/Purchase;->createInfo(I)Lmm/purchasesdk/core/protocol/MessengerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lmm/purchasesdk/Purchase;)I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/Purchase;->mCurAction:I

    return v0
.end method

.method static synthetic access$802(Lmm/purchasesdk/Purchase;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mMessengerFromService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$902(Lmm/purchasesdk/Purchase;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mBound:Ljava/lang/Boolean;

    return-object p1
.end method

.method private bill(Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lmm/purchasesdk/Purchase;->sendMessage(Lmm/purchasesdk/core/protocol/MessengerInfo;I)V

    return-void
.end method

.method private checkAuth(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getAuthstr()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p1}, Lmm/purchasesdk/core/IPurchase;->readImsi(Landroid/content/Context;)V

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getCopyrightCert()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getOrderID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lmm/purchasesdk/core/IPurchase;->checkAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/core/protocol/MessengerInfo;)I

    move-result v0

    invoke-static {v0}, Lmm/purchasesdk/core/PurchaseCode;->setStatusCode(I)V

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method private checkService(Landroid/content/Context;Landroid/os/Handler;Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 2

    invoke-virtual {p3}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getProgramID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmm/purchasesdk/sdk/i;

    invoke-direct {v0, p1, p2}, Lmm/purchasesdk/sdk/i;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lmm/purchasesdk/sdk/i;->start()V

    :cond_0
    return-void
.end method

.method private createInfo(I)Lmm/purchasesdk/core/protocol/MessengerInfo;
    .locals 7

    const/4 v5, 0x1

    const/4 v0, 0x0

    sget-object v1, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInfo reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    if-nez v1, :cond_0

    new-instance v1, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    :cond_0
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    if-eqz v1, :cond_c

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getChannelID()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getProgramID()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getCopyrightCert()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_1
    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    iget-object v4, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-interface {v0, v3, v4}, Lmm/purchasesdk/core/IPurchase;->loadCopyright(Landroid/content/Context;Lmm/purchasesdk/core/protocol/MessengerInfo;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setResult(I)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    :goto_1
    return-object v0

    :cond_2
    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    const-string v4, "Cert"

    invoke-interface {v0, v4}, Lmm/purchasesdk/core/IPurchase;->getCopyrightInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v4, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setCopyrightCert(Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    :cond_4
    sget-object v1, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    const-string v4, "ProgramID"

    invoke-interface {v1, v4}, Lmm/purchasesdk/core/IPurchase;->getCopyrightInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v4, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setProgramID(Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v4}, Lmm/purchasesdk/core/protocol/MessengerInfo;->isPaycodeStyle()I

    move-result v4

    if-ne v5, v4, :cond_8

    const/4 v4, 0x2

    if-ne p1, v4, :cond_8

    iget-object v4, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-static {v3, v4}, Lmm/purchasesdk/sdk/a;->a(Landroid/content/Context;Lmm/purchasesdk/core/protocol/MessengerInfo;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mInfo.getChannelID() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v6}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getChannelID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_6

    invoke-static {}, Lmm/purchasesdk/core/PurchaseCode;->getStatusCode()I

    move-result v3

    sget-object v4, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAuth retcode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v4, v3}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPurchasecode(I)V

    :cond_6
    :goto_2
    iget-object v3, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-static {}, Lmm/purchasesdk/fingerprint/IdentifyApp;->SHA1Digest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setClasseSha1(Ljava/lang/String;)V

    iget-object v3, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v3, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setChannelID(Ljava/lang/String;)V

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setCopyrightCert(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getProgramID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getProgramID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getProgramID()Ljava/lang/String;

    move-result-object v1

    :cond_7
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setProgramID(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    sget-object v1, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setTimeStamp(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {p0, v0}, Lmm/purchasesdk/Purchase;->setTaskID(Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    goto/16 :goto_1

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_b

    :cond_9
    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-static {v3, v2}, Lmm/purchasesdk/sdk/a;->a(Landroid/content/Context;Lmm/purchasesdk/core/protocol/MessengerInfo;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    const/16 v0, 0xc8

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setResult(I)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    goto/16 :goto_1

    :cond_a
    iget-object v3, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v3, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setChannelID(Ljava/lang/String;)V

    :cond_b
    iget-object v3, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v3}, Lmm/purchasesdk/core/protocol/MessengerInfo;->isPaycodeStyle()I

    move-result v3

    if-eq v5, v3, :cond_6

    sget-object v1, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    const-string v3, "ProgramID"

    invoke-interface {v1, v3}, Lmm/purchasesdk/core/IPurchase;->getCopyrightInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v3, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setProgramID(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_0
.end method

.method private dyQuest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dyQuestion-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmm/purchasesdk/core/IPurchase;->SetIsNeedDyquestion(Z)V

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p1, p2, p3}, Lmm/purchasesdk/core/IPurchase;->getDyQuestion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmm/purchasesdk/core/IPurchase;->SetIsNeedDyquestion(Z)V

    goto :goto_0
.end method

.method public static getDescription(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lmm/purchasesdk/core/PurchaseCode;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lmm/purchasesdk/Purchase;
    .locals 4

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchase:Lmm/purchasesdk/Purchase;

    if-nez v0, :cond_0

    new-instance v0, Lmm/purchasesdk/Purchase;

    invoke-direct {v0}, Lmm/purchasesdk/Purchase;-><init>()V

    sput-object v0, Lmm/purchasesdk/Purchase;->mPurchase:Lmm/purchasesdk/Purchase;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mRamNum:Ljava/lang/String;

    :cond_0
    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchase:Lmm/purchasesdk/Purchase;

    return-object v0
.end method

.method private static getPurchseCore(Landroid/content/Context;)Lmm/purchasesdk/core/IPurchase;
    .locals 1

    invoke-static {p0}, Lmm/purchasesdk/fingerprint/IdentifyApp;->getPurchseCore(Landroid/content/Context;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    return-object v0
.end method

.method public static getReason(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lmm/purchasesdk/core/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private orders2w(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)V
    .locals 2

    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "enter orders2w"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, p3}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setOrderCount(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmm/purchasesdk/Purchase;->createInfo(I)Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lmm/purchasesdk/Purchase;->sendMessage(Lmm/purchasesdk/core/protocol/MessengerInfo;I)V

    return-void
.end method

.method private setTaskID(Lmm/purchasesdk/core/protocol/MessengerInfo;)V
    .locals 3

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setTaskID(Ljava/lang/String;)V

    const-string v0, "Purchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTaskID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mIPAServiceAction:Ljava/lang/String;

    sget-object v1, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".purchaseservice.BIND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start service, mPackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmm/purchasesdk/Purchase;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ret= true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ret = false"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mIPAServiceAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mIPAServiceAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret= true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mIPAServiceAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret= false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearCache(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public enableCache(Z)V
    .locals 1

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p1}, Lmm/purchasesdk/core/IPurchase;->enableCache(Z)V

    return-void
.end method

.method public getCurAction()I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/Purchase;->mCurAction:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p1}, Lmm/purchasesdk/core/IPurchase;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_0

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getPurchseCore(Landroid/content/Context;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    :cond_0
    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_1

    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "load class failture!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "load class failture!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "load class succ!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    if-nez v0, :cond_2

    new-instance v0, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    :cond_2
    if-eqz p1, :cond_3

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5df2\u6709\u652f\u4ed8\u8bf7\u6c42\u6b63\u5728\u53d1\u9001"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-nez p2, :cond_6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput-object p2, p0, Lmm/purchasesdk/Purchase;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mAppID:Ljava/lang/String;

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mAppkey:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lmm/purchasesdk/core/IPurchase;->checkEnvironment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "appid or appkey is null!!!! "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :try_start_0
    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "init try file iapsplash.dat"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iapSplash.dat"

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput v4, p0, Lmm/purchasesdk/Purchase;->mCurAction:I

    invoke-direct {p0, v3}, Lmm/purchasesdk/Purchase;->createInfo(I)Lmm/purchasesdk/core/protocol/MessengerInfo;

    const-string v0, "init MessengerInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "init time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {p0, v0}, Lmm/purchasesdk/Purchase;->setTaskID(Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    invoke-virtual {p0, p1}, Lmm/purchasesdk/Purchase;->bind(Landroid/content/Context;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "init catch file iapsplash.dat"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lmm/purchasesdk/core/IPurchase;->showSplashDialog(Landroid/content/Context;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    const-string v0, "iapSplash.dat"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    const-string v1, "000"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_0

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getPurchseCore(Landroid/content/Context;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    :cond_0
    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_1

    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "load class failture!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "load class failture!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "load class succ!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    if-nez v0, :cond_2

    new-instance v0, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    :goto_0
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    sget-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5df2\u6709\u652f\u4ed8\u8bf7\u6c42\u6b63\u5728\u53d1\u9001"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v6, 0x0

    :goto_1
    return-object v6

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    if-nez p6, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object p6, p0, Lmm/purchasesdk/Purchase;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error! Paycode is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPaycode(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-static {p1}, Lmm/purchasesdk/sdk/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setApksignture(Ljava/lang/String;)V

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setAppType(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, p7}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setAppUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, p8}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setRefleshUrl(Ljava/lang/String;)V

    :goto_2
    if-gtz p3, :cond_9

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "orderCout must be greater than 0 "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setAppType(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, p3}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setOrderCount(I)V

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getAppID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v3}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPaycode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmm/purchasesdk/core/IPurchase;->checkPayCodeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPaycodeStyle(I)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setOrderCount(I)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPurchasecode(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmm/purchasesdk/Purchase;->createInfo(I)Lmm/purchasesdk/core/protocol/MessengerInfo;

    :goto_3
    sget-object v1, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paycodetpye = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->isPaycodeStyle()I

    move-result v0

    sget-object v1, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paycodeStyle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_10

    if-eqz p4, :cond_a

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1, p4}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setUserData(Ljava/lang/String;)V

    :cond_a
    :goto_4
    sget-object v1, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mAppID:Ljava/lang/String;

    iget-object v3, p0, Lmm/purchasesdk/Purchase;->mAppkey:Ljava/lang/String;

    invoke-interface {v1, p1, v2, v3, v0}, Lmm/purchasesdk/core/IPurchase;->checkEnvironment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v2, 0x1

    if-ne v2, v0, :cond_b

    const/16 v0, 0x451

    if-ne v1, v0, :cond_b

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPurchasecode(I)V

    :cond_b
    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEnvironment retcode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    sget v1, Lmm/purchasesdk/core/utils/LogUtil;->LOG_ON_LEVEL:I

    invoke-interface {v0, p1, v1}, Lmm/purchasesdk/core/IPurchase;->init(Landroid/content/Context;I)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-static {}, Lmm/purchasesdk/fingerprint/IdentifyApp;->SHA1Digest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setApkSHA(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-static {}, Lmm/purchasesdk/fingerprint/IdentifyApp;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setApkPKI(Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lmm/purchasesdk/Purchase;->mCurAction:I

    new-instance v0, Lsafiap/framework/sdk/SAFFramework;

    invoke-direct {v0, p1}, Lsafiap/framework/sdk/SAFFramework;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->isPaycodeStyle()I

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_14

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lmm/purchasesdk/core/IPurchase;->generateTransactionID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_5
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, v6}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setTradeID(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, p5}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setNextCycle(Z)V

    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "order mInfo.getPurchasecode() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPurchasecode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lmm/purchasesdk/a;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v5, p0, v0}, Lmm/purchasesdk/a;-><init>(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    new-instance v0, Lmm/purchasesdk/d;

    iget-object v4, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p6

    invoke-direct/range {v0 .. v5}, Lmm/purchasesdk/d;-><init>(Landroid/content/Context;Lmm/purchasesdk/Purchase;Lmm/purchasesdk/OnPurchaseListener;Lsafiap/framework/sdk/SAFFramework;Lmm/purchasesdk/a;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mFrameworkListener:Lmm/purchasesdk/d;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v0, :cond_13

    sget-boolean v0, Lmm/purchasesdk/d;->a:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mFrameworkListener:Lmm/purchasesdk/d;

    const-string v2, "test"

    invoke-virtual {v0, v1, v2}, Lsafiap/framework/sdk/SAFFramework;->init(Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;Ljava/lang/String;)V

    :goto_6
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {p0, p1, v0, v1}, Lmm/purchasesdk/Purchase;->checkService(Landroid/content/Context;Landroid/os/Handler;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    goto/16 :goto_1

    :cond_c
    if-nez v0, :cond_d

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPaycodeStyle(I)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1, p3}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setOrderCount(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmm/purchasesdk/Purchase;->createInfo(I)Lmm/purchasesdk/core/protocol/MessengerInfo;

    goto/16 :goto_3

    :cond_d
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmm/purchasesdk/Purchase;->createInfo(I)Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-static {p1, v1}, Lmm/purchasesdk/sdk/a;->a(Landroid/content/Context;Lmm/purchasesdk/core/protocol/MessengerInfo;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v2, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tpaycodetpye = -1 ret ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPaycodeStyle(I)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setOrderCount(I)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPurchasecode(I)V

    goto/16 :goto_3

    :cond_e
    const/16 v1, 0x4b9

    invoke-static {}, Lmm/purchasesdk/core/PurchaseCode;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPaycodeStyle(I)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-static {}, Lmm/purchasesdk/core/PurchaseCode;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPurchasecode(I)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1, p3}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setOrderCount(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmm/purchasesdk/Purchase;->createInfo(I)Lmm/purchasesdk/core/protocol/MessengerInfo;

    goto/16 :goto_3

    :cond_f
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPaycodeStyle(I)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-static {}, Lmm/purchasesdk/core/PurchaseCode;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPurchasecode(I)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setOrderCount(I)V

    goto/16 :goto_3

    :cond_10
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    if-eqz p4, :cond_11

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_11

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data Error! UserData\'s length must be less than 16.You have input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-nez p4, :cond_12

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setUserData(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1, p4}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setUserData(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    invoke-virtual {p0, p1}, Lmm/purchasesdk/Purchase;->bind(Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_14
    move-object v6, v0

    goto/16 :goto_5
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;ILmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;IZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_0

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getPurchseCore(Landroid/content/Context;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    :cond_0
    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_1

    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "load class failture!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "load class failture!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "load class succ!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    if-nez v0, :cond_2

    new-instance v0, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5df2\u6709\u652f\u4ed8\u8bf7\u6c42\u6b63\u5728\u53d1\u9001"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-nez p4, :cond_5

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object p4, p0, Lmm/purchasesdk/Purchase;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error! Paycode is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPaycode(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, p3}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setTradeID(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, v4}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setTradeIDQuery(Z)V

    :goto_1
    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mAppID:Ljava/lang/String;

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mAppkey:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lmm/purchasesdk/core/IPurchase;->checkEnvironment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "appid or appkey is null!!!! "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setTradeID(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, v3}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setTradeIDQuery(Z)V

    goto :goto_1

    :cond_9
    const/4 v0, 0x2

    iput v0, p0, Lmm/purchasesdk/Purchase;->mCurAction:I

    new-instance v0, Lsafiap/framework/sdk/SAFFramework;

    invoke-direct {v0, p1}, Lsafiap/framework/sdk/SAFFramework;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    invoke-direct {p0, v4}, Lmm/purchasesdk/Purchase;->createInfo(I)Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {p0, v0}, Lmm/purchasesdk/Purchase;->setTaskID(Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    new-instance v5, Lmm/purchasesdk/a;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v5, p0, v0}, Lmm/purchasesdk/a;-><init>(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    new-instance v0, Lmm/purchasesdk/d;

    iget-object v4, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lmm/purchasesdk/d;-><init>(Landroid/content/Context;Lmm/purchasesdk/Purchase;Lmm/purchasesdk/OnPurchaseListener;Lsafiap/framework/sdk/SAFFramework;Lmm/purchasesdk/a;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mFrameworkListener:Lmm/purchasesdk/d;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v0, :cond_a

    sget-boolean v0, Lmm/purchasesdk/d;->a:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mFrameworkListener:Lmm/purchasesdk/d;

    const-string v2, "test"

    invoke-virtual {v0, v1, v2}, Lsafiap/framework/sdk/SAFFramework;->init(Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, p1}, Lmm/purchasesdk/Purchase;->bind(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public query(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lmm/purchasesdk/Purchase;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V

    return-void
.end method

.method public queryPackageName()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->writeToBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mMessengerToService:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mMessengerFromService:Landroid/os/Messenger;

    if-nez v1, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/Purchase;->bind(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mMessengerFromService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "\u53d1\u9001\u6d88\u606f\u5230service\uff1aIPurchase.MSG_PACKAGENAME"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessage(Lmm/purchasesdk/core/protocol/MessengerInfo;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x9

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v5}, Lmm/purchasesdk/fingerprint/IdentifyApp;->IdTokenEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setIDToken(Ljava/lang/String;)V

    :cond_0
    invoke-static {v5, p2, v4, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->writeToBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mMessengerToService:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mMessengerFromService:Landroid/os/Messenger;

    if-nez v1, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/Purchase;->bind(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mMessengerFromService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid app parameter, pls check it"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lmm/purchasesdk/core/utils/LogUtil;->readDebugConfig()V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    if-nez v0, :cond_2

    new-instance v0, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    :cond_2
    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mAppID:Ljava/lang/String;

    iput-object p2, p0, Lmm/purchasesdk/Purchase;->mAppkey:Ljava/lang/String;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, p1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setAppID(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setAppKey(Ljava/lang/String;)V

    return-void
.end method

.method public setCurAction(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/Purchase;->mCurAction:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(II)V
    .locals 1

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p1, p2}, Lmm/purchasesdk/core/IPurchase;->setTimeout(II)V

    return-void
.end method

.method public startOrder(Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".com.mmiap.activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".com.mmiap.activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public unBind()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mBound:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    :cond_1
    sput-boolean v3, Lmm/purchasesdk/d;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mBound:Ljava/lang/Boolean;

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Purchase"

    const-string v2, "unbind failed"

    invoke-static {v1, v2}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    :cond_3
    sput-boolean v3, Lmm/purchasesdk/d;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mBound:Ljava/lang/Boolean;

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v1}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    :cond_4
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_5

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    :cond_5
    sput-boolean v3, Lmm/purchasesdk/d;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/Purchase;->mBound:Ljava/lang/Boolean;

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    throw v0

    :cond_6
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    :cond_7
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_8

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    :cond_8
    sput-boolean v3, Lmm/purchasesdk/d;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mBound:Ljava/lang/Boolean;

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    goto :goto_0
.end method

.method public unsubscribe(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 6

    const/4 v3, 0x0

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_0

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getPurchseCore(Landroid/content/Context;)Lmm/purchasesdk/core/IPurchase;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    :cond_0
    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_1

    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "load class failture!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "load class failture!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "load class succ!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5df2\u6709\u652f\u4ed8\u8bf7\u6c42\u6b63\u5728\u53d1\u9001"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    if-nez p3, :cond_5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object p3, p0, Lmm/purchasesdk/Purchase;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Paycode is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mAppID:Ljava/lang/String;

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->mAppkey:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lmm/purchasesdk/core/IPurchase;->checkEnvironment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "appid or appkey is null!!!! "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v0, p2}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setPaycode(Ljava/lang/String;)V

    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    const/4 v0, 0x4

    iput v0, p0, Lmm/purchasesdk/Purchase;->mCurAction:I

    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lmm/purchasesdk/core/IPurchase;->generateTransactionID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->setTradeID(Ljava/lang/String;)V

    new-instance v0, Lsafiap/framework/sdk/SAFFramework;

    invoke-direct {v0, p1}, Lsafiap/framework/sdk/SAFFramework;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lmm/purchasesdk/Purchase;->createInfo(I)Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {p0, v0}, Lmm/purchasesdk/Purchase;->setTaskID(Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    new-instance v5, Lmm/purchasesdk/a;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v5, p0, v0}, Lmm/purchasesdk/a;-><init>(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/protocol/MessengerInfo;)V

    new-instance v0, Lmm/purchasesdk/d;

    iget-object v4, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lmm/purchasesdk/d;-><init>(Landroid/content/Context;Lmm/purchasesdk/Purchase;Lmm/purchasesdk/OnPurchaseListener;Lsafiap/framework/sdk/SAFFramework;Lmm/purchasesdk/a;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mFrameworkListener:Lmm/purchasesdk/d;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v0, :cond_9

    sget-boolean v0, Lmm/purchasesdk/d;->a:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mFrameworkListener:Lmm/purchasesdk/d;

    const-string v2, "test"

    invoke-virtual {v0, v1, v2}, Lsafiap/framework/sdk/SAFFramework;->init(Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, p1}, Lmm/purchasesdk/Purchase;->bind(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
