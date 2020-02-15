.class public interface abstract Lsafiap/framework/UpdateManager$OnGotUpdateListListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGotUpdateListListener"
.end annotation


# virtual methods
.method public abstract onGotUpdateList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lsafiap/framework/a/b;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGotUpdateListError(Ljava/lang/String;)V
.end method
