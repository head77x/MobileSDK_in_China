.class abstract Lcn/egame/terminal/paysdk/codec/Base64$Coder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/egame/terminal/paysdk/codec/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Coder"
.end annotation


# instance fields
.field public op:I

.field public output:[B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract maxOutputSize(I)I
.end method

.method public abstract process([BIIZ)Z
.end method
