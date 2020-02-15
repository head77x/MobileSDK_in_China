.class public Lcn/egame/terminal/sdk/log/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcn/egame/terminal/sdk/log/ac;


# instance fields
.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Landroid/content/Context;

.field private e:Lcn/egame/terminal/sdk/log/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "==EGAME==LOG==\n"

    sput-object v0, Lcn/egame/terminal/sdk/log/ac;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/egame/terminal/sdk/log/ac;->b:Lcn/egame/terminal/sdk/log/ac;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcn/egame/terminal/sdk/log/ab;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/ac;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/ac;->d:Landroid/content/Context;

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/ac;->e:Lcn/egame/terminal/sdk/log/ab;

    iput-object p1, p0, Lcn/egame/terminal/sdk/log/ac;->d:Landroid/content/Context;

    iput-object p2, p0, Lcn/egame/terminal/sdk/log/ac;->e:Lcn/egame/terminal/sdk/log/ab;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcn/egame/terminal/sdk/log/ac;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static synthetic a(Lcn/egame/terminal/sdk/log/ac;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/ac;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcn/egame/terminal/sdk/log/ab;)Lcn/egame/terminal/sdk/log/ac;
    .locals 1

    sget-object v0, Lcn/egame/terminal/sdk/log/ac;->b:Lcn/egame/terminal/sdk/log/ac;

    if-nez v0, :cond_0

    new-instance v0, Lcn/egame/terminal/sdk/log/ac;

    invoke-direct {v0, p0, p1}, Lcn/egame/terminal/sdk/log/ac;-><init>(Landroid/content/Context;Lcn/egame/terminal/sdk/log/ab;)V

    sput-object v0, Lcn/egame/terminal/sdk/log/ac;->b:Lcn/egame/terminal/sdk/log/ac;

    :cond_0
    sget-object v0, Lcn/egame/terminal/sdk/log/ac;->b:Lcn/egame/terminal/sdk/log/ac;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/egame/terminal/sdk/log/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcn/egame/terminal/sdk/log/ad;

    invoke-direct {v0, p0, p1}, Lcn/egame/terminal/sdk/log/ad;-><init>(Lcn/egame/terminal/sdk/log/ac;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcn/egame/terminal/sdk/log/ad;->start()V

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/ac;->e:Lcn/egame/terminal/sdk/log/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/ac;->e:Lcn/egame/terminal/sdk/log/ab;

    invoke-interface {v0, p1}, Lcn/egame/terminal/sdk/log/ab;->a(Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0, p2}, Lcn/egame/terminal/sdk/log/ac;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/ac;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/egame/terminal/sdk/log/ac;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
