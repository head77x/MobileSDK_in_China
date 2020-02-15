.class public Lsafiap/framework/sdk/SAFFramework;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;
    }
.end annotation


# static fields
.field public static final RESULT_CODE_MALICIOUS_PLUGIN:I = -0xc8

.field public static final RESULT_CODE_MANDATORY_UPDATE:I = -0x12c

.field public static final RESULT_CODE_PLUGIN_NOT_EXIST:I = -0x1

.field public static final RESULT_CODE_PLUGIN_OK:I = 0x0

.field public static final RESULT_CODE_PLUGIN_OPTIONAL_UPDATE:I = -0x1f4

.field public static final RESULT_CODE_PLUGIN_TO_INSTALL:I = -0x190

.field public static final RESULT_CODE_SERVICE_EXCEPTION:I = -0x258

.field public static final STATUS_ERROR_WITH_INVALID_CONTEXT:I = 0x4

.field public static final STATUS_INIT_SUCCESS:I = 0x0

.field public static final STATUS_MALICIOUS_SERVICE:I = 0x2

.field public static final STATUS_SERVICE_ALREADY_INITED:I = 0x3

.field public static final STATUS_SERVICE_NOT_INSTALLED:I = 0x1

.field private static a:Lsafiap/framework/util/MyLogger; = null

.field private static final b:Ljava/lang/String; = "IAPSAFFramework"


# instance fields
.field private final c:Ljava/lang/Object;

.field private d:Landroid/content/Context;

.field private e:Lsafiap/framework/sdk/ISAFFramework;

.field private f:Lsafiap/framework/sdk/ISAFFramework;

.field private g:Z

.field private h:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

.field private i:Lsafiap/framework/sdk/PluginInstallListener;

.field private j:Landroid/content/ServiceConnection;

.field private k:Landroid/content/ServiceConnection;

.field private l:Lsafiap/framework/sdk/ISAFFrameworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "SAFFramework"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/SAFFramework;->a:Lsafiap/framework/util/MyLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->c:Ljava/lang/Object;

    .line 82
    iput-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    .line 83
    iput-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    .line 84
    iput-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsafiap/framework/sdk/SAFFramework;->g:Z

    .line 88
    iput-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->i:Lsafiap/framework/sdk/PluginInstallListener;

    .line 103
    new-instance v0, Lsafiap/framework/sdk/SAFFramework$1;

    invoke-direct {v0, p0}, Lsafiap/framework/sdk/SAFFramework$1;-><init>(Lsafiap/framework/sdk/SAFFramework;)V

    iput-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->j:Landroid/content/ServiceConnection;

    .line 128
    new-instance v0, Lsafiap/framework/sdk/SAFFramework$2;

    invoke-direct {v0, p0}, Lsafiap/framework/sdk/SAFFramework$2;-><init>(Lsafiap/framework/sdk/SAFFramework;)V

    iput-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->k:Landroid/content/ServiceConnection;

    .line 155
    new-instance v0, Lsafiap/framework/sdk/SAFFramework$3;

    invoke-direct {v0, p0}, Lsafiap/framework/sdk/SAFFramework$3;-><init>(Lsafiap/framework/sdk/SAFFramework;)V

    iput-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->l:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .line 97
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Service;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic a(Lsafiap/framework/sdk/SAFFramework;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/ISAFFramework;)Lsafiap/framework/sdk/ISAFFramework;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    return-object p1
.end method

.method static synthetic a(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;)Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->h:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v0, :cond_0

    .line 185
    :try_start_0
    sget-object v0, Lsafiap/framework/sdk/SAFFramework;->a:Lsafiap/framework/util/MyLogger;

    const-string v1, "Bind SAF Framework service  ....................."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 186
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    sget-object v1, Lsafiap/framework/util/Constants;->ACTION_CALLER_PKG:Ljava/lang/String;

    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "IAPSAFFramework"

    const-string v2, "SAF-A StatusCode:510001"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lsafiap/framework/sdk/SAFFramework;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsafiap/framework/sdk/SAFFramework;->g:Z

    return v0
.end method

.method static synthetic b(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/ISAFFramework;)Lsafiap/framework/sdk/ISAFFramework;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    return-object p1
.end method

.method static synthetic b(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->h:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    return-object v0
.end method

.method static synthetic c(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->i:Lsafiap/framework/sdk/PluginInstallListener;

    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 423
    if-nez p1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    iget-boolean v1, p0, Lsafiap/framework/sdk/SAFFramework;->g:Z

    if-nez v1, :cond_3

    .line 429
    :try_start_0
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v1, :cond_2

    .line 430
    sget-object v1, Lsafiap/framework/sdk/SAFFramework;->a:Lsafiap/framework/util/MyLogger;

    const-string v2, "Framework service instance is null!"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 435
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A StatusCode:510008"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 433
    :cond_2
    :try_start_1
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1, p1}, Lsafiap/framework/sdk/ISAFFramework;->cancel(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 441
    :cond_3
    :try_start_2
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1, p1}, Lsafiap/framework/sdk/ISAFFramework;->cancel(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_0

    .line 445
    :catch_1
    move-exception v1

    .line 446
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A StatusCode:510008"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelAll()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 460
    iget-boolean v1, p0, Lsafiap/framework/sdk/SAFFramework;->g:Z

    if-nez v1, :cond_2

    .line 462
    :try_start_0
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v1, :cond_1

    .line 463
    sget-object v1, Lsafiap/framework/sdk/SAFFramework;->a:Lsafiap/framework/util/MyLogger;

    const-string v2, "Framework service instance is null!"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 481
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1}, Lsafiap/framework/sdk/ISAFFramework;->cancelAll()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A StatusCode:510009"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 474
    :cond_2
    :try_start_1
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1}, Lsafiap/framework/sdk/ISAFFramework;->cancelAll()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 478
    :catch_1
    move-exception v1

    .line 479
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A StatusCode:510009"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkServiceVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 539
    .line 540
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v1, :cond_0

    .line 542
    :try_start_0
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1}, Lsafiap/framework/sdk/ISAFFramework;->checkServiceVersion()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 550
    :cond_0
    :goto_0
    return v0

    .line 543
    :catch_0
    move-exception v1

    .line 545
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 3

    .prologue
    .line 240
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-boolean v0, p0, Lsafiap/framework/sdk/SAFFramework;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->h:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    .line 251
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 247
    :cond_1
    iget-boolean v0, p0, Lsafiap/framework/sdk/SAFFramework;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->k:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public downloadPlugin(Lsafiap/framework/sdk/PluginInstallListener;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 352
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework;->i:Lsafiap/framework/sdk/PluginInstallListener;

    .line 357
    iget-boolean v0, p0, Lsafiap/framework/sdk/SAFFramework;->g:Z

    if-nez v0, :cond_3

    .line 359
    :try_start_0
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v0, :cond_2

    .line 360
    sget-object v0, Lsafiap/framework/sdk/SAFFramework;->a:Lsafiap/framework/util/MyLogger;

    const-string v1, "Framework service instance is null!"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    const-string v1, "IAPSAFFramework"

    const-string v2, "SAF-A StatusCode:510003"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 363
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->l:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    invoke-interface {v0, v1, p2}, Lsafiap/framework/sdk/ISAFFramework;->downloadPlugin(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 370
    :cond_3
    :try_start_2
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->l:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    invoke-interface {v0, v1, p2}, Lsafiap/framework/sdk/ISAFFramework;->downloadPlugin(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 374
    :catch_1
    move-exception v0

    .line 375
    const-string v1, "IAPSAFFramework"

    const-string v2, "SAF-A StatusCode:510003"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    .line 179
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 180
    return-void
.end method

.method public getFrameworkVersion()I
    .locals 4

    .prologue
    .line 493
    const/4 v0, -0x1

    .line 494
    iget-boolean v1, p0, Lsafiap/framework/sdk/SAFFramework;->g:Z

    if-nez v1, :cond_2

    .line 496
    :try_start_0
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v1, :cond_1

    .line 497
    sget-object v1, Lsafiap/framework/sdk/SAFFramework;->a:Lsafiap/framework/util/MyLogger;

    const-string v2, "Framework service instance is null!"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 518
    :cond_0
    :goto_0
    return v0

    .line 499
    :cond_1
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1}, Lsafiap/framework/sdk/ISAFFramework;->getFrameworkVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v1

    .line 502
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A StatusCode:510010"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 507
    :cond_2
    :try_start_1
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1}, Lsafiap/framework/sdk/ISAFFramework;->getFrameworkVersion()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 511
    :catch_1
    move-exception v1

    .line 512
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A StatusCode:510010"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIAPDedicateActionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 307
    sget-object v1, Lsafiap/framework/sdk/SAFFramework;->a:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Framework SDK: host pkgname = :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 309
    iget-boolean v1, p0, Lsafiap/framework/sdk/SAFFramework;->g:Z

    if-nez v1, :cond_2

    .line 311
    :try_start_0
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v1, :cond_1

    .line 312
    sget-object v1, Lsafiap/framework/sdk/SAFFramework;->a:Lsafiap/framework/util/MyLogger;

    const-string v2, "Framework service instance is null!"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 343
    :cond_0
    :goto_0
    return-object v0

    .line 315
    :cond_1
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1}, Lsafiap/framework/sdk/ISAFFramework;->getIAPDedicateActionName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 316
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 317
    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    .line 323
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A StatusCode:510017"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 328
    :cond_2
    :try_start_1
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1}, Lsafiap/framework/sdk/ISAFFramework;->getIAPDedicateActionName()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 332
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 333
    goto :goto_0

    .line 337
    :catch_1
    move-exception v1

    .line 338
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A StatusCode:510017"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPluginInfo(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/16 v0, -0x258

    .line 267
    if-nez p1, :cond_1

    .line 268
    const/4 v0, -0x1

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    iget-boolean v1, p0, Lsafiap/framework/sdk/SAFFramework;->g:Z

    if-nez v1, :cond_3

    .line 272
    :try_start_0
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v1, :cond_2

    .line 273
    sget-object v1, Lsafiap/framework/sdk/SAFFramework;->a:Lsafiap/framework/util/MyLogger;

    const-string v2, "Framework service instance is null!"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A StatusCode:510002"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 276
    :cond_2
    :try_start_1
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1, p1}, Lsafiap/framework/sdk/ISAFFramework;->getPluginInfo(Ljava/lang/String;)I

    move-result v1

    .line 277
    const-string v2, "zhide"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SAF getPluginInfo result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 278
    goto :goto_0

    .line 286
    :cond_3
    :try_start_2
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1, p1}, Lsafiap/framework/sdk/ISAFFramework;->getPluginInfo(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_0

    .line 290
    :catch_1
    move-exception v1

    .line 291
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A StatusCode:510002"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 212
    if-nez p1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework;->h:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    .line 217
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Service;

    if-nez v0, :cond_3

    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 218
    :cond_2
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->h:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;->onInit(I)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->h:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v0, :cond_4

    .line 223
    sget-object v0, Lsafiap/framework/sdk/SAFFramework;->a:Lsafiap/framework/util/MyLogger;

    const-string v1, "The instance has already been inited!"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->h:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;->onInit(I)V

    goto :goto_0

    .line 228
    :cond_4
    if-eqz p2, :cond_0

    sget-object v0, Lsafiap/framework/util/Constants;->SAF_COMPONENT_TEST_FLAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lsafiap/framework/sdk/SAFFramework;->a:Lsafiap/framework/util/MyLogger;

    const-string v1, "Bind SAF Framework service  ....................."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lsafiap/framework/util/Constants;->ACTION_CALLER_PKG:Ljava/lang/String;

    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->d:Landroid/content/Context;

    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IAPSAFFramework"

    const-string v2, "SAF-A StatusCode:510001"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startCheckUpdate(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 387
    if-nez p1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    sget-object v0, Lsafiap/framework/sdk/SAFFramework;->a:Lsafiap/framework/util/MyLogger;

    const-string v1, "startCheckUpdate ... "

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 391
    iget-boolean v0, p0, Lsafiap/framework/sdk/SAFFramework;->g:Z

    if-nez v0, :cond_3

    .line 393
    :try_start_0
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v0, :cond_2

    .line 394
    sget-object v0, Lsafiap/framework/sdk/SAFFramework;->a:Lsafiap/framework/util/MyLogger;

    const-string v1, "Framework service instance is null!"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    const-string v1, "IAPSAFFramework"

    const-string v2, "SAF-A StatusCode:510006"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 397
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->e:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v0, p1}, Lsafiap/framework/sdk/ISAFFramework;->startCheckUpdate(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 404
    :cond_3
    :try_start_2
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->f:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v0, p1}, Lsafiap/framework/sdk/ISAFFramework;->startCheckUpdate(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 408
    :catch_1
    move-exception v0

    .line 409
    const-string v1, "IAPSAFFramework"

    const-string v2, "SAF-A StatusCode:510006"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
