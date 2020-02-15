.class public Lcom/unipay/secret/jni/SecretJni;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ParseSecConent(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static varargs native getContentSms([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static varargs native getContentVac([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static varargs native getDataSms([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static varargs native getSecContent([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static varargs native getunSubMonthContent([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native make3des(Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public static native makeaes(Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public static native makebase62(Ljava/lang/String;)Ljava/lang/String;
.end method
