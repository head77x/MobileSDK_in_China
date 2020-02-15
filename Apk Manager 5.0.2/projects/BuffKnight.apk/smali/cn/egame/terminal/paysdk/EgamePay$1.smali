.class final Lcn/egame/terminal/paysdk/EgamePay$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/egame/terminal/paysdk/EgamePay;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcn/egame/terminal/paysdk/EgamePay$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcn/egame/terminal/paysdk/EgamePay$1;->val$context:Landroid/content/Context;

    #calls: Lcn/egame/terminal/paysdk/EgamePay;->getInstance(Landroid/content/Context;)Lcn/egame/terminal/paysdk/EgamePayInterface;
    invoke-static {v0}, Lcn/egame/terminal/paysdk/EgamePay;->access$000(Landroid/content/Context;)Lcn/egame/terminal/paysdk/EgamePayInterface;

    sget-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "sEPIInstance"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    iget-object v1, p0, Lcn/egame/terminal/paysdk/EgamePay$1;->val$context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcn/egame/terminal/paysdk/EgamePayInterface;->init(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "instance is null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
