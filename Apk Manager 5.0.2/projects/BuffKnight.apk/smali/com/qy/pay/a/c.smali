.class public Lcom/qy/pay/a/c;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "R.style.qy_dialog"

    invoke-static {p1, v0}, Lcom/qy/pay/f/N;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/qy/pay/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "R.layout.qy_pay_dialog"

    invoke-static {v0, v1}, Lcom/qy/pay/f/N;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qy/pay/a/c;->setContentView(I)V

    invoke-virtual {p0}, Lcom/qy/pay/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "R.id.qy_iv_close"

    invoke-static {v0, v1}, Lcom/qy/pay/f/N;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qy/pay/a/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qy/pay/a/c;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/qy/pay/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "R.id.qy_tv_cp_hint"

    invoke-static {v0, v1}, Lcom/qy/pay/f/N;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qy/pay/a/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qy/pay/a/c;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/qy/pay/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "R.id.qy_tv_hint"

    invoke-static {v0, v1}, Lcom/qy/pay/f/N;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qy/pay/a/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qy/pay/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/qy/pay/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "R.id.qy_btn_confirm"

    invoke-static {v0, v1}, Lcom/qy/pay/f/N;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qy/pay/a/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qy/pay/a/c;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/qy/pay/a/c;->d:Landroid/widget/Button;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/qy/pay/a/c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qy/pay/a/c;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/qy/pay/a/c;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qy/pay/a/c;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/a/c;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/a/c;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/a/c;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qy/pay/a/c;->f:Ljava/lang/String;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-direct {p0}, Lcom/qy/pay/a/c;->a()V

    iget-object v0, p0, Lcom/qy/pay/a/c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qy/pay/a/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/qy/pay/a/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qy/pay/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
