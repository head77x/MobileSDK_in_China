.class public Lmm/purchasesdk/core/utils/LogUtil;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static final DEBUG_LEVEL:I = 0x0

.field public static final ERROR_LEVEL:I = 0x2

.field protected static final LOG_ON:Z = true

.field public static LOG_ON_LEVEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field public static final WARN_LEVEL:I = 0x1


# instance fields
.field private object:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/core/utils/LogUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/utils/LogUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lmm/purchasesdk/core/utils/LogUtil;->LOG_ON_LEVEL:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmm/purchasesdk/core/utils/LogUtil;->object:Ljava/lang/Object;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lmm/purchasesdk/core/utils/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lmm/purchasesdk/core/utils/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lmm/purchasesdk/core/utils/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lmm/purchasesdk/core/utils/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static printLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget v0, Lmm/purchasesdk/core/utils/LogUtil;->LOG_ON_LEVEL:I

    if-ge p0, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/utils/LogWatcher;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/utils/LogWatcher;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/utils/LogWatcher;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/utils/LogWatcher;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget v0, Lmm/purchasesdk/core/utils/LogUtil;->LOG_ON_LEVEL:I

    if-ge p0, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/utils/LogWatcher;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/utils/LogWatcher;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/utils/LogWatcher;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/utils/LogWatcher;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static readDebugConfig()V
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/InAppBillingLibrary/IAPConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    if-eqz v2, :cond_1

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sput v5, Lmm/purchasesdk/core/utils/LogUtil;->LOG_ON_LEVEL:I

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sput v5, Lmm/purchasesdk/core/utils/LogUtil;->LOG_ON_LEVEL:I

    goto :goto_1

    :catch_1
    move-exception v0

    sput v5, Lmm/purchasesdk/core/utils/LogUtil;->LOG_ON_LEVEL:I

    goto :goto_1

    :cond_2
    sput v5, Lmm/purchasesdk/core/utils/LogUtil;->LOG_ON_LEVEL:I

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    sput v0, Lmm/purchasesdk/core/utils/LogUtil;->LOG_ON_LEVEL:I

    goto :goto_1

    :pswitch_1
    sput v5, Lmm/purchasesdk/core/utils/LogUtil;->LOG_ON_LEVEL:I

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x2

    sput v0, Lmm/purchasesdk/core/utils/LogUtil;->LOG_ON_LEVEL:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lmm/purchasesdk/core/utils/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lmm/purchasesdk/core/utils/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "PurchaseListener"

    invoke-static {v1, v2, v0}, Lmm/purchasesdk/core/utils/LogUtil;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/utils/LogUtil;->object:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
