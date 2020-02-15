.class public Lcn/egame/terminal/sdk/log/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcn/egame/terminal/sdk/log/a;


# instance fields
.field private b:Lcn/egame/terminal/sdk/log/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/egame/terminal/sdk/log/b;

    invoke-direct {v0}, Lcn/egame/terminal/sdk/log/b;-><init>()V

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/a;->b:Lcn/egame/terminal/sdk/log/b;

    return-void
.end method

.method public static a()Lcn/egame/terminal/sdk/log/a;
    .locals 2

    sget-object v0, Lcn/egame/terminal/sdk/log/a;->a:Lcn/egame/terminal/sdk/log/a;

    if-nez v0, :cond_1

    const-class v1, Lcn/egame/terminal/sdk/log/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/egame/terminal/sdk/log/a;->a:Lcn/egame/terminal/sdk/log/a;

    if-nez v0, :cond_0

    new-instance v0, Lcn/egame/terminal/sdk/log/a;

    invoke-direct {v0}, Lcn/egame/terminal/sdk/log/a;-><init>()V

    sput-object v0, Lcn/egame/terminal/sdk/log/a;->a:Lcn/egame/terminal/sdk/log/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/egame/terminal/sdk/log/a;->a:Lcn/egame/terminal/sdk/log/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/a;->b:Lcn/egame/terminal/sdk/log/b;

    invoke-virtual {v0, p1, p2}, Lcn/egame/terminal/sdk/log/b;->b(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
