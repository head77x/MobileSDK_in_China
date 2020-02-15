.class public final Lcom/unicom/dcLoader/c$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static action_settings:I

.field public static test1:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f080001

    sput v0, Lcom/unicom/dcLoader/c$d;->action_settings:I

    const/high16 v0, 0x7f08

    sput v0, Lcom/unicom/dcLoader/c$d;->test1:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
