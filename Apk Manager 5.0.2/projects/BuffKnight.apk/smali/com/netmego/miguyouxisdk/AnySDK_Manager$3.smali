.class Lcom/netmego/miguyouxisdk/AnySDK_Manager$3;
.super Ljava/lang/Object;
.source "AnySDK_Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/AnySDK_Manager;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

.field private final synthetic val$curMsg:Ljava/lang/String;

.field private final synthetic val$curTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$3;->this$0:Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    iput-object p2, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$3;->val$curTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$3;->val$curMsg:Ljava/lang/String;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 222
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->access$2()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    iget-object v1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$3;->val$curTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/netmego/miguyouxisdk/AnySDK_Manager$3;->val$curMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 225
    const-string v1, "Ok"

    .line 226
    new-instance v2, Lcom/netmego/miguyouxisdk/AnySDK_Manager$3$1;

    invoke-direct {v2, p0}, Lcom/netmego/miguyouxisdk/AnySDK_Manager$3$1;-><init>(Lcom/netmego/miguyouxisdk/AnySDK_Manager$3;)V

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 233
    return-void
.end method
