.class public interface abstract Lsafiap/framework/sdk/PluginInstallListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RESULT_DOWNLOAD_FAILED:I = 0xb

.field public static final RESULT_DOWNLOAD_OK:I = 0xa

.field public static final RESULT_USER_CANCELED:I = 0xd


# virtual methods
.method public abstract onDownloadProgress(Ljava/lang/String;II)V
.end method

.method public abstract onFinishDownload(Ljava/lang/String;I)V
.end method
