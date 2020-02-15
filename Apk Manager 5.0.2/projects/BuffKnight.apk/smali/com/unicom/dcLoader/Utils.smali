.class public Lcom/unicom/dcLoader/Utils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/dcLoader/Utils$SimType;,
        Lcom/unicom/dcLoader/Utils$loaderTask;,
        Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;
    }
.end annotation


# static fields
.field public static final CALLED_ERROR:I = -0x2

.field public static final CANCEL:I = 0x3

.field public static final CANCEL_CHANGECODE:I = 0x1d

.field public static final CANCEL_CHINAMOBILE:I = 0x1f

.field public static final CANCEL_FIRSTPAGE:I = 0x1a

.field public static final CANCEL_OTHERPAYPAGE:I = 0x1c

.field public static final CANCEL_VACPAYPAGE:I = 0x1b

.field public static final CANCEL_VACYZM:I = 0x1e

.field public static final DX_SMS_SEND:I = 0xd

.field public static final FAILED:I = 0x2

.field public static final INITED:I = -0x1

.field public static final INIT_FIALD:I = 0x18a92

.field public static final INIT_ING:I = 0x18a93

.field public static final KEY_LASTUPDATETIME:Ljava/lang/String; = "sdk_lastupdatetime"

.field public static final KEY_LOADPATH:Ljava/lang/String; = "sdk_loadpath"

.field public static final KEY_REALOAD:Ljava/lang/String; = "sdk_reinit"

.field public static final LOAD:Ljava/lang/String; = "sdk_load_info"

.field public static final MONTH_SEND:I = 0xb

.field public static final SMS_SEND:I = 0x5

.field public static final SUBCOMMIT_SZF:I = 0x18

.field public static final SUBCOMMIT_VAC:I = 0x14

.field public static final SUBCOMMIT_WEBALIPAY:I = 0x16

.field public static final SUCCESS:I = 0x1

.field public static final SUCCESS_EXCHANGECODE:I = 0x19

.field public static final SUCCESS_KALIPAY:I = 0x17

.field public static final SUCCESS_SMS:I = 0x15

.field public static final UNMONTH_SEND:I = 0xc

.field public static final VAC_SEND:I = 0x8

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static d:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

.field private static h:Lcom/unicom/dcLoader/Utils;

.field private static s:Z


# instance fields
.field private e:Landroid/content/Context;

.field private f:I

.field private g:I

.field private i:Lcom/unicom/dcLoader/SubUtils;

.field private j:Ljava/util/Timer;

.field private k:I

.field private l:[I

.field private m:[I

.field private n:[I

.field private o:Lcom/unicom/dcLoader/Utils$loaderTask;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private t:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unicom/dcLoader/Utils;->s:Z

    const-string v0, "0"

    sput-object v0, Lcom/unicom/dcLoader/Utils;->a:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/unicom/dcLoader/Utils;->b:Ljava/lang/String;

    const-string v0, "2"

    sput-object v0, Lcom/unicom/dcLoader/Utils;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/unicom/dcLoader/Utils;->f:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->j:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unicom/dcLoader/Utils;->k:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->r:Ljava/lang/String;

    new-instance v0, Lcom/unicom/dcLoader/Utils$7;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unicom/dcLoader/Utils$7;-><init>(Lcom/unicom/dcLoader/Utils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->t:Landroid/os/Handler;

    new-instance v0, Lcom/unicom/dcLoader/SubUtils;

    invoke-direct {v0}, Lcom/unicom/dcLoader/SubUtils;-><init>()V

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->i:Lcom/unicom/dcLoader/SubUtils;

    return-void
.end method

.method static synthetic a(Lcom/unicom/dcLoader/Utils;I)I
    .locals 0

    iput p1, p0, Lcom/unicom/dcLoader/Utils;->f:I

    return p1
.end method

.method static synthetic a(Lcom/unicom/dcLoader/Utils;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;
    .locals 1

    sget-object v0, Lcom/unicom/dcLoader/Utils;->d:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "sdk_load_info"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 5

    :try_start_0
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->i:Lcom/unicom/dcLoader/SubUtils;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils;->t:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, v1}, Lcom/unicom/dcLoader/SubUtils;->i(Landroid/content/Context;ILandroid/os/Handler;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/unicom/dcLoader/Utils;->d:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    const-string v1, ""

    const/4 v2, -0x2

    const/4 v3, -0x2

    const-string v4, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;->PayResult(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "sdk_load_info"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unicom/dcLoader/Utils;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-class v1, Lcom/unicom/dcLoader/Utils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Service not config"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v3, "com.unicom.wostore.unipay.paysecurity.SecurityServiceFramework"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v1, Lcom/unicom/dcLoader/Utils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Service name error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".unicom.wostore.unipay.securityserviceframework"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const-class v1, Lcom/unicom/dcLoader/Utils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Service action error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/unicom/dcLoader/Utils;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils;->m:[I

    return-object p1
.end method

.method static synthetic b(Lcom/unicom/dcLoader/Utils;)I
    .locals 1

    iget v0, p0, Lcom/unicom/dcLoader/Utils;->g:I

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unicom/dcLoader/Utils;->k:I

    new-instance v0, Lcom/unicom/dcLoader/Utils$loaderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unicom/dcLoader/Utils$loaderTask;-><init>(Lcom/unicom/dcLoader/Utils;Lcom/unicom/dcLoader/Utils$1;)V

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->o:Lcom/unicom/dcLoader/Utils$loaderTask;

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->j:Ljava/util/Timer;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils;->o:Lcom/unicom/dcLoader/Utils$loaderTask;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    invoke-static {}, Lcom/unicom/dcLoader/DynProcessUtil;->getProcessIdList()[I

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->l:[I

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->l:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->l:[I

    :cond_0
    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->i:Lcom/unicom/dcLoader/SubUtils;

    invoke-virtual {v0, p1}, Lcom/unicom/dcLoader/SubUtils;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/unicom/dcLoader/Utils;->f:I

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->o:Lcom/unicom/dcLoader/Utils$loaderTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->o:Lcom/unicom/dcLoader/Utils$loaderTask;

    invoke-virtual {v0}, Lcom/unicom/dcLoader/Utils$loaderTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unicom/dcLoader/Utils;->o:Lcom/unicom/dcLoader/Utils$loaderTask;

    :cond_1
    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->t:Landroid/os/Handler;

    new-instance v1, Lcom/unicom/dcLoader/Utils$6;

    invoke-direct {v1, p0, p1}, Lcom/unicom/dcLoader/Utils$6;-><init>(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/unicom/dcLoader/Utils;->s:Z

    return v0
.end method

.method static synthetic b(Lcom/unicom/dcLoader/Utils;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils;->n:[I

    return-object p1
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    const-string v1, "sdk_loadpath"

    invoke-direct {p0, v0, v1}, Lcom/unicom/dcLoader/Utils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x86/libunicomsdk.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "armeabi/libunicomsdk.jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "classes.jar"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    const-string v1, "sdk_loadpath"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/unicom/dcLoader/Utils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/unicom/dcLoader/Utils;)[I
    .locals 1

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->m:[I

    return-object v0
.end method

.method static synthetic d(Lcom/unicom/dcLoader/Utils;)[I
    .locals 1

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->l:[I

    return-object v0
.end method

.method static synthetic e(Lcom/unicom/dcLoader/Utils;)[I
    .locals 1

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->n:[I

    return-object v0
.end method

.method static synthetic f(Lcom/unicom/dcLoader/Utils;)I
    .locals 1

    iget v0, p0, Lcom/unicom/dcLoader/Utils;->k:I

    return v0
.end method

.method static synthetic g(Lcom/unicom/dcLoader/Utils;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstances()Lcom/unicom/dcLoader/Utils;
    .locals 1

    sget-object v0, Lcom/unicom/dcLoader/Utils;->h:Lcom/unicom/dcLoader/Utils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unicom/dcLoader/Utils;

    invoke-direct {v0}, Lcom/unicom/dcLoader/Utils;-><init>()V

    sput-object v0, Lcom/unicom/dcLoader/Utils;->h:Lcom/unicom/dcLoader/Utils;

    :cond_0
    sget-object v0, Lcom/unicom/dcLoader/Utils;->h:Lcom/unicom/dcLoader/Utils;

    return-object v0
.end method

.method static synthetic h(Lcom/unicom/dcLoader/Utils;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/unicom/dcLoader/Utils;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->q:Ljava/lang/String;

    return-object v0
.end method

.method private initDotSO(I)I
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, -0x1

    :try_start_0
    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v0, "xyf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpu_abi:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mips"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_1

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "mips"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v4, v3

    move v1, v3

    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_7

    aget-object v6, v0, v4

    const-string v7, "libdecrypt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "mips64"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "mips64"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "x86"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_3

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "x86_64"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_4

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "armeabi-v7a"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_5

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "arm64-v8a"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_6

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.ulibs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_8
    const/16 v1, 0x400

    new-array v1, v1, [B

    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "decrypt.so"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_9
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const-string v0, "mips"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_a

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v5, "mips/libdecrypt.jar"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_3
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v9, :cond_10

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    :goto_4
    return v2

    :cond_a
    :try_start_1
    const-string v0, "mips64"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_b

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v5, "mips64/libdecrypt.jar"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :cond_b
    const-string v0, "x86"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_c

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v5, "x86/libdecrypt.jar"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :cond_c
    const-string v0, "x86_64"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_d

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v5, "x86_64/libdecrypt.jar"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :cond_d
    const-string v0, "armeabi-v7a"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_e

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v5, "armeabi-v7a/libdecrypt.jar"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :cond_e
    const-string v0, "arm64-v8a"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_f

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v5, "arm64-v8a/libdecrypt.jar"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v5, "armeabi/libdecrypt.jar"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.ulibs/decrypt.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_11
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.ulibs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_12
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/16 v4, 0x400

    new-array v4, v4, [B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "libunicomsdk.so"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :goto_5
    invoke-direct {p0}, Lcom/unicom/dcLoader/Utils;->c()V

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    const-string v6, "sdk_loadpath"

    invoke-direct {p0, v0, v6}, Lcom/unicom/dcLoader/Utils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "xyf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ABI:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "mips"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_14

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "mips/libunicomsdk.jar"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    :goto_6
    if-nez v0, :cond_1f

    move v2, v3

    goto/16 :goto_4

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v2, v3

    goto/16 :goto_4

    :cond_13
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    goto/16 :goto_4

    :cond_14
    :try_start_6
    const-string v0, "mips64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_15

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "mips64/libunicomsdk.jar"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_6

    :cond_15
    const-string v0, "x86"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_16

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "x86/libunicomsdk.jar"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_6

    :cond_16
    const-string v0, "x86_64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_17

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "x86_64/libunicomsdk.jar"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_6

    :cond_17
    const-string v0, "arm64-v8a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_18

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "arm64-v8a/libunicomsdk.jar"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_6

    :cond_18
    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "armeabi/libunicomsdk.jar"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_6

    :cond_19
    const-string v0, "mips"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_1a

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "mips/libunicomsdk.jar"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1a
    const-string v0, "mips64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_1b

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "mips64/libunicomsdk.jar"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1b
    const-string v0, "x86"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_1c

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "x86/libunicomsdk.jar"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1c
    const-string v0, "x86_64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_1d

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "x86_64/libunicomsdk.jar"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1d
    const-string v0, "arm64-v8a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_1e

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "arm64-v8a/libunicomsdk.jar"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1e
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "armeabi/libunicomsdk.jar"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1f
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_7
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, v9, :cond_20

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_7

    :cond_20
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.ulibs/libunicomsdk.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4
.end method

.method private payA(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->i:Lcom/unicom/dcLoader/SubUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unicom/dcLoader/SubUtils;->payA(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, "SDK\u6ca1\u6709\u521d\u59cb\u5316"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public MoreGame(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->i:Lcom/unicom/dcLoader/SubUtils;

    invoke-virtual {v0, p1}, Lcom/unicom/dcLoader/SubUtils;->m(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimType(Landroid/content/Context;)Lcom/unicom/dcLoader/Utils$SimType;
    .locals 2

    const/4 v1, 0x1

    :try_start_0
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->f:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->i:Lcom/unicom/dcLoader/SubUtils;

    invoke-virtual {v0, p1}, Lcom/unicom/dcLoader/SubUtils;->simtype(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/unicom/dcLoader/Utils$SimType;->chinaunicom:Lcom/unicom/dcLoader/Utils$SimType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/unicom/dcLoader/Utils$SimType;->chinatele:Lcom/unicom/dcLoader/Utils$SimType;

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/unicom/dcLoader/Utils$SimType;->chinamobile:Lcom/unicom/dcLoader/Utils$SimType;

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/unicom/dcLoader/Utils$SimType;->unknow:Lcom/unicom/dcLoader/Utils$SimType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/unicom/dcLoader/Utils$SimType;->error:Lcom/unicom/dcLoader/Utils$SimType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    sget-object v0, Lcom/unicom/dcLoader/Utils$SimType;->error:Lcom/unicom/dcLoader/Utils$SimType;

    goto :goto_0
.end method

.method public initSDK(Landroid/content/Context;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, -0x2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils;->e:Landroid/content/Context;

    iput v0, p0, Lcom/unicom/dcLoader/Utils;->g:I

    sput-object p2, Lcom/unicom/dcLoader/Utils;->d:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->t:Landroid/os/Handler;

    new-instance v1, Lcom/unicom/dcLoader/Utils$1;

    invoke-direct {v1, p0}, Lcom/unicom/dcLoader/Utils$1;-><init>(Lcom/unicom/dcLoader/Utils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->t:Landroid/os/Handler;

    new-instance v1, Lcom/unicom/dcLoader/Utils$2;

    invoke-direct {v1, p0}, Lcom/unicom/dcLoader/Utils$2;-><init>(Lcom/unicom/dcLoader/Utils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/unicom/dcLoader/Utils;->d:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    const-string v1, ""

    const-string v2, "android version is too low"

    invoke-interface {v0, v1, v4, v4, v2}, Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;->PayResult(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    move v2, v0

    :goto_1
    :try_start_0
    array-length v4, v3

    if-ge v2, v4, :cond_4

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "callApplicationOnCreate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.unicom.dcLoader"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    move v0, v1

    :cond_4
    if-nez v0, :cond_6

    const-class v0, Lcom/unicom/dcLoader/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "----->called from error place"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-class v0, Lcom/unicom/dcLoader/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "----->called from error place"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->f:I

    if-ne v0, v1, :cond_7

    const-class v0, Lcom/unicom/dcLoader/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "----->SDK has inited"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->t:Landroid/os/Handler;

    new-instance v1, Lcom/unicom/dcLoader/Utils$3;

    invoke-direct {v1, p0, p1}, Lcom/unicom/dcLoader/Utils$3;-><init>(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    :try_start_1
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->g:I

    invoke-direct {p0, v0}, Lcom/unicom/dcLoader/Utils;->initDotSO(I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->t:Landroid/os/Handler;

    new-instance v1, Lcom/unicom/dcLoader/Utils$4;

    invoke-direct {v1, p0}, Lcom/unicom/dcLoader/Utils$4;-><init>(Lcom/unicom/dcLoader/Utils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    :try_start_2
    new-instance v0, Lcom/unicom/dcLoader/Utils$5;

    invoke-direct {v0, p0, p1}, Lcom/unicom/dcLoader/Utils$5;-><init>(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/unicom/dcLoader/Utils$5;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public isInit()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/unicom/dcLoader/Utils;->f:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->i:Lcom/unicom/dcLoader/SubUtils;

    invoke-virtual {v0, p1}, Lcom/unicom/dcLoader/SubUtils;->onPause(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->i:Lcom/unicom/dcLoader/SubUtils;

    invoke-virtual {v0, p1}, Lcom/unicom/dcLoader/SubUtils;->onResume(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V
    .locals 4

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-class v0, Lcom/unicom/dcLoader/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pay parameter error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sput-object p3, Lcom/unicom/dcLoader/Utils;->d:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    iput-object p2, p0, Lcom/unicom/dcLoader/Utils;->p:Ljava/lang/String;

    sput-boolean v1, Lcom/unicom/dcLoader/Utils;->s:Z

    :try_start_0
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->f:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->i:Lcom/unicom/dcLoader/SubUtils;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils;->t:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/unicom/dcLoader/SubUtils;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, ""

    const/4 v1, 0x2

    const/4 v2, 0x2

    const-string v3, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-interface {p3, v0, v1, v2, v3}, Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;->PayResult(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V
    .locals 4

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const-class v0, Lcom/unicom/dcLoader/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pay parameter error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sput-object p4, Lcom/unicom/dcLoader/Utils;->d:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    iput-object p2, p0, Lcom/unicom/dcLoader/Utils;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/unicom/dcLoader/Utils;->r:Ljava/lang/String;

    sput-boolean v1, Lcom/unicom/dcLoader/Utils;->s:Z

    :try_start_0
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->f:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->i:Lcom/unicom/dcLoader/SubUtils;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils;->t:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/unicom/dcLoader/SubUtils;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, ""

    const/4 v1, 0x2

    const/4 v2, 0x2

    const-string v3, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-interface {p4, v0, v1, v2, v3}, Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;->PayResult(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public payOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V
    .locals 6

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const-class v0, Lcom/unicom/dcLoader/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payOnline parameter error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sput-object p5, Lcom/unicom/dcLoader/Utils;->d:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    iput-object p2, p0, Lcom/unicom/dcLoader/Utils;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/unicom/dcLoader/Utils;->q:Ljava/lang/String;

    iput-object p4, p0, Lcom/unicom/dcLoader/Utils;->r:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unicom/dcLoader/Utils;->s:Z

    :try_start_0
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->i:Lcom/unicom/dcLoader/SubUtils;

    iget-object v5, p0, Lcom/unicom/dcLoader/Utils;->t:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/unicom/dcLoader/SubUtils;->payOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, ""

    const/4 v1, 0x2

    const/4 v2, 0x2

    const-string v3, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-interface {p5, v0, v1, v2, v3}, Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;->PayResult(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public payOnlineWithWostre(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V
    .locals 6

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const-class v0, Lcom/unicom/dcLoader/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payOnlineWithWostre parameter error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sput-object p5, Lcom/unicom/dcLoader/Utils;->d:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    iput-object p2, p0, Lcom/unicom/dcLoader/Utils;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/unicom/dcLoader/Utils;->q:Ljava/lang/String;

    iput-object p4, p0, Lcom/unicom/dcLoader/Utils;->r:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unicom/dcLoader/Utils;->s:Z

    :try_start_0
    iget v0, p0, Lcom/unicom/dcLoader/Utils;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils;->i:Lcom/unicom/dcLoader/SubUtils;

    iget-object v5, p0, Lcom/unicom/dcLoader/Utils;->t:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/unicom/dcLoader/SubUtils;->payOnlineWithWostre(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, ""

    const/4 v1, 0x2

    const/4 v2, 0x2

    const-string v3, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-interface {p5, v0, v1, v2, v3}, Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;->PayResult(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
