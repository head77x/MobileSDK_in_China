.class public Lcom/ccit/mmwlan/vo/DecryptResult;
.super Ljava/lang/Object;
.source "DecryptResult.java"


# instance fields
.field private result:I

.field private strContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/ccit/mmwlan/vo/DecryptResult;->result:I

    return v0
.end method

.method public getStrContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ccit/mmwlan/vo/DecryptResult;->strContent:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 14
    iput p1, p0, Lcom/ccit/mmwlan/vo/DecryptResult;->result:I

    .line 15
    return-void
.end method

.method public setStrContent(Ljava/lang/String;)V
    .locals 0
    .parameter "strContent"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ccit/mmwlan/vo/DecryptResult;->strContent:Ljava/lang/String;

    .line 23
    return-void
.end method
