.class final Lcn/egame/terminal/sdk/log/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/egame/terminal/sdk/log/z;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/egame/terminal/sdk/log/z;->b:Ljava/util/Map;

    iput-object p3, p0, Lcn/egame/terminal/sdk/log/z;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/egame/terminal/sdk/log/z;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/egame/terminal/sdk/log/z;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/z;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/z;->b:Ljava/util/Map;

    iget-object v2, p0, Lcn/egame/terminal/sdk/log/z;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/egame/terminal/sdk/log/z;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/egame/terminal/sdk/log/z;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/egame/terminal/sdk/log/EgameAgent;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
