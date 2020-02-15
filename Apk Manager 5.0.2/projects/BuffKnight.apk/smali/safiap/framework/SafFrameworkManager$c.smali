.class final Lsafiap/framework/SafFrameworkManager$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# static fields
.field private static final g:I = 0x64

.field private static final h:I = 0x65

.field private static final i:I = 0x66


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Lsafiap/framework/SafFrameworkManager$e;

.field d:Lsafiap/framework/SafFrameworkManager$b;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field f:Lsafiap/framework/SafFrameworkManager$a;

.field private synthetic j:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method public constructor <init>(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const/16 v0, 0x64

    iput v0, p0, Lsafiap/framework/SafFrameworkManager$c;->a:I

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$c;->e:Ljava/util/List;

    .line 508
    iput-object p2, p0, Lsafiap/framework/SafFrameworkManager$c;->b:Ljava/lang/String;

    .line 509
    sget-object v0, Lsafiap/framework/SafFrameworkManager$a;->a:Lsafiap/framework/SafFrameworkManager$a;

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$c;->f:Lsafiap/framework/SafFrameworkManager$a;

    .line 510
    iput p3, p0, Lsafiap/framework/SafFrameworkManager$c;->a:I

    .line 511
    return-void
.end method

.method static synthetic a(Lsafiap/framework/SafFrameworkManager$c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$c;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lsafiap/framework/SafFrameworkManager$c;->a:I

    return v0
.end method

.method public final a(Lsafiap/framework/SafFrameworkManager$a;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$c;->f:Lsafiap/framework/SafFrameworkManager$a;

    .line 574
    return-void
.end method

.method public final a(Lsafiap/framework/SafFrameworkManager$b;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$c;->d:Lsafiap/framework/SafFrameworkManager$b;

    .line 535
    return-void
.end method

.method public final a(Lsafiap/framework/SafFrameworkManager$e;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$c;->c:Lsafiap/framework/SafFrameworkManager$e;

    .line 522
    return-void
.end method

.method public final a(Lsafiap/framework/sdk/ISAFFrameworkCallback;)Z
    .locals 1
    .parameter

    .prologue
    .line 549
    if-eqz p1, :cond_0

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 552
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lsafiap/framework/SafFrameworkManager$e;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$c;->c:Lsafiap/framework/SafFrameworkManager$e;

    return-object v0
.end method

.method public final c()Lsafiap/framework/SafFrameworkManager$b;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$c;->d:Lsafiap/framework/SafFrameworkManager$b;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$c;->e:Ljava/util/List;

    return-object v0
.end method

.method public final e()Lsafiap/framework/SafFrameworkManager$a;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$c;->f:Lsafiap/framework/SafFrameworkManager$a;

    return-object v0
.end method
