.class Lcom/netmego/miguyouxisdk/AnySDK_Manager$4$1;
.super Ljava/lang/Object;
.source "AnySDK_Manager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/AnySDK_Manager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netmego/miguyouxisdk/AnySDK_Manager$4;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$4$1;->this$1:Lcom/netmego/miguyouxisdk/AnySDK_Manager$4;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 252
    invoke-static {}, Lcom/anysdk/framework/java/AnySDKIAP;->getInstance()Lcom/anysdk/framework/java/AnySDKIAP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anysdk/framework/java/AnySDKIAP;->resetPayState()V

    .line 253
    return-void
.end method
