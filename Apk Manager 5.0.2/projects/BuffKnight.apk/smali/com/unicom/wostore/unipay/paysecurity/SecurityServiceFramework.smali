.class public final Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;
.super Landroid/app/Service;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SecurityService"

    invoke-direct {p0, v0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private stop(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->startForeground(ILandroid/app/Notification;)V

    sget-object v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service onCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/unicom/dcLoader/SubUtils;

    invoke-direct {v0}, Lcom/unicom/dcLoader/SubUtils;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unicom/dcLoader/SubUtils;->getLocalService(Landroid/content/Context;)Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    invoke-virtual {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalService;->onCreate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->TAG:Ljava/lang/String;

    const-string v1, "stop self"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->TAG:Ljava/lang/String;

    const-string v1, "No Local Service found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->TAG:Ljava/lang/String;

    const-string v1, "Service onDestroy."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    invoke-virtual {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalService;->onDestroy(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stop(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/unicom/wostore/unipay/paysecurity/LocalService;->onStartCommand(Landroid/content/Context;Landroid/content/Intent;II)V

    :cond_0
    const/4 v0, 0x2

    return v0
.end method
