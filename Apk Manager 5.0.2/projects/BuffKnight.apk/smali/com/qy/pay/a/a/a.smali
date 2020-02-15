.class public Lcom/qy/pay/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/app/ProgressDialog;


# direct methods
.method public static a()V
    .locals 1

    sget-object v0, Lcom/qy/pay/a/a/a;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qy/pay/a/a/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qy/pay/a/a/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/qy/pay/a/a/a;->a()V

    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qy/pay/a/a/a;->a:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/qy/pay/a/a/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/qy/pay/a/a/a;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v0, Lcom/qy/pay/a/a/a;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    sget-object v0, Lcom/qy/pay/a/a/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/qy/pay/f/M;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qy/pay/a/b;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
