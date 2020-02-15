.class Lcom/netmego/miguyouxisdk/MegoActivity$3;
.super Ljava/lang/Object;
.source "MegoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/MegoActivity;->OnBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

.field private final synthetic val$money:Ljava/lang/String;

.field private final synthetic val$props:Ljava/lang/String;

.field private final synthetic val$smsPayItem:Ljava/lang/String;

.field private final synthetic val$vaccode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/MegoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/MegoActivity$3;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iput-object p2, p0, Lcom/netmego/miguyouxisdk/MegoActivity$3;->val$smsPayItem:Ljava/lang/String;

    iput-object p3, p0, Lcom/netmego/miguyouxisdk/MegoActivity$3;->val$vaccode:Ljava/lang/String;

    iput-object p4, p0, Lcom/netmego/miguyouxisdk/MegoActivity$3;->val$props:Ljava/lang/String;

    iput-object p5, p0, Lcom/netmego/miguyouxisdk/MegoActivity$3;->val$money:Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 185
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/netmego/miguyouxisdk/MegoActivity$3;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iget-object v2, p0, Lcom/netmego/miguyouxisdk/MegoActivity$3;->val$smsPayItem:Ljava/lang/String;

    iget-object v3, p0, Lcom/netmego/miguyouxisdk/MegoActivity$3;->val$vaccode:Ljava/lang/String;

    iget-object v4, p0, Lcom/netmego/miguyouxisdk/MegoActivity$3;->val$props:Ljava/lang/String;

    iget-object v5, p0, Lcom/netmego/miguyouxisdk/MegoActivity$3;->val$money:Ljava/lang/String;

    iget-object v6, p0, Lcom/netmego/miguyouxisdk/MegoActivity$3;->this$0:Lcom/netmego/miguyouxisdk/MegoActivity;

    iget-object v6, v6, Lcom/netmego/miguyouxisdk/MegoActivity;->MainListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;Z)V

    .line 186
    return-void
.end method
