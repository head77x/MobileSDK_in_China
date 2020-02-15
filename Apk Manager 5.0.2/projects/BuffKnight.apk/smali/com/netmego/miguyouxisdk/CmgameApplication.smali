.class public Lcom/netmego/miguyouxisdk/CmgameApplication;
.super Landroid/app/Application;
.source "CmgameApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 21
    const-string v0, "megjb"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method
