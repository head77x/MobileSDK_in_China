.class Lcom/netmego/miguyouxisdk/Unicom_Manager$1;
.super Ljava/lang/Object;
.source "Unicom_Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/Unicom_Manager;->exitGame(Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/Unicom_Manager;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/Unicom_Manager;Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$1;->this$0:Lcom/netmego/miguyouxisdk/Unicom_Manager;

    iput-object p2, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$1;->val$listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 99
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    const-string v1, "\u6e38\u620f\u9000\u51fa"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 101
    const-string v1, "\u73b0\u5728\u6e38\u620f\u9000\u51fa\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    const-string v1, "\u4e0d"

    .line 103
    new-instance v2, Lcom/netmego/miguyouxisdk/Unicom_Manager$1$1;

    iget-object v3, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$1;->val$listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;

    invoke-direct {v2, p0, v3}, Lcom/netmego/miguyouxisdk/Unicom_Manager$1$1;-><init>(Lcom/netmego/miguyouxisdk/Unicom_Manager$1;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    const-string v1, "\u662f"

    .line 112
    new-instance v2, Lcom/netmego/miguyouxisdk/Unicom_Manager$1$2;

    iget-object v3, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$1;->val$listener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;

    invoke-direct {v2, p0, v3}, Lcom/netmego/miguyouxisdk/Unicom_Manager$1$2;-><init>(Lcom/netmego/miguyouxisdk/Unicom_Manager$1;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 120
    return-void
.end method
