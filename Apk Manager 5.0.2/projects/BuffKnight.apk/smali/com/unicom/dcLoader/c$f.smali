.class public final Lcom/unicom/dcLoader/c$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static main:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x7f07

    sput v0, Lcom/unicom/dcLoader/c$f;->main:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method