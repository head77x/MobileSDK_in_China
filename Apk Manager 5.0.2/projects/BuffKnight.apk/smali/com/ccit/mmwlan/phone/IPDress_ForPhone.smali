.class public Lcom/ccit/mmwlan/phone/IPDress_ForPhone;
.super Ljava/lang/Object;
.source "IPDress_ForPhone.java"


# instance fields
.field private strApplySecCertIP:Ljava/lang/String;

.field private strSMSNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStrApplySecCertIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->strApplySecCertIP:Ljava/lang/String;

    return-object v0
.end method

.method public getStrSMSNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->strSMSNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setStrApplySecCertIP(Ljava/lang/String;)V
    .locals 0
    .parameter "strApplySecCertIP"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->strApplySecCertIP:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setStrSMSNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "strSMSNumber"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ccit/mmwlan/phone/IPDress_ForPhone;->strSMSNumber:Ljava/lang/String;

    .line 34
    return-void
.end method
