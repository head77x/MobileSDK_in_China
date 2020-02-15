.class public abstract Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lsafiap/framework/sdk/ISAFFrameworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/sdk/ISAFFrameworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "safiap.framework.sdk.ISAFFrameworkCallback"

.field private static b:I = 0x1

.field private static c:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "safiap.framework.sdk.ISAFFrameworkCallback"

    invoke-virtual {p0, p0, v0}, Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lsafiap/framework/sdk/ISAFFrameworkCallback;
    .locals 2
    .parameter

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "safiap.framework.sdk.ISAFFrameworkCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lsafiap/framework/sdk/ISAFFrameworkCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lsafiap/framework/sdk/ISAFFrameworkCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v1, "safiap.framework.sdk.ISAFFrameworkCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "safiap.framework.sdk.ISAFFrameworkCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 54
    invoke-virtual {p0, v1, v2, v3}, Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub;->onDownloadProgress(Ljava/lang/String;II)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    :sswitch_2
    const-string v1, "safiap.framework.sdk.ISAFFrameworkCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    invoke-virtual {p0, v1, v2}, Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub;->onFinishDownload(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
