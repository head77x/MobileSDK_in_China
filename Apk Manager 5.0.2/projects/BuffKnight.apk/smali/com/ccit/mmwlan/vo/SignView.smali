.class public Lcom/ccit/mmwlan/vo/SignView;
.super Ljava/lang/Object;
.source "SignView.java"


# instance fields
.field private m_strErrMsg:Ljava/lang/String;

.field private result:I

.field private userSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/ccit/mmwlan/vo/SignView;->m_strErrMsg:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/SignView;->m_strErrMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/ccit/mmwlan/vo/SignView;->result:I

    return v0
.end method

.method public getUserSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/SignView;->userSignature:Ljava/lang/String;

    return-object v0
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "strErrMsg"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/SignView;->m_strErrMsg:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 35
    iput p1, p0, Lcom/ccit/mmwlan/vo/SignView;->result:I

    .line 36
    return-void
.end method

.method public setUserSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "userSignature"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/SignView;->userSignature:Ljava/lang/String;

    .line 23
    return-void
.end method
