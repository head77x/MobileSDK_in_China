.class Lcom/anysdk/framework/IAPDebug$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/IAPDebug;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/IAPDebug;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/IAPDebug$6;->this$0:Lcom/anysdk/framework/IAPDebug;

    iput-object p2, p0, Lcom/anysdk/framework/IAPDebug$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/anysdk/framework/UserDebug;->setLoginState(Z)V

    const/4 v0, 0x2

    const-string v1, ""

    #calls: Lcom/anysdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V
    invoke-static {v0, v1}, Lcom/anysdk/framework/IAPDebug;->access$400(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/anysdk/framework/IAPDebug$6;->val$view:Landroid/view/View;

    const-string v1, "txt_username"

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/anysdk/framework/IAPDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/anysdk/framework/IAPDebug$6;->val$view:Landroid/view/View;

    const-string v2, "txt_password"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/anysdk/framework/IAPDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

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
    const/4 v0, 0x1

    const-string v1, "username or password is empty"

    #calls: Lcom/anysdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V
    invoke-static {v0, v1}, Lcom/anysdk/framework/IAPDebug;->access$400(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/anysdk/framework/IAPDebug$6;->this$0:Lcom/anysdk/framework/IAPDebug;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/anysdk/framework/IAPDebug$6$1;

    invoke-direct {v3, p0}, Lcom/anysdk/framework/IAPDebug$6$1;-><init>(Lcom/anysdk/framework/IAPDebug$6;)V

    #calls: Lcom/anysdk/framework/IAPDebug;->userLogin(Ljava/lang/String;Ljava/lang/String;Lcom/anysdk/framework/ILoginCallback;)V
    invoke-static {v2, v0, v1, v3}, Lcom/anysdk/framework/IAPDebug;->access$1300(Lcom/anysdk/framework/IAPDebug;Ljava/lang/String;Ljava/lang/String;Lcom/anysdk/framework/ILoginCallback;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
