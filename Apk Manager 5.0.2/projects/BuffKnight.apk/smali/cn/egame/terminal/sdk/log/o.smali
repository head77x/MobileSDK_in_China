.class Lcn/egame/terminal/sdk/log/o;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/egame/terminal/sdk/log/n;

.field private b:I

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcn/egame/terminal/sdk/log/n;I)V
    .locals 3

    iput-object p1, p0, Lcn/egame/terminal/sdk/log/o;->a:Lcn/egame/terminal/sdk/log/n;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TubeThread"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/o;->c:Ljava/lang/Runnable;

    iput p2, p0, Lcn/egame/terminal/sdk/log/o;->b:I

    const-string v0, "TubeThreadPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---creat WorkThread id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lcn/egame/terminal/sdk/log/o;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/egame/terminal/sdk/log/o;->a:Lcn/egame/terminal/sdk/log/n;

    iget v1, p0, Lcn/egame/terminal/sdk/log/o;->b:I

    invoke-static {v0, v1}, Lcn/egame/terminal/sdk/log/n;->a(Lcn/egame/terminal/sdk/log/n;I)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/o;->c:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcn/egame/terminal/sdk/log/o;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcn/egame/terminal/sdk/log/o;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/o;->c:Ljava/lang/Runnable;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TubeThreadPool"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "TubeThreadPool"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/egame/terminal/sdk/log/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
