.class final Lsafiap/framework/SafFrameworkManager$e;
.super Lsafiap/framework/sdk/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "avp"


# instance fields
.field private c:Lsafiap/framework/a/b;

.field private d:Z

.field private e:Lsafiap/framework/SafFrameworkManager$c;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic g:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method public constructor <init>(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/a/b;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    .line 404
    iget-object v0, p2, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    invoke-static {p1}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsafiap/framework/sdk/a/b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->c:Lsafiap/framework/a/b;

    .line 405
    iput-object p2, p0, Lsafiap/framework/SafFrameworkManager$e;->c:Lsafiap/framework/a/b;

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsafiap/framework/SafFrameworkManager$e;->d:Z

    .line 407
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 434
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginQueryTask.onPostExecute().result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    :try_start_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 440
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 441
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 442
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 443
    invoke-static {v3}, Lsafiap/framework/a/b;->a(Lorg/json/JSONObject;)Lsafiap/framework/a/b;

    move-result-object v3

    .line 444
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 449
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/a/b;

    .line 452
    new-instance v2, Lsafiap/framework/SafFrameworkManager$b;

    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v4}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lsafiap/framework/SafFrameworkManager$e;->d:Z

    invoke-direct {v2, v3, v4, v0, v5}, Lsafiap/framework/SafFrameworkManager$b;-><init>(Lsafiap/framework/SafFrameworkManager;Landroid/content/Context;Lsafiap/framework/a/b;Z)V

    .line 453
    invoke-virtual {v2}, Lsafiap/framework/SafFrameworkManager$b;->a()Lsafiap/framework/a/b;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lsafiap/framework/a/b;->p:Z

    .line 454
    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager$e;->e:Lsafiap/framework/SafFrameworkManager$c;

    iput-object v2, v3, Lsafiap/framework/SafFrameworkManager$c;->d:Lsafiap/framework/SafFrameworkManager$b;

    .line 456
    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v2}, Lsafiap/framework/SafFrameworkManager;->g(Lsafiap/framework/SafFrameworkManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 457
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 458
    const-string v4, "action_name"

    iget-object v0, v0, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 460
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->g(Lsafiap/framework/SafFrameworkManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SAF-A Exception:530001"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 485
    :cond_1
    :goto_2
    return-void

    .line 473
    :cond_2
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->e(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/b$a;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$e;->c:Lsafiap/framework/a/b;

    iget-object v1, v1, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lsafiap/framework/b$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 477
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->e:Lsafiap/framework/SafFrameworkManager$c;

    sget-object v1, Lsafiap/framework/SafFrameworkManager$a;->d:Lsafiap/framework/SafFrameworkManager$a;

    iput-object v1, v0, Lsafiap/framework/SafFrameworkManager$c;->f:Lsafiap/framework/SafFrameworkManager$a;

    .line 480
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$e;->a:Ljava/lang/String;

    invoke-static {v1}, Lsafiap/framework/sdk/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lsafiap/framework/SafFrameworkManager$e;->d:Z

    invoke-static {v0, v1, v2}, Lsafiap/framework/sdk/b/d;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 482
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$e;->f:Ljava/util/List;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$e;->a:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 391
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsafiap/framework/SafFrameworkManager$e;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->e:Lsafiap/framework/SafFrameworkManager$c;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->e:Lsafiap/framework/SafFrameworkManager$c;

    sget-object v1, Lsafiap/framework/SafFrameworkManager$a;->b:Lsafiap/framework/SafFrameworkManager$a;

    iput-object v1, v0, Lsafiap/framework/SafFrameworkManager$c;->f:Lsafiap/framework/SafFrameworkManager$a;

    .line 429
    :cond_0
    invoke-super {p0, p1}, Lsafiap/framework/sdk/a/b;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    .line 391
    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginQueryTask.onPostExecute().result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lsafiap/framework/a/b;->a(Lorg/json/JSONObject;)Lsafiap/framework/a/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/a/b;

    new-instance v2, Lsafiap/framework/SafFrameworkManager$b;

    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v4}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lsafiap/framework/SafFrameworkManager$e;->d:Z

    invoke-direct {v2, v3, v4, v0, v5}, Lsafiap/framework/SafFrameworkManager$b;-><init>(Lsafiap/framework/SafFrameworkManager;Landroid/content/Context;Lsafiap/framework/a/b;Z)V

    invoke-virtual {v2}, Lsafiap/framework/SafFrameworkManager$b;->a()Lsafiap/framework/a/b;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lsafiap/framework/a/b;->p:Z

    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager$e;->e:Lsafiap/framework/SafFrameworkManager$c;

    iput-object v2, v3, Lsafiap/framework/SafFrameworkManager$c;->d:Lsafiap/framework/SafFrameworkManager$b;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v2}, Lsafiap/framework/SafFrameworkManager;->g(Lsafiap/framework/SafFrameworkManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "action_name"

    iget-object v0, v0, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->g(Lsafiap/framework/SafFrameworkManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SAF-A Exception:530001"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->e(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/b$a;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$e;->c:Lsafiap/framework/a/b;

    iget-object v1, v1, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lsafiap/framework/b$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->e:Lsafiap/framework/SafFrameworkManager$c;

    sget-object v1, Lsafiap/framework/SafFrameworkManager$a;->d:Lsafiap/framework/SafFrameworkManager$a;

    iput-object v1, v0, Lsafiap/framework/SafFrameworkManager$c;->f:Lsafiap/framework/SafFrameworkManager$a;

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$e;->a:Ljava/lang/String;

    invoke-static {v1}, Lsafiap/framework/sdk/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lsafiap/framework/SafFrameworkManager$e;->d:Z

    invoke-static {v0, v1, v2}, Lsafiap/framework/sdk/b/d;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$e;->f:Ljava/util/List;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$e;->a:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$c;

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->e:Lsafiap/framework/SafFrameworkManager$c;

    .line 413
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->e:Lsafiap/framework/SafFrameworkManager$c;

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$c;->e:Ljava/util/List;

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->f:Ljava/util/List;

    .line 417
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$e;->g:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$e;->c:Lsafiap/framework/a/b;

    if-nez v2, :cond_2

    const-string v0, ""

    .line 418
    :goto_0
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PluginQueryTask.onPreExecute().json: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 419
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 420
    const-string v1, "avp"

    invoke-virtual {p0, v1, v0}, Lsafiap/framework/SafFrameworkManager$e;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_1
    return-void

    .line 417
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x7b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lsafiap/framework/a/b;->d:I

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    const/16 v2, 0x2710

    invoke-static {v1, v0, v2}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v0, v2, Lsafiap/framework/a/b;->d:I

    goto :goto_1
.end method
