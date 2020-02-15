.class Lcom/unicom/dcLoader/Utils$loaderTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "loaderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/dcLoader/Utils;

.field private totaltimes:I


# direct methods
.method private constructor <init>(Lcom/unicom/dcLoader/Utils;)V
    .locals 1

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->totaltimes:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/unicom/dcLoader/Utils;Lcom/unicom/dcLoader/Utils$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/Utils$loaderTask;-><init>(Lcom/unicom/dcLoader/Utils;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    const-string v0, "xyf"

    const-string v1, "kill thread is cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->totaltimes:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->totaltimes:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v2, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->totaltimes:I

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(I)V

    iget v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->totaltimes:I

    const/16 v2, 0x1388

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {}, Lcom/unicom/dcLoader/DynProcessUtil;->getProcessIdList()[I

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unicom/dcLoader/Utils;->a(Lcom/unicom/dcLoader/Utils;[I)[I

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v0}, Lcom/unicom/dcLoader/Utils;->c(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v2}, Lcom/unicom/dcLoader/Utils;->c(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    invoke-static {v0, v2}, Lcom/unicom/dcLoader/Utils;->b(Lcom/unicom/dcLoader/Utils;[I)[I

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v3}, Lcom/unicom/dcLoader/Utils;->c(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_2

    const/4 v4, 0x1

    move v3, v1

    :goto_1
    iget-object v5, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v5}, Lcom/unicom/dcLoader/Utils;->d(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_7

    iget-object v5, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v5}, Lcom/unicom/dcLoader/Utils;->c(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v5

    aget v5, v5, v0

    iget-object v6, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v6}, Lcom/unicom/dcLoader/Utils;->d(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v6

    aget v6, v6, v3

    if-ne v5, v6, :cond_1

    move v3, v1

    :goto_2
    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v3}, Lcom/unicom/dcLoader/Utils;->e(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v4

    add-int/lit8 v3, v2, 0x1

    iget-object v5, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v5}, Lcom/unicom/dcLoader/Utils;->c(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v5

    aget v5, v5, v0

    aput v5, v4, v2

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v0}, Lcom/unicom/dcLoader/Utils;->e(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_3
    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v3}, Lcom/unicom/dcLoader/Utils;->e(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v3

    aget v3, v3, v1

    if-le v3, v0, :cond_3

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v0}, Lcom/unicom/dcLoader/Utils;->e(Lcom/unicom/dcLoader/Utils;)[I

    move-result-object v0

    aget v0, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :try_start_0
    const-string v1, "xyf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kill pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/unicom/dcLoader/Utils$loaderTask;->cancel()Z

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v0}, Lcom/unicom/dcLoader/Utils;->f(Lcom/unicom/dcLoader/Utils;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_6

    const-string v0, "xyf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v2}, Lcom/unicom/dcLoader/Utils;->f(Lcom/unicom/dcLoader/Utils;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils$loaderTask;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v1}, Lcom/unicom/dcLoader/Utils;->a(Lcom/unicom/dcLoader/Utils;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unicom/dcLoader/Utils;->a(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V

    :cond_6
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_7
    move v3, v4

    goto/16 :goto_2
.end method
