.class Lcom/anysdk/framework/SocialDebug$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/anysdk/framework/SocialDebug;


# direct methods
.method constructor <init>(Lcom/anysdk/framework/SocialDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/framework/SocialDebug$9;->this$0:Lcom/anysdk/framework/SocialDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "plugin_achievement"

    const-string v1, "plugin_achievement"

    invoke-static {v0, v1}, Lcom/anysdk/framework/SocialDebug;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
