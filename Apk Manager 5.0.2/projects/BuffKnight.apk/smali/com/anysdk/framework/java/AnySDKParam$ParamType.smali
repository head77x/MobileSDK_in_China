.class final enum Lcom/anysdk/framework/java/AnySDKParam$ParamType;
.super Ljava/lang/Enum;
.source "AnySDKParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anysdk/framework/java/AnySDKParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/anysdk/framework/java/AnySDKParam$ParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/anysdk/framework/java/AnySDKParam$ParamType;

.field public static final enum kParamTypeBool:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

.field public static final enum kParamTypeFloat:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

.field public static final enum kParamTypeInt:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

.field public static final enum kParamTypeMap:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

.field public static final enum kParamTypeNull:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

.field public static final enum kParamTypeString:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

.field public static final enum kParamTypeStringMap:Lcom/anysdk/framework/java/AnySDKParam$ParamType;


# instance fields
.field private paramType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    new-instance v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    const-string v1, "kParamTypeNull"

    invoke-direct {v0, v1, v4, v4}, Lcom/anysdk/framework/java/AnySDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeNull:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    .line 32
    new-instance v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    const-string v1, "kParamTypeInt"

    invoke-direct {v0, v1, v5, v5}, Lcom/anysdk/framework/java/AnySDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeInt:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    .line 33
    new-instance v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    const-string v1, "kParamTypeFloat"

    invoke-direct {v0, v1, v6, v6}, Lcom/anysdk/framework/java/AnySDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeFloat:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    .line 34
    new-instance v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    const-string v1, "kParamTypeBool"

    invoke-direct {v0, v1, v7, v7}, Lcom/anysdk/framework/java/AnySDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeBool:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    .line 35
    new-instance v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    const-string v1, "kParamTypeString"

    invoke-direct {v0, v1, v8, v8}, Lcom/anysdk/framework/java/AnySDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeString:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    .line 36
    new-instance v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    const-string v1, "kParamTypeStringMap"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/anysdk/framework/java/AnySDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeStringMap:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    .line 37
    new-instance v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    const-string v1, "kParamTypeMap"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/anysdk/framework/java/AnySDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeMap:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    sget-object v1, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeNull:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeInt:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeFloat:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeBool:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeString:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeStringMap:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeMap:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->ENUM$VALUES:[Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->paramType:I

    .line 43
    return-void
.end method

.method static synthetic access$2(Lcom/anysdk/framework/java/AnySDKParam$ParamType;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->paramType:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anysdk/framework/java/AnySDKParam$ParamType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    return-object v0
.end method

.method public static values()[Lcom/anysdk/framework/java/AnySDKParam$ParamType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->ENUM$VALUES:[Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    array-length v1, v0

    new-array v2, v1, [Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getParamType()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->paramType:I

    return v0
.end method
