.class public Lcom/cmcc/omp/util/ConfUrlField;
.super Ljava/lang/Object;
.source "ConfUrlField.java"


# static fields
.field private static final AppType:Ljava/lang/String; = "1"

.field private static final TestMode:Ljava/lang/String; = "0"

.field private static final WapMode:Ljava/lang/String; = "0"


# instance fields
.field private final SDK_VERSION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "1"

    iput-object v0, p0, Lcom/cmcc/omp/util/ConfUrlField;->SDK_VERSION:Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "1"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "1"

    return-object v0
.end method

.method public getTestMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "0"

    return-object v0
.end method

.method public getWapMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "0"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "ConfUrlField [GlobalEnablerCallingUrl=, AppType=1, TestMode=0, SdkVersion=1]"

    return-object v0
.end method
