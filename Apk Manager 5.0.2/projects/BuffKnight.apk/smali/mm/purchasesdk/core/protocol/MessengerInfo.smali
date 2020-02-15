.class public Lmm/purchasesdk/core/protocol/MessengerInfo;
.super Ljava/lang/Object;


# static fields
.field private static final APKSIGNTURE:Ljava/lang/String; = "APKSIGNTURE"


# instance fields
.field private final APKPATH:Ljava/lang/String;

.field private final APKPKI:Ljava/lang/String;

.field private final APKSHA:Ljava/lang/String;

.field private final APPID:Ljava/lang/String;

.field private final APPKEY:Ljava/lang/String;

.field private final APPTYPE:Ljava/lang/String;

.field private final APPURL:Ljava/lang/String;

.field private final AUTHSTR:Ljava/lang/String;

.field private final CERTCONTENT:Ljava/lang/String;

.field private final CHANNELID:Ljava/lang/String;

.field private final CLASSESHA1:Ljava/lang/String;

.field private final COPYRIGHTCERT:Ljava/lang/String;

.field private final DYANSWER:Ljava/lang/String;

.field private final DYQUESTION:Ljava/lang/String;

.field private final IDTOKEN:Ljava/lang/String;

.field private final IDTOKEN_VERF:Ljava/lang/String;

.field private final LEFTDAY:Ljava/lang/String;

.field private final MARKSTATUS:Ljava/lang/String;

.field private final MESSAGE:Ljava/lang/String;

.field private final MMQRYURL:Ljava/lang/String;

.field private MMQry_URL:Ljava/lang/String;

.field private final MSISDNTYPE:Ljava/lang/String;

.field private MSISDNType:Ljava/lang/String;

.field private final NEXTCYCLE:Ljava/lang/String;

.field private final ORDERCOUNT:Ljava/lang/String;

.field private final ORDERID:Ljava/lang/String;

.field private final ORDERTYPE:Ljava/lang/String;

.field private final PACKAGE:Ljava/lang/String;

.field private final PAYCODE:Ljava/lang/String;

.field private final PAYCODESTYLE:Ljava/lang/String;

.field private final PAYCODEWTOS:Ljava/lang/String;

.field private final PHONENUM:Ljava/lang/String;

.field private final PRODUCTINFO:Ljava/lang/String;

.field private final PRODUCTKEYS:Ljava/lang/String;

.field private final PROGRAMID:Ljava/lang/String;

.field private final PROMPTMSG:Ljava/lang/String;

.field private final PROMPTURL:Ljava/lang/String;

.field private final PURCHASECODE:Ljava/lang/String;

.field private final RANNUM:Ljava/lang/String;

.field private final REFERERURL:Ljava/lang/String;

.field private final SESSESIONID:Ljava/lang/String;

.field private final STACKMARK:Ljava/lang/String;

.field private final TASKID:Ljava/lang/String;

.field private final TIMESTAMP:Ljava/lang/String;

.field private final TRADEID:Ljava/lang/String;

.field private final TRADEIDQUERY:Ljava/lang/String;

.field private final USERDATA:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private final WAPQRYURL:Ljava/lang/String;

.field private WAPQry_URL:Ljava/lang/String;

.field private mApkPKI:Ljava/lang/String;

.field private mApkPath:Ljava/lang/String;

.field private mApkSHA:Ljava/lang/String;

.field private mApksignture:Ljava/lang/String;

.field private mAppID:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mAppType:Ljava/lang/String;

.field private mAppUrl:Ljava/lang/String;

.field private mAuthstr:Ljava/lang/String;

.field private mChannelID:Ljava/lang/String;

.field private mClasseSha1:Ljava/lang/String;

.field private mCopyrightCert:Ljava/lang/String;

.field private mDyAnswer:Ljava/lang/String;

.field private mDyQuestion:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIDToken:Ljava/lang/String;

.field private mIdtoken_verf:Ljava/lang/String;

.field private mLeftDay:Ljava/lang/String;

.field private mMarkStatus:I

.field private mMessage:Ljava/lang/String;

.field private mNextCycle:Z

.field private mOrderCount:I

.field private mOrderID:Ljava/lang/String;

.field private mOrderType:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPaycode:Ljava/lang/String;

.field private mPaycodeStyle:I

.field private mPhone:Ljava/lang/String;

.field private mProductInfo:Landroid/os/Bundle;

.field private mProductKey:Ljava/util/ArrayList;

.field private mProgramID:Ljava/lang/String;

.field private mPromptMsg:Ljava/lang/String;

.field private mPromptUrl:Ljava/lang/String;

.field private mPurchasecode:I

.field private mRannum:Ljava/lang/String;

.field private mRefleshUrl:Ljava/lang/String;

.field private mResult:I

.field private mSessionID:Ljava/lang/String;

.field private mStackMark:Ljava/lang/String;

.field private mTaskID:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;

.field private mTradeID:Ljava/lang/String;

.field private mTradeIDQuery:Z

.field private mUserData:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field private mpaycodewtos:I

.field private paycodeSaved:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "APPID"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->APPID:Ljava/lang/String;

    const-string v0, "APPKEY"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->APPKEY:Ljava/lang/String;

    const-string v0, "PAYCODE"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->PAYCODE:Ljava/lang/String;

    const-string v0, "PROGRAMID"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->PROGRAMID:Ljava/lang/String;

    const-string v0, "STACKMARK"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->STACKMARK:Ljava/lang/String;

    const-string v0, "ORDERCOUNT"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->ORDERCOUNT:Ljava/lang/String;

    const-string v0, "NEXTCYCLE"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->NEXTCYCLE:Ljava/lang/String;

    const-string v0, "TRADEID"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->TRADEID:Ljava/lang/String;

    const-string v0, "TIMESTAMP"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->TIMESTAMP:Ljava/lang/String;

    const-string v0, "TRADEIDQUERY"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->TRADEIDQUERY:Ljava/lang/String;

    const-string v0, "PURCHASECODE"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->PURCHASECODE:Ljava/lang/String;

    const-string v0, "COPYRIGHTCERT"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->COPYRIGHTCERT:Ljava/lang/String;

    const-string v0, "CHANNELID"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->CHANNELID:Ljava/lang/String;

    const-string v0, "LEFTDAY"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->LEFTDAY:Ljava/lang/String;

    const-string v0, "ORDERID"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->ORDERID:Ljava/lang/String;

    const-string v0, "ORDERTYPE"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->ORDERTYPE:Ljava/lang/String;

    const-string v0, "SESSESIONID"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->SESSESIONID:Ljava/lang/String;

    const-string v0, "CERTCONTENT"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->CERTCONTENT:Ljava/lang/String;

    const-string v0, "APKPATH"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->APKPATH:Ljava/lang/String;

    const-string v0, "VERSION"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->VERSION:Ljava/lang/String;

    const-string v0, "CLASSESHA1"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->CLASSESHA1:Ljava/lang/String;

    const-string v0, "USERDATA"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->USERDATA:Ljava/lang/String;

    const-string v0, "MESSAGE"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->MESSAGE:Ljava/lang/String;

    const-string v0, "PACKAGE"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->PACKAGE:Ljava/lang/String;

    const-string v0, "TASKID"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->TASKID:Ljava/lang/String;

    const-string v0, "RANNUM"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->RANNUM:Ljava/lang/String;

    const-string v0, "IDTOKEN"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->IDTOKEN:Ljava/lang/String;

    const-string v0, "IDTOKEN_VERF"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->IDTOKEN_VERF:Ljava/lang/String;

    const-string v0, "AUTHSTR"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->AUTHSTR:Ljava/lang/String;

    const-string v0, "MARKSTATUS"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->MARKSTATUS:Ljava/lang/String;

    const-string v0, "DYQUESTION"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->DYQUESTION:Ljava/lang/String;

    const-string v0, "DYANSWER"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->DYANSWER:Ljava/lang/String;

    const-string v0, "PAYCODESTYLE"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->PAYCODESTYLE:Ljava/lang/String;

    const-string v0, "PAYCODEWTOS"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->PAYCODEWTOS:Ljava/lang/String;

    const-string v0, "PRODUCTINFO"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->PRODUCTINFO:Ljava/lang/String;

    const-string v0, "PRODUCTKEYS"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->PRODUCTKEYS:Ljava/lang/String;

    const-string v0, "PHONENUM"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->PHONENUM:Ljava/lang/String;

    const-string v0, "PROMPTMSG"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->PROMPTMSG:Ljava/lang/String;

    const-string v0, "PROMPTURL"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->PROMPTURL:Ljava/lang/String;

    const-string v0, "APKSHA"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->APKSHA:Ljava/lang/String;

    const-string v0, "APKPKI"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->APKPKI:Ljava/lang/String;

    const-string v0, "MSISDNTYPE"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->MSISDNTYPE:Ljava/lang/String;

    const-string v0, "WAPQRYURL"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->WAPQRYURL:Ljava/lang/String;

    const-string v0, "MMQRYURL"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->MMQRYURL:Ljava/lang/String;

    const-string v0, "APPTYPE"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->APPTYPE:Ljava/lang/String;

    const-string v0, "APPURL"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->APPURL:Ljava/lang/String;

    const-string v0, "REFERERURL"

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->REFERERURL:Ljava/lang/String;

    iput-boolean v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mNextCycle:Z

    iput-boolean v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTradeIDQuery:Z

    const/4 v0, -0x1

    iput v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPaycodeStyle:I

    iput v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mpaycodewtos:I

    iput v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mResult:I

    return-void
.end method


# virtual methods
.method public getApkPKI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApkPKI:Ljava/lang/String;

    return-object v0
.end method

.method public getApkPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getApkSHA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApkSHA:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApksignture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApksignture:Ljava/lang/String;

    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppID:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppType:Ljava/lang/String;

    return-object v0
.end method

.method public getAppUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthstr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAuthstr:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mChannelID:Ljava/lang/String;

    return-object v0
.end method

.method public getClasseSha1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mClasseSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyrightCert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mCopyrightCert:Ljava/lang/String;

    return-object v0
.end method

.method public getDyAnswer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mDyAnswer:Ljava/lang/String;

    return-object v0
.end method

.method public getDyQuestion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mDyQuestion:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIDToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mIDToken:Ljava/lang/String;

    return-object v0
.end method

.method public getIdtoken_verf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mIdtoken_verf:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftDay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mLeftDay:Ljava/lang/String;

    return-object v0
.end method

.method public getMMQry_URL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->MMQry_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getMSISDNType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->MSISDNType:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkStatus()I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mMarkStatus:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderCount()I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mOrderCount:I

    return v0
.end method

.method public getOrderID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mOrderID:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mOrderType:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaycode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPaycode:Ljava/lang/String;

    return-object v0
.end method

.method public getProductInfo()Lmm/purchasesdk/core/billing/ProductInfo;
    .locals 2

    new-instance v0, Lmm/purchasesdk/core/billing/ProductInfo;

    invoke-direct {v0}, Lmm/purchasesdk/core/billing/ProductInfo;-><init>()V

    iget-object v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mProductInfo:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/billing/ProductInfo;->setInfo(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mProductKey:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/billing/ProductInfo;->setmInfoKey(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/billing/ProductInfo;->setMobilePhone(Ljava/lang/String;)V

    return-object v0
.end method

.method public getProgramID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mProgramID:Ljava/lang/String;

    return-object v0
.end method

.method public getPromptMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPromptMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getPromptUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPromptUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchasecode()I
    .locals 3

    const-string v0, "setpurchasecode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mpurchasecode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPurchasecode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPurchasecode:I

    return v0
.end method

.method public getRannum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mRannum:Ljava/lang/String;

    return-object v0
.end method

.method public getRefleshUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mRefleshUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mResult:I

    return v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getStackMark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mStackMark:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTaskID:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTradeID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mUserData:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getWAPQry_URL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->WAPQry_URL:Ljava/lang/String;

    return-object v0
.end method

.method public isPaycodeSaved()Z
    .locals 1

    iget-boolean v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->paycodeSaved:Z

    return v0
.end method

.method public isPaycodeStyle()I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPaycodeStyle:I

    return v0
.end method

.method public isPaycodewtos()I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mpaycodewtos:I

    return v0
.end method

.method public isTradeIDQuery()Z
    .locals 1

    iget-boolean v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTradeIDQuery:Z

    return v0
.end method

.method public ismNextCycle()Z
    .locals 1

    iget-boolean v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mNextCycle:Z

    return v0
.end method

.method public readBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "APPID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppID:Ljava/lang/String;

    const-string v0, "APPKEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppKey:Ljava/lang/String;

    const-string v0, "PAYCODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPaycode:Ljava/lang/String;

    const-string v0, "PROGRAMID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mProgramID:Ljava/lang/String;

    const-string v0, "STACKMARK"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mStackMark:Ljava/lang/String;

    const-string v0, "ORDERCOUNT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mOrderCount:I

    const-string v0, "NEXTCYCLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mNextCycle:Z

    const-string v0, "TRADEIDQUERY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTradeIDQuery:Z

    const-string v0, "PURCHASECODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPurchasecode:I

    const-string v0, "TRADEID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTradeID:Ljava/lang/String;

    const-string v0, "TIMESTAMP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTimeStamp:Ljava/lang/String;

    const-string v0, "CHANNELID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mChannelID:Ljava/lang/String;

    const-string v0, "COPYRIGHTCERT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mCopyrightCert:Ljava/lang/String;

    const-string v0, "ORDERID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mOrderID:Ljava/lang/String;

    const-string v0, "LEFTDAY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mLeftDay:Ljava/lang/String;

    const-string v0, "ORDERTYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mOrderType:Ljava/lang/String;

    const-string v0, "CERTCONTENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mCopyrightCert:Ljava/lang/String;

    const-string v0, "APKPATH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApkPath:Ljava/lang/String;

    const-string v0, "VERSION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mVersion:Ljava/lang/String;

    const-string v0, "CLASSESHA1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mClasseSha1:Ljava/lang/String;

    const-string v0, "USERDATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mUserData:Ljava/lang/String;

    const-string v0, "MESSAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mMessage:Ljava/lang/String;

    const-string v0, "PACKAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPackageName:Ljava/lang/String;

    const-string v0, "TASKID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTaskID:Ljava/lang/String;

    const-string v0, "IDTOKEN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mIDToken:Ljava/lang/String;

    const-string v0, "RANNUM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mRannum:Ljava/lang/String;

    const-string v0, "IDTOKEN_VERF"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mIdtoken_verf:Ljava/lang/String;

    const-string v0, "AUTHSTR"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAuthstr:Ljava/lang/String;

    const-string v0, "MARKSTATUS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mMarkStatus:I

    const-string v0, "DYQUESTION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mDyQuestion:Ljava/lang/String;

    const-string v0, "DYANSWER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mDyAnswer:Ljava/lang/String;

    const-string v0, "SESSESIONID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mSessionID:Ljava/lang/String;

    const-string v0, "PRODUCTINFO"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mProductInfo:Landroid/os/Bundle;

    const-string v0, "PRODUCTKEYS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mProductKey:Ljava/util/ArrayList;

    const-string v0, "PHONENUM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPhone:Ljava/lang/String;

    const-string v0, "PAYCODESTYLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPaycodeStyle:I

    const-string v0, "PAYCODEWTOS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mpaycodewtos:I

    const-string v0, "PROMPTMSG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPromptMsg:Ljava/lang/String;

    const-string v0, "PROMPTURL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPromptUrl:Ljava/lang/String;

    const-string v0, "APKSIGNTURE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApksignture:Ljava/lang/String;

    const-string v0, "APKSHA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApkSHA:Ljava/lang/String;

    const-string v0, "APKPKI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApkPKI:Ljava/lang/String;

    const-string v0, "PROMPTURL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->MSISDNType:Ljava/lang/String;

    const-string v0, "WAPQRYURL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->WAPQry_URL:Ljava/lang/String;

    const-string v0, "MMQRYURL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->MMQry_URL:Ljava/lang/String;

    const-string v0, "APPTYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppType:Ljava/lang/String;

    const-string v0, "APPURL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppUrl:Ljava/lang/String;

    const-string v0, "REFERERURL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mRefleshUrl:Ljava/lang/String;

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPurchasecode:I

    const/4 v0, -0x1

    iput v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPaycodeStyle:I

    iput v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mpaycodewtos:I

    return-void
.end method

.method public setApkPKI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApkPKI:Ljava/lang/String;

    return-void
.end method

.method public setApkPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApkPath:Ljava/lang/String;

    return-void
.end method

.method public setApkSHA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApkSHA:Ljava/lang/String;

    return-void
.end method

.method public setApksignture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApksignture:Ljava/lang/String;

    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppID:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppKey:Ljava/lang/String;

    return-void
.end method

.method public setAppType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppType:Ljava/lang/String;

    return-void
.end method

.method public setAppUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppUrl:Ljava/lang/String;

    return-void
.end method

.method public setAuthstr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAuthstr:Ljava/lang/String;

    return-void
.end method

.method public setChannelID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mChannelID:Ljava/lang/String;

    return-void
.end method

.method public setClasseSha1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mClasseSha1:Ljava/lang/String;

    return-void
.end method

.method public setCopyrightCert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mCopyrightCert:Ljava/lang/String;

    return-void
.end method

.method public setDyAnswer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mDyAnswer:Ljava/lang/String;

    return-void
.end method

.method public setDyQuestion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mDyQuestion:Ljava/lang/String;

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setIDToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mIDToken:Ljava/lang/String;

    return-void
.end method

.method public setIdtoken_verf(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mIdtoken_verf:Ljava/lang/String;

    return-void
.end method

.method public setLeftDay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mLeftDay:Ljava/lang/String;

    return-void
.end method

.method public setMMQry_URL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->MMQry_URL:Ljava/lang/String;

    return-void
.end method

.method public setMSISDNType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->MSISDNType:Ljava/lang/String;

    return-void
.end method

.method public setMarkStatus(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mMarkStatus:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setNextCycle(Z)V
    .locals 0

    iput-boolean p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mNextCycle:Z

    return-void
.end method

.method public setOrderCount(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mOrderCount:I

    return-void
.end method

.method public setOrderID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mOrderID:Ljava/lang/String;

    return-void
.end method

.method public setOrderType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mOrderType:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPaycode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPaycode:Ljava/lang/String;

    return-void
.end method

.method public setPaycodeSaved(Z)V
    .locals 0

    iput-boolean p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->paycodeSaved:Z

    return-void
.end method

.method public setPaycodeStyle(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPaycodeStyle:I

    return-void
.end method

.method public setPaycodewtos(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mpaycodewtos:I

    return-void
.end method

.method public setProductInfo(Lmm/purchasesdk/core/billing/ProductInfo;)V
    .locals 2

    const-string v0, "setProductInfo"

    const-string v1, "ProductInfo info"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lmm/purchasesdk/core/billing/ProductInfo;->getInfo()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mProductInfo:Landroid/os/Bundle;

    invoke-virtual {p1}, Lmm/purchasesdk/core/billing/ProductInfo;->getInfoKey()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mProductKey:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lmm/purchasesdk/core/billing/ProductInfo;->getMobilePhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPhone:Ljava/lang/String;

    return-void
.end method

.method public setProgramID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mProgramID:Ljava/lang/String;

    return-void
.end method

.method public setPromptMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPromptMsg:Ljava/lang/String;

    return-void
.end method

.method public setPromptUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPromptUrl:Ljava/lang/String;

    return-void
.end method

.method public setPurchasecode(I)V
    .locals 3

    iput p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPurchasecode:I

    const-string v0, "setpurchasecode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mpurchasecode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRannum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mRannum:Ljava/lang/String;

    return-void
.end method

.method public setRefleshUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mRefleshUrl:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mResult:I

    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mSessionID:Ljava/lang/String;

    return-void
.end method

.method public setStackMark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mStackMark:Ljava/lang/String;

    return-void
.end method

.method public setTaskID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTaskID:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setTradeID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTradeID:Ljava/lang/String;

    return-void
.end method

.method public setTradeIDQuery(Z)V
    .locals 0

    iput-boolean p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTradeIDQuery:Z

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mUserData:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public setWAPQry_URL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->WAPQry_URL:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuthstr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAuthstr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCopyrightCert : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mCopyrightCert:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mClasseSha1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mClasseSha1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDyQuestion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mDyQuestion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDyAnswer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mDyAnswer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "APPID"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "APPKEY"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PAYCODE"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPaycode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PROGRAMID"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mProgramID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "STACKMARK"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mStackMark:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ORDERCOUNT"

    iget v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mOrderCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "NEXTCYCLE"

    iget-boolean v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mNextCycle:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "TRADEID"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTradeID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TIMESTAMP"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TRADEIDQUERY"

    iget-boolean v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTradeIDQuery:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "PURCHASECODE"

    iget v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPurchasecode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "COPYRIGHTCERT"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mCopyrightCert:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CHANNELID"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mChannelID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LEFTDAY"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mLeftDay:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ORDERID"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mOrderID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ORDERTYPE"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mOrderType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CERTCONTENT"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mCopyrightCert:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "APKPATH"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VERSION"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CLASSESHA1"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mClasseSha1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "USERDATA"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mUserData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MESSAGE"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PACKAGE"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TASKID"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mTaskID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IDTOKEN"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mIDToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RANNUM"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mRannum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IDTOKEN_VERF"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mIdtoken_verf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AUTHSTR"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAuthstr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MARKSTATUS"

    iget v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mMarkStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DYQUESTION"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mDyQuestion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DYANSWER"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mDyAnswer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SESSESIONID"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PRODUCTINFO"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mProductInfo:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "PRODUCTKEYS"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mProductKey:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "PHONENUM"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PAYCODESTYLE"

    iget v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPaycodeStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PAYCODEWTOS"

    iget v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mpaycodewtos:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PROMPTMSG"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPromptMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PROMPTURL"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mPromptUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "APKSIGNTURE"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApksignture:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "APKSHA"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApkSHA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "APKPKI"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mApkPKI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MSISDNTYPE"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->MSISDNType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "WAPQRYURL"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->WAPQry_URL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MMQRYURL"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->MMQry_URL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "APPTYPE"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "APPURL"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mAppUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "REFERERURL"

    iget-object v2, p0, Lmm/purchasesdk/core/protocol/MessengerInfo;->mRefleshUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
