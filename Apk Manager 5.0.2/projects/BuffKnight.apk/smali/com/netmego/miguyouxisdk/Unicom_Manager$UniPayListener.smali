.class public Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;
.super Ljava/lang/Object;
.source "Unicom_Manager.java"

# interfaces
.implements Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netmego/miguyouxisdk/Unicom_Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UniPayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netmego/miguyouxisdk/Unicom_Manager;


# direct methods
.method public constructor <init>(Lcom/netmego/miguyouxisdk/Unicom_Manager;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;->this$0:Lcom/netmego/miguyouxisdk/Unicom_Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PayResult(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .parameter "paycode"
    .parameter "flag"
    .parameter "flag2"
    .parameter "desc"

    .prologue
    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Brandon : Pay UN start = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;->this$0:Lcom/netmego/miguyouxisdk/Unicom_Manager;

    iget-object v2, v2, Lcom/netmego/miguyouxisdk/Unicom_Manager;->process_payitem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    packed-switch p2, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 64
    :pswitch_0
    const-string v0, "======\ufffd\ubdbc\ufffd SDK======="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SUCCESS : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;->this$0:Lcom/netmego/miguyouxisdk/Unicom_Manager;

    iget-object v0, v0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    iget-object v1, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;->this$0:Lcom/netmego/miguyouxisdk/Unicom_Manager;

    iget-object v1, v1, Lcom/netmego/miguyouxisdk/Unicom_Manager;->process_payitem:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseSucceed(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_1
    const-string v0, "======\ufffd\ubdbc\ufffd SDK======="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FAILED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;->this$0:Lcom/netmego/miguyouxisdk/Unicom_Manager;

    iget-object v0, v0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    iget-object v1, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;->this$0:Lcom/netmego/miguyouxisdk/Unicom_Manager;

    iget-object v1, v1, Lcom/netmego/miguyouxisdk/Unicom_Manager;->process_payitem:Ljava/lang/String;

    invoke-interface {v0, v1, p4}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_2
    const-string v0, "======\ufffd\ubdbc\ufffd SDK======="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CANCEL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;->this$0:Lcom/netmego/miguyouxisdk/Unicom_Manager;

    iget-object v0, v0, Lcom/netmego/miguyouxisdk/Unicom_Manager;->MasterListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    iget-object v1, p0, Lcom/netmego/miguyouxisdk/Unicom_Manager$UniPayListener;->this$0:Lcom/netmego/miguyouxisdk/Unicom_Manager;

    iget-object v1, v1, Lcom/netmego/miguyouxisdk/Unicom_Manager;->process_payitem:Ljava/lang/String;

    const-string v2, "Cancel"

    invoke-interface {v0, v1, v2}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;->onPurchaseCanceld(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
