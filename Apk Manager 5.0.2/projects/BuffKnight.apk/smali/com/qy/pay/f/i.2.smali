.class public Lcom/qy/pay/f/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/os/Handler;

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field private static l:Lcom/qy/pay/f/i;

.field private static m:Ljava/lang/String;

.field private static n:I


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:I

.field private C:I

.field private D:I

.field private E:Ljava/lang/Runnable;

.field public f:Lcom/qy/pay/network/b/f;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qy/pay/network/b/f;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qy/pay/network/b/i;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:I

.field private o:Landroid/content/Context;

.field private p:Landroid/app/Activity;

.field private q:Landroid/os/Handler;

.field private r:Landroid/os/HandlerThread;

.field private s:Ljava/lang/Runnable;

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/qy/pay/network/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/qy/pay/network/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qy/pay/network/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Lcom/qy/pay/network/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/qy/pay/f/i;->m:Ljava/lang/String;

    sput v1, Lcom/qy/pay/f/i;->n:I

    sput-boolean v1, Lcom/qy/pay/f/i;->b:Z

    sput-boolean v1, Lcom/qy/pay/f/i;->c:Z

    sput-boolean v1, Lcom/qy/pay/f/i;->d:Z

    sput-boolean v1, Lcom/qy/pay/f/i;->e:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qy/pay/f/i;->t:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qy/pay/f/i;->u:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/qy/pay/f/i;->v:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/qy/pay/f/i;->w:I

    iput-boolean v1, p0, Lcom/qy/pay/f/i;->y:Z

    iput-object v2, p0, Lcom/qy/pay/f/i;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qy/pay/f/i;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qy/pay/f/i;->i:Ljava/util/Map;

    iput v1, p0, Lcom/qy/pay/f/i;->j:I

    iput v1, p0, Lcom/qy/pay/f/i;->k:I

    iput v1, p0, Lcom/qy/pay/f/i;->B:I

    iput v1, p0, Lcom/qy/pay/f/i;->C:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/qy/pay/f/i;->D:I

    iput-object v2, p0, Lcom/qy/pay/f/i;->E:Ljava/lang/Runnable;

    return-void
.end method

.method public static a()Lcom/qy/pay/f/i;
    .locals 1

    sget-object v0, Lcom/qy/pay/f/i;->l:Lcom/qy/pay/f/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qy/pay/f/i;

    invoke-direct {v0}, Lcom/qy/pay/f/i;-><init>()V

    sput-object v0, Lcom/qy/pay/f/i;->l:Lcom/qy/pay/f/i;

    :cond_0
    sget-object v0, Lcom/qy/pay/f/i;->l:Lcom/qy/pay/f/i;

    return-object v0
.end method

.method private a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V
    .locals 4

    new-instance v0, Lcom/qy/pay/network/b/d;

    invoke-direct {v0}, Lcom/qy/pay/network/b/d;-><init>()V

    invoke-virtual {v0, p2}, Lcom/qy/pay/network/b/d;->a(B)V

    invoke-virtual {v0, p1}, Lcom/qy/pay/network/b/d;->b(B)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v1}, Lcom/qy/pay/network/b/g;->d()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/d;->c(B)V

    :goto_0
    invoke-virtual {p3}, Lcom/qy/pay/network/b/f;->h()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/d;->d(B)V

    invoke-virtual {p3}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/d;->a(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/d;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Lcom/qy/pay/network/b/f;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/d;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->v:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qy/pay/f/i;->v:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lcom/qy/pay/f/i;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/d;->c(B)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/qy/pay/f/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/qy/pay/f/i;->g()V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/i;BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/i;I)V
    .locals 0

    iput p1, p0, Lcom/qy/pay/f/i;->D:I

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qy/pay/f/i;->c(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/i;Lcom/qy/pay/network/c/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/network/c/b;)V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/i;->x:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/i;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qy/pay/f/i;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/i;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qy/pay/f/i;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/qy/pay/network/c/b;)V
    .locals 4

    invoke-virtual {p1}, Lcom/qy/pay/network/c/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/qy/pay/network/c/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/qy/pay/network/c/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/qy/pay/network/c/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qy/pay/f/i;->a(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/qy/pay/f/i;->f()V

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qy/pay/network/b/g;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->c()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/qy/pay/f/i;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qy/pay/f/i;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/qy/pay/f/i;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qy/pay/f/i;->q:Landroid/os/Handler;

    new-instance v1, Lcom/qy/pay/f/B;

    invoke-direct {v1, p0, p1}, Lcom/qy/pay/f/B;-><init>(Lcom/qy/pay/f/i;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Lcom/qy/pay/network/c/a;

    invoke-direct {v0}, Lcom/qy/pay/network/c/a;-><init>()V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/P;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/a;->a(Lcom/qy/pay/network/b/h;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/b;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/a;->a(Lcom/qy/pay/network/b/a;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/f;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/a;->a(Lcom/qy/pay/network/b/c;)V

    invoke-static {}, Lcom/qy/pay/network/connect/a;->a()Lcom/qy/pay/network/connect/a;

    move-result-object v1

    invoke-static {}, Lcom/qy/pay/network/f/b;->a()Lcom/qy/pay/network/b/e;

    move-result-object v2

    new-instance v3, Lcom/qy/pay/f/y;

    invoke-direct {v3, p0, p1, p2}, Lcom/qy/pay/f/y;-><init>(Lcom/qy/pay/f/i;Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/qy/pay/network/connect/a;->a(Lcom/qy/pay/network/b/e;Ljava/lang/Object;Lcom/qy/pay/network/a/a;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qy/pay/network/b/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/qy/pay/f/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qy/pay/network/b/f;

    iget-object v2, p0, Lcom/qy/pay/f/i;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/qy/pay/f/i;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->d()Lcom/qy/pay/network/b/i;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/qy/pay/f/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/qy/pay/f/i;)I
    .locals 1

    iget v0, p0, Lcom/qy/pay/f/i;->D:I

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qy/pay/a/e;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic b(Lcom/qy/pay/f/i;I)V
    .locals 0

    iput p1, p0, Lcom/qy/pay/f/i;->w:I

    return-void
.end method

.method static synthetic b(Lcom/qy/pay/f/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qy/pay/f/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/qy/pay/f/i;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qy/pay/f/i;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Lcom/qy/pay/network/b/f;)V
    .locals 3

    new-instance v0, Lcom/qy/pay/f/Q;

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/qy/pay/f/Q;-><init>(Lcom/qy/pay/network/b/f;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/qy/pay/network/b/f;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/qy/pay/f/Q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private b(Lcom/qy/pay/network/b/f;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/qy/pay/network/c/i;

    invoke-direct {v0}, Lcom/qy/pay/network/c/i;-><init>()V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/P;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/i;->a(Lcom/qy/pay/network/b/h;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/b;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/i;->a(Lcom/qy/pay/network/b/a;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/f;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/i;->a(Lcom/qy/pay/network/b/c;)V

    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/i;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/qy/pay/network/c/i;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/network/connect/a;->a()Lcom/qy/pay/network/connect/a;

    move-result-object v1

    invoke-static {}, Lcom/qy/pay/network/f/b;->a()Lcom/qy/pay/network/b/e;

    move-result-object v2

    new-instance v3, Lcom/qy/pay/f/A;

    invoke-direct {v3, p0, p1}, Lcom/qy/pay/f/A;-><init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/qy/pay/network/connect/a;->a(Lcom/qy/pay/network/b/e;Ljava/lang/Object;Lcom/qy/pay/network/a/a;)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    new-instance v1, Lcom/qy/pay/network/b/f;

    invoke-direct {v1}, Lcom/qy/pay/network/b/f;-><init>()V

    invoke-virtual {v1, p1}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/qy/pay/network/b/f;->a(B)V

    invoke-virtual {v1, p2}, Lcom/qy/pay/network/b/f;->a(I)V

    sget-boolean v0, Lcom/qy/pay/f/i;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {p0, v2, v0}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    invoke-direct {p0, v4, v2, v1, v3}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/qy/pay/f/i;->c:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x3e8

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {p0, v0, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    const/16 v0, -0x18

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/qy/pay/f/i;->d:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/qy/pay/f/i;->w:I

    iget-object v2, p0, Lcom/qy/pay/f/i;->x:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    iget v0, p0, Lcom/qy/pay/f/i;->w:I

    int-to-byte v0, v0

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3ea

    const-string v2, "\u8ba1\u8d39\u70b9\u4e3a\u7a7a"

    invoke-virtual {p0, v0, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    const/16 v0, -0x16

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/qy/pay/f/i;->y:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x3eb

    const-string v2, "\u652f\u4ed8\u4e2d"

    invoke-virtual {p0, v0, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    const/16 v0, -0x15

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/qy/pay/f/K;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x3ec

    const-string v2, "SIM\u5361\u4e0d\u5b58\u5728"

    invoke-virtual {p0, v0, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    const/16 v0, -0x14

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/qy/pay/f/i;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qy/pay/network/b/g;

    iput-object v0, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    iget-object v0, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    if-nez v0, :cond_7

    const/16 v0, 0x3e9

    const-string v2, "\u8ba1\u8d39\u70b9\u65e0\u6548"

    invoke-virtual {p0, v0, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    const/16 v0, -0x17

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x3f3

    const-string v2, "\u8ba1\u8d39\u4ee3\u7801\u65e0\u901a\u9053"

    invoke-virtual {p0, v0, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    const/16 v0, -0xd

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->f()I

    move-result v0

    if-eq v0, p2, :cond_9

    const/16 v0, 0x3f0

    const-string v2, "\u8ba1\u8d39\u91d1\u989d\u65e0\u6548"

    invoke-virtual {p0, v0, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    const/16 v0, -0x10

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto/16 :goto_0

    :cond_9
    sput-object p1, Lcom/qy/pay/f/i;->m:Ljava/lang/String;

    sput p2, Lcom/qy/pay/f/i;->n:I

    invoke-direct {p0, v4, v2, v1, v3}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    iget-object v0, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->d()B

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->d()B

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/b/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v5, v2, v0, v3}, Lcom/qy/pay/f/i;->a(BBLjava/util/ArrayList;Lcom/qy/pay/network/b/f;)V

    :cond_a
    sget-boolean v0, Lcom/qy/pay/f/i;->e:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/qy/pay/a/a/a;->a()V

    iget-object v0, p0, Lcom/qy/pay/f/i;->p:Landroid/app/Activity;

    iget-object v1, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v1}, Lcom/qy/pay/network/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qy/pay/a/a/a;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/qy/pay/f/i;->C:I

    iget v1, p0, Lcom/qy/pay/f/i;->D:I

    if-le v0, v1, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/qy/pay/f/i;->a(Ljava/lang/String;I)V

    iput v5, p0, Lcom/qy/pay/f/i;->C:I

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v0}, Lcom/qy/pay/network/b/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    new-instance v1, Lcom/qy/pay/f/J;

    invoke-direct {v1, p0}, Lcom/qy/pay/f/J;-><init>(Lcom/qy/pay/f/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/qy/pay/f/i;->b()V

    iget v0, p0, Lcom/qy/pay/f/i;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qy/pay/f/i;->C:I

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/qy/pay/f/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qy/pay/f/i;->m:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/qy/pay/network/b/f;)V
    .locals 4

    new-instance v0, Lcom/qy/pay/network/c/i;

    invoke-direct {v0}, Lcom/qy/pay/network/c/i;-><init>()V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/P;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/i;->a(Lcom/qy/pay/network/b/h;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/b;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/i;->a(Lcom/qy/pay/network/b/a;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/f;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/i;->a(Lcom/qy/pay/network/b/c;)V

    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/network/connect/a;->a()Lcom/qy/pay/network/connect/a;

    move-result-object v1

    invoke-static {}, Lcom/qy/pay/network/f/b;->a()Lcom/qy/pay/network/b/e;

    move-result-object v2

    new-instance v3, Lcom/qy/pay/f/l;

    invoke-direct {v3, p0, p1}, Lcom/qy/pay/f/l;-><init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/qy/pay/network/connect/a;->a(Lcom/qy/pay/network/b/e;Ljava/lang/Object;Lcom/qy/pay/network/a/a;)V

    return-void
.end method

.method private c(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V
    .locals 5

    new-instance v2, Lcom/qy/pay/a;

    iget-object v0, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    new-instance v1, Lcom/qy/pay/f/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/qy/pay/f/o;-><init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->b()I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/qy/pay/a;-><init>(Landroid/content/Context;Lcom/qy/pay/d/a;II)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/qy/pay/network/b/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1, v0}, Lcom/qy/pay/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_1
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lcom/qy/pay/f/i;->n:I

    return v0
.end method

.method static synthetic d(Lcom/qy/pay/f/i;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/i;->u:Ljava/util/HashMap;

    return-object v0
.end method

.method private d(Lcom/qy/pay/network/b/f;)V
    .locals 4

    iput-object p1, p0, Lcom/qy/pay/f/i;->f:Lcom/qy/pay/network/b/f;

    new-instance v0, Lcom/qy/pay/network/c/o;

    invoke-direct {v0}, Lcom/qy/pay/network/c/o;-><init>()V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/P;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/o;->a(Lcom/qy/pay/network/b/h;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/b;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/o;->a(Lcom/qy/pay/network/b/a;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/f;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/o;->a(Lcom/qy/pay/network/b/c;)V

    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/o;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/o;->a(I)V

    const-string v1, "web_logged_in"

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/network/connect/a;->a()Lcom/qy/pay/network/connect/a;

    move-result-object v1

    invoke-static {}, Lcom/qy/pay/network/f/b;->a()Lcom/qy/pay/network/b/e;

    move-result-object v2

    new-instance v3, Lcom/qy/pay/f/p;

    invoke-direct {v3, p0, p1}, Lcom/qy/pay/f/p;-><init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/qy/pay/network/connect/a;->a(Lcom/qy/pay/network/b/e;Ljava/lang/Object;Lcom/qy/pay/network/a/a;)V

    return-void
.end method

.method static synthetic e(Lcom/qy/pay/f/i;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/i;->t:Ljava/util/HashMap;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/qy/pay/f/i;->r:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GooglePay"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/qy/pay/f/i;->r:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/qy/pay/f/i;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qy/pay/f/i;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_1
    iget-object v0, p0, Lcom/qy/pay/f/i;->q:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/qy/pay/f/i;->r:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qy/pay/f/i;->q:Landroid/os/Handler;

    iget-object v0, p0, Lcom/qy/pay/f/i;->q:Landroid/os/Handler;

    sput-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lcom/qy/pay/f/i;->s:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    new-instance v0, Lcom/qy/pay/f/j;

    invoke-direct {v0, p0}, Lcom/qy/pay/f/j;-><init>(Lcom/qy/pay/f/i;)V

    iput-object v0, p0, Lcom/qy/pay/f/i;->s:Ljava/lang/Runnable;

    :cond_3
    iget-object v0, p0, Lcom/qy/pay/f/i;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qy/pay/f/i;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic f(Lcom/qy/pay/f/i;)Lcom/qy/pay/network/b/g;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/qy/pay/f/i;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/qy/pay/f/i;->q:Landroid/os/Handler;

    new-instance v1, Lcom/qy/pay/f/D;

    invoke-direct {v1, p0}, Lcom/qy/pay/f/D;-><init>(Lcom/qy/pay/f/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/qy/pay/f/i;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/i;->p:Landroid/app/Activity;

    return-object v0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/qy/pay/a/d;->a(Landroid/content/Context;)Lcom/qy/pay/a/d;

    move-result-object v0

    const-string v1, "new_user"

    invoke-virtual {v0, v1}, Lcom/qy/pay/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "new_user"

    invoke-static {v0}, Lcom/qy/pay/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/qy/pay/network/c/g;

    invoke-direct {v0}, Lcom/qy/pay/network/c/g;-><init>()V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/P;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/g;->a(Lcom/qy/pay/network/b/h;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/b;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/g;->a(Lcom/qy/pay/network/b/a;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/f;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/g;->a(Lcom/qy/pay/network/b/c;)V

    invoke-static {}, Lcom/qy/pay/network/connect/a;->a()Lcom/qy/pay/network/connect/a;

    move-result-object v1

    invoke-static {}, Lcom/qy/pay/network/f/b;->b()Lcom/qy/pay/network/b/e;

    move-result-object v2

    new-instance v3, Lcom/qy/pay/f/F;

    invoke-direct {v3, p0}, Lcom/qy/pay/f/F;-><init>(Lcom/qy/pay/f/i;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/qy/pay/network/connect/a;->a(Lcom/qy/pay/network/b/e;Ljava/lang/Object;Lcom/qy/pay/network/a/a;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qy/pay/f/i;->y:Z

    iput v0, p0, Lcom/qy/pay/f/i;->j:I

    iput v0, p0, Lcom/qy/pay/f/i;->k:I

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qy/pay/f/i;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qy/pay/f/i;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/qy/pay/f/i;->A:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qy/pay/f/x;

    invoke-direct {v0, p0}, Lcom/qy/pay/f/x;-><init>(Lcom/qy/pay/f/i;)V

    iput-object v0, p0, Lcom/qy/pay/f/i;->A:Ljava/lang/Runnable;

    :cond_0
    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qy/pay/f/i;->A:Ljava/lang/Runnable;

    const-wide/32 v2, 0x249f0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a(BBLjava/util/ArrayList;Lcom/qy/pay/network/b/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qy/pay/network/b/f;",
            ">;",
            "Lcom/qy/pay/network/b/f;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qy/pay/network/b/f;

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/qy/pay/f/i;->v:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/qy/pay/f/i;->a(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/qy/pay/f/i;->h()V

    invoke-static {}, Lcom/qy/pay/a/a/a;->a()V

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "msg"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "price"

    iget v3, p0, Lcom/qy/pay/f/i;->B:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    iput-object p1, p0, Lcom/qy/pay/f/i;->p:Landroid/app/Activity;

    sput-object p2, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "paylog"

    const-string v1, "callback is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qy/pay/f/i;->p:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qy/pay/f/i;->p:Landroid/app/Activity;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0x3ed

    const-string v1, "\u5f53\u524d\u754c\u9762\u5b9e\u4f8b\u65e0\u6548"

    invoke-virtual {p0, v0, v1}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/qy/pay/f/i;->p:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u4e2d..."

    invoke-static {v0, v1}, Lcom/qy/pay/a/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    sget-boolean v0, Lcom/qy/pay/f/i;->b:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/qy/pay/f/i;->d:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p3, p4}, Lcom/qy/pay/f/i;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/qy/pay/f/i;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;II)V
    .locals 4

    iput-object p1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    iput-object p1, p0, Lcom/qy/pay/f/i;->p:Landroid/app/Activity;

    sput-object p2, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    new-instance v0, Lcom/qy/pay/network/c/k;

    invoke-direct {v0}, Lcom/qy/pay/network/c/k;-><init>()V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/P;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/k;->a(Lcom/qy/pay/network/b/h;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/b;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/k;->a(Lcom/qy/pay/network/b/a;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/f;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/k;->a(Lcom/qy/pay/network/b/c;)V

    invoke-virtual {v0, p3}, Lcom/qy/pay/network/c/k;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/qy/pay/network/c/k;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------begin network req---------pointNum{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "},price["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/qy/pay/network/connect/a;->a()Lcom/qy/pay/network/connect/a;

    move-result-object v1

    invoke-static {}, Lcom/qy/pay/network/f/b;->a()Lcom/qy/pay/network/b/e;

    move-result-object v2

    new-instance v3, Lcom/qy/pay/f/G;

    invoke-direct {v3, p0, p3, p5}, Lcom/qy/pay/f/G;-><init>(Lcom/qy/pay/f/i;Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/qy/pay/network/connect/a;->a(Lcom/qy/pay/network/b/e;Ljava/lang/Object;Lcom/qy/pay/network/a/a;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Lcom/qy/pay/f/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/qy/pay/f/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "paylog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "channelId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", appId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/qy/pay/f/i;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/qy/pay/network/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/qy/pay/f/i;->e()V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/qy/pay/f/e;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    new-instance v0, Lcom/qy/pay/network/b/f;

    invoke-direct {v0}, Lcom/qy/pay/network/b/f;-><init>()V

    invoke-virtual {v0, p2}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/qy/pay/network/b/f;->a(I)V

    invoke-virtual {v0, v2}, Lcom/qy/pay/network/b/f;->a(B)V

    new-instance v1, Lcom/qy/pay/network/b/g;

    invoke-direct {v1}, Lcom/qy/pay/network/b/g;-><init>()V

    iput-object v1, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    iget-object v1, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v1, v2}, Lcom/qy/pay/network/b/g;->a(B)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    const/16 v0, 0x3e8

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {p0, v0, v1}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/qy/pay/network/b/f;)V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/qy/pay/f/g;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/qy/pay/a;

    iget-object v5, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    new-instance v6, Lcom/qy/pay/f/r;

    invoke-direct {v6, p0, p1, v3}, Lcom/qy/pay/f/r;-><init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->b()I

    move-result v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/qy/pay/a;-><init>(Landroid/content/Context;Lcom/qy/pay/d/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/qy/pay/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_0
.end method

.method public a(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/qy/pay/f/i;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qy/pay/f/i;->j:I

    iget v0, p0, Lcom/qy/pay/f/i;->B:I

    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->e()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/qy/pay/f/i;->B:I

    const/4 v0, 0x2

    invoke-direct {p0, v0, v2, p1, p2}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    :cond_0
    iget v0, p0, Lcom/qy/pay/f/i;->j:I

    iget v1, p0, Lcom/qy/pay/f/i;->k:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v1}, Lcom/qy/pay/network/b/g;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {p0, v2, v0}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/c/f;)V
    .locals 4

    new-instance v0, Lcom/qy/pay/network/c/e;

    invoke-direct {v0}, Lcom/qy/pay/network/c/e;-><init>()V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/P;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/e;->a(Lcom/qy/pay/network/b/h;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/b;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/e;->a(Lcom/qy/pay/network/b/a;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/f;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/e;->a(Lcom/qy/pay/network/b/c;)V

    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/e;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/qy/pay/network/c/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/e;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/qy/pay/network/connect/a;->a()Lcom/qy/pay/network/connect/a;

    move-result-object v1

    invoke-static {}, Lcom/qy/pay/network/f/b;->a()Lcom/qy/pay/network/b/e;

    move-result-object v2

    new-instance v3, Lcom/qy/pay/f/t;

    invoke-direct {v3, p0, p1}, Lcom/qy/pay/f/t;-><init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/qy/pay/network/connect/a;->a(Lcom/qy/pay/network/b/e;Ljava/lang/Object;Lcom/qy/pay/network/a/a;)V

    return-void
.end method

.method public a(Lcom/qy/pay/network/b/f;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/qy/pay/network/c/o;

    invoke-direct {v0}, Lcom/qy/pay/network/c/o;-><init>()V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/P;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/o;->a(Lcom/qy/pay/network/b/h;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/b;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/o;->a(Lcom/qy/pay/network/b/a;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/f;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/o;->a(Lcom/qy/pay/network/b/c;)V

    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/o;->a(Ljava/lang/String;)V

    const-string v1, "web_req_pay"

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/o;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/o;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qy/pay/network/b/f;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/o;->a(I)V

    invoke-virtual {v0, p2}, Lcom/qy/pay/network/c/o;->d(Ljava/lang/String;)V

    new-instance v1, Lcom/qy/pay/network/b/f;

    invoke-direct {v1}, Lcom/qy/pay/network/b/f;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verifyCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qy/pay/network/b/f;->a(Ljava/lang/String;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    invoke-static {}, Lcom/qy/pay/network/connect/a;->a()Lcom/qy/pay/network/connect/a;

    move-result-object v1

    invoke-static {}, Lcom/qy/pay/network/f/b;->a()Lcom/qy/pay/network/b/e;

    move-result-object v2

    new-instance v3, Lcom/qy/pay/f/q;

    invoke-direct {v3, p0, p1}, Lcom/qy/pay/f/q;-><init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/qy/pay/network/connect/a;->a(Lcom/qy/pay/network/b/e;Ljava/lang/Object;Lcom/qy/pay/network/a/a;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qy/pay/network/b/d;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/qy/pay/network/c/c;

    invoke-direct {v0}, Lcom/qy/pay/network/c/c;-><init>()V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/P;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/c;->a(Lcom/qy/pay/network/b/h;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/b;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/c;->a(Lcom/qy/pay/network/b/a;)V

    iget-object v1, p0, Lcom/qy/pay/f/i;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/qy/pay/f/f;->a(Landroid/content/Context;)Lcom/qy/pay/network/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qy/pay/network/c/c;->a(Lcom/qy/pay/network/b/c;)V

    invoke-virtual {v0, p1}, Lcom/qy/pay/network/c/c;->a(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/qy/pay/network/connect/a;->a()Lcom/qy/pay/network/connect/a;

    move-result-object v1

    invoke-static {}, Lcom/qy/pay/network/f/b;->b()Lcom/qy/pay/network/b/e;

    move-result-object v2

    new-instance v3, Lcom/qy/pay/f/I;

    invoke-direct {v3, p0}, Lcom/qy/pay/f/I;-><init>(Lcom/qy/pay/f/i;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/qy/pay/network/connect/a;->a(Lcom/qy/pay/network/b/e;Ljava/lang/Object;Lcom/qy/pay/network/a/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qy/pay/f/i;->v:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public b()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/qy/pay/f/i;->p:Landroid/app/Activity;

    const-string v2, "\u652f\u4ed8\u4e2d..."

    invoke-static {v1, v2}, Lcom/qy/pay/a/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qy/pay/f/i;->i()V

    iput-boolean v9, p0, Lcom/qy/pay/f/i;->y:Z

    iput v0, p0, Lcom/qy/pay/f/i;->B:I

    iget-object v1, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v1}, Lcom/qy/pay/network/b/g;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qy/pay/network/b/f;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->h()B

    move-result v5

    if-ne v5, v9, :cond_1

    invoke-direct {p0, v0, v8}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->h()B

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    invoke-virtual {p0, v0}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/network/b/f;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->h()B

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    invoke-direct {p0, v0}, Lcom/qy/pay/f/i;->d(Lcom/qy/pay/network/b/f;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->h()B

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    invoke-virtual {p0, v0, v8}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/c/f;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->h()B

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    invoke-direct {p0, v0}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/network/b/f;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->h()B

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_6

    invoke-direct {p0, v0}, Lcom/qy/pay/f/i;->c(Lcom/qy/pay/network/b/f;)V

    goto :goto_0

    :cond_6
    if-nez v3, :cond_7

    invoke-direct {p0, v0, v8}, Lcom/qy/pay/f/i;->c(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    :goto_1
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->g()I

    move-result v0

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->g()I

    move-result v5

    if-ne v2, v5, :cond_8

    invoke-virtual {v0}, Lcom/qy/pay/network/b/f;->f()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    new-instance v2, Lcom/qy/pay/f/k;

    invoke-direct {v2, p0, v0}, Lcom/qy/pay/f/k;-><init>(Lcom/qy/pay/f/i;Lcom/qy/pay/network/b/f;)V

    iput-object v2, p0, Lcom/qy/pay/f/i;->E:Ljava/lang/Runnable;

    sget-object v2, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    iget-object v5, p0, Lcom/qy/pay/f/i;->E:Ljava/lang/Runnable;

    int-to-long v6, v1

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_8
    invoke-direct {p0, v0, v8}, Lcom/qy/pay/f/i;->c(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    goto :goto_1
.end method

.method public b(Lcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/qy/pay/f/i;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qy/pay/f/i;->k:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/qy/pay/f/i;->a(BBLcom/qy/pay/network/b/f;Lcom/qy/pay/network/b/f;)V

    :cond_0
    iget v0, p0, Lcom/qy/pay/f/i;->k:I

    iget-object v1, p0, Lcom/qy/pay/f/i;->z:Lcom/qy/pay/network/b/g;

    invoke-virtual {v1}, Lcom/qy/pay/network/b/g;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3e8

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {p0, v0, v1}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
