.class public Lmm/purchasesdk/iapservice/BillingLayoutActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static a:Lmm/purchasesdk/iapservice/BillingLayoutActivity;


# instance fields
.field private mBound:Ljava/lang/Boolean;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mIPAServiceAction:Ljava/lang/String;

.field private mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

.field private mMessengerFromService:Landroid/os/Messenger;

.field private mMessengerToService:Landroid/os/Messenger;

.field private mPurchaseCore:Lmm/purchasesdk/core/IPurchase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ap BillingLayoutActivity"

    sput-object v0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "com.aspire.purchaseservice.BIND"

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mIPAServiceAction:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mBound:Ljava/lang/Boolean;

    new-instance v0, Lmm/purchasesdk/iapservice/a;

    invoke-direct {v0, p0}, Lmm/purchasesdk/iapservice/a;-><init>(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)V

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mMessengerFromService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mMessengerFromService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mBound:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Lmm/purchasesdk/core/IPurchase;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Lmm/purchasesdk/core/IPurchase;)Lmm/purchasesdk/core/IPurchase;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    return-object p1
.end method

.method private a()V
    .locals 9

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {p0, v0}, Lmm/purchasesdk/fingerprint/IdentifyApp;->load(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/IPurchase;

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_1

    sget-object v0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u52a8\u6001\u52a0\u8f7d\u5931\u8d25\u8fd4\u56denull"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getPaycode()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getOrderCount()I

    move-result v3

    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->getUserData()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;->ismNextCycle()Z

    move-result v5

    iget-object v6, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v7, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mMessengerFromService:Landroid/os/Messenger;

    iget-object v8, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mMessengerToService:Landroid/os/Messenger;

    move-object v1, p0

    invoke-interface/range {v0 .. v8}, Lmm/purchasesdk/core/IPurchase;->service_order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/core/protocol/MessengerInfo;Landroid/os/Messenger;Landroid/os/Messenger;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    sget-object v0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u52a8\u6001\u52a0\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)V
    .locals 0

    invoke-direct {p0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a()V

    return-void
.end method

.method static synthetic b(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mMessengerToService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mMessengerToService:Landroid/os/Messenger;

    return-object p1
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mBound:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mBound:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "BillingLayoutActivity"

    const-string v1, "activity has unbinded!!!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mBound:Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mBound:Ljava/lang/Boolean;

    throw v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p2}, Lmm/purchasesdk/core/IPurchase;->onActivityResultSendMessage(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lmm/purchasesdk/core/utils/LogUtil;->readDebugConfig()V

    const/high16 v2, -0x7800

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->setContentView(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-virtual {p0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-direct {v1}, Lmm/purchasesdk/core/protocol/MessengerInfo;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mInfo:Lmm/purchasesdk/core/protocol/MessengerInfo;

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/protocol/MessengerInfo;->readBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {p0, v0}, Lmm/purchasesdk/fingerprint/IdentifyApp;->load(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/IPurchase;

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_1

    sget-object v0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u52a8\u6001\u52a0\u8f7d\u5931\u8d25\u8fd4\u56denull"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p0}, Lmm/purchasesdk/core/IPurchase;->showProgressDialog(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->bind(Landroid/content/Context;)V

    return-void

    :cond_1
    sget-object v0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u52a8\u6001\u52a0\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-direct {p0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->b()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
