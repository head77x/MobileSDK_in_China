.class public Lmm/purchasesdk/fingerprint/IdentifyApp;
.super Ljava/lang/Object;


# static fields
.field public static final COMPUTING:I = -0x6

.field public static final DATA_ERROR:I = -0x7

.field public static final FILE_IO:I = -0x3

.field public static final NOT_INITED:I = -0x1

.field public static final NO_ERROR:I = 0x0

.field public static final PARAM_INVALID:I = -0x2

.field public static final SF_NOT_FOUND:I = -0x4

.field private static final TAG:Ljava/lang/String; = "IdentifyApp"

.field public static final THREAD_ERROR:I = -0x5

.field private static mPurchaseCore:Lmm/purchasesdk/core/IPurchase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "identifyapp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lmm/purchasesdk/fingerprint/IdentifyApp;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "IdentifyApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary faile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native IdTokenDecrypt([B)Ljava/lang/String;
.end method

.method public static native IdTokenEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native IdTokenMd5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native IdTokenMd5L([B)Ljava/lang/String;
.end method

.method public static native IdTokenService([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native SHA1Digest()Ljava/lang/String;
.end method

.method public static native SMSOrderContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native base64decode(Ljava/lang/String;)[B
.end method

.method public static native base64encode([B)Ljava/lang/String;
.end method

.method public static native checkResponse([B[B[B)I
.end method

.method public static native checkSignature(Ljava/lang/String;)I
.end method

.method public static native contentEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native decode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native decrypt([BLjava/lang/String;)[B
.end method

.method public static native decryptPapaya(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native deletelib(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native desdecrypt([BLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native desencrypt([BLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native enccontent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native enccontentuicom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encrypt([BLjava/lang/String;)[B
.end method

.method public static native encryptPapaya(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encryptPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static synchronized native declared-synchronized gatherAppSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native generateTransactionID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native generateWeakTransactionID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getAppSignature()Ljava/lang/String;
.end method

.method public static native getAppTrustInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getKeymap()Ljava/lang/String;
.end method

.method public static native getLastError()I
.end method

.method public static getPurchseCore()Lmm/purchasesdk/core/IPurchase;
    .locals 1

    sget-object v0, Lmm/purchasesdk/fingerprint/IdentifyApp;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    return-object v0
.end method

.method public static getPurchseCore(Landroid/content/Context;)Lmm/purchasesdk/core/IPurchase;
    .locals 2

    sget-object v0, Lmm/purchasesdk/fingerprint/IdentifyApp;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {p0, v0}, Lmm/purchasesdk/fingerprint/IdentifyApp;->load(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/IPurchase;

    sput-object v0, Lmm/purchasesdk/fingerprint/IdentifyApp;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    :cond_0
    sget-object v0, Lmm/purchasesdk/fingerprint/IdentifyApp;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_1

    const-string v0, "IdentifyApp"

    const-string v1, "load class failture!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lmm/purchasesdk/fingerprint/IdentifyApp;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    return-object v0

    :cond_1
    const-string v0, "IdentifyApp"

    const-string v1, "load class succ!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static native getSignature()Ljava/lang/String;
.end method

.method public static native getcontent()Ljava/lang/String;
.end method

.method public static native getrandomnum()Ljava/lang/String;
.end method

.method public static native getrid()Ljava/lang/String;
.end method

.method public static native gsmdecode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native gsmencode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native init(Ljava/lang/Object;Ljava/lang/String;I)Z
.end method

.method public static native load(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public static loadClass(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lmm/purchasesdk/core/IPurchase;
    .locals 7

    const/4 v1, 0x0

    const-string v0, ""

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v3, "IdentifyApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "begin loadClass------------------------------------date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    new-instance v4, Ldalvik/system/DexClassLoader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, v5, v0, v1, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_0
    const-string v0, "mm.purchasesdk.core.Purchase"

    invoke-virtual {v4, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/IPurchase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdentifyApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end loadClass------------------------------------date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static native loadlib(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native md5([B)Ljava/lang/String;
.end method

.method public static native plaincontent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native prepareLoad(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
