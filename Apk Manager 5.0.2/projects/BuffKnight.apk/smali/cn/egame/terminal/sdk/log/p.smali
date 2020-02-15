.class public Lcn/egame/terminal/sdk/log/p;
.super Ljava/lang/Exception;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcn/egame/terminal/sdk/log/p;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcn/egame/terminal/sdk/log/p;->a:I

    iput p2, p0, Lcn/egame/terminal/sdk/log/p;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcn/egame/terminal/sdk/log/p;->a:I

    iput p2, p0, Lcn/egame/terminal/sdk/log/p;->a:I

    return-void
.end method
