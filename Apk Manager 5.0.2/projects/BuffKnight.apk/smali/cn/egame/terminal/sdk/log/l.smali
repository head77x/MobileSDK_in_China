.class public Lcn/egame/terminal/sdk/log/l;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:Ljava/util/Map;

.field protected e:Ljava/util/List;

.field protected f:Lorg/apache/http/HttpEntity;

.field protected g:Z

.field protected h:Lorg/apache/http/HttpHost;

.field protected i:Ljava/lang/String;

.field protected j:I


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcn/egame/terminal/sdk/log/l;->a:I

    iput v2, p0, Lcn/egame/terminal/sdk/log/l;->b:I

    iput v2, p0, Lcn/egame/terminal/sdk/log/l;->c:I

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/l;->d:Ljava/util/Map;

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/l;->e:Ljava/util/List;

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/l;->f:Lorg/apache/http/HttpEntity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/egame/terminal/sdk/log/l;->g:Z

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/l;->h:Lorg/apache/http/HttpHost;

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/l;->i:Ljava/lang/String;

    iput v2, p0, Lcn/egame/terminal/sdk/log/l;->j:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/egame/terminal/sdk/log/l;)V
    .locals 0

    invoke-direct {p0}, Lcn/egame/terminal/sdk/log/l;-><init>()V

    return-void
.end method
