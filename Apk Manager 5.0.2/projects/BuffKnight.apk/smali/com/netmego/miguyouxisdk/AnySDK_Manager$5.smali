.class Lcom/netmego/miguyouxisdk/AnySDK_Manager$5;
.super Ljava/lang/Object;
.source "AnySDK_Manager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/AnySDK_Manager;->ChoosePayMode(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$5;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 276
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKIAP;->getInstance()Lcom/anysdk/framework/java/AnySDKIAP;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$5;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    #getter for: Lcom/netmego/miguyouxisdk/AnySDK_Manager;->mProductionInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$1(Lcom/netmego/miguyouxisdk/AnySDK_Manager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/anysdk/framework/java/AnySDKIAP;->payForProduct(Ljava/lang/String;Ljava/util/Map;)V

    .line 277
    return-void
.end method
