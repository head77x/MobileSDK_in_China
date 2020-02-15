.class final Lcn/egame/terminal/sdk/log/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/egame/terminal/sdk/log/am;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/egame/terminal/sdk/log/am;)V
    .locals 0

    iput-object p1, p0, Lcn/egame/terminal/sdk/log/aa;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/egame/terminal/sdk/log/aa;->b:Lcn/egame/terminal/sdk/log/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/aa;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/aa;->b:Lcn/egame/terminal/sdk/log/am;

    invoke-static {v0, v1}, Lcn/egame/terminal/sdk/log/EgameAgent;->a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/am;)V

    return-void
.end method
