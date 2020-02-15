.class Lcn/egame/terminal/sdk/log/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/egame/terminal/sdk/log/BaseLog;


# direct methods
.method constructor <init>(Lcn/egame/terminal/sdk/log/BaseLog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/egame/terminal/sdk/log/w;->b:Lcn/egame/terminal/sdk/log/BaseLog;

    iput-object p2, p0, Lcn/egame/terminal/sdk/log/w;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/egame/terminal/sdk/log/BaseLog;->a(Landroid/content/Context;)V

    return-void
.end method
