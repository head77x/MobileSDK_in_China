.class Lcom/netmego/miguyouxisdk/Unicom_Manager$1$2;
.super Ljava/lang/Object;
.source "Unicom_Manager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/Unicom_Manager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netmego/miguyouxisdk/Unicom_Manager$1;

.field private final synthetic val$listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/Unicom_Manager$1;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$1$2;->this$1:Lcom/netmego/miguyouxisdk/Unicom_Manager$1;

    iput-object p2, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$1$2;->val$listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$1$2;->val$listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;

    invoke-interface {v0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;->onExitGameConfirmExit()V

    .line 118
    return-void
.end method
