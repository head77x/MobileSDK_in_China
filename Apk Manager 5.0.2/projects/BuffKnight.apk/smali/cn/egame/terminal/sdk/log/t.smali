.class public Lcn/egame/terminal/sdk/log/t;
.super Ljava/lang/Object;


# instance fields
.field public a:[B

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/t;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcn/egame/terminal/sdk/log/t;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcn/egame/terminal/sdk/log/t;->b:I

    invoke-static {}, Lcn/egame/terminal/sdk/log/s;->c()Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/egame/terminal/sdk/log/s;->c()Ljava/util/LinkedList;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-static {}, Lcn/egame/terminal/sdk/log/s;->d()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcn/egame/terminal/sdk/log/s;->c()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
