.class Lcom/unicom/dcLoader/Utils$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/dcLoader/Utils;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/dcLoader/Utils;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/Utils$6;->this$0:Lcom/unicom/dcLoader/Utils;

    iput-object p2, p0, Lcom/unicom/dcLoader/Utils$6;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unicom/dcLoader/Utils$6;->this$0:Lcom/unicom/dcLoader/Utils;

    iget-object v1, p0, Lcom/unicom/dcLoader/Utils$6;->val$mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/unicom/dcLoader/Utils$6;->this$0:Lcom/unicom/dcLoader/Utils;

    invoke-static {v2}, Lcom/unicom/dcLoader/Utils;->b(Lcom/unicom/dcLoader/Utils;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/unicom/dcLoader/Utils;->a(Lcom/unicom/dcLoader/Utils;Landroid/content/Context;I)V

    return-void
.end method
