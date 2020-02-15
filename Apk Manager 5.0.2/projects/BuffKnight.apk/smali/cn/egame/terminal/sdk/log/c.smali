.class Lcn/egame/terminal/sdk/log/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/egame/terminal/sdk/log/b;

.field private final synthetic b:Lcn/egame/terminal/sdk/log/q;

.field private final synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcn/egame/terminal/sdk/log/b;Lcn/egame/terminal/sdk/log/q;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcn/egame/terminal/sdk/log/c;->a:Lcn/egame/terminal/sdk/log/b;

    iput-object p2, p0, Lcn/egame/terminal/sdk/log/c;->b:Lcn/egame/terminal/sdk/log/q;

    iput-object p3, p0, Lcn/egame/terminal/sdk/log/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/c;->b:Lcn/egame/terminal/sdk/log/q;

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/c;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcn/egame/terminal/sdk/log/q;->b(Ljava/lang/Object;)V

    return-void
.end method
