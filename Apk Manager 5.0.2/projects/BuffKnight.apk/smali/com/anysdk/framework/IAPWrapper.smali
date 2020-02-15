.class public Lcom/anysdk/framework/IAPWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final PAYRESULT_CANCEL:I = 0x2

.field public static final PAYRESULT_FAIL:I = 0x1

.field public static final PAYRESULT_INIT_FAIL:I = 0x6

.field public static final PAYRESULT_INIT_SUCCESS:I = 0x5

.field public static final PAYRESULT_NETWORK_ERROR:I = 0x3

.field public static final PAYRESULT_NOW_PAYING:I = 0x7

.field public static final PAYRESULT_PRODUCTIONINFOR_INCOMPLETE:I = 0x4

.field public static final PAYRESULT_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/anysdk/framework/IAPWrapper;->nativeOnPayResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getPayOrderId(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/anysdk/Util/SdkHttpListener;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/anysdk/Util/g;->b(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V

    return-void
.end method

.method private static native nativeOnPayResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static onPayResult(Lcom/anysdk/framework/InterfaceIAP;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/IAPWrapper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anysdk/framework/IAPWrapper$1;-><init>(Lcom/anysdk/framework/InterfaceIAP;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
