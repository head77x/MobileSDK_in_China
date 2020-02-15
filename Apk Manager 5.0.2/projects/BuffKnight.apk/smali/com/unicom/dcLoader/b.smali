.class public Lcom/unicom/dcLoader/b;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Lcom/unicom/dcLoader/SubUtils;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/unicom/dcLoader/b$2;

    invoke-direct {v0, p0}, Lcom/unicom/dcLoader/b$2;-><init>(Lcom/unicom/dcLoader/b;)V

    iput-object v0, p0, Lcom/unicom/dcLoader/b;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "sdk_load_info"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sdk_loadpath"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/unicom/dcLoader/c$e;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/unicom/dcLoader/b;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unicom/dcLoader/b;->setRequestedOrientation(I)V

    new-instance v0, Lcom/unicom/dcLoader/SubUtils;

    invoke-direct {v0}, Lcom/unicom/dcLoader/SubUtils;-><init>()V

    iput-object v0, p0, Lcom/unicom/dcLoader/b;->b:Lcom/unicom/dcLoader/SubUtils;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unicom/dcLoader/b;->b:Lcom/unicom/dcLoader/SubUtils;

    invoke-virtual {v2, p0}, Lcom/unicom/dcLoader/SubUtils;->simtype(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget v0, Lcom/unicom/dcLoader/c$d;->test1:I

    invoke-virtual {p0, v0}, Lcom/unicom/dcLoader/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unicom/dcLoader/b;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unicom/dcLoader/b;->a:Landroid/widget/Button;

    new-instance v1, Lcom/unicom/dcLoader/b$1;

    invoke-direct {v1, p0}, Lcom/unicom/dcLoader/b$1;-><init>(Lcom/unicom/dcLoader/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
