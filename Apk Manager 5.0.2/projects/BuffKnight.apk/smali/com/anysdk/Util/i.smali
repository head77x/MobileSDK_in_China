.class final Lcom/anysdk/Util/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anysdk/Util/SdkHttpListener;


# instance fields
.field final synthetic a:Lcom/anysdk/Util/SdkHttpListener;


# direct methods
.method constructor <init>(Lcom/anysdk/Util/SdkHttpListener;)V
    .locals 0

    iput-object p1, p0, Lcom/anysdk/Util/i;->a:Lcom/anysdk/Util/SdkHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 1

    iget-object v0, p0, Lcom/anysdk/Util/i;->a:Lcom/anysdk/Util/SdkHttpListener;

    invoke-interface {v0}, Lcom/anysdk/Util/SdkHttpListener;->onError()V

    invoke-static {}, Lcom/anysdk/Util/g;->a()Lcom/anysdk/Util/c;

    return-void
.end method

.method public final onResponse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anysdk/Util/i;->a:Lcom/anysdk/Util/SdkHttpListener;

    invoke-interface {v0, p1}, Lcom/anysdk/Util/SdkHttpListener;->onResponse(Ljava/lang/String;)V

    invoke-static {}, Lcom/anysdk/Util/g;->a()Lcom/anysdk/Util/c;

    return-void
.end method
