.class Lcom/netmego/miguyouxisdk/AnySDK_Manager$6;
.super Ljava/lang/Object;
.source "AnySDK_Manager.java"

# interfaces
.implements Lcom/anysdk/framework/java/AnySDKListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/AnySDK_Manager;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$6;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 307
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    packed-switch p1, :pswitch_data_0

    .line 349
    :goto_0
    :pswitch_0
    return-void

    .line 313
    :pswitch_1
    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->Exit()V

    goto :goto_0

    .line 316
    :pswitch_2
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$6;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    const-string v1, "User is online"

    invoke-virtual {v0, p2, v1}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :pswitch_3
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$6;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    const-string v1, "Login Failed"

    invoke-virtual {v0, p2, v1}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKAnalytics;->getInstance()Lcom/anysdk/framework/java/AnySDKAnalytics;

    move-result-object v0

    const-string v1, "login"

    const-string v2, "fail"

    invoke-virtual {v0, v1, v2}, Lcom/anysdk/framework/java/AnySDKAnalytics;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :pswitch_4
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$6;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    const-string v1, "Logout Failed"

    invoke-virtual {v0, p2, v1}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :pswitch_5
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$6;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    const-string v1, "Register"

    invoke-virtual {v0, p2, v1}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
