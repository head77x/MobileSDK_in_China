.class Lcom/qy/pay/f/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qy/pay/network/a/a;


# instance fields
.field final synthetic a:Lcom/qy/pay/f/i;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/qy/pay/f/i;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/f/y;->a:Lcom/qy/pay/f/i;

    iput-object p2, p0, Lcom/qy/pay/f/y;->b:Ljava/lang/String;

    iput p3, p0, Lcom/qy/pay/f/y;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/f/y;)Lcom/qy/pay/f/i;
    .locals 1

    iget-object v0, p0, Lcom/qy/pay/f/y;->a:Lcom/qy/pay/f/i;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 6

    const/4 v2, 0x1

    if-nez p1, :cond_7

    check-cast p2, Lcom/qy/pay/network/c/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init resp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/qy/pay/network/c/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    :try_start_0
    invoke-virtual {p2}, Lcom/qy/pay/network/c/b;->e()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qy/pay/f/i;->b:Z

    :goto_0
    invoke-virtual {p2}, Lcom/qy/pay/network/c/b;->c()B

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qy/pay/f/i;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/qy/pay/f/y;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qy/pay/f/i;->a:Landroid/os/Handler;

    new-instance v1, Lcom/qy/pay/f/z;

    iget-object v2, p0, Lcom/qy/pay/f/y;->b:Ljava/lang/String;

    iget v3, p0, Lcom/qy/pay/f/y;->c:I

    invoke-direct {v1, p0, v2, v3}, Lcom/qy/pay/f/z;-><init>(Lcom/qy/pay/f/y;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/qy/pay/f/i;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "paylog"

    const-string v1, "init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/qy/pay/f/i;->d:Z

    invoke-virtual {p2}, Lcom/qy/pay/network/c/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/qy/pay/network/c/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qy/pay/f/y;->a:Lcom/qy/pay/f/i;

    invoke-virtual {p2}, Lcom/qy/pay/network/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init sendMaxTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qy/pay/f/y;->a:Lcom/qy/pay/f/i;

    invoke-static {v1}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/f/i;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/qy/pay/f/y;->a:Lcom/qy/pay/f/i;

    invoke-static {v2, p2}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;Lcom/qy/pay/network/c/b;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/qy/pay/f/y;->a:Lcom/qy/pay/f/i;

    invoke-static {v1, v0}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/f/i;I)V

    iget-object v0, p0, Lcom/qy/pay/f/y;->a:Lcom/qy/pay/f/i;

    invoke-virtual {p2}, Lcom/qy/pay/network/c/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qy/pay/f/i;->e:Z

    goto/16 :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init resp error code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/qy/pay/network/c/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/qy/pay/f/y;->a:Lcom/qy/pay/f/i;

    const/16 v1, 0x3f4

    invoke-static {v0, v1}, Lcom/qy/pay/f/i;->b(Lcom/qy/pay/f/i;I)V

    iget-object v0, p0, Lcom/qy/pay/f/y;->a:Lcom/qy/pay/f/i;

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/qy/pay/f/i;->a(Lcom/qy/pay/f/i;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
