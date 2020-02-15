.class public Lcn/egame/terminal/sdk/log/j;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:Z

.field protected c:Ljava/util/Map;

.field protected d:Lcn/egame/terminal/sdk/log/l;

.field protected e:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcn/egame/terminal/sdk/log/j;->a:I

    iput-boolean v0, p0, Lcn/egame/terminal/sdk/log/j;->b:Z

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/j;->c:Ljava/util/Map;

    iput-object v1, p0, Lcn/egame/terminal/sdk/log/j;->e:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcn/egame/terminal/sdk/log/j;)V
    .locals 0

    invoke-direct {p0}, Lcn/egame/terminal/sdk/log/j;-><init>()V

    return-void
.end method
