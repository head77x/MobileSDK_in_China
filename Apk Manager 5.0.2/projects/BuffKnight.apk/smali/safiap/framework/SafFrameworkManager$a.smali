.class final enum Lsafiap/framework/SafFrameworkManager$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsafiap/framework/SafFrameworkManager$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lsafiap/framework/SafFrameworkManager$a;

.field public static final enum b:Lsafiap/framework/SafFrameworkManager$a;

.field public static final enum c:Lsafiap/framework/SafFrameworkManager$a;

.field public static final enum d:Lsafiap/framework/SafFrameworkManager$a;

.field private static final synthetic e:[Lsafiap/framework/SafFrameworkManager$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 489
    new-instance v0, Lsafiap/framework/SafFrameworkManager$a;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lsafiap/framework/SafFrameworkManager$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsafiap/framework/SafFrameworkManager$a;->a:Lsafiap/framework/SafFrameworkManager$a;

    .line 490
    new-instance v0, Lsafiap/framework/SafFrameworkManager$a;

    const-string v1, "QUERYING"

    invoke-direct {v0, v1, v3}, Lsafiap/framework/SafFrameworkManager$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsafiap/framework/SafFrameworkManager$a;->b:Lsafiap/framework/SafFrameworkManager$a;

    .line 491
    new-instance v0, Lsafiap/framework/SafFrameworkManager$a;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v4}, Lsafiap/framework/SafFrameworkManager$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsafiap/framework/SafFrameworkManager$a;->c:Lsafiap/framework/SafFrameworkManager$a;

    .line 492
    new-instance v0, Lsafiap/framework/SafFrameworkManager$a;

    const-string v1, "DOWNLOAD_FINISHED"

    invoke-direct {v0, v1, v5}, Lsafiap/framework/SafFrameworkManager$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsafiap/framework/SafFrameworkManager$a;->d:Lsafiap/framework/SafFrameworkManager$a;

    .line 488
    const/4 v0, 0x4

    new-array v0, v0, [Lsafiap/framework/SafFrameworkManager$a;

    sget-object v1, Lsafiap/framework/SafFrameworkManager$a;->a:Lsafiap/framework/SafFrameworkManager$a;

    aput-object v1, v0, v2

    sget-object v1, Lsafiap/framework/SafFrameworkManager$a;->b:Lsafiap/framework/SafFrameworkManager$a;

    aput-object v1, v0, v3

    sget-object v1, Lsafiap/framework/SafFrameworkManager$a;->c:Lsafiap/framework/SafFrameworkManager$a;

    aput-object v1, v0, v4

    sget-object v1, Lsafiap/framework/SafFrameworkManager$a;->d:Lsafiap/framework/SafFrameworkManager$a;

    aput-object v1, v0, v5

    sput-object v0, Lsafiap/framework/SafFrameworkManager$a;->e:[Lsafiap/framework/SafFrameworkManager$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 488
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsafiap/framework/SafFrameworkManager$a;
    .locals 1
    .parameter

    .prologue
    .line 488
    const-class v0, Lsafiap/framework/SafFrameworkManager$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$a;

    return-object v0
.end method

.method public static values()[Lsafiap/framework/SafFrameworkManager$a;
    .locals 1

    .prologue
    .line 488
    sget-object v0, Lsafiap/framework/SafFrameworkManager$a;->e:[Lsafiap/framework/SafFrameworkManager$a;

    invoke-virtual {v0}, [Lsafiap/framework/SafFrameworkManager$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsafiap/framework/SafFrameworkManager$a;

    return-object v0
.end method
