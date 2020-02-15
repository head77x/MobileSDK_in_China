.class public Lcom/netmego/miguyouxisdk/MegoActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "MegoActivity.java"


# instance fields
.field MainListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

.field PromptExitInGame:Z

.field _callbackFunc:Ljava/lang/String;

.field _callbackGameObject:Ljava/lang/String;

.field private isAppForeground:Z

.field private postHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->isAppForeground:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->postHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method


# virtual methods
.method public CheckMobile()I
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 279
    const/4 v0, -0x1

    .line 282
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getMobileOperatorType()I

    move-result v0

    goto :goto_0
.end method

.method public OnBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "smsPayItem"
    .parameter "vaccode"
    .parameter "props"
    .parameter "money"
    .parameter "callbackGameObject"
    .parameter "callbackFunc"

    .prologue
    .line 176
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "san wang on buy :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    iput-object p5, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->_callbackGameObject:Ljava/lang/String;

    .line 179
    iput-object p6, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->_callbackFunc:Ljava/lang/String;

    .line 181
    iget-object v6, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->postHandler:Landroid/os/Handler;

    new-instance v0, Lcom/netmego/miguyouxisdk/MegoActivity$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netmego/miguyouxisdk/MegoActivity$3;-><init>(Lcom/netmego/miguyouxisdk/MegoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method

.method public OnInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "AnySDK_AppKey"
    .parameter "AnySDK_AppSecret"
    .parameter "AnySDK_privateKey"
    .parameter "AnySDK_oauthLoginServer"
    .parameter "MM_appID"
    .parameter "MM_appkey"
    .parameter "CompanyName"
    .parameter "QAPhone"
    .parameter "AppName"

    .prologue
    .line 129
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Migu SDK init :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/netmego/miguyouxisdk/MegoActivity$1;

    invoke-direct {v1, p0}, Lcom/netmego/miguyouxisdk/MegoActivity$1;-><init>(Lcom/netmego/miguyouxisdk/MegoActivity;)V

    iput-object v1, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->MainListener:Lcom/netmego/miguyouxisdk/MiguSDKFactory$BillingListener;

    .line 158
    iget-object v12, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->postHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netmego/miguyouxisdk/MegoActivity$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/netmego/miguyouxisdk/MegoActivity$2;-><init>(Lcom/netmego/miguyouxisdk/MegoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->postHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netmego/miguyouxisdk/MegoActivity$5;

    invoke-direct {v1, p0}, Lcom/netmego/miguyouxisdk/MegoActivity$5;-><init>(Lcom/netmego/miguyouxisdk/MegoActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    :cond_0
    return-void
.end method

.method public exitGame()V
    .locals 0

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/netmego/miguyouxisdk/MegoActivity;->exit()V

    .line 273
    return-void
.end method

.method public isAppOnForeground()Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/netmego/miguyouxisdk/MegoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 54
    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Landroid/app/ActivityManager;

    .line 56
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {p0}, Lcom/netmego/miguyouxisdk/MegoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 59
    .local v2, appProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v4

    .line 62
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 64
    .local v1, appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 65
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_2

    .line 67
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isMusicEnabled()Z
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 296
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->isMusicEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 193
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 195
    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->getInstance()Lcom/netmego/miguyouxisdk/AnySDK_Manager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netmego/miguyouxisdk/AnySDK_Manager;->Initialized:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-static {p1, p2, p3}, Lcom/anysdk/framework/PluginWrapper;->onActivityResult(IILandroid/content/Intent;)V

    .line 197
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    .line 202
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->Destroy(Landroid/content/Context;)V

    .line 204
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 209
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->PromptExitInGame:Z

    .line 212
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    new-instance v1, Lcom/netmego/miguyouxisdk/MegoActivity$4;

    invoke-direct {v1, p0}, Lcom/netmego/miguyouxisdk/MegoActivity$4;-><init>(Lcom/netmego/miguyouxisdk/MegoActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->exitGame(Landroid/content/Context;Lcom/netmego/miguyouxisdk/MiguSDKFactory$ExitGameListener;)V

    .line 232
    iget-boolean v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->PromptExitInGame:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-super {p0, p1, p2}, Lcom/unity3d/player/UnityPlayerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 238
    :goto_0
    return v0

    .line 235
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/unity3d/player/UnityPlayerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    .line 113
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->Pause(Landroid/content/Context;)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/netmego/miguyouxisdk/MegoActivity;->isAppOnForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->isAppForeground:Z

    .line 120
    :cond_1
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onRestart()V

    .line 91
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onRestart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    .line 99
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->isAppForeground:Z

    invoke-virtual {v0, p0, v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->Resume(Landroid/content/Context;Z)V

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->isAppForeground:Z

    if-nez v0, :cond_1

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->isAppForeground:Z

    .line 106
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStop()V

    .line 78
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->Stop(Landroid/content/Context;)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/netmego/miguyouxisdk/MegoActivity;->isAppOnForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netmego/miguyouxisdk/MegoActivity;->isAppForeground:Z

    .line 84
    :cond_1
    return-void
.end method

.method public screenShotShare(Ljava/lang/String;)V
    .locals 3
    .parameter "filepath"

    .prologue
    .line 303
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Brandon : scr path"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->doScreenShotShare(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public viewMoreGames()V
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-static {}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->getInstance()Lcom/netmego/miguyouxisdk/MiguSDKFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netmego/miguyouxisdk/MiguSDKFactory;->viewMoreGames(Landroid/content/Context;)V

    goto :goto_0
.end method
