.class public Lcom/qy/pay/network/connect/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qy/pay/network/connect/a$a;
    }
.end annotation


# static fields
.field private static c:Lcom/qy/pay/network/connect/a;


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/qy/pay/network/d/e;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qy/pay/network/d/e;

    invoke-direct {v0}, Lcom/qy/pay/network/d/e;-><init>()V

    iput-object v0, p0, Lcom/qy/pay/network/connect/a;->b:Lcom/qy/pay/network/d/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qy/pay/network/connect/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Lcom/qy/pay/network/connect/a;->b()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/qy/pay/network/connect/a;
    .locals 2

    const-class v1, Lcom/qy/pay/network/connect/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qy/pay/network/connect/a;->c:Lcom/qy/pay/network/connect/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qy/pay/network/connect/a;

    invoke-direct {v0}, Lcom/qy/pay/network/connect/a;-><init>()V

    sput-object v0, Lcom/qy/pay/network/connect/a;->c:Lcom/qy/pay/network/connect/a;

    :cond_0
    sget-object v0, Lcom/qy/pay/network/connect/a;->c:Lcom/qy/pay/network/connect/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/Object;)Lcom/qy/pay/network/d/d;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/qy/pay/network/d/a;->a(Ljava/lang/Object;)Lcom/qy/pay/network/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qy/pay/network/d/i;->c()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "can\'t get message code"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lcom/qy/pay/network/d/d;

    invoke-direct {v2}, Lcom/qy/pay/network/d/d;-><init>()V

    new-instance v3, Lcom/qy/pay/network/d/f;

    invoke-direct {v3}, Lcom/qy/pay/network/d/f;-><init>()V

    iput-object v3, v2, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    iget-object v3, v2, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    iput-byte v7, v3, Lcom/qy/pay/network/d/f;->a:B

    iget-object v3, v2, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    iput v6, v3, Lcom/qy/pay/network/d/f;->b:I

    iget-object v3, v2, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/qy/pay/network/d/f;->e:J

    iget-object v3, v2, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/qy/pay/network/d/f;->f:J

    iget-object v1, v2, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    iput-byte v7, v1, Lcom/qy/pay/network/d/f;->c:B

    iget-object v1, v2, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    iput-short v6, v1, Lcom/qy/pay/network/d/f;->d:S

    iget-object v1, v2, Lcom/qy/pay/network/d/d;->a:Lcom/qy/pay/network/d/f;

    invoke-interface {v0}, Lcom/qy/pay/network/d/i;->c()I

    move-result v0

    iput v0, v1, Lcom/qy/pay/network/d/f;->g:I

    iput-object p1, v2, Lcom/qy/pay/network/d/d;->b:Ljava/lang/Object;

    return-object v2
.end method

.method static synthetic a(Lcom/qy/pay/network/connect/a;)Lcom/qy/pay/network/d/e;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/network/connect/a;->b:Lcom/qy/pay/network/d/e;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/qy/pay/network/b/e;Ljava/lang/Object;Lcom/qy/pay/network/a/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/qy/pay/network/connect/a;->a(Ljava/lang/Object;)Lcom/qy/pay/network/d/d;

    move-result-object v0

    new-instance v1, Lcom/qy/pay/network/connect/a$a;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/qy/pay/network/connect/a$a;-><init>(Lcom/qy/pay/network/connect/a;Lcom/qy/pay/network/b/e;Lcom/qy/pay/network/d/d;Lcom/qy/pay/network/a/a;)V

    iget-object v0, p0, Lcom/qy/pay/network/connect/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/Throwable;)V

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/qy/pay/network/a/a;->a(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/network/connect/a;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qy/pay/network/connect/a;->a:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method
