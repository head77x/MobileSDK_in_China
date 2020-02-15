.class final enum Lcom/unicom/dcLoader/Utils$SimType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SimType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unicom/dcLoader/Utils$SimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unicom/dcLoader/Utils$SimType;

.field public static final enum chinamobile:Lcom/unicom/dcLoader/Utils$SimType;

.field public static final enum chinatele:Lcom/unicom/dcLoader/Utils$SimType;

.field public static final enum chinaunicom:Lcom/unicom/dcLoader/Utils$SimType;

.field public static final enum error:Lcom/unicom/dcLoader/Utils$SimType;

.field public static final enum unknow:Lcom/unicom/dcLoader/Utils$SimType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unicom/dcLoader/Utils$SimType;

    const-string v1, "unknow"

    invoke-direct {v0, v1, v2}, Lcom/unicom/dcLoader/Utils$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unicom/dcLoader/Utils$SimType;->unknow:Lcom/unicom/dcLoader/Utils$SimType;

    new-instance v0, Lcom/unicom/dcLoader/Utils$SimType;

    const-string v1, "chinaunicom"

    invoke-direct {v0, v1, v3}, Lcom/unicom/dcLoader/Utils$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unicom/dcLoader/Utils$SimType;->chinaunicom:Lcom/unicom/dcLoader/Utils$SimType;

    new-instance v0, Lcom/unicom/dcLoader/Utils$SimType;

    const-string v1, "chinatele"

    invoke-direct {v0, v1, v4}, Lcom/unicom/dcLoader/Utils$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unicom/dcLoader/Utils$SimType;->chinatele:Lcom/unicom/dcLoader/Utils$SimType;

    new-instance v0, Lcom/unicom/dcLoader/Utils$SimType;

    const-string v1, "chinamobile"

    invoke-direct {v0, v1, v5}, Lcom/unicom/dcLoader/Utils$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unicom/dcLoader/Utils$SimType;->chinamobile:Lcom/unicom/dcLoader/Utils$SimType;

    new-instance v0, Lcom/unicom/dcLoader/Utils$SimType;

    const-string v1, "error"

    invoke-direct {v0, v1, v6}, Lcom/unicom/dcLoader/Utils$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unicom/dcLoader/Utils$SimType;->error:Lcom/unicom/dcLoader/Utils$SimType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/unicom/dcLoader/Utils$SimType;

    sget-object v1, Lcom/unicom/dcLoader/Utils$SimType;->unknow:Lcom/unicom/dcLoader/Utils$SimType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unicom/dcLoader/Utils$SimType;->chinaunicom:Lcom/unicom/dcLoader/Utils$SimType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unicom/dcLoader/Utils$SimType;->chinatele:Lcom/unicom/dcLoader/Utils$SimType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unicom/dcLoader/Utils$SimType;->chinamobile:Lcom/unicom/dcLoader/Utils$SimType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unicom/dcLoader/Utils$SimType;->error:Lcom/unicom/dcLoader/Utils$SimType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/unicom/dcLoader/Utils$SimType;->$VALUES:[Lcom/unicom/dcLoader/Utils$SimType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unicom/dcLoader/Utils$SimType;
    .locals 1

    const-class v0, Lcom/unicom/dcLoader/Utils$SimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unicom/dcLoader/Utils$SimType;

    return-object v0
.end method

.method public static values()[Lcom/unicom/dcLoader/Utils$SimType;
    .locals 1

    sget-object v0, Lcom/unicom/dcLoader/Utils$SimType;->$VALUES:[Lcom/unicom/dcLoader/Utils$SimType;

    invoke-virtual {v0}, [Lcom/unicom/dcLoader/Utils$SimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unicom/dcLoader/Utils$SimType;

    return-object v0
.end method
