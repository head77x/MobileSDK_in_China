.class public interface abstract Lcn/play/dserv/PLTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final STATE_DIE:I = 0x3

.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_RUNNING:I = 0x1

.field public static final STATE_WAITING:I


# virtual methods
.method public abstract getId()I
.end method

.method public abstract getState()I
.end method

.method public abstract init()V
.end method

.method public abstract setDService(Lcn/play/dserv/DServ;)V
.end method

.method public abstract setState(I)V
.end method
