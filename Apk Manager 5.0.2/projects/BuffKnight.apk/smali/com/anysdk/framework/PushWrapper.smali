.class public Lcom/anysdk/framework/PushWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_RET_RECEIVEMESSAGE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/anysdk/framework/PushWrapper;->nativeOnActionResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static native nativeOnActionResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static onActionResult(Lcom/anysdk/framework/InterfacePush;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/PushWrapper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anysdk/framework/PushWrapper$1;-><init>(Lcom/anysdk/framework/InterfacePush;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
