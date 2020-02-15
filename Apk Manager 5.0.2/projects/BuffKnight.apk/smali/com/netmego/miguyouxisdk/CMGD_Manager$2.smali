.class Lcom/netmego/miguyouxisdk/CMGD_Manager$2;
.super Ljava/lang/Object;
.source "CMGD_Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netmego/miguyouxisdk/CMGD_Manager;->doScreenShotShare(Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/CMGD_Manager;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/netmego/miguyouxisdk/CMGD_Manager;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$2;->this$0:Lcom/netmego/miguyouxisdk/CMGD_Manager;

    iput-object p2, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$2;->val$uri:Landroid/net/Uri;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netmego/miguyouxisdk/CMGD_Manager$2;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/GameInterface;->doScreenShotShare(Landroid/content/Context;Landroid/net/Uri;)V

    .line 156
    return-void
.end method
