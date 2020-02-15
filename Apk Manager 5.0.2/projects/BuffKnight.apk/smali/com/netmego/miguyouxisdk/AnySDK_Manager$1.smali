.class Lcom/netmego/miguyouxisdk/AnySDK_Manager$1;
.super Ljava/lang/Object;
.source "AnySDK_Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/AnySDK_Manager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

.field private final synthetic val$appKey:Ljava/lang/String;

.field private final synthetic val$appSecret:Ljava/lang/String;

.field private final synthetic val$oauthLoginServer:Ljava/lang/String;

.field private final synthetic val$privateKey:Ljava/lang/String;


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
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    iput-object p2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$1;->val$appKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$1;->val$appSecret:Ljava/lang/String;

    iput-object p4, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$1;->val$privateKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$1;->val$oauthLoginServer:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    iget-object v2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$1;->val$appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$1;->val$appSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$1;->val$privateKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$1;->val$oauthLoginServer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->initAnySDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKPush;->getInstance()Lcom/anysdk/framework/java/AnySDKPush;

    invoke-static {}, Lcom/anysdk/framework/java/AnySDKPush;->startPush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
