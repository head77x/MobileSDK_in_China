.class public Lcom/anysdk/framework/SocialWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final SOCIAL_SIGNIN_FAIL:I = 0x6

.field public static final SOCIAL_SIGNIN_SUCCEED:I = 0x5

.field public static final SOCIAL_SIGNOUT_FAIL:I = 0x8

.field public static final SOCIAL_SIGNOUT_SUCCEED:I = 0x7

.field public static final SOCIAL_SUBMITSCORE_FAIL:I = 0x2

.field public static final SOCIAL_SUBMITSCORE_SUCCEED:I = 0x1

.field public static final SOCIAL_UNLOCKACH_FAIL:I = 0x4

.field public static final SOCIAL_UNLOCKACH_SUCCEED:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/anysdk/framework/SocialWrapper;->nativeOnSocialResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static native nativeOnSocialResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static onSocialResult(Lcom/anysdk/framework/InterfaceSocial;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/anysdk/framework/SocialWrapper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anysdk/framework/SocialWrapper$1;-><init>(Lcom/anysdk/framework/InterfaceSocial;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/anysdk/framework/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
