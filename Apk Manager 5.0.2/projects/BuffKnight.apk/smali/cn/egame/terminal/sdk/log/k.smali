.class public Lcn/egame/terminal/sdk/log/k;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/Map;

.field private d:Ljava/util/HashMap;

.field private e:Lcn/egame/terminal/sdk/log/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcn/egame/terminal/sdk/log/k;->a:I

    iput-boolean v0, p0, Lcn/egame/terminal/sdk/log/k;->b:Z

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/k;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/k;->d:Ljava/util/HashMap;

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/k;->e:Lcn/egame/terminal/sdk/log/l;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/k;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lcn/egame/terminal/sdk/log/j;
    .locals 2

    new-instance v0, Lcn/egame/terminal/sdk/log/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/egame/terminal/sdk/log/j;-><init>(Lcn/egame/terminal/sdk/log/j;)V

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/k;->e:Lcn/egame/terminal/sdk/log/l;

    if-nez v1, :cond_0

    new-instance v1, Lcn/egame/terminal/sdk/log/m;

    invoke-direct {v1}, Lcn/egame/terminal/sdk/log/m;-><init>()V

    invoke-virtual {v1}, Lcn/egame/terminal/sdk/log/m;->a()Lcn/egame/terminal/sdk/log/l;

    move-result-object v1

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/k;->e:Lcn/egame/terminal/sdk/log/l;

    :cond_0
    iget v1, p0, Lcn/egame/terminal/sdk/log/k;->a:I

    iput v1, v0, Lcn/egame/terminal/sdk/log/j;->a:I

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/k;->c:Ljava/util/Map;

    iput-object v1, v0, Lcn/egame/terminal/sdk/log/j;->c:Ljava/util/Map;

    iget-boolean v1, p0, Lcn/egame/terminal/sdk/log/k;->b:Z

    iput-boolean v1, v0, Lcn/egame/terminal/sdk/log/j;->b:Z

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/k;->d:Ljava/util/HashMap;

    iput-object v1, v0, Lcn/egame/terminal/sdk/log/j;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/k;->e:Lcn/egame/terminal/sdk/log/l;

    iput-object v1, v0, Lcn/egame/terminal/sdk/log/j;->d:Lcn/egame/terminal/sdk/log/l;

    return-object v0
.end method

.method public a(Lcn/egame/terminal/sdk/log/l;)Lcn/egame/terminal/sdk/log/k;
    .locals 0

    iput-object p1, p0, Lcn/egame/terminal/sdk/log/k;->e:Lcn/egame/terminal/sdk/log/l;

    return-object p0
.end method

.method public a(Ljava/util/HashMap;)Lcn/egame/terminal/sdk/log/k;
    .locals 1

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public a(Z)Lcn/egame/terminal/sdk/log/k;
    .locals 0

    iput-boolean p1, p0, Lcn/egame/terminal/sdk/log/k;->b:Z

    return-object p0
.end method
