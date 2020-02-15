.class public Lcom/ccit/mmwlan/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"


# instance fields
.field public appID:Ljava/lang/String;

.field public cardSlot:I

.field public loginType:I

.field public moServerHost:Lorg/apache/http/HttpHost;

.field public password:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/ccit/mmwlan/UserProfile;->cardSlot:I

    .line 13
    iput v1, p0, Lcom/ccit/mmwlan/UserProfile;->loginType:I

    .line 17
    iput-object v0, p0, Lcom/ccit/mmwlan/UserProfile;->moServerHost:Lorg/apache/http/HttpHost;

    .line 22
    iput-object v0, p0, Lcom/ccit/mmwlan/UserProfile;->appID:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/ccit/mmwlan/UserProfile;->userName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/ccit/mmwlan/UserProfile;->password:Ljava/lang/String;

    .line 5
    return-void
.end method
