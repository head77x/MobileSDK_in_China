.class Lcom/netmego/miguyouxisdk/MegoActivity$2;
.super Ljava/lang/Object;
.source "MegoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/MegoActivity;->OnInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

.field private final synthetic val$AnySDK_AppKey:Ljava/lang/String;

.field private final synthetic val$AnySDK_AppSecret:Ljava/lang/String;

.field private final synthetic val$AnySDK_oauthLoginServer:Ljava/lang/String;

.field private final synthetic val$AnySDK_privateKey:Ljava/lang/String;

.field private final synthetic val$AppName:Ljava/lang/String;

.field private final synthetic val$CompanyName:Ljava/lang/String;

.field private final synthetic val$MM_appID:Ljava/lang/String;

.field private final synthetic val$MM_appkey:Ljava/lang/String;

.field private final synthetic val$QAPhone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/MegoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iput-object p2, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$AnySDK_AppKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$AnySDK_AppSecret:Ljava/lang/String;

    iput-object p4, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$AnySDK_privateKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$AnySDK_oauthLoginServer:Ljava/lang/String;

    iput-object p6, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$MM_appID:Ljava/lang/String;

    iput-object p7, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$MM_appkey:Ljava/lang/String;

    iput-object p8, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$CompanyName:Ljava/lang/String;

    iput-object p9, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$QAPhone:Ljava/lang/String;

    iput-object p10, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$AppName:Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 163
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iget-object v1, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iget-object v1, v1, Lcom/netmego/miguyouxisdk/MegoActivity;->MainListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    .line 164
    iget-object v2, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$AnySDK_AppKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$AnySDK_AppSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$AnySDK_privateKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$AnySDK_oauthLoginServer:Ljava/lang/String;

    .line 165
    iget-object v6, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$MM_appID:Ljava/lang/String;

    iget-object v7, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$MM_appkey:Ljava/lang/String;

    .line 166
    iget-object v8, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$CompanyName:Ljava/lang/String;

    iget-object v9, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$QAPhone:Ljava/lang/String;

    iget-object v10, p0, Lcom/netmego/miguyouxisdk/MegoActivity$2;->val$AppName:Ljava/lang/String;

    .line 162
    invoke-static/range {v0 .. v10}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->init(Landroid/app/Activity;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method
