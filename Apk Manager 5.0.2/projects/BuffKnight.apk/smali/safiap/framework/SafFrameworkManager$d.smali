.class final Lsafiap/framework/SafFrameworkManager$d;
.super Lsafiap/framework/SafFrameworkManager$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private b:Z

.field private c:Lsafiap/framework/SafFrameworkManager$c;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private synthetic f:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method public constructor <init>(Lsafiap/framework/SafFrameworkManager;Landroid/content/Context;Lsafiap/framework/a/b;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 284
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$d;->f:Lsafiap/framework/SafFrameworkManager;

    .line 285
    invoke-direct {p0, p1, p2, p3, v2}, Lsafiap/framework/SafFrameworkManager$b;-><init>(Lsafiap/framework/SafFrameworkManager;Landroid/content/Context;Lsafiap/framework/a/b;Z)V

    .line 281
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsafiap/framework/SafFrameworkManager$d;->e:J

    .line 286
    iput-boolean v2, p0, Lsafiap/framework/SafFrameworkManager$d;->b:Z

    .line 287
    invoke-static {p1}, Lsafiap/framework/SafFrameworkManager;->f(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/a/c;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsafiap/framework/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    iput-wide v0, p0, Lsafiap/framework/SafFrameworkManager$d;->e:J

    .line 288
    invoke-static {p1}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {p1}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$c;

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->c:Lsafiap/framework/SafFrameworkManager$c;

    .line 290
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->c:Lsafiap/framework/SafFrameworkManager$c;

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$c;->e:Ljava/util/List;

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->d:Ljava/util/List;

    .line 293
    :cond_0
    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->a:Ljava/lang/String;

    invoke-static {v0}, Lsafiap/framework/sdk/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 299
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->f:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lsafiap/framework/SafFrameworkManager$d;->b:Z

    invoke-static {v0, v6, v1}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v7

    .line 300
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->a:Ljava/lang/String;

    invoke-static {v0}, Lsafiap/framework/sdk/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 301
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->f:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lsafiap/framework/SafFrameworkManager$d;->b:Z

    invoke-static {v0, v5, v1}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v8

    .line 302
    const-wide/16 v2, 0x0

    .line 303
    const/4 v4, 0x0

    .line 305
    const-wide/16 v0, 0x0

    .line 308
    :cond_0
    iget-wide v10, p0, Lsafiap/framework/SafFrameworkManager$d;->e:J

    cmp-long v9, v2, v10

    if-gez v9, :cond_4

    .line 311
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 317
    cmp-long v9, v2, v0

    if-lez v9, :cond_2

    .line 319
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    long-to-int v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x1

    iget-wide v10, p0, Lsafiap/framework/SafFrameworkManager$d;->e:J

    long-to-int v4, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lsafiap/framework/SafFrameworkManager$d;->publishProgress([Ljava/lang/Object;)V

    .line 320
    const/4 v4, 0x0

    move-wide v0, v2

    .line 325
    :cond_1
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-nez v9, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 326
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lsafiap/framework/SafFrameworkManager$d;->publishProgress([Ljava/lang/Object;)V

    move-object v0, v5

    .line 357
    :goto_2
    return-object v0

    .line 312
    :catch_0
    move-exception v2

    .line 313
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 321
    :cond_2
    cmp-long v9, v2, v0

    if-gtz v9, :cond_1

    .line 322
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 330
    :cond_3
    const/4 v9, 0x3

    if-lt v4, v9, :cond_0

    .line 332
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->f:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 333
    sget v1, Lsafiap/framework/SafFrameworkManager;->a:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 335
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->f:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$d;->a:Ljava/lang/String;

    invoke-static {v1}, Lsafiap/framework/sdk/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lsafiap/framework/sdk/b/d;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 336
    :cond_4
    iget-wide v0, p0, Lsafiap/framework/SafFrameworkManager$d;->e:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    .line 340
    const/4 v0, 0x0

    goto :goto_2

    .line 342
    :cond_5
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->f:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lsafiap/framework/SafFrameworkManager$d;->b:Z

    invoke-static {v0, v5, v1}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 345
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x5

    if-ge v0, v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 347
    const-wide/16 v2, 0x12c

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    :goto_4
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$d;->f:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lsafiap/framework/SafFrameworkManager$d;->b:Z

    invoke-static {v1, v5, v2}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 348
    :catch_1
    move-exception v1

    .line 349
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 354
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v5

    .line 355
    goto :goto_2

    :cond_7
    move-object v0, v6

    .line 357
    goto :goto_2
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 375
    if-eqz p1, :cond_0

    .line 376
    invoke-static {p1}, Lsafiap/framework/sdk/b/d;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->f:Lsafiap/framework/SafFrameworkManager;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$d;->d:Ljava/util/List;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$d;->a:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V

    .line 385
    :goto_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->f:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->f:Lsafiap/framework/SafFrameworkManager;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$d;->d:Ljava/util/List;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$d;->a:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected final varargs a([Ljava/lang/Integer;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 366
    array-length v0, p1

    if-le v0, v4, :cond_0

    .line 367
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$d;->f:Lsafiap/framework/SafFrameworkManager;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$d;->d:Ljava/util/List;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$d;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;II)V

    .line 370
    :cond_0
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 276
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsafiap/framework/SafFrameworkManager$d;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsafiap/framework/SafFrameworkManager$d;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lsafiap/framework/SafFrameworkManager$d;->a([Ljava/lang/Integer;)V

    return-void
.end method
