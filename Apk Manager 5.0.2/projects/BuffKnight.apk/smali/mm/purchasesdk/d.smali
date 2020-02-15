.class public Lmm/purchasesdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;


# static fields
.field public static a:Z


# instance fields
.field private a:Lmm/purchasesdk/a;

.field private mContext:Landroid/content/Context;

.field private mFramework:Lsafiap/framework/sdk/SAFFramework;

.field private mListener:Lmm/purchasesdk/OnPurchaseListener;

.field private mPurchase:Lmm/purchasesdk/Purchase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lmm/purchasesdk/d;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmm/purchasesdk/Purchase;Lmm/purchasesdk/OnPurchaseListener;Lsafiap/framework/sdk/SAFFramework;Lmm/purchasesdk/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmm/purchasesdk/d;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lmm/purchasesdk/d;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    iput-object p4, p0, Lmm/purchasesdk/d;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    iput-object p5, p0, Lmm/purchasesdk/d;->a:Lmm/purchasesdk/a;

    iput-object p2, p0, Lmm/purchasesdk/d;->mPurchase:Lmm/purchasesdk/Purchase;

    return-void
.end method

.method private a(I)V
    .locals 3

    const/16 v1, 0xdf

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->mLocked:Ljava/lang/Boolean;

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lmm/purchasesdk/d;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0, v1}, Lmm/purchasesdk/OnPurchaseListener;->onInitFinish(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lmm/purchasesdk/d;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    invoke-interface {v0, v1}, Lmm/purchasesdk/OnPurchaseListener;->onInitFinish(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmm/purchasesdk/d;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    const/16 v1, 0x1b3

    invoke-interface {v0, v1, v2}, Lmm/purchasesdk/OnPurchaseListener;->onBillingFinish(ILjava/util/HashMap;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmm/purchasesdk/d;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    const/16 v1, 0x202

    invoke-interface {v0, v1, v2}, Lmm/purchasesdk/OnPurchaseListener;->onQueryFinish(ILjava/util/HashMap;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lmm/purchasesdk/d;->mListener:Lmm/purchasesdk/OnPurchaseListener;

    const/16 v1, 0x1d6

    invoke-interface {v0, v1, v2}, Lmm/purchasesdk/OnPurchaseListener;->onQueryFinish(ILjava/util/HashMap;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onExit()V
    .locals 0

    return-void
.end method

.method public onInit(I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lmm/purchasesdk/d;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->getIAPDedicateActionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAFListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SAFListener override method return packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and set to mPackageName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/d;->mPurchase:Lmm/purchasesdk/Purchase;

    invoke-virtual {v1, v0}, Lmm/purchasesdk/Purchase;->setPackageName(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sput-boolean v8, Lmm/purchasesdk/d;->a:Z

    iget-object v1, p0, Lmm/purchasesdk/d;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmm/purchasesdk/d;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    sget-object v2, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lsafiap/framework/sdk/SAFFramework;->startCheckUpdate(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lmm/purchasesdk/d;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmm/purchasesdk/d;->mPurchase:Lmm/purchasesdk/Purchase;

    invoke-virtual {v2}, Lmm/purchasesdk/Purchase;->getCurAction()I

    move-result v2

    iget-object v3, p0, Lmm/purchasesdk/d;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    sget-object v4, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lsafiap/framework/sdk/SAFFramework;->getPluginInfo(Ljava/lang/String;)I

    move-result v3

    const-string v4, "SAFListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkresult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_1

    const-string v2, "SAFListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/d;->mPurchase:Lmm/purchasesdk/Purchase;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/Purchase;->bind(Landroid/content/Context;)V

    iget-object v0, p0, Lmm/purchasesdk/d;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    goto :goto_0

    :cond_1
    const/16 v0, -0x12c

    if-ne v3, v0, :cond_2

    sput-boolean v7, Lmm/purchasesdk/d;->a:Z

    invoke-direct {p0, v2}, Lmm/purchasesdk/d;->a(I)V

    iget-object v0, p0, Lmm/purchasesdk/d;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    goto :goto_0

    :cond_2
    const/16 v0, -0x1f4

    if-ne v3, v0, :cond_3

    sput-boolean v8, Lmm/purchasesdk/d;->a:Z

    invoke-direct {p0, v2}, Lmm/purchasesdk/d;->a(I)V

    iget-object v0, p0, Lmm/purchasesdk/d;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    goto :goto_0

    :cond_3
    const/16 v0, -0xc8

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/d;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    goto/16 :goto_0

    :cond_4
    const/16 v0, -0x190

    if-ne v3, v0, :cond_5

    sput-boolean v7, Lmm/purchasesdk/d;->a:Z

    invoke-direct {p0, v2}, Lmm/purchasesdk/d;->a(I)V

    iget-object v0, p0, Lmm/purchasesdk/d;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lmm/purchasesdk/d;->mPurchase:Lmm/purchasesdk/Purchase;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/Purchase;->bind(Landroid/content/Context;)V

    iget-object v0, p0, Lmm/purchasesdk/d;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lmm/purchasesdk/d;->mFramework:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
