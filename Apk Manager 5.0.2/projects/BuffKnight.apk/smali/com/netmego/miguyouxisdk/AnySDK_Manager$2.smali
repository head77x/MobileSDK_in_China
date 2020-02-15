.class Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;
.super Ljava/lang/Object;
.source "AnySDK_Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/AnySDK_Manager;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

.field private final synthetic val$Money:Ljava/lang/String;

.field private final synthetic val$ext_code:Ljava/lang/String;

.field private final synthetic val$props:Ljava/lang/String;

.field private final synthetic val$smsPayItem:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    iput-object p2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->val$Money:Ljava/lang/String;

    iput-object p3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->val$smsPayItem:Ljava/lang/String;

    iput-object p4, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->val$props:Ljava/lang/String;

    iput-object p5, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->val$ext_code:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v2, v3}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$0(Lcom/netmego/miguyouxisdk/AnySDK_Manager;Ljava/util/Map;)V

    .line 154
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "Product_Price"

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->val$Money:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {}, Lcom/anysdk/framework/java/AnySDK;->getInstance()Lcom/anysdk/framework/java/AnySDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anysdk/framework/java/AnySDK;->getChannelId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "000016"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/anysdk/framework/java/AnySDK;->getInstance()Lcom/anysdk/framework/java/AnySDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anysdk/framework/java/AnySDK;->getChannelId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "000009"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/anysdk/framework/java/AnySDK;->getInstance()Lcom/anysdk/framework/java/AnySDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anysdk/framework/java/AnySDK;->getChannelId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "000349"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "Product_Id"

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->val$smsPayItem:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :goto_0
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "Product_Name"

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->val$props:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "Server_Id"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "Product_Count"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "Role_Id"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "Role_Name"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "Role_Grade"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "Role_Balance"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "EXT"

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->val$ext_code:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKIAP;->getInstance()Lcom/anysdk/framework/java/AnySDKIAP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anysdk/framework/java/AnySDKIAP;->getPluginId()Ljava/util/ArrayList;

    move-result-object v1

    .line 171
    .local v1, idArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 172
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKIAP;->getInstance()Lcom/anysdk/framework/java/AnySDKIAP;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v4}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/anysdk/framework/java/AnySDKIAP;->payForProduct(Ljava/lang/String;Ljava/util/Map;)V

    .line 182
    .end local v1           #idArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "Product_Id"

    const-string v4, "monthly"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #idArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    invoke-virtual {v2, v1}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->ChoosePayMode(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
