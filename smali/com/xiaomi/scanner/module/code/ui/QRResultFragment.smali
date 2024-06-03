.class public Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;
.super Landroid/preference/PreferenceFragment;
.source "QRResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$OnQueryClick;
    }
.end annotation


# static fields
.field private static final ACTION_ADD_ESIM:Ljava/lang/String; = "com.miui.euicc.action.ADD_ESIM"

.field private static final ACTIVATE_MANUAL:Ljava/lang/String; = "activate_manual"

.field private static final BROWSER_PKG_ARRAY:[Ljava/lang/String;

.field private static final EXTRA_ACTIVATE_CHANNEL:Ljava/lang/String; = "com.miui.euicc.extra.ACTIVATE_CHANNEL"

.field private static final EXTRA_ACTIVATE_CODE:Ljava/lang/String; = "com.miui.euicc.extra.ACTIVATE_CODE"

.field private static final EXTRA_ACTIVATE_TYPE:Ljava/lang/String; = "com.miui.euicc.extra.ACTIVATE_TYPE"

.field private static final EXTRA_OPERATE_TYPE:Ljava/lang/String; = "com.miui.euicc.extra.OPERATE_TYPE"

.field public static FINE_LOCATION_CODE:I = 0x0

.field private static final KEY_EMAIL:Ljava/lang/String; = "email"

.field private static final KEY_PHONE:Ljava/lang/String; = "phone"

.field private static final MECARD_GROUP_KEY:Ljava/lang/String; = "pref_mecard_group_key"

.field private static final MSG_MIRACAST_CONNECTING:I = 0x1001

.field private static final MSG_MIRACAST_CONNECT_FAIL:I = 0x1002

.field private static final SCANNER_CHANNEL:Ljava/lang/String; = "scanner"

.field private static final SCAN_TYPE:Ljava/lang/String; = "scan"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final TEXT_CONTENT_KEY:Ljava/lang/String; = "pref_text_content_key"

.field private static final TITLE_PAYTM:Ljava/lang/String; = "Paytm"

.field private static mCardMaxCount:I


# instance fields
.field private aRandomString:Ljava/lang/String;

.field private btn_query:Landroid/widget/Button;

.field private connectByMilink:Z

.field private connectWifiAndroidQ:Z

.field private current_ssid:Ljava/lang/String;

.field private isInitMiLink:Z

.field private isReceiveWifiError:Z

.field private layout:Landroid/widget/RelativeLayout;

.field locationPermissionsResult:Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;

.field private mActivity:Landroid/content/Context;

.field private mBtnCopyText:Landroid/widget/Button;

.field private mBtnDone:Landroid/widget/Button;

.field private mCallingApp:Ljava/lang/String;

.field private mCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/scanner/module/code/zxing/VCard;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mContent:Ljava/lang/String;

.field private mContentTitle:Landroid/widget/TextView;

.field private mIsWifiHide:Z

.field private mIvNoThumbsUp:Landroid/widget/ImageView;

.field private mIvThumbsUp:Landroid/widget/ImageView;

.field private mMiracastDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mMiracastRunnable:Ljava/lang/Runnable;

.field private mPermissions:[Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mQrCodeMatcher:Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;

.field private mTxvWarning:Landroid/widget/TextView;

.field private mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field private mViewSymbol:Landroid/view/View;

.field private mWebCheckListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

.field private mWorkHandler:Landroid/os/Handler;

.field private miLinkConnectSuccess:Z

.field private mlinkClientManager:Lcom/milink/api/v1/MilinkClientManager;

.field private networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private onQueryClick:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$OnQueryClick;

.field private trackingCom:Ljava/lang/String;

.field private trackingNum:Ljava/lang/String;

.field private wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "QRResultFragment"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const/4 v0, 0x3

    .line 122
    sput v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCardMaxCount:I

    const/16 v0, 0x11

    .line 166
    sput v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->FINE_LOCATION_CODE:I

    const-string v0, "com.mi.globalbrowser"

    const-string v1, "com.android.browser"

    const-string v2, "com.android.chrome"

    .line 763
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->BROWSER_PKG_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 85
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 115
    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mIsWifiHide:Z

    const-string v0, ""

    .line 127
    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->current_ssid:Ljava/lang/String;

    const/4 v1, 0x0

    .line 128
    iput-boolean v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isReceiveWifiError:Z

    .line 130
    iput-boolean v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectWifiAndroidQ:Z

    .line 135
    new-instance v2, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$1;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    iput-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    .line 156
    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->trackingNum:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->trackingCom:Ljava/lang/String;

    .line 162
    iput-boolean v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectByMilink:Z

    .line 163
    iput-boolean v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->miLinkConnectSuccess:Z

    .line 164
    iput-boolean v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isInitMiLink:Z

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 165
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mPermissions:[Ljava/lang/String;

    .line 955
    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mClickListener:Landroid/view/View$OnClickListener;

    .line 1043
    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$11;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$11;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWebCheckListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

    .line 1083
    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1156
    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$13;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$13;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 1177
    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$14;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$14;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->locationPermissionsResult:Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->miLinkConnectSuccess:Z

    return p0
.end method

.method static synthetic access$002(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->miLinkConnectSuccess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->showToast(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->launchBrowser()V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->insertContact()V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)[Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectWiFi()V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectByMilink:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectMirecastByMiLink()V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectMiracast()V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startMiracastSettings()V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/content/Context;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->jumpExpressDelivery()V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->jumpAppStore()V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/widget/Button;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnCopyText:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/widget/Button;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mIsWifiHide:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mIsWifiHide:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCallingApp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isReceiveWifiError:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->current_ssid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 85
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mPhone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Landroid/content/Intent;)Z
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$OnQueryClick;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->onQueryClick:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$OnQueryClick;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->copyToClipboard()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->sendMessage(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/os/Handler;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private changeSAE2WPA(I)I
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    :cond_0
    return p1
.end method

.method private connectExitWifi(Ljava/lang/String;)Z
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->getExitConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 902
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->connectExitWifi(Landroid/net/wifi/WifiConfiguration;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private connectMiracast()V
    .locals 11

    .line 585
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "miracast_tvmac"

    .line 586
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->isWifiDisplayOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastRunnable:Ljava/lang/Runnable;

    const/16 v2, 0x1001

    if-nez v1, :cond_0

    .line 589
    new-instance v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$7;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastRunnable:Ljava/lang/Runnable;

    .line 607
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 609
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->sendMessage(I)V

    .line 610
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 613
    :cond_0
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->sendMessage(I)V

    goto :goto_0

    .line 616
    :cond_1
    iget-object v4, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 617
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_2

    .line 618
    new-instance v5, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$8;

    invoke-direct {v5, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$8;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    const/4 v6, 0x0

    const v7, 0x7f100138

    const v8, 0x7f100139

    const v9, 0x7f1001ce

    const v10, 0x7f100033

    invoke-static/range {v4 .. v10}, Lcom/xiaomi/scanner/util/DialogUtil;->showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IIII)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 629
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private connectMirecastByMiLink()V
    .locals 8

    .line 521
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "miracast_tvmac"

    .line 522
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "miracast_tvname"

    .line 523
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    sget-object v2, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 528
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->isWifiDisplayOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mlinkClientManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v3, :cond_0

    const-string v3, "connect Mirecast by milink"

    .line 530
    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 531
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mlinkClientManager:Lcom/milink/api/v1/MilinkClientManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;

    invoke-direct {v4, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$5;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/milink/api/v1/MilinkClientManager;->connectWifiDisplay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/milink/api/v1/MiLinkClientMiracastConnectCallback;)Lcom/milink/api/v1/type/ReturnCode;

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/16 v0, 0x1001

    .line 560
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->sendMessage(I)V

    goto :goto_0

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 565
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_2

    .line 566
    new-instance v2, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$6;

    invoke-direct {v2, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$6;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    const/4 v3, 0x0

    const v4, 0x7f100138

    const v5, 0x7f100139

    const v6, 0x7f1001ce

    const v7, 0x7f100033

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/scanner/util/DialogUtil;->showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IIII)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private connectWiFi()V
    .locals 7

    .line 832
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->wifiSpliter(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "S"

    .line 833
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "T"

    .line 834
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "P"

    .line 835
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 837
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 838
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 845
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3f

    if-le v3, v4, :cond_2

    const v0, 0x7f10021c

    .line 846
    invoke-static {v0}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    return-void

    .line 850
    :cond_2
    new-instance v3, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    iget-object v4, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    .line 851
    invoke-virtual {v3}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->openWifi()V

    .line 854
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->getmWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    .line 855
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 856
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->isWifiApEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 857
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f10007f

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 858
    :cond_3
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->IsAirModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 859
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f1000c8

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    const-string v3, "WPA"

    .line 863
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x3

    goto :goto_2

    :cond_5
    const-string v3, "WEP"

    .line 865
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x2

    goto :goto_2

    :cond_6
    const-string v3, "SAE"

    .line 867
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "WPA3-Personal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v2, 0x4

    .line 871
    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.WIFI_SETTINGS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    .line 872
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 875
    iget-object v5, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->changeSAE2WPA(I)I

    move-result v6

    invoke-virtual {v5, v1, v0, v6}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->connectWifi(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 876
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "connectWifi "

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const v0, 0x7f10021b

    .line 877
    invoke-direct {p0, v3, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;I)Z

    goto :goto_3

    .line 878
    :cond_9
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectExitWifi(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 879
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "connectExitWifi "

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 880
    invoke-direct {p0, v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    .line 881
    iput-boolean v4, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isReceiveWifiError:Z

    goto :goto_3

    .line 882
    :cond_a
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_b

    .line 883
    sget-object v3, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectWifiAndroidQ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 884
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectWifiAndroidQ(Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 886
    :cond_b
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "wifi  no match start wifiSetting "

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 887
    invoke-direct {p0, v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    .line 889
    :goto_3
    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->current_ssid:Ljava/lang/String;

    return-void
.end method

.method private connectWifiAndroidQ(Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 910
    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectWifiAndroidQ:Z

    .line 911
    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isReceiveWifiError:Z

    .line 912
    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$9;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$9;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 933
    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->connectWifiAndroidQ(Ljava/lang/String;Ljava/lang/String;ILandroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private copyToClipboard()V
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 648
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "mActivity is null"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 652
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 653
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    const v1, 0x7f10008a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 637
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 638
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 641
    sget-object v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pName  substring error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object p1
.end method

.method private initMirecast()V
    .locals 3

    .line 388
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->miLinkVaild()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 389
    new-instance v0, Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/milink/api/v1/MilinkClientManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mlinkClientManager:Lcom/milink/api/v1/MilinkClientManager;

    .line 390
    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->open()V

    .line 391
    iput-boolean v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectByMilink:Z

    .line 392
    iput-boolean v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isInitMiLink:Z

    .line 393
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "use MiLink"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_0
    new-instance v0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;

    invoke-direct {v0}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;-><init>()V

    .line 396
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->startWifiDisplayScan()Z

    .line 397
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "use Scanner"

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 398
    iput-boolean v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isInitMiLink:Z

    :goto_0
    return-void
.end method

.method private initUI(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a01c4

    .line 489
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    const v0, 0x7f0a005a

    .line 490
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    const v0, 0x7f0a0059

    .line 491
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnCopyText:Landroid/widget/Button;

    const v0, 0x7f0a0082

    .line 493
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    const v0, 0x7f0a01c3

    .line 494
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    const v0, 0x7f0a012e

    .line 496
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0063

    .line 497
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->btn_query:Landroid/widget/Button;

    .line 499
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->btn_query:Landroid/widget/Button;

    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnCopyText:Landroid/widget/Button;

    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$4;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$4;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnCopyText:Landroid/widget/Button;

    const v0, 0x7f100089

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private insertContact()V
    .locals 5

    .line 658
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 660
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 661
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    if-eqz v3, :cond_0

    .line 662
    invoke-virtual {v3}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 663
    invoke-direct {p0, v3, v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->setCardToIntent(Lcom/xiaomi/scanner/module/code/zxing/VCard;Landroid/content/Intent;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    const-string v2, "data"

    .line 666
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const v1, 0x7f100183

    .line 667
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;I)Z

    return-void
.end method

.method private isQRCodeTextOrPayment(Ljava/lang/String;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 423
    iget-object p4, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {p4, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    const p4, 0x7f100196

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(I)V

    .line 425
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    const/16 p4, 0x8

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p3, "pref_text_content_key"

    .line 426
    invoke-virtual {p2, p3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "pref_mecard_group_key"

    .line 427
    invoke-direct {p0, p2, p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void
.end method

.method private isTrackingNum(Ljava/lang/String;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)V
    .locals 2

    .line 431
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/xiaomi/scanner/bean/TrackingNumBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/TrackingNumBean;

    .line 433
    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/TrackingNumBean;->getData()Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;->getNu()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->trackingNum:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/TrackingNumBean;->getData()Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;->getCom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->trackingCom:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 436
    iget-object p4, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {p4, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    const p4, 0x7f100187

    invoke-virtual {p0, p4}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    const/16 p4, 0x8

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p3, "pref_text_content_key"

    .line 439
    invoke-virtual {p2, p3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/TrackingNumBean;->getData()Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;->getContext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "pref_mecard_group_key"

    .line 440
    invoke-direct {p0, p2, p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    return-void
.end method

.method private jumpAppStore()V
    .locals 3

    :try_start_0
    const-string v0, "market://details?id=com.mipay.wallet.in"

    .line 1019
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1020
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 1021
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1022
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1024
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private jumpExpressDelivery()V
    .locals 0

    return-void
.end method

.method private launchBrowser()V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCallingApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 822
    :try_start_0
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->launchBrowser(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 824
    :catch_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->launchDefaultBrowser()V

    goto :goto_0

    .line 827
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->launchDefaultBrowser()V

    :goto_0
    return-void
.end method

.method private launchBrowser(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 739
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 742
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 743
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 744
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    goto :goto_0

    .line 746
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->launchDefaultBrowser()V

    :cond_1
    :goto_0
    return-void
.end method

.method private launchDefaultBrowser()V
    .locals 4

    .line 752
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 754
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startUriWithBrowser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 758
    sget-object v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchDefaultBrowser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private miLinkVaild()Z
    .locals 7

    .line 404
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    const-string v1, "com.milink.service"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/AppUtil;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 405
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "uninstall mi_link "

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 410
    :cond_0
    :try_start_0
    const-class v0, Lcom/milink/api/v1/MilinkClientManager;

    const-string v2, "connectWifiDisplay"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-class v6, Lcom/milink/api/v1/MiLinkClientMiracastConnectCallback;

    aput-object v6, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    return v5

    :cond_1
    return v1

    .line 416
    :catchall_0
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "cannot find method: connectWifiDisplay"

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private registerIntentReceiver()V
    .locals 3

    .line 1151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 1152
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/util/IntentUtils;->registerSharedReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 6

    .line 937
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 939
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 943
    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 945
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 946
    instance-of v5, v4, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_1

    .line 947
    check-cast v4, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v4, p2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private sendMessage(I)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 172
    :cond_0
    sget-object p1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "null handler, drop message"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setCardToIntent(Lcom/xiaomi/scanner/module/code/zxing/VCard;Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/scanner/module/code/zxing/VCard;",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 671
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 672
    sget v1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCardMaxCount:I

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_9

    .line 674
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "postal"

    const-string v4, "website"

    const-string v5, "phone"

    const-string v6, "email"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const-string v9, "data1"

    const-string v10, "data2"

    const-string v11, "mimetype"

    if-ne v1, v8, :cond_2

    .line 676
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "secondary_email"

    .line 677
    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 678
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "secondary_phone"

    .line 679
    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    if-ne v1, v7, :cond_4

    .line 682
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "tertiary_email"

    .line 683
    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 684
    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "tertiary_phone"

    .line 685
    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 688
    :cond_4
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "birth"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 689
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "vnd.android.cursor.item/contact_event"

    .line 690
    invoke-virtual {v5, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    .line 691
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    invoke-virtual {v5, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 694
    :cond_5
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 695
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 700
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    .line 701
    invoke-virtual {v3, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    invoke-virtual {v3, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 705
    :cond_7
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 706
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "vnd.android.cursor.item/website"

    .line 707
    invoke-virtual {v3, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    .line 708
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    invoke-virtual {v3, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private showToast(I)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 194
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 200
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private startActivitySafely(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, -0x1

    .line 1130
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method private startActivitySafely(Landroid/content/Intent;I)Z
    .locals 2

    .line 1135
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 1137
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "startActivity fail"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1138
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 1139
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return v0
.end method

.method private startMiracastSettings()V
    .locals 2

    .line 1147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nvidia.settings.MIRACAST_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    return-void
.end method

.method private startUriWithBrowser()V
    .locals 10

    .line 766
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    .line 767
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/scanner/util/AppUtil;->getBrowserList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 768
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 770
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v1, :cond_9

    .line 772
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 778
    :cond_0
    sget-object v3, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->BROWSER_PKG_ARRAY:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 779
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 780
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 781
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 782
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 783
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 784
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    sget-object v7, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packageName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",className "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 791
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 792
    new-instance v6, Landroid/content/ComponentName;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 794
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 795
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 798
    :cond_4
    sget-object v5, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolveActivity not match for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v3, "http"

    .line 803
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "https"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 807
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 808
    new-instance v3, Landroid/content/ComponentName;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 810
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 811
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    .line 816
    :cond_8
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "no handle intent for browser!!!"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 773
    :cond_9
    :goto_2
    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivity(Landroid/content/Intent;)V

    .line 774
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "startUriWithBrowser without browser support http uri"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hideQueryButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->btn_query:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->btn_query:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public hideView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->layout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->layout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public launchMIUIMarket()V
    .locals 5

    const-string v0, "android.intent.action.VIEW"

    .line 717
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    sget-object v3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MARKET:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "com.xiaomi.market"

    if-ne v2, v3, :cond_0

    :try_start_1
    const-string v2, "com.xiaomi.market.ui.AppDetailActivity"

    .line 719
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v2, "com.xiaomi.market.ui.MarketTabActivity"

    .line 722
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 726
    :catch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 728
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    :goto_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 445
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 446
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->registerIntentReceiver()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0d00bd

    const/4 p3, 0x0

    .line 452
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 473
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 474
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 1108
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MIRACAST:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne v0, v1, :cond_0

    .line 1109
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->isWifiDisplayOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    new-instance v0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;

    invoke-direct {v0}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;-><init>()V

    .line 1111
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->stopWifiDisplayScan()Z

    .line 1114
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 1115
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1116
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1118
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mMiracastDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/DialogUtil;->dismissDialog(Landroid/app/Dialog;)V

    .line 1120
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    sget-object v2, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectWifiAndroidQ:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    if-eqz v0, :cond_3

    .line 1121
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v2, :cond_2

    .line 1122
    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->unRegisterQequestCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1123
    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1125
    :cond_2
    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->wifiAdmin:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;

    :cond_3
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1172
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1173
    sget v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->FINE_LOCATION_CODE:I

    if-ne p1, v0, :cond_0

    .line 1174
    invoke-static {}, Lcom/xiaomi/scanner/util/PermissionsUtils;->getInstance()Lcom/xiaomi/scanner/util/PermissionsUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/xiaomi/scanner/util/PermissionsUtils;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 463
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MIRACAST:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isInitMiLink:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->isWifiDisplayOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onRestart() initMirecast"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->initMirecast()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 457
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 458
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    .line 459
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->initUI(Landroid/view/View;)V

    return-void
.end method

.method public setOnQueryClick(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$OnQueryClick;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->onQueryClick:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$OnQueryClick;

    return-void
.end method

.method public showQRResult(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .line 205
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 206
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_0
    const v0, 0x7f130005

    .line 210
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->addPreferencesFromResource(I)V

    .line 211
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz p2, :cond_17

    .line 214
    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    .line 215
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 216
    iput-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCallingApp:Ljava/lang/String;

    .line 217
    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MECARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v3, "pref_mecard_group_key"

    const/16 v4, 0x8

    if-eq p1, p3, :cond_1

    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->VCARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-eq p1, p3, :cond_1

    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->CARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, p3, :cond_7

    :cond_1
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    if-eqz p3, :cond_7

    .line 219
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p3

    iget-object v5, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    invoke-virtual {p3, v5}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object p3

    .line 220
    iget-object v5, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mQrCodeMatcher:Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;

    if-nez v5, :cond_2

    .line 221
    new-instance v5, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;

    invoke-direct {v5}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;-><init>()V

    iput-object v5, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mQrCodeMatcher:Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;

    .line 223
    :cond_2
    iget-object v5, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mQrCodeMatcher:Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;

    iget-object v6, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    invoke-virtual {v5, p2, p1, v6}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->contactsCardSpliter(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCards:Ljava/util/ArrayList;

    const-string p2, "pref_text_group_key"

    .line 224
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/preference/PreferenceCategory;

    .line 225
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCards:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/code/zxing/VCard;

    if-nez v0, :cond_4

    goto :goto_0

    .line 230
    :cond_4
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getValues()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 231
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 232
    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 233
    new-instance v8, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;

    iget-object v9, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getIsMobile()Z

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;-><init>(Landroid/content/Context;Z)V

    .line 234
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {v8, v6}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->addItemFromInflater(Landroid/preference/Preference;)V

    .line 237
    invoke-virtual {p3, v7}, Landroid/preference/PreferenceScreen;->addItemFromInflater(Landroid/preference/Preference;)V

    .line 238
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->getIsMobile()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 239
    iget-object v6, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceCategory;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 240
    new-instance v6, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$2;

    invoke-direct {v6, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$2;-><init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    invoke-virtual {v8, v6}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->setOnSmsClickListener(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;)V

    goto :goto_1

    .line 255
    :cond_6
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    const p3, 0x7f0800d5

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 256
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    const p3, 0x7f100110

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 257
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    const p3, 0x7f100085

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 259
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 260
    :cond_7
    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v5, " \n"

    const-string v6, "\n"

    const-string v7, "pref_text_content_key"

    if-eq p1, p3, :cond_15

    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WECHAT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, p3, :cond_8

    goto/16 :goto_6

    .line 267
    :cond_8
    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MARKET:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, p3, :cond_9

    .line 268
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    const v5, 0x7f0800d4

    invoke-virtual {p3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 269
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    const v5, 0x7f1001a5

    invoke-virtual {p3, v5}, Landroid/widget/Button;->setText(I)V

    .line 270
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    const v5, 0x7f100029

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 271
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 274
    invoke-direct {p0, v0, v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_8

    .line 275
    :cond_9
    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TEXT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const v8, 0x7f100089

    const v9, 0x7f0800d8

    if-eq p1, p3, :cond_14

    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WECHAT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, p3, :cond_a

    goto/16 :goto_5

    .line 277
    :cond_a
    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TRACKINGNUM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, p3, :cond_b

    const p3, 0x7f1001a6

    .line 279
    invoke-virtual {p0, p3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, v0, p3, v9}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isTrackingNum(Ljava/lang/String;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 280
    :cond_b
    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->UPIPAY:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, p3, :cond_c

    .line 282
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    const v8, 0x7f0800d6

    invoke-virtual {p3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 283
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    const v8, 0x7f1000a5

    invoke-virtual {p3, v8}, Landroid/widget/Button;->setText(I)V

    .line 284
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    const v8, 0x7f10012f

    invoke-virtual {p3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 285
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    invoke-direct {p0, v0, v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_8

    .line 290
    :cond_c
    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->PAYTM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, p3, :cond_d

    const p3, 0x7f10018f

    .line 292
    invoke-virtual {p0, p3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Paytm"

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const v3, 0x7f0800d2

    .line 291
    invoke-direct {p0, p2, v0, p3, v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isQRCodeTextOrPayment(Ljava/lang/String;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 293
    :cond_d
    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, p3, :cond_10

    .line 294
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    const p3, 0x7f0800da

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 295
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    const p3, 0x7f100084

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 296
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    const p3, 0x7f100219

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 297
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {p3}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->wifiSpliter(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p3

    const-string v4, "P"

    .line 304
    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 305
    iget-boolean v5, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mIsWifiHide:Z

    if-eqz v5, :cond_e

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "."

    const-string v6, "*"

    .line 306
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    :cond_e
    iget-object v5, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    const-string v6, "T"

    const-string v8, "S"

    if-eqz v5, :cond_f

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    const v10, 0x7f10021f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    const v10, 0x7f10021e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mActivity:Landroid/content/Context;

    const v9, 0x7f10021d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 313
    :cond_f
    invoke-virtual {p3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 314
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    :goto_2
    const/16 v6, 0xa

    .line 317
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p3

    .line 326
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p3, p2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 328
    invoke-direct {p0, v0, v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_8

    .line 329
    :cond_10
    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MIRACAST:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, p3, :cond_11

    .line 330
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    const p3, 0x7f0800d7

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 331
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    const p3, 0x7f100133

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 332
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    const p3, 0x7f100136

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 333
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "miracast_tvname"

    .line 336
    invoke-virtual {p2, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const p3, 0x7f100137

    :try_start_1
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    .line 339
    invoke-virtual {p0, p3, v4}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 341
    :try_start_2
    sget-object v4, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "format string error"

    invoke-static {v4, v5, p2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    invoke-virtual {p0, p3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 344
    :goto_3
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 346
    sget-object p3, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "TEXT_CONTENT_KEY set error"

    invoke-static {p3, v4, p2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    :goto_4
    invoke-direct {p0, v0, v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 350
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->isWifiDisplayOn()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 351
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->initMirecast()V

    goto/16 :goto_8

    .line 354
    :cond_11
    sget-object p3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->ESIM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, p3, :cond_13

    const-string p3, "ro.vendor.miui.support_esim"

    .line 355
    invoke-static {p3}, Lcom/xiaomi/scanner/util/BuildHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "true"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 356
    sget-object p3, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "type == ESIM"

    invoke-static {p3, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 357
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.miui.euicc.action.ADD_ESIM"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.euicc.extra.ACTIVATE_TYPE"

    const-string v3, "activate_manual"

    .line 358
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.miui.euicc.extra.ACTIVATE_CODE"

    .line 359
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.miui.euicc.extra.ACTIVATE_CHANNEL"

    const-string v0, "scanner"

    .line 360
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.miui.euicc.extra.OPERATE_TYPE"

    const-string v0, "scan"

    .line 361
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    invoke-direct {p0, p3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->startActivitySafely(Landroid/content/Intent;)Z

    .line 364
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_8

    .line 366
    :cond_12
    invoke-virtual {p0, v8}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, v0, p3, v9}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isQRCodeTextOrPayment(Ljava/lang/String;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)V

    goto :goto_8

    .line 369
    :cond_13
    invoke-virtual {p0, v8}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, v0, p3, v9}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isQRCodeTextOrPayment(Ljava/lang/String;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)V

    goto :goto_8

    .line 276
    :cond_14
    :goto_5
    invoke-virtual {p0, v8}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, v0, p3, v9}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->isQRCodeTextOrPayment(Ljava/lang/String;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)V

    goto :goto_8

    .line 261
    :cond_15
    :goto_6
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mViewSymbol:Landroid/view/View;

    const v8, 0x7f0800d9

    invoke-virtual {p3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 262
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mBtnDone:Landroid/widget/Button;

    const v8, 0x7f1001a4

    invoke-virtual {p3, v8}, Landroid/widget/Button;->setText(I)V

    .line 263
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContentTitle:Landroid/widget/TextView;

    const v8, 0x7f100215

    invoke-virtual {p3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v8

    if-eqz v8, :cond_16

    goto :goto_7

    :cond_16
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    invoke-direct {p0, v0, v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_8

    :cond_17
    const/4 p2, 0x0

    .line 372
    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    .line 373
    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 374
    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mCallingApp:Ljava/lang/String;

    .line 375
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_18
    :goto_8
    if-eqz p4, :cond_19

    .line 378
    sget-object p2, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, p2, :cond_19

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result p1

    if-nez p1, :cond_19

    .line 379
    new-instance p1, Lcom/xiaomi/scanner/module/code/utils/URLInspector;

    invoke-direct {p1}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;-><init>()V

    .line 380
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mWebCheckListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

    invoke-virtual {p1, p2}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->setOnReceivedDataListener(Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;)V

    new-array p2, v2, [Ljava/lang/String;

    .line 381
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mContent:Ljava/lang/String;

    aput-object p3, p2, v1

    invoke-virtual {p1, p2}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_9

    .line 383
    :cond_19
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->mTxvWarning:Landroid/widget/TextView;

    const p2, 0x7f10020e

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_9
    return-void
.end method
