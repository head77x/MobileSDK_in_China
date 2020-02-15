.class Lsafiap/framework/SafFrameworkManager$b;
.super Lsafiap/framework/sdk/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private b:Lsafiap/framework/a/b;

.field private c:Z

.field private d:Lsafiap/framework/SafFrameworkManager$c;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic f:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method public constructor <init>(Lsafiap/framework/SafFrameworkManager;Landroid/content/Context;Lsafiap/framework/a/b;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$b;->f:Lsafiap/framework/SafFrameworkManager;

    .line 210
    iget-object v2, p3, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    iget v3, p3, Lsafiap/framework/a/b;->d:I

    iget-object v5, p3, Lsafiap/framework/a/b;->l:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lsafiap/framework/sdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->b:Lsafiap/framework/a/b;

    .line 211
    iput-object p3, p0, Lsafiap/framework/SafFrameworkManager$b;->b:Lsafiap/framework/a/b;

    .line 212
    iput-boolean p4, p0, Lsafiap/framework/SafFrameworkManager$b;->c:Z

    .line 213
    invoke-static {p1}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {p1}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$c;

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->d:Lsafiap/framework/SafFrameworkManager$c;

    .line 215
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->d:Lsafiap/framework/SafFrameworkManager$c;

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$c;->e:Ljava/util/List;

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->e:Ljava/util/List;

    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->d:Lsafiap/framework/SafFrameworkManager$c;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->d:Lsafiap/framework/SafFrameworkManager$c;

    sget-object v1, Lsafiap/framework/SafFrameworkManager$a;->c:Lsafiap/framework/SafFrameworkManager$a;

    iput-object v1, v0, Lsafiap/framework/SafFrameworkManager$c;->f:Lsafiap/framework/SafFrameworkManager$a;

    .line 228
    :cond_0
    invoke-super {p0, p1}, Lsafiap/framework/sdk/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lsafiap/framework/a/b;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->b:Lsafiap/framework/a/b;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 234
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginDownloadTask.onPostExecute():result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->d:Lsafiap/framework/SafFrameworkManager$c;

    sget-object v1, Lsafiap/framework/SafFrameworkManager$a;->d:Lsafiap/framework/SafFrameworkManager$a;

    iput-object v1, v0, Lsafiap/framework/SafFrameworkManager$c;->f:Lsafiap/framework/SafFrameworkManager$a;

    .line 236
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->f:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    if-eqz p1, :cond_0

    invoke-static {p1}, Lsafiap/framework/sdk/b/d;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->f:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lsafiap/framework/SafFrameworkManager$b;->c:Z

    invoke-static {v0, p1, v1}, Lsafiap/framework/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->f:Lsafiap/framework/SafFrameworkManager;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$b;->b:Lsafiap/framework/a/b;

    iget-object v1, v1, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$b;->b:Lsafiap/framework/a/b;

    iget v2, v2, Lsafiap/framework/a/b;->d:I

    invoke-static {v0, v1, p1, v2}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->f:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->e(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/b$a;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$b;->a:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p1, v2}, Lsafiap/framework/b$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->f:Lsafiap/framework/SafFrameworkManager;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$b;->e:Ljava/util/List;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$b;->a:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V

    .line 251
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->f:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->c(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$b;->a:Ljava/lang/String;

    invoke-static {v1}, Lsafiap/framework/sdk/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lsafiap/framework/SafFrameworkManager$b;->c:Z

    invoke-static {v0, v1, v2}, Lsafiap/framework/sdk/b/d;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 249
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->f:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->e(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/b$a;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lsafiap/framework/b$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->f:Lsafiap/framework/SafFrameworkManager;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$b;->e:Ljava/util/List;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$b;->a:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 255
    invoke-virtual {p0}, Lsafiap/framework/SafFrameworkManager$b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->a()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Task "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$b;->b:Lsafiap/framework/a/b;

    iget-object v2, v2, Lsafiap/framework/a/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is cancelled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    array-length v0, p1

    if-le v0, v4, :cond_0

    .line 259
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->f:Lsafiap/framework/SafFrameworkManager;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$b;->e:Ljava/util/List;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$b;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 196
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsafiap/framework/SafFrameworkManager$b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    .line 267
    invoke-super {p0}, Lsafiap/framework/sdk/a/a;->onCancelled()V

    .line 268
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->d:Lsafiap/framework/SafFrameworkManager$c;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->d:Lsafiap/framework/SafFrameworkManager$c;

    sget-object v1, Lsafiap/framework/SafFrameworkManager$a;->d:Lsafiap/framework/SafFrameworkManager$a;

    iput-object v1, v0, Lsafiap/framework/SafFrameworkManager$c;->f:Lsafiap/framework/SafFrameworkManager$a;

    .line 271
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$b;->f:Lsafiap/framework/SafFrameworkManager;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$b;->e:Ljava/util/List;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$b;->a:Ljava/lang/String;

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lsafiap/framework/SafFrameworkManager;->a(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V

    .line 273
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsafiap/framework/SafFrameworkManager$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lsafiap/framework/SafFrameworkManager$b;->a([Ljava/lang/Integer;)V

    return-void
.end method
