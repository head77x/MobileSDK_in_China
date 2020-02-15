.class public final Lcn/egame/terminal/sdk/log/n;
.super Ljava/lang/ThreadGroup;


# static fields
.field private static c:Lcn/egame/terminal/sdk/log/n;


# instance fields
.field private a:Z

.field private b:Ljava/util/LinkedList;

.field private d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/egame/terminal/sdk/log/n;->c:Lcn/egame/terminal/sdk/log/n;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "TubeThreadPool"

    invoke-direct {p0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcn/egame/terminal/sdk/log/n;->a:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/n;->b:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/n;->d:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcn/egame/terminal/sdk/log/n;->setDaemon(Z)V

    :goto_0
    if-lt v0, p1, :cond_0

    const-string v0, "TubeThreadPool"

    const-string v1, "TubeThreadPool is working!"

    invoke-static {v0, v1}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcn/egame/terminal/sdk/log/o;

    invoke-direct {v1, p0, v0}, Lcn/egame/terminal/sdk/log/o;-><init>(Lcn/egame/terminal/sdk/log/n;I)V

    iget-object v2, p0, Lcn/egame/terminal/sdk/log/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcn/egame/terminal/sdk/log/o;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(I)Lcn/egame/terminal/sdk/log/n;
    .locals 1

    new-instance v0, Lcn/egame/terminal/sdk/log/n;

    invoke-direct {v0, p0}, Lcn/egame/terminal/sdk/log/n;-><init>(I)V

    return-object v0
.end method

.method static synthetic a(Lcn/egame/terminal/sdk/log/n;I)Ljava/lang/Runnable;
    .locals 1

    invoke-direct {p0, p1}, Lcn/egame/terminal/sdk/log/n;->b(I)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b(I)Ljava/lang/Runnable;
    .locals 1

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcn/egame/terminal/sdk/log/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcn/egame/terminal/sdk/log/n;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
