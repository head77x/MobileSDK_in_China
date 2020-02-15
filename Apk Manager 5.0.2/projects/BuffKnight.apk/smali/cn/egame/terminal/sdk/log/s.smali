.class public Lcn/egame/terminal/sdk/log/s;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/LinkedList;

.field private static final b:Ljava/lang/ref/ReferenceQueue;


# instance fields
.field private c:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/egame/terminal/sdk/log/s;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcn/egame/terminal/sdk/log/s;->b:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/s;->c:Ljava/util/LinkedList;

    return-void
.end method

.method private a(I)Lcn/egame/terminal/sdk/log/t;
    .locals 2

    const/16 v0, 0x2000

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    sget-object v1, Lcn/egame/terminal/sdk/log/s;->a:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcn/egame/terminal/sdk/log/s;->e()V

    sget-object v0, Lcn/egame/terminal/sdk/log/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/egame/terminal/sdk/log/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/egame/terminal/sdk/log/t;

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcn/egame/terminal/sdk/log/t;

    invoke-direct {v0, p1}, Lcn/egame/terminal/sdk/log/t;-><init>(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcn/egame/terminal/sdk/log/s;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    sget-object v0, Lcn/egame/terminal/sdk/log/s;->b:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private e()V
    .locals 2

    :goto_0
    sget-object v0, Lcn/egame/terminal/sdk/log/s;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcn/egame/terminal/sdk/log/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()Lcn/egame/terminal/sdk/log/t;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/egame/terminal/sdk/log/s;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/egame/terminal/sdk/log/s;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/egame/terminal/sdk/log/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([BII)V
    .locals 4

    monitor-enter p0

    :goto_0
    if-gtz p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/egame/terminal/sdk/log/s;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p3}, Lcn/egame/terminal/sdk/log/s;->a(I)Lcn/egame/terminal/sdk/log/t;

    move-result-object v0

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/s;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iget-object v1, v0, Lcn/egame/terminal/sdk/log/t;->a:[B

    array-length v1, v1

    iget v2, v0, Lcn/egame/terminal/sdk/log/t;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcn/egame/terminal/sdk/log/t;->a:[B

    iget v3, v0, Lcn/egame/terminal/sdk/log/t;->b:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Lcn/egame/terminal/sdk/log/t;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lcn/egame/terminal/sdk/log/t;->b:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/egame/terminal/sdk/log/s;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/egame/terminal/sdk/log/t;

    iget v1, v0, Lcn/egame/terminal/sdk/log/t;->b:I

    iget-object v2, v0, Lcn/egame/terminal/sdk/log/t;->a:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p3}, Lcn/egame/terminal/sdk/log/s;->a(I)Lcn/egame/terminal/sdk/log/t;

    move-result-object v0

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/s;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/egame/terminal/sdk/log/s;->c:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/egame/terminal/sdk/log/t;

    iget v0, v0, Lcn/egame/terminal/sdk/log/t;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
