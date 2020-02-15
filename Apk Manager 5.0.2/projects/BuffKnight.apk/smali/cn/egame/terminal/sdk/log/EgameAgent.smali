.class public Lcn/egame/terminal/sdk/log/EgameAgent;
.super Lcn/egame/terminal/sdk/log/BaseLog;


# static fields
.field private static b:Lcn/egame/terminal/sdk/log/EgameAgent;

.field private static c:J

.field private static d:Ljava/lang/String;

.field private static e:J

.field private static f:J

.field private static g:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcn/egame/terminal/sdk/log/EgameAgent;->b:Lcn/egame/terminal/sdk/log/EgameAgent;

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcn/egame/terminal/sdk/log/EgameAgent;->c:J

    const-string v0, ""

    sput-object v0, Lcn/egame/terminal/sdk/log/EgameAgent;->d:Ljava/lang/String;

    sput-wide v2, Lcn/egame/terminal/sdk/log/EgameAgent;->e:J

    sput-wide v2, Lcn/egame/terminal/sdk/log/EgameAgent;->f:J

    sput-wide v2, Lcn/egame/terminal/sdk/log/EgameAgent;->g:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/egame/terminal/sdk/log/BaseLog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/am;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/egame/terminal/sdk/log/EgameAgent;->c(Landroid/content/Context;Lcn/egame/terminal/sdk/log/am;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/egame/terminal/sdk/log/EgameAgent;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcn/egame/terminal/sdk/log/am;)V
    .locals 2

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/EgameAgent;->c(Landroid/content/Context;)Lcn/egame/terminal/sdk/log/EgameAgent;

    sget-object v0, Lcn/egame/terminal/sdk/log/EgameAgent;->a:Landroid/os/Handler;

    new-instance v1, Lcn/egame/terminal/sdk/log/aa;

    invoke-direct {v1, p0, p1}, Lcn/egame/terminal/sdk/log/aa;-><init>(Landroid/content/Context;Lcn/egame/terminal/sdk/log/am;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/egame/terminal/sdk/log/EgameAgent;->f:J

    sget-wide v0, Lcn/egame/terminal/sdk/log/EgameAgent;->f:J

    invoke-static {p0, v0, v1}, Lcn/egame/terminal/sdk/log/ak;->a(Landroid/content/Context;J)V

    sget-wide v0, Lcn/egame/terminal/sdk/log/EgameAgent;->f:J

    sget-wide v2, Lcn/egame/terminal/sdk/log/EgameAgent;->e:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcn/egame/terminal/sdk/log/EgameAgent;->g:J

    sget-wide v0, Lcn/egame/terminal/sdk/log/EgameAgent;->g:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    sput-wide v4, Lcn/egame/terminal/sdk/log/EgameAgent;->g:J

    :cond_0
    new-instance v0, Lcn/egame/terminal/sdk/log/an;

    invoke-direct {v0}, Lcn/egame/terminal/sdk/log/an;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/egame/terminal/sdk/log/an;->f:Ljava/lang/String;

    sget-object v1, Lcn/egame/terminal/sdk/log/EgameAgent;->d:Ljava/lang/String;

    iput-object v1, v0, Lcn/egame/terminal/sdk/log/an;->a:Ljava/lang/String;

    sget-wide v2, Lcn/egame/terminal/sdk/log/EgameAgent;->e:J

    iput-wide v2, v0, Lcn/egame/terminal/sdk/log/an;->g:J

    sget-wide v2, Lcn/egame/terminal/sdk/log/EgameAgent;->f:J

    iput-wide v2, v0, Lcn/egame/terminal/sdk/log/an;->h:J

    sget-wide v2, Lcn/egame/terminal/sdk/log/EgameAgent;->g:J

    iput-wide v2, v0, Lcn/egame/terminal/sdk/log/an;->i:J

    iput-object p1, v0, Lcn/egame/terminal/sdk/log/an;->b:Ljava/util/Map;

    iput-object p2, v0, Lcn/egame/terminal/sdk/log/an;->c:Ljava/lang/String;

    iput-object p3, v0, Lcn/egame/terminal/sdk/log/an;->d:Ljava/lang/String;

    iput-object p4, v0, Lcn/egame/terminal/sdk/log/an;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/EgameAgent;->a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/al;)V

    return-void
.end method

.method protected static c(Landroid/content/Context;)Lcn/egame/terminal/sdk/log/EgameAgent;
    .locals 2

    sget-object v0, Lcn/egame/terminal/sdk/log/EgameAgent;->b:Lcn/egame/terminal/sdk/log/EgameAgent;

    if-nez v0, :cond_1

    const-class v1, Lcn/egame/terminal/sdk/log/EgameAgent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/egame/terminal/sdk/log/EgameAgent;->b:Lcn/egame/terminal/sdk/log/EgameAgent;

    if-nez v0, :cond_0

    new-instance v0, Lcn/egame/terminal/sdk/log/EgameAgent;

    invoke-direct {v0, p0}, Lcn/egame/terminal/sdk/log/EgameAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/egame/terminal/sdk/log/EgameAgent;->b:Lcn/egame/terminal/sdk/log/EgameAgent;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/egame/terminal/sdk/log/EgameAgent;->b:Lcn/egame/terminal/sdk/log/EgameAgent;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static c(Landroid/content/Context;Lcn/egame/terminal/sdk/log/am;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/egame/terminal/sdk/log/EgameAgent;->a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/al;)V

    return-void
.end method

.method static synthetic d(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/EgameAgent;->e(Landroid/content/Context;)V

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/EgameAgent;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ar;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/EgameAgent;->b(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/egame/terminal/sdk/log/EgameAgent;->e:J

    return-void
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ak;->d(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcn/egame/terminal/sdk/log/EgameAgent;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lcn/egame/terminal/sdk/log/EgameAgent;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcn/egame/terminal/sdk/log/EgameAgent;->g(Landroid/content/Context;)Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "EgameApp"

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/egame/terminal/sdk/log/at;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/sdk/log/EgameAgent;->d:Ljava/lang/String;

    sget-object v0, Lcn/egame/terminal/sdk/log/EgameAgent;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/ak;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v2, v3}, Lcn/egame/terminal/sdk/log/ak;->a(Landroid/content/Context;J)V

    sget-object v0, Lcn/egame/terminal/sdk/log/EgameAgent;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "__cp_uid__"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "__egame_start_event__"

    invoke-static {p0, v1, v0}, Lcn/egame/terminal/sdk/log/EgameAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/egame/terminal/sdk/log/EgameAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcn/egame/terminal/sdk/log/EgameAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcn/egame/terminal/sdk/log/am;

    invoke-direct {v0}, Lcn/egame/terminal/sdk/log/am;-><init>()V

    iput-object p1, v0, Lcn/egame/terminal/sdk/log/am;->f:Ljava/lang/String;

    iput-object p2, v0, Lcn/egame/terminal/sdk/log/am;->b:Ljava/util/Map;

    sget-object v1, Lcn/egame/terminal/sdk/log/EgameAgent;->d:Ljava/lang/String;

    iput-object v1, v0, Lcn/egame/terminal/sdk/log/am;->a:Ljava/lang/String;

    iput-object p3, v0, Lcn/egame/terminal/sdk/log/am;->c:Ljava/lang/String;

    iput-object p4, v0, Lcn/egame/terminal/sdk/log/am;->d:Ljava/lang/String;

    iput-object p5, v0, Lcn/egame/terminal/sdk/log/am;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/EgameAgent;->b(Landroid/content/Context;Lcn/egame/terminal/sdk/log/am;)V

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0, v0}, Lcn/egame/terminal/sdk/log/EgameAgent;->onPause(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onPause(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lcn/egame/terminal/sdk/log/EgameAgent;->onPause(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onPause(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/EgameAgent;->c(Landroid/content/Context;)Lcn/egame/terminal/sdk/log/EgameAgent;

    sget-object v6, Lcn/egame/terminal/sdk/log/EgameAgent;->a:Landroid/os/Handler;

    new-instance v0, Lcn/egame/terminal/sdk/log/z;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/egame/terminal/sdk/log/z;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcn/egame/terminal/sdk/log/EgameAgent;->c(Landroid/content/Context;)Lcn/egame/terminal/sdk/log/EgameAgent;

    sget-object v0, Lcn/egame/terminal/sdk/log/EgameAgent;->a:Landroid/os/Handler;

    new-instance v1, Lcn/egame/terminal/sdk/log/y;

    invoke-direct {v1, p0}, Lcn/egame/terminal/sdk/log/y;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static registerExceptionLog(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/egame/terminal/sdk/log/ac;->a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/ab;)Lcn/egame/terminal/sdk/log/ac;

    return-void
.end method

.method public static setContinueSessionMillis(J)V
    .locals 0

    sput-wide p0, Lcn/egame/terminal/sdk/log/EgameAgent;->c:J

    return-void
.end method
