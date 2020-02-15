.class final Lsafiap/framework/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lsafiap/framework/sdk/ISAFFrameworkCallback;

.field private synthetic d:Z

.field private synthetic e:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method constructor <init>(Lsafiap/framework/SafFrameworkManager;ZLjava/lang/String;Lsafiap/framework/sdk/ISAFFrameworkCallback;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lsafiap/framework/c;->e:Lsafiap/framework/SafFrameworkManager;

    iput-boolean p2, p0, Lsafiap/framework/c;->a:Z

    iput-object p3, p0, Lsafiap/framework/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lsafiap/framework/c;->c:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    iput-boolean p5, p0, Lsafiap/framework/c;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 675
    iget-boolean v0, p0, Lsafiap/framework/c;->a:Z

    if-nez v0, :cond_1

    .line 677
    iget-object v0, p0, Lsafiap/framework/c;->e:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$c;

    .line 680
    iget-object v1, p0, Lsafiap/framework/c;->c:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    if-eqz v1, :cond_0

    .line 681
    if-eqz v0, :cond_0

    .line 682
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "listener != null ..., downloader.state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lsafiap/framework/SafFrameworkManager$c;->f:Lsafiap/framework/SafFrameworkManager$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 684
    sget-object v1, Lsafiap/framework/SafFrameworkManager$1;->a:[I

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$c;->f:Lsafiap/framework/SafFrameworkManager$a;

    invoke-virtual {v0}, Lsafiap/framework/SafFrameworkManager$a;->ordinal()I

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iget-object v0, p0, Lsafiap/framework/c;->e:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$c;

    .line 696
    iget v1, v0, Lsafiap/framework/SafFrameworkManager$c;->a:I

    .line 697
    iget-object v2, p0, Lsafiap/framework/c;->e:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v2}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lsafiap/framework/c;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lsafiap/framework/sdk/b/d;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 699
    new-instance v3, Lsafiap/framework/a/b;

    iget-object v4, p0, Lsafiap/framework/c;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lsafiap/framework/a/b;-><init>(Ljava/lang/String;I)V

    .line 701
    if-eqz v0, :cond_0

    .line 702
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startDownd...downloaderType is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 704
    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 706
    iget-boolean v1, p0, Lsafiap/framework/c;->d:Z

    iput-boolean v1, v3, Lsafiap/framework/a/b;->p:Z

    .line 707
    new-instance v1, Lsafiap/framework/SafFrameworkManager$e;

    iget-object v2, p0, Lsafiap/framework/c;->e:Lsafiap/framework/SafFrameworkManager;

    invoke-direct {v1, v2, v3, v6}, Lsafiap/framework/SafFrameworkManager$e;-><init>(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/a/b;Z)V

    .line 713
    iput-object v1, v0, Lsafiap/framework/SafFrameworkManager$c;->c:Lsafiap/framework/SafFrameworkManager$e;

    .line 714
    iget-object v2, p0, Lsafiap/framework/c;->c:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    invoke-virtual {v0, v2}, Lsafiap/framework/SafFrameworkManager$c;->a(Lsafiap/framework/sdk/ISAFFrameworkCallback;)Z

    .line 715
    new-array v0, v6, [Ljava/lang/String;

    sget-object v2, Lsafiap/framework/util/Constants;->URL_CHECK_UPDATE:Ljava/lang/String;

    aput-object v2, v0, v7

    invoke-virtual {v1, v0}, Lsafiap/framework/SafFrameworkManager$e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 716
    :cond_2
    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    .line 717
    new-instance v1, Lsafiap/framework/SafFrameworkManager$d;

    iget-object v2, p0, Lsafiap/framework/c;->e:Lsafiap/framework/SafFrameworkManager;

    iget-object v4, p0, Lsafiap/framework/c;->e:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v4}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3, v6}, Lsafiap/framework/SafFrameworkManager$d;-><init>(Lsafiap/framework/SafFrameworkManager;Landroid/content/Context;Lsafiap/framework/a/b;Z)V

    .line 719
    iget-object v2, p0, Lsafiap/framework/c;->c:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    invoke-virtual {v0, v2}, Lsafiap/framework/SafFrameworkManager$c;->a(Lsafiap/framework/sdk/ISAFFrameworkCallback;)Z

    .line 720
    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lsafiap/framework/SafFrameworkManager$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
