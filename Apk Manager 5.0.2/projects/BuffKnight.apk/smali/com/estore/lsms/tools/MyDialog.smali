.class public Lcom/estore/lsms/tools/MyDialog;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/app/Dialog;

.field public progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->a:Landroid/os/Handler;

    iput-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->b:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/estore/lsms/tools/MyDialog;->a:Landroid/os/Handler;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u63d0\u793a\uff1a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/estore/lsms/tools/a;

    invoke-direct {v2, p0}, Lcom/estore/lsms/tools/a;-><init>(Lcom/estore/lsms/tools/MyDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->a:Landroid/os/Handler;

    iput-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->b:Landroid/app/Dialog;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/estore/lsms/tools/MyDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/estore/lsms/tools/MyDialog;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x6

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    iput v0, v1, Landroid/os/Message;->what:I

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public setProgressText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method

.method public startDialog()V
    .locals 1

    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public stopMyDialog()V
    .locals 1

    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public stopShowDialog()V
    .locals 1

    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estore/lsms/tools/MyDialog;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
