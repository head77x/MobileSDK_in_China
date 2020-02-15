.class public Lcn/egame/terminal/paysdk/EgamePay;
.super Ljava/lang/Object;


# static fields
.field public static final PAY_PARAMS_KEY_CP_PARAMS:Ljava/lang/String; = "cpParams"

.field public static final PAY_PARAMS_KEY_PRIORITY:Ljava/lang/String; = "priority"

.field public static final PAY_PARAMS_KEY_TOOLS_ALIAS:Ljava/lang/String; = "toolsAlias"

.field public static final PAY_PARAMS_KEY_TOOLS_DESC:Ljava/lang/String; = "toolsDesc"

.field public static final PAY_PARAMS_KEY_TOOLS_PRICE:Ljava/lang/String; = "toolsPrice"

.field protected static sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

.field private static sInitStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    const/4 v0, 0x0

    sput v0, Lcn/egame/terminal/paysdk/EgamePay;->sInitStatus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcn/egame/terminal/paysdk/EgamePayInterface;
    .locals 1

    invoke-static {p0}, Lcn/egame/terminal/paysdk/EgamePay;->getInstance(Landroid/content/Context;)Lcn/egame/terminal/paysdk/EgamePayInterface;

    move-result-object v0

    return-object v0
.end method

.method public static exit(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    invoke-interface {v0, p0}, Lcn/egame/terminal/paysdk/EgamePayInterface;->exit(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    :cond_0
    return-void
.end method

.method private static getInstance(Landroid/content/Context;)Lcn/egame/terminal/paysdk/EgamePayInterface;
    .locals 3

    sget-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    if-nez v0, :cond_1

    const-class v1, Lcn/egame/terminal/paysdk/EgamePay;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/egame/terminal/paysdk/jni/EgamePayProtocol;->init(Landroid/content/Context;)Lcn/egame/terminal/paysdk/jni/ProtocolMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcn/egame/terminal/paysdk/jni/ProtocolMessage;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcn/egame/terminal/paysdk/jni/ProtocolMessage;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/egame/terminal/paysdk/EgamePayInterface;

    sput-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    return-object v0

    :cond_2
    :try_start_1
    iget v0, v0, Lcn/egame/terminal/paysdk/jni/ProtocolMessage;->arg1:I

    sput v0, Lcn/egame/terminal/paysdk/EgamePay;->sInitStatus:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcn/egame/terminal/paysdk/EgamePay$1;

    const-string v1, "pay_sdk_init"

    invoke-direct {v0, v1, p0}, Lcn/egame/terminal/paysdk/EgamePay$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/egame/terminal/paysdk/EgamePay$1;->start()V

    return-void
.end method

.method public static pay(Landroid/content/Context;Ljava/util/Map;Lcn/egame/terminal/paysdk/EgamePayListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/egame/terminal/paysdk/EgamePayListener;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    invoke-interface {v0, p0, p1, p2}, Lcn/egame/terminal/paysdk/EgamePayInterface;->pay(Landroid/content/Context;Ljava/util/Map;Lcn/egame/terminal/paysdk/EgamePayListener;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init error initStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/egame/terminal/paysdk/EgamePay;->sInitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget v0, Lcn/egame/terminal/paysdk/EgamePay;->sInitStatus:I

    if-eqz v0, :cond_1

    sget v0, Lcn/egame/terminal/paysdk/EgamePay;->sInitStatus:I

    invoke-interface {p2, p1, v0}, Lcn/egame/terminal/paysdk/EgamePayListener;->payFailed(Ljava/util/Map;I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    invoke-interface {p2, p1, v0}, Lcn/egame/terminal/paysdk/EgamePayListener;->payFailed(Ljava/util/Map;I)V

    goto :goto_0
.end method
