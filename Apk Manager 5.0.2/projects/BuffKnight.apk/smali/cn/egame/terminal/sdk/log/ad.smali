.class Lcn/egame/terminal/sdk/log/ad;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcn/egame/terminal/sdk/log/ac;


# direct methods
.method constructor <init>(Lcn/egame/terminal/sdk/log/ac;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcn/egame/terminal/sdk/log/ad;->b:Lcn/egame/terminal/sdk/log/ac;

    iput-object p2, p0, Lcn/egame/terminal/sdk/log/ad;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/egame/terminal/sdk/log/ac;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/egame/terminal/sdk/log/ao;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/ad;->b:Lcn/egame/terminal/sdk/log/ac;

    invoke-static {v1}, Lcn/egame/terminal/sdk/log/ac;->a(Lcn/egame/terminal/sdk/log/ac;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/egame/terminal/sdk/log/ag;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v3, p0, Lcn/egame/terminal/sdk/log/ad;->a:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/egame/terminal/sdk/log/ad;->b:Lcn/egame/terminal/sdk/log/ac;

    invoke-static {v1}, Lcn/egame/terminal/sdk/log/ac;->a(Lcn/egame/terminal/sdk/log/ac;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/egame/terminal/sdk/log/ai;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
