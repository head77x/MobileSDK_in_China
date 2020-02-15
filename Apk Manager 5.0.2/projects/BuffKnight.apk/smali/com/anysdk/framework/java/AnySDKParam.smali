.class public Lcom/anysdk/framework/java/AnySDKParam;
.super Ljava/lang/Object;
.source "AnySDKParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anysdk/framework/java/AnySDKParam$ParamType;
    }
.end annotation


# instance fields
.field private _boolValue:Z

.field private _floatValue:F

.field private _intValue:I

.field private _mapValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _strValue:Ljava/lang/String;

.field private _type:Lcom/anysdk/framework/java/AnySDKParam$ParamType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeNull:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    iput-object v0, p0, Lcom/anysdk/framework/java/AnySDKParam;->_type:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    .line 53
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "nValue"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/anysdk/framework/java/AnySDKParam;->_floatValue:F

    .line 62
    sget-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeFloat:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    iput-object v0, p0, Lcom/anysdk/framework/java/AnySDKParam;->_type:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "nValue"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/anysdk/framework/java/AnySDKParam;->_intValue:I

    .line 57
    sget-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeInt:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    iput-object v0, p0, Lcom/anysdk/framework/java/AnySDKParam;->_type:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "nValue"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/anysdk/framework/java/AnySDKParam;->_strValue:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeString:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    iput-object v0, p0, Lcom/anysdk/framework/java/AnySDKParam;->_type:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, nValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/anysdk/framework/java/AnySDKParam;->_mapValue:Ljava/util/Map;

    .line 75
    sget-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeMap:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    iput-object v0, p0, Lcom/anysdk/framework/java/AnySDKParam;->_type:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    .line 76
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "nValue"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean p1, p0, Lcom/anysdk/framework/java/AnySDKParam;->_boolValue:Z

    .line 66
    sget-object v0, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->kParamTypeBool:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    iput-object v0, p0, Lcom/anysdk/framework/java/AnySDKParam;->_type:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    .line 67
    return-void
.end method


# virtual methods
.method public getBoolValue()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/anysdk/framework/java/AnySDKParam;->_boolValue:Z

    return v0
.end method

.method public getCurrentType()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/anysdk/framework/java/AnySDKParam;->_type:Lcom/anysdk/framework/java/AnySDKParam$ParamType;

    #getter for: Lcom/anysdk/framework/java/AnySDKParam$ParamType;->paramType:I
    invoke-static {v0}, Lcom/anysdk/framework/java/AnySDKParam$ParamType;->access$2(Lcom/anysdk/framework/java/AnySDKParam$ParamType;)I

    move-result v0

    return v0
.end method

.method public getFloatValue()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/anysdk/framework/java/AnySDKParam;->_floatValue:F

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/anysdk/framework/java/AnySDKParam;->_intValue:I

    return v0
.end method

.method public getMapValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/anysdk/framework/java/AnySDKParam;->_mapValue:Ljava/util/Map;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/anysdk/framework/java/AnySDKParam;->_strValue:Ljava/lang/String;

    return-object v0
.end method
