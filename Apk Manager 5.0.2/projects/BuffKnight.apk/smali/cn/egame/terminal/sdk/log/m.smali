.class public Lcn/egame/terminal/sdk/log/m;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/util/Map;

.field private e:Ljava/util/List;

.field private f:Lorg/apache/http/HttpEntity;

.field private g:Z

.field private h:Lorg/apache/http/HttpHost;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x3a98

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcn/egame/terminal/sdk/log/m;->a:I

    iput v0, p0, Lcn/egame/terminal/sdk/log/m;->b:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/egame/terminal/sdk/log/m;->c:I

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/m;->d:Ljava/util/Map;

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/m;->e:Ljava/util/List;

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/m;->f:Lorg/apache/http/HttpEntity;

    iput-boolean v2, p0, Lcn/egame/terminal/sdk/log/m;->g:Z

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/m;->h:Lorg/apache/http/HttpHost;

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/m;->i:Ljava/lang/String;

    iput v2, p0, Lcn/egame/terminal/sdk/log/m;->j:I

    return-void
.end method


# virtual methods
.method public a()Lcn/egame/terminal/sdk/log/l;
    .locals 2

    new-instance v0, Lcn/egame/terminal/sdk/log/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/egame/terminal/sdk/log/l;-><init>(Lcn/egame/terminal/sdk/log/l;)V

    iget v1, p0, Lcn/egame/terminal/sdk/log/m;->b:I

    iput v1, v0, Lcn/egame/terminal/sdk/log/l;->b:I

    iget v1, p0, Lcn/egame/terminal/sdk/log/m;->a:I

    iput v1, v0, Lcn/egame/terminal/sdk/log/l;->a:I

    iget v1, p0, Lcn/egame/terminal/sdk/log/m;->c:I

    iput v1, v0, Lcn/egame/terminal/sdk/log/l;->c:I

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/m;->d:Ljava/util/Map;

    iput-object v1, v0, Lcn/egame/terminal/sdk/log/l;->d:Ljava/util/Map;

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/m;->e:Ljava/util/List;

    iput-object v1, v0, Lcn/egame/terminal/sdk/log/l;->e:Ljava/util/List;

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/m;->h:Lorg/apache/http/HttpHost;

    iput-object v1, v0, Lcn/egame/terminal/sdk/log/l;->h:Lorg/apache/http/HttpHost;

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/m;->i:Ljava/lang/String;

    iput-object v1, v0, Lcn/egame/terminal/sdk/log/l;->i:Ljava/lang/String;

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/m;->f:Lorg/apache/http/HttpEntity;

    iput-object v1, v0, Lcn/egame/terminal/sdk/log/l;->f:Lorg/apache/http/HttpEntity;

    iget-boolean v1, p0, Lcn/egame/terminal/sdk/log/m;->g:Z

    iput-boolean v1, v0, Lcn/egame/terminal/sdk/log/l;->g:Z

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/m;->f:Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Lcn/egame/terminal/sdk/log/l;->j:I

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcn/egame/terminal/sdk/log/m;->j:I

    iput v1, v0, Lcn/egame/terminal/sdk/log/l;->j:I

    goto :goto_0
.end method

.method public a(I)Lcn/egame/terminal/sdk/log/m;
    .locals 0

    iput p1, p0, Lcn/egame/terminal/sdk/log/m;->b:I

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcn/egame/terminal/sdk/log/m;
    .locals 0

    iput-object p1, p0, Lcn/egame/terminal/sdk/log/m;->d:Ljava/util/Map;

    return-object p0
.end method

.method public a(Lorg/apache/http/HttpEntity;)Lcn/egame/terminal/sdk/log/m;
    .locals 0

    iput-object p1, p0, Lcn/egame/terminal/sdk/log/m;->f:Lorg/apache/http/HttpEntity;

    return-object p0
.end method

.method public b(I)Lcn/egame/terminal/sdk/log/m;
    .locals 0

    iput p1, p0, Lcn/egame/terminal/sdk/log/m;->c:I

    return-object p0
.end method

.method public c(I)Lcn/egame/terminal/sdk/log/m;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput v0, p0, Lcn/egame/terminal/sdk/log/m;->j:I

    :cond_0
    return-object p0
.end method
