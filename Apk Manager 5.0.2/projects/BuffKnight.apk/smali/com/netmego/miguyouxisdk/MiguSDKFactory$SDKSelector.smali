.class public final enum Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;
.super Ljava/lang/Enum;
.source "MiguSDKFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netmego/miguyouxisdk/MiguSDKFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SDKSelector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BILL_CMGD:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

.field public static final enum BILL_CMMM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

.field public static final enum BILL_DIANXIN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

.field public static final enum BILL_OTHER:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

.field public static final enum BILL_SP:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

.field public static final enum BILL_UNICOM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

.field public static final enum BILL_UNKNOWN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

.field private static final synthetic ENUM$VALUES:[Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    const-string v1, "BILL_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_UNKNOWN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    .line 33
    new-instance v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    const-string v1, "BILL_CMGD"

    invoke-direct {v0, v1, v4}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMGD:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    .line 34
    new-instance v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    const-string v1, "BILL_CMMM"

    invoke-direct {v0, v1, v5}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMMM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    .line 35
    new-instance v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    const-string v1, "BILL_UNICOM"

    invoke-direct {v0, v1, v6}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_UNICOM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    .line 36
    new-instance v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    const-string v1, "BILL_DIANXIN"

    invoke-direct {v0, v1, v7}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_DIANXIN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    .line 37
    new-instance v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    const-string v1, "BILL_OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_OTHER:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    .line 38
    new-instance v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    const-string v1, "BILL_SP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_SP:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_UNKNOWN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMGD:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_CMMM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_UNICOM:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_DIANXIN:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_OTHER:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->BILL_SP:Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ENUM$VALUES:[Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    return-object v0
.end method

.method public static values()[Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;->ENUM$VALUES:[Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    array-length v1, v0

    new-array v2, v1, [Lcom/netmego/miguyouxisdk/MiguSDKFactory$SDKSelector;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
