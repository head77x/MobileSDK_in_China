.class Lcom/netmego/miguyouxisdk/AnySDK_Manager$4;
.super Ljava/lang/Object;
.source "AnySDK_Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/AnySDK_Manager;->showTipDialog()V
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
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$4;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$2()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    const-string v1, "Game"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 243
    const-string v1, "Paying"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    const-string v1, "NO"

    .line 245
    new-instance v2, Lcom/netmego/miguyouxisdk/AnySDK_Manager$4$1;

    invoke-direct {v2, p0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$4$1;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager$4;)V

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 255
    const-string v1, "YES"

    .line 256
    new-instance v2, Lcom/netmego/miguyouxisdk/AnySDK_Manager$4$2;

    invoke-direct {v2, p0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$4$2;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager$4;)V

    .line 255
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 263
    return-void
.end method
