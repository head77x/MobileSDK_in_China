.class public final enum Lcom/anysdk/framework/java/ToolBarPlaceEnum;
.super Ljava/lang/Enum;
.source "ToolBarPlaceEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/anysdk/framework/java/ToolBarPlaceEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/anysdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kToolBarTopBottomLeft:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kToolBarTopBottomRight:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kToolBarTopLeft:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kToolBarTopLeftMid:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kToolBarTopRight:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kToolBarTopRightMid:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kUnkown:Lcom/anysdk/framework/java/ToolBarPlaceEnum;


# instance fields
.field private place:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 12
    new-instance v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kToolBarTopLeft"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/anysdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopLeft:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    .line 13
    new-instance v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kToolBarTopRight"

    invoke-direct {v0, v1, v4, v5}, Lcom/anysdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopRight:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    .line 14
    new-instance v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kToolBarTopLeftMid"

    invoke-direct {v0, v1, v5, v6}, Lcom/anysdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopLeftMid:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    .line 15
    new-instance v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kToolBarTopRightMid"

    invoke-direct {v0, v1, v6, v7}, Lcom/anysdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopRightMid:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    .line 16
    new-instance v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kToolBarTopBottomLeft"

    invoke-direct {v0, v1, v7, v8}, Lcom/anysdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopBottomLeft:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    .line 17
    new-instance v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kToolBarTopBottomRight"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/anysdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopBottomRight:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    .line 18
    new-instance v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kUnkown"

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/anysdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kUnkown:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    const/4 v1, 0x0

    sget-object v2, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopLeft:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    aput-object v2, v0, v1

    sget-object v1, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopRight:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopLeftMid:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopRightMid:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopBottomLeft:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopBottomRight:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kUnkown:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->ENUM$VALUES:[Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "_place"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->place:I

    .line 24
    return-void
.end method

.method public static from(I)Lcom/anysdk/framework/java/ToolBarPlaceEnum;
    .locals 1
    .parameter "_place"

    .prologue
    .line 31
    packed-switch p0, :pswitch_data_0

    .line 45
    sget-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kUnkown:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    sget-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopLeft:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    goto :goto_0

    .line 35
    :pswitch_1
    sget-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopRight:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    goto :goto_0

    .line 37
    :pswitch_2
    sget-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopLeftMid:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    goto :goto_0

    .line 39
    :pswitch_3
    sget-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopRightMid:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    goto :goto_0

    .line 41
    :pswitch_4
    sget-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopBottomLeft:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    goto :goto_0

    .line 43
    :pswitch_5
    sget-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->kToolBarTopBottomRight:Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anysdk/framework/java/ToolBarPlaceEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    return-object v0
.end method

.method public static values()[Lcom/anysdk/framework/java/ToolBarPlaceEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->ENUM$VALUES:[Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/anysdk/framework/java/ToolBarPlaceEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getPlace()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/anysdk/framework/java/ToolBarPlaceEnum;->place:I

    return v0
.end method
