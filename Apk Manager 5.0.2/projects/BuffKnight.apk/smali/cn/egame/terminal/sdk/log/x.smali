.class final Lcn/egame/terminal/sdk/log/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/egame/terminal/sdk/log/aj;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/egame/terminal/sdk/log/x;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/x;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/egame/terminal/sdk/log/BaseLog;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
