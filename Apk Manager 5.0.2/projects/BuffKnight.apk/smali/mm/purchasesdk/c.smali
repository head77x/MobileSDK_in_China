.class Lmm/purchasesdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lmm/purchasesdk/Purchase;


# direct methods
.method constructor <init>(Lmm/purchasesdk/Purchase;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/c;->a:Lmm/purchasesdk/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected method. ComponentName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/c;->a:Lmm/purchasesdk/Purchase;

    const/4 v1, 0x0

    #setter for: Lmm/purchasesdk/Purchase;->mMessengerFromService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lmm/purchasesdk/Purchase;->access$802(Lmm/purchasesdk/Purchase;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/c;->a:Lmm/purchasesdk/Purchase;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lmm/purchasesdk/Purchase;->mMessengerFromService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lmm/purchasesdk/Purchase;->access$802(Lmm/purchasesdk/Purchase;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/c;->a:Lmm/purchasesdk/Purchase;

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lmm/purchasesdk/sdk/g;

    iget-object v3, p0, Lmm/purchasesdk/c;->a:Lmm/purchasesdk/Purchase;

    #getter for: Lmm/purchasesdk/Purchase;->mListener:Lmm/purchasesdk/OnPurchaseListener;
    invoke-static {v3}, Lmm/purchasesdk/Purchase;->access$200(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/OnPurchaseListener;

    move-result-object v3

    iget-object v4, p0, Lmm/purchasesdk/c;->a:Lmm/purchasesdk/Purchase;

    #getter for: Lmm/purchasesdk/Purchase;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lmm/purchasesdk/Purchase;->access$1100(Lmm/purchasesdk/Purchase;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lmm/purchasesdk/c;->a:Lmm/purchasesdk/Purchase;

    iget-object v5, v5, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v5}, Lmm/purchasesdk/sdk/g;-><init>(Lmm/purchasesdk/OnPurchaseListener;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #setter for: Lmm/purchasesdk/Purchase;->mMessengerToService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lmm/purchasesdk/Purchase;->access$1002(Lmm/purchasesdk/Purchase;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/c;->a:Lmm/purchasesdk/Purchase;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lmm/purchasesdk/Purchase;->mBound:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lmm/purchasesdk/Purchase;->access$902(Lmm/purchasesdk/Purchase;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lmm/purchasesdk/c;->a:Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Lmm/purchasesdk/Purchase;->queryPackageName()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/c;->a:Lmm/purchasesdk/Purchase;

    const/4 v1, 0x0

    #setter for: Lmm/purchasesdk/Purchase;->mMessengerFromService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lmm/purchasesdk/Purchase;->access$802(Lmm/purchasesdk/Purchase;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/c;->a:Lmm/purchasesdk/Purchase;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lmm/purchasesdk/Purchase;->mBound:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lmm/purchasesdk/Purchase;->access$902(Lmm/purchasesdk/Purchase;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "Service disconnected!!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
