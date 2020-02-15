.class public Lcom/qy/pay/a/b;
.super Landroid/app/Activity;


# instance fields
.field a:Lcom/qy/pay/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qy/pay/f/i;->b()V

    invoke-virtual {p0}, Lcom/qy/pay/a/b;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/qy/pay/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/qy/pay/a/b;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v0

    const/16 v1, 0x3ee

    const-string v2, "\u53d6\u6d88\u652f\u4ed8"

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/qy/pay/a/b;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/qy/pay/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/qy/pay/a/b;->a()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/qy/pay/a/b;->a:Lcom/qy/pay/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qy/pay/a/c;

    invoke-direct {v0, p0}, Lcom/qy/pay/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qy/pay/a/b;->a:Lcom/qy/pay/a/c;

    iget-object v0, p0, Lcom/qy/pay/a/b;->a:Lcom/qy/pay/a/c;

    invoke-virtual {v0, v2}, Lcom/qy/pay/a/c;->setCancelable(Z)V

    iget-object v0, p0, Lcom/qy/pay/a/b;->a:Lcom/qy/pay/a/c;

    new-instance v1, Lcom/qy/pay/a/f;

    invoke-direct {v1, p0}, Lcom/qy/pay/a/f;-><init>(Lcom/qy/pay/a/b;)V

    invoke-virtual {v0, v1}, Lcom/qy/pay/a/c;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/qy/pay/a/b;->a:Lcom/qy/pay/a/c;

    new-instance v1, Lcom/qy/pay/a/g;

    invoke-direct {v1, p0}, Lcom/qy/pay/a/g;-><init>(Lcom/qy/pay/a/b;)V

    invoke-virtual {v0, v1}, Lcom/qy/pay/a/c;->b(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qy/pay/a/b;->a:Lcom/qy/pay/a/c;

    invoke-virtual {v0, p1}, Lcom/qy/pay/a/c;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/qy/pay/a/b;->a:Lcom/qy/pay/a/c;

    const-string v1, "\u4fe1\u606f\u8d39\u7531\u5408\u4f5c\u4f19\u4f34\u4ee3\u4e3a\u6536\u53d6\uff0c\u6536\u8d39\u6210\u529f\u540e\u8fd0\u8425\u5546\u4f1a\u53d1\u9001\u77ed\u4fe1\u5230\u60a8\u7684\u6536\u4ef6\u7bb1\u3002"

    invoke-virtual {v0, v1}, Lcom/qy/pay/a/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qy/pay/a/b;->a:Lcom/qy/pay/a/c;

    invoke-virtual {v0}, Lcom/qy/pay/a/c;->show()V

    iget-object v0, p0, Lcom/qy/pay/a/b;->a:Lcom/qy/pay/a/c;

    invoke-virtual {v0, v2}, Lcom/qy/pay/a/c;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/qy/pay/a/b;->a:Lcom/qy/pay/a/c;

    invoke-virtual {v0, v2}, Lcom/qy/pay/a/c;->setCancelable(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0}, Lcom/qy/pay/a/b;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "content"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/qy/pay/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/qy/pay/f/i;->a()Lcom/qy/pay/f/i;

    move-result-object v0

    const/16 v1, 0x3ef

    const-string v2, "\u4e8c\u6b21\u786e\u8ba4\u6846\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Lcom/qy/pay/f/i;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/qy/pay/a/b;->finish()V

    goto :goto_0
.end method
