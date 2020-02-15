.class final Lcom/anysdk/framework/UserDebug$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$curMsg:Ljava/lang/String;

.field final synthetic val$curTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/UserDebug$7;->val$curTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/anysdk/framework/UserDebug$7;->val$curMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$600()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/anysdk/framework/UserDebug$7;->val$curTitle:Ljava/lang/String;

    const-string v2, "string"

    invoke-static {v1, v2}, Lcom/anysdk/framework/UserDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/anysdk/framework/UserDebug$7;->val$curMsg:Ljava/lang/String;

    const-string v2, "string"

    invoke-static {v1, v2}, Lcom/anysdk/framework/UserDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/anysdk/framework/UserDebug$7$1;

    invoke-direct {v2, p0}, Lcom/anysdk/framework/UserDebug$7$1;-><init>(Lcom/anysdk/framework/UserDebug$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
