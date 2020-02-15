.class public interface abstract Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;
.super Ljava/lang/Object;
.source "MiguSDKFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netmego/miguyouxisdk/MiguSDKFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BillingListener"
.end annotation


# virtual methods
.method public abstract onPurchaseCanceld(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPurchaseFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPurchaseInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPurchaseSucceed(Ljava/lang/String;)V
.end method
