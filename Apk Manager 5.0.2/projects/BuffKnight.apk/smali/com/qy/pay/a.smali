.class public Lcom/qy/pay/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/qy/pay/d/a;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/Runnable;

.field private o:Landroid/app/PendingIntent;

.field private p:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qy/pay/d/a;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/qy/pay/a;->g:I

    iput v4, p0, Lcom/qy/pay/a;->h:I

    new-instance v0, Lcom/qy/pay/b;

    invoke-direct {v0, p0}, Lcom/qy/pay/b;-><init>(Lcom/qy/pay/a;)V

    iput-object v0, p0, Lcom/qy/pay/a;->n:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/qy/pay/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/qy/pay/a;->b:Lcom/qy/pay/d/a;

    iput p3, p0, Lcom/qy/pay/a;->i:I

    :try_start_0
    new-instance v0, Lcom/qy/pay/c;

    invoke-direct {v0, p0}, Lcom/qy/pay/c;-><init>(Lcom/qy/pay/a;)V

    iput-object v0, p0, Lcom/qy/pay/a;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/qy/pay/d;

    invoke-direct {v0, p0}, Lcom/qy/pay/d;-><init>(Lcom/qy/pay/a;)V

    iput-object v0, p0, Lcom/qy/pay/a;->d:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/qy/pay/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/qy/pay/a;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-static {}, Lcom/qy/pay/c/a;->a()Lcom/qy/pay/c/a;

    move-result-object v3

    iget-object v3, v3, Lcom/qy/pay/c/a;->i:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/qy/pay/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/qy/pay/a;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-static {}, Lcom/qy/pay/c/a;->a()Lcom/qy/pay/c/a;

    move-result-object v3

    iget-object v3, v3, Lcom/qy/pay/c/a;->j:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/qy/pay/c/a;->a()Lcom/qy/pay/c/a;

    move-result-object v1

    iget-object v1, v1, Lcom/qy/pay/c/a;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/a;->a:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/qy/pay/a;->o:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/qy/pay/c/a;->a()Lcom/qy/pay/c/a;

    move-result-object v1

    iget-object v1, v1, Lcom/qy/pay/c/a;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/a;->a:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/qy/pay/a;->p:Landroid/app/PendingIntent;

    return-void

    :catch_0
    move-exception v0

    const-string v0, "register send listener fail!"

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qy/pay/d/a;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qy/pay/a;-><init>(Landroid/content/Context;Lcom/qy/pay/d/a;I)V

    iput p4, p0, Lcom/qy/pay/a;->g:I

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/a;)I
    .locals 1

    iget v0, p0, Lcom/qy/pay/a;->i:I

    return v0
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/qy/pay/a;->j:I

    iget v1, p0, Lcom/qy/pay/a;->i:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/qy/pay/a;->k:I

    iget v1, p0, Lcom/qy/pay/a;->i:I

    if-ne v0, v1, :cond_1

    :cond_0
    iput v2, p0, Lcom/qy/pay/a;->j:I

    iput v2, p0, Lcom/qy/pay/a;->k:I

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qy/pay/a;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/qy/pay/a;->c()V

    iget-object v0, p0, Lcom/qy/pay/a;->b:Lcom/qy/pay/d/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qy/pay/a;->b:Lcom/qy/pay/d/a;

    iget-object v1, p0, Lcom/qy/pay/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/qy/pay/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/qy/pay/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qy/pay/a;->b:Lcom/qy/pay/d/a;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/qy/pay/a;I)V
    .locals 0

    iput p1, p0, Lcom/qy/pay/a;->l:I

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/qy/pay/a;->l:I

    iget v1, p0, Lcom/qy/pay/a;->i:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/qy/pay/a;->m:I

    iget v1, p0, Lcom/qy/pay/a;->i:I

    if-ne v0, v1, :cond_1

    :cond_0
    iput v2, p0, Lcom/qy/pay/a;->j:I

    iput v2, p0, Lcom/qy/pay/a;->k:I

    iput v2, p0, Lcom/qy/pay/a;->l:I

    iput v2, p0, Lcom/qy/pay/a;->m:I

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qy/pay/a;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/qy/pay/a;->h:I

    iget v1, p0, Lcom/qy/pay/a;->g:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/qy/pay/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qy/pay/a;->h:I

    iget-object v0, p0, Lcom/qy/pay/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/qy/pay/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/qy/pay/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/qy/pay/a;->c()V

    iget-object v0, p0, Lcom/qy/pay/a;->b:Lcom/qy/pay/d/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qy/pay/a;->b:Lcom/qy/pay/d/a;

    iget-object v1, p0, Lcom/qy/pay/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/qy/pay/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/qy/pay/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qy/pay/a;->b:Lcom/qy/pay/d/a;

    goto :goto_0
.end method

.method static synthetic b(Lcom/qy/pay/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/qy/pay/a;->b()V

    return-void
.end method

.method static synthetic b(Lcom/qy/pay/a;I)V
    .locals 0

    iput p1, p0, Lcom/qy/pay/a;->j:I

    return-void
.end method

.method static synthetic c(Lcom/qy/pay/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/qy/pay/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/qy/pay/a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/qy/pay/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/qy/pay/a;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/qy/pay/a;I)V
    .locals 0

    iput p1, p0, Lcom/qy/pay/a;->k:I

    return-void
.end method

.method static synthetic d(Lcom/qy/pay/a;)I
    .locals 1

    iget v0, p0, Lcom/qy/pay/a;->j:I

    return v0
.end method

.method static synthetic d(Lcom/qy/pay/a;I)V
    .locals 0

    iput p1, p0, Lcom/qy/pay/a;->m:I

    return-void
.end method

.method static synthetic e(Lcom/qy/pay/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/qy/pay/a;->a()V

    return-void
.end method

.method static synthetic f(Lcom/qy/pay/a;)I
    .locals 1

    iget v0, p0, Lcom/qy/pay/a;->l:I

    return v0
.end method

.method static synthetic g(Lcom/qy/pay/a;)I
    .locals 1

    iget v0, p0, Lcom/qy/pay/a;->k:I

    return v0
.end method

.method static synthetic h(Lcom/qy/pay/a;)I
    .locals 1

    iget v0, p0, Lcom/qy/pay/a;->m:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "destPhone is null"

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qy/pay/a;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "message is null"

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qy/pay/a;->b()V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/qy/pay/a;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/qy/pay/a;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destPhone is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "message is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/qy/pay/a;->i:I

    if-lt v0, v1, :cond_3

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qy/pay/a;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/qy/pay/a;->o:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/qy/pay/a;->p:Landroid/app/PendingIntent;

    invoke-static {p1, p2, v1, v2}, Lcom/qy/pay/e/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
