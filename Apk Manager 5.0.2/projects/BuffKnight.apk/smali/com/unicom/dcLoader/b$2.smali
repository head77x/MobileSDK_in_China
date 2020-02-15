.class Lcom/unicom/dcLoader/b$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unicom/dcLoader/b;


# direct methods
.method constructor <init>(Lcom/unicom/dcLoader/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/b$2;->a:Lcom/unicom/dcLoader/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
