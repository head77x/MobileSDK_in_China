.class Lcom/anysdk/framework/SocialDebug$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/anysdk/framework/SocialDebug$4;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/SocialDebug$4;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/SocialDebug$4$1;->this$1:Lcom/anysdk/framework/SocialDebug$4;

    iput-object p2, p0, Lcom/anysdk/framework/SocialDebug$4$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x6

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/anysdk/framework/SocialDebug;->access$602(Z)Z

    invoke-static {}, Lcom/anysdk/framework/SocialDebug;->access$700()Lcom/anysdk/framework/SocialDebug;

    move-result-object v0

    const-string v1, "the login has been canceled"

    invoke-static {v0, v4, v1}, Lcom/anysdk/framework/SocialWrapper;->onSocialResult(Lcom/anysdk/framework/InterfaceSocial;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/anysdk/framework/SocialDebug$4$1;->val$view:Landroid/view/View;

    const-string v1, "txt_username"

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/anysdk/framework/SocialDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/anysdk/framework/SocialDebug$4$1;->val$view:Landroid/view/View;

    const-string v2, "txt_password"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/anysdk/framework/SocialDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/anysdk/framework/SocialDebug;->access$700()Lcom/anysdk/framework/SocialDebug;

    move-result-object v0

    const-string v1, "username or password is empty"

    invoke-static {v0, v4, v1}, Lcom/anysdk/framework/SocialWrapper;->onSocialResult(Lcom/anysdk/framework/InterfaceSocial;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/anysdk/framework/SocialDebug$4$1;->this$1:Lcom/anysdk/framework/SocialDebug$4;

    iget-object v2, v2, Lcom/anysdk/framework/SocialDebug$4;->this$0:Lcom/anysdk/framework/SocialDebug;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/anysdk/framework/SocialDebug$4$1$1;

    invoke-direct {v3, p0}, Lcom/anysdk/framework/SocialDebug$4$1$1;-><init>(Lcom/anysdk/framework/SocialDebug$4$1;)V

    #calls: Lcom/anysdk/framework/SocialDebug;->userLogin(Ljava/lang/String;Ljava/lang/String;Lcom/anysdk/framework/ILoginCallback;)V
    invoke-static {v2, v0, v1, v3}, Lcom/anysdk/framework/SocialDebug;->access$800(Lcom/anysdk/framework/SocialDebug;Ljava/lang/String;Ljava/lang/String;Lcom/anysdk/framework/ILoginCallback;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
