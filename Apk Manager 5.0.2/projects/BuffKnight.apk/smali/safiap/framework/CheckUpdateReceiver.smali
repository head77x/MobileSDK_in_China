.class public Lsafiap/framework/CheckUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = "safiap.framework.ACTION_CANCEL_NOTIFICATION"

.field private static d:Ljava/lang/String; = "safiap.framework.ACTION_SET_TIMER"


# instance fields
.field private e:Lsafiap/framework/util/MyLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "safiap.framework.KEY_SENDER_PACKAGE"

    sput-object v0, Lsafiap/framework/CheckUpdateReceiver;->a:Ljava/lang/String;

    .line 17
    const-string v0, "safiap.framework.CheckUpdateReceiver.KEY_UPDATE_ITEM_COUNT"

    sput-object v0, Lsafiap/framework/CheckUpdateReceiver;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/CheckUpdateReceiver;->e:Lsafiap/framework/util/MyLogger;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lsafiap/framework/CheckUpdateReceiver;->e:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive: Context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lsafiap/framework/CheckUpdateReceiver;->e:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const-string v1, "safiap.framework.ACTION_CANCEL_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    sget-object v0, Lsafiap/framework/CheckUpdateReceiver;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {p1}, Lsafiap/framework/SafFrameworkManager;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 44
    :cond_2
    const-string v1, "safiap.framework.ACTION_SET_TIMER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lsafiap/framework/CheckUpdateReceiver;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    sget-object v1, Lsafiap/framework/CheckUpdateReceiver;->b:Ljava/lang/String;

    sget v2, Lsafiap/framework/util/a;->a:I

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 49
    iget-object v2, p0, Lsafiap/framework/CheckUpdateReceiver;->e:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get pkgName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", minutes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    if-gez v1, :cond_3

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "safiap.framework.ACTION_CHECK_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {p1, v1}, Lsafiap/framework/util/a;->a(Landroid/content/Context;I)Z

    goto :goto_0

    .line 62
    :cond_4
    invoke-static {p1}, Lsafiap/framework/util/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
