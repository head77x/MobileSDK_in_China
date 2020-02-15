.class public Lcn/egame/terminal/paysdk/jni/ProtocolMessage;
.super Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field public obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/egame/terminal/paysdk/jni/ProtocolMessage;->obj:Ljava/lang/Object;

    iput-object p1, p0, Lcn/egame/terminal/paysdk/jni/ProtocolMessage;->obj:Ljava/lang/Object;

    iput p2, p0, Lcn/egame/terminal/paysdk/jni/ProtocolMessage;->arg1:I

    iput p3, p0, Lcn/egame/terminal/paysdk/jni/ProtocolMessage;->arg2:I

    return-void
.end method
