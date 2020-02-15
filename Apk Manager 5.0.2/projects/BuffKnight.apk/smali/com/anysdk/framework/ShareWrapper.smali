.class public Lcom/anysdk/framework/ShareWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final SHARERESULT_CANCEL:I = 0x2

.field public static final SHARERESULT_FAIL:I = 0x1

.field public static final SHARERESULT_NETWORK_ERROR:I = 0x3

.field public static final SHARERESULT_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/anysdk/framework/ShareWrapper;->nativeOnShareResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static native nativeOnShareResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static onShareResult(Lcom/anysdk/framework/InterfaceShare;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/ShareWrapper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anysdk/framework/ShareWrapper$1;-><init>(Lcom/anysdk/framework/InterfaceShare;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
