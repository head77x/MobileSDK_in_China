.class public Lcn/egame/terminal/sdk/log/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcn/egame/terminal/sdk/log/n;

.field private b:Lcn/egame/terminal/sdk/log/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/b;->a:Lcn/egame/terminal/sdk/log/n;

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/b;->b:Lcn/egame/terminal/sdk/log/j;

    return-void
.end method

.method private a(Landroid/os/Looper;Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;Lcn/egame/terminal/sdk/log/q;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v2, v1

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcn/egame/terminal/sdk/log/b;->b:Lcn/egame/terminal/sdk/log/j;

    invoke-static {p2, v1, p3}, Lcn/egame/terminal/sdk/log/e;->a(Ljava/lang/String;Lcn/egame/terminal/sdk/log/j;Lcn/egame/terminal/sdk/log/l;)Lcn/egame/terminal/sdk/log/g;

    move-result-object v3

    invoke-virtual {v3}, Lcn/egame/terminal/sdk/log/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcn/egame/terminal/sdk/log/g;->b()V
    :try_end_0
    .catch Lcn/egame/terminal/sdk/log/p; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p4, :cond_0

    new-instance v1, Lcn/egame/terminal/sdk/log/p;

    const-string v3, "The result is null or empty."

    invoke-direct {v1, v3}, Lcn/egame/terminal/sdk/log/p;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, p4, v1}, Lcn/egame/terminal/sdk/log/b;->a(Landroid/os/Handler;Lcn/egame/terminal/sdk/log/r;Lcn/egame/terminal/sdk/log/p;)V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    if-eqz p4, :cond_0

    invoke-direct {p0, v2, p4, v1}, Lcn/egame/terminal/sdk/log/b;->a(Landroid/os/Handler;Lcn/egame/terminal/sdk/log/r;Lcn/egame/terminal/sdk/log/p;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {p4, v1}, Lcn/egame/terminal/sdk/log/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Lcn/egame/terminal/sdk/log/c;

    invoke-direct {v3, p0, p4, v0}, Lcn/egame/terminal/sdk/log/c;-><init>(Lcn/egame/terminal/sdk/log/b;Lcn/egame/terminal/sdk/log/q;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v3, Lcn/egame/terminal/sdk/log/p;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcn/egame/terminal/sdk/log/p;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p0, v2, p4, v3}, Lcn/egame/terminal/sdk/log/b;->a(Landroid/os/Handler;Lcn/egame/terminal/sdk/log/r;Lcn/egame/terminal/sdk/log/p;)V

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method private a(Landroid/os/Handler;Lcn/egame/terminal/sdk/log/r;Lcn/egame/terminal/sdk/log/p;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcn/egame/terminal/sdk/log/d;

    invoke-direct {v0, p0, p2, p3}, Lcn/egame/terminal/sdk/log/d;-><init>(Lcn/egame/terminal/sdk/log/b;Lcn/egame/terminal/sdk/log/r;Lcn/egame/terminal/sdk/log/p;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/egame/terminal/sdk/log/b;->b(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcn/egame/terminal/sdk/log/j;)V
    .locals 1

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/b;->b:Lcn/egame/terminal/sdk/log/j;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcn/egame/terminal/sdk/log/b;->b:Lcn/egame/terminal/sdk/log/j;

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/b;->b:Lcn/egame/terminal/sdk/log/j;

    iget v0, v0, Lcn/egame/terminal/sdk/log/j;->a:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/b;->b:Lcn/egame/terminal/sdk/log/j;

    iget v0, v0, Lcn/egame/terminal/sdk/log/j;->a:I

    invoke-static {v0}, Lcn/egame/terminal/sdk/log/n;->a(I)Lcn/egame/terminal/sdk/log/n;

    move-result-object v0

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/b;->a:Lcn/egame/terminal/sdk/log/n;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v1, p1, p2, v1}, Lcn/egame/terminal/sdk/log/b;->a(Landroid/os/Looper;Ljava/lang/String;Lcn/egame/terminal/sdk/log/l;Lcn/egame/terminal/sdk/log/q;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The url can not be parsed. Please check it again."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
