.class public interface abstract Lcn/egame/terminal/paysdk/EgamePayInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract exit(Landroid/content/Context;)V
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract pay(Landroid/content/Context;Ljava/util/Map;Lcn/egame/terminal/paysdk/EgamePayListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/egame/terminal/paysdk/EgamePayListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sdkDispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract sdkOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method
