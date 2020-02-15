.class Lcom/anysdk/framework/IAPDebug$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/IAPDebug$5;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/IAPDebug$5;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/IAPDebug$5$1;->this$0:Lcom/anysdk/framework/IAPDebug$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x2

    const-string v1, "the pay has been canceled"

    #calls: Lcom/anysdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V
    invoke-static {v0, v1}, Lcom/anysdk/framework/IAPDebug;->access$400(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/anysdk/framework/IAPDebug$5$1;->this$0:Lcom/anysdk/framework/IAPDebug$5;

    iget-object v0, v0, Lcom/anysdk/framework/IAPDebug$5;->val$orderId:Ljava/lang/String;

    iget-object v1, p0, Lcom/anysdk/framework/IAPDebug$5$1;->this$0:Lcom/anysdk/framework/IAPDebug$5;

    iget v1, v1, Lcom/anysdk/framework/IAPDebug$5;->val$money:I

    #calls: Lcom/anysdk/framework/IAPDebug;->pay(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/anysdk/framework/IAPDebug;->access$1200(Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
