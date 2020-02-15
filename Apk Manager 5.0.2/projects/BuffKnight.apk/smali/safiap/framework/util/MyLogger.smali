.class public Lsafiap/framework/util/MyLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "[SAF_FRAMEWORK_IAP]"

.field private static b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lsafiap/framework/util/MyLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lsafiap/framework/util/MyLogger;->b:Ljava/util/Hashtable;

    .line 17
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lsafiap/framework/util/MyLogger;->c:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;
    .locals 2
    .parameter

    .prologue
    .line 25
    sget-object v0, Lsafiap/framework/util/MyLogger;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/util/MyLogger;

    .line 26
    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lsafiap/framework/util/MyLogger;

    invoke-direct {v0, p0}, Lsafiap/framework/util/MyLogger;-><init>(Ljava/lang/String;)V

    .line 28
    sget-object v1, Lsafiap/framework/util/MyLogger;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_0
    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    sget-boolean v0, Lsafiap/framework/util/Constants;->sIsDebugLog:Z

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "[SAF_FRAMEWORK_IAP]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{Thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsafiap/framework/util/MyLogger;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    sget-boolean v0, Lsafiap/framework/util/Constants;->sIsDebugLog:Z

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "[SAF_FRAMEWORK_IAP]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{Thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsafiap/framework/util/MyLogger;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method
