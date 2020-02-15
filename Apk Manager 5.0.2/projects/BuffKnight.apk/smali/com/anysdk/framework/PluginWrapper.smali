.class public Lcom/anysdk/framework/PluginWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final ANYSDK_VERSION:Ljava/lang/String; = "2.0.3"

.field private static final TAG:Ljava/lang/String; = "PluginWrapper"

.field private static mActivityCallback:Lcom/anysdk/framework/IActivityCallback;

.field static sContext:Landroid/content/Context;

.field protected static sGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field protected static sGLThreadHandler:Landroid/os/Handler;

.field protected static sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/anysdk/framework/PluginWrapper;->sContext:Landroid/content/Context;

    sput-object v0, Lcom/anysdk/framework/PluginWrapper;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    sput-object v0, Lcom/anysdk/framework/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    sput-object v0, Lcom/anysdk/framework/PluginWrapper;->sGLThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method protected static getPluginType(Ljava/lang/Object;)I
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "PluginType"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sput-object p0, Lcom/anysdk/framework/PluginWrapper;->sContext:Landroid/content/Context;

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/anysdk/framework/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    :cond_0
    invoke-static {p0}, Lcom/anysdk/framework/Wrapper;->analysisDeveloperInfo(Landroid/content/Context;)V

    return-void
.end method

.method protected static initFromNativeActivity(Landroid/app/Activity;)V
    .locals 0

    sput-object p0, Lcom/anysdk/framework/PluginWrapper;->sContext:Landroid/content/Context;

    return-void
.end method

.method protected static initPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "PluginWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class name : ----"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-static {}, Lcom/anysdk/framework/PluginWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "PluginWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v1, "PluginWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Plugin "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wasn\'t initialized."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->mActivityCallback:Lcom/anysdk/framework/IActivityCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->mActivityCallback:Lcom/anysdk/framework/IActivityCallback;

    invoke-interface {v0, p0, p1, p2}, Lcom/anysdk/framework/IActivityCallback;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static onPause()V
    .locals 1

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->mActivityCallback:Lcom/anysdk/framework/IActivityCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->mActivityCallback:Lcom/anysdk/framework/IActivityCallback;

    invoke-interface {v0}, Lcom/anysdk/framework/IActivityCallback;->onPause()V

    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 1

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->mActivityCallback:Lcom/anysdk/framework/IActivityCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->mActivityCallback:Lcom/anysdk/framework/IActivityCallback;

    invoke-interface {v0}, Lcom/anysdk/framework/IActivityCallback;->onResume()V

    :cond_0
    return-void
.end method

.method public static runOnGLThread(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->sGLThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->sGLThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string v0, "PluginWrapper"

    const-string v1, "call back invoked on main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->sContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anysdk/framework/PluginWrapper;->sContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setActivityCallback(Lcom/anysdk/framework/IActivityCallback;)V
    .locals 0

    sput-object p0, Lcom/anysdk/framework/PluginWrapper;->mActivityCallback:Lcom/anysdk/framework/IActivityCallback;

    return-void
.end method

.method public static setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    sput-object p0, Lcom/anysdk/framework/PluginWrapper;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-void
.end method
