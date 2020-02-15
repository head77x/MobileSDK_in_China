.class Lmm/purchasesdk/iapservice/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;


# direct methods
.method constructor <init>(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lmm/purchasesdk/iapservice/a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;

    iget-object v3, p0, Lmm/purchasesdk/iapservice/a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-direct {v2, v3}, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;-><init>(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->b(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/iapservice/a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
