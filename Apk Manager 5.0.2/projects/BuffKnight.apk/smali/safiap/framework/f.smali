.class final Lsafiap/framework/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsafiap/framework/UpdateManager$OnGotUpdateListListener;


# instance fields
.field private synthetic a:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method constructor <init>(Lsafiap/framework/SafFrameworkManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lsafiap/framework/f;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGotUpdateList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lsafiap/framework/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1284
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    const-string v1, "onGotUpdateList...start"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1285
    sget v1, Lsafiap/framework/util/a;->a:I

    .line 1287
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1288
    iget-object v0, p0, Lsafiap/framework/f;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1289
    iget-object v2, p0, Lsafiap/framework/f;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v2}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, p2}, Lsafiap/framework/UpdateManager;->pickPluginUpdateItems(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    .line 1291
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/a/b;

    .line 1292
    iget-object v3, v0, Lsafiap/framework/a/b;->n:Ljava/lang/String;

    const-string v4, "Timer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lsafiap/framework/a/b;->o:I

    if-lez v3, :cond_1

    iget v3, v0, Lsafiap/framework/a/b;->o:I

    if-ge v3, v1, :cond_1

    .line 1293
    iget v0, v0, Lsafiap/framework/a/b;->o:I

    .line 1294
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "change timer frequence:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    :goto_1
    move v1, v0

    goto :goto_0

    .line 1300
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "safiap.framework.ACTION_SET_TIMER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1301
    sget-object v2, Lsafiap/framework/CheckUpdateReceiver;->a:Ljava/lang/String;

    iget-object v3, p0, Lsafiap/framework/f;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-virtual {v3}, Lsafiap/framework/SafFrameworkManager;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    sget-object v2, Lsafiap/framework/CheckUpdateReceiver;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1303
    iget-object v1, p0, Lsafiap/framework/f;->a:Lsafiap/framework/SafFrameworkManager;

    invoke-virtual {v1, v0}, Lsafiap/framework/SafFrameworkManager;->sendBroadcast(Landroid/content/Intent;)V

    .line 1304
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final onGotUpdateListError(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1309
    return-void
.end method
