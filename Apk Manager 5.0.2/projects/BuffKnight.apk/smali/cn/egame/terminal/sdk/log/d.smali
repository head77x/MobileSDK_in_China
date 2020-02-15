.class Lcn/egame/terminal/sdk/log/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/egame/terminal/sdk/log/b;

.field private final synthetic b:Lcn/egame/terminal/sdk/log/r;

.field private final synthetic c:Lcn/egame/terminal/sdk/log/p;


# direct methods
.method constructor <init>(Lcn/egame/terminal/sdk/log/b;Lcn/egame/terminal/sdk/log/r;Lcn/egame/terminal/sdk/log/p;)V
    .locals 0

    iput-object p1, p0, Lcn/egame/terminal/sdk/log/d;->a:Lcn/egame/terminal/sdk/log/b;

    iput-object p2, p0, Lcn/egame/terminal/sdk/log/d;->b:Lcn/egame/terminal/sdk/log/r;

    iput-object p3, p0, Lcn/egame/terminal/sdk/log/d;->c:Lcn/egame/terminal/sdk/log/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/d;->b:Lcn/egame/terminal/sdk/log/r;

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/d;->c:Lcn/egame/terminal/sdk/log/p;

    invoke-interface {v0, v1}, Lcn/egame/terminal/sdk/log/r;->a(Lcn/egame/terminal/sdk/log/p;)V

    return-void
.end method
