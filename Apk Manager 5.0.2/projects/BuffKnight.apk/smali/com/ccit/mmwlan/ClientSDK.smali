.class public final Lcom/ccit/mmwlan/ClientSDK;
.super Ljava/lang/Object;
.source "ClientSDK.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "casdkjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native AsymmetricDecryptionForBilling(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native AsymmetricEncryptionForBilling(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native AsymmetricEncryptionForMMLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native DestorySecCertForBilling(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native SIDSignNativeForBilling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native SignNativeForLogin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native SymmetricDecryptionForBilling(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native UpdateRandNumForBilling(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native UpdateRandNumForLogin(Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)I
.end method

.method public native VerifyWithCertForBilling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native checkSecCertNativeForBilling()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native checkSecCertNativeForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native encWithCertNativeForLogin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native genPKIKeyNativeForBilling()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native genPKIKeyNativeForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native genSIDNative()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native genTempPKIKeyNativeForBilling()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native getCertStateNativeForBilling()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native getDigestNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native getPubKeyForBilling()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native getPubKeyForLogin(ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native getSecCertNativeForBilling()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native saveSecCertNativeForBilling(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native saveSecCertNativeForLogin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/ccit/mmwlan/vo/DeviceInfo;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method

.method public native transmitInfoNative(Lcom/ccit/mmwlan/vo/DeviceInfo;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ccit/mmwlan/exception/ClientSDKException;
        }
    .end annotation
.end method
