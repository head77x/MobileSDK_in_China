.class Lcom/anysdk/framework/SocialDebug$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/SocialDebug;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/SocialDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/SocialDebug$4;->this$0:Lcom/anysdk/framework/SocialDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/anysdk/framework/SocialDebug;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anysdk/framework/SocialDebug;->access$700()Lcom/anysdk/framework/SocialDebug;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "Already logined!"

    invoke-static {v0, v1, v2}, Lcom/anysdk/framework/SocialWrapper;->onSocialResult(Lcom/anysdk/framework/InterfaceSocial;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/anysdk/framework/SocialDebug;->access$500()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "plugin_login_title"

    const-string v2, "string"

    invoke-static {v1, v2}, Lcom/anysdk/framework/SocialDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/anysdk/framework/SocialDebug;->access$500()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "plugin_login"

    const-string v3, "layout"

    invoke-static {v2, v3}, Lcom/anysdk/framework/SocialDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/anysdk/framework/SocialDebug$4$1;

    invoke-direct {v2, p0, v1}, Lcom/anysdk/framework/SocialDebug$4$1;-><init>(Lcom/anysdk/framework/SocialDebug$4;Landroid/view/View;)V

    const-string v1, "plugin_login"

    const-string v3, "string"

    invoke-static {v1, v3}, Lcom/anysdk/framework/SocialDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "plugin_cancel"

    const-string v3, "string"

    invoke-static {v1, v3}, Lcom/anysdk/framework/SocialDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
