.class Lcom/anysdk/framework/UserDebug$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/anysdk/framework/UserDebug$6;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/UserDebug$6;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/UserDebug$6$1;->this$1:Lcom/anysdk/framework/UserDebug$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/anysdk/framework/UserDebug;->access$400()Lcom/anysdk/framework/UserDebug;

    move-result-object v0

    const/16 v1, 0xc

    const-string v2, "exit"

    invoke-static {v0, v1, v2}, Lcom/anysdk/framework/UserWrapper;->onActionResult(Lcom/anysdk/framework/InterfaceUser;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
