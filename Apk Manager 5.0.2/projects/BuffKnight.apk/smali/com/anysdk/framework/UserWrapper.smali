.class public Lcom/anysdk/framework/UserWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_RET_ACCOUNTSWITCH_FAIL:I = 0x10

.field public static final ACTION_RET_ACCOUNTSWITCH_SUCCESS:I = 0xf

.field public static final ACTION_RET_ANTIADDICTIONQUERY:I = 0xd

.field public static final ACTION_RET_EXIT_PAGE:I = 0xc

.field public static final ACTION_RET_INIT_FAIL:I = 0x1

.field public static final ACTION_RET_INIT_SUCCESS:I = 0x0

.field public static final ACTION_RET_LOGIN_CANCEL:I = 0x6

.field public static final ACTION_RET_LOGIN_FAIL:I = 0x5

.field public static final ACTION_RET_LOGIN_NO_NEED:I = 0x4

.field public static final ACTION_RET_LOGIN_SUCCESS:I = 0x2

.field public static final ACTION_RET_LOGIN_TIMEOUT:I = 0x3

.field public static final ACTION_RET_LOGOUT_FAIL:I = 0x8

.field public static final ACTION_RET_LOGOUT_SUCCESS:I = 0x7

.field public static final ACTION_RET_PAUSE_PAGE:I = 0xb

.field public static final ACTION_RET_PLATFORM_BACK:I = 0xa

.field public static final ACTION_RET_PLATFORM_ENTER:I = 0x9

.field public static final ACTION_RET_REALNAMEREGISTER:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/anysdk/framework/UserWrapper;->nativeOnActionResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getAccessToken(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V
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

    invoke-static {p0, p1, p2}, Lcom/anysdk/Util/g;->a(Landroid/content/Context;Ljava/util/Hashtable;Lcom/anysdk/Util/SdkHttpListener;)V

    return-void
.end method

.method public static native getLoginServerId()Ljava/lang/String;
.end method

.method private static native nativeOnActionResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static onActionResult(Lcom/anysdk/framework/InterfaceUser;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/UserWrapper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anysdk/framework/UserWrapper$1;-><init>(Lcom/anysdk/framework/InterfaceUser;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
