.class public Lcom/xiaomi/scanner/module/code/app/QRResultActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "QRResultActivity.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$OnQueryClick;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static requestNewPermissions:[Ljava/lang/String;


# instance fields
.field private mCallingApp:Ljava/lang/String;

.field private mFragment:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

.field private mQRResult:Ljava/lang/String;

.field private mQRType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field private mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

.field private progressBar:Landroid/widget/ProgressBar;

.field private requestPermissions2:[Ljava/lang/String;

.field private trackFragment:Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;

.field private trackingNumRule:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "QRResultActivity"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "android.permission-group.CAMERA"

    const-string v1, "android.permission-group.STORAGE"

    .line 47
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->requestNewPermissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->trackingNumRule:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private checkTrackingNUm()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->trackingNumRule:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->trackingNumRule:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    :cond_0
    return-void
.end method

.method private initUI()V
    .locals 7

    .line 183
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0a00ee

    if-eqz v0, :cond_0

    const v0, 0x7f0a01c2

    .line 184
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mFragment:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .line 188
    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->setOnQueryClick(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$OnQueryClick;)V

    .line 189
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0a01b6

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->trackFragment:Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;

    .line 190
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    sget-object v2, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TRACKINGNUM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    .line 191
    sget-object v0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "not TrackingNum"

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mFragment:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    iget-object v4, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mCallingApp:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->showQRResult(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->trackFragment:Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;

    invoke-virtual {v0, v3}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->hideView(Z)V

    .line 196
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->trackingNumRule:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->trackingNumRule:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 203
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mFragment:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->hideQueryButton(Z)V

    goto :goto_0

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mFragment:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-virtual {v0, v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->hideQueryButton(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private showCTAConfirmDialog()V
    .locals 4

    .line 165
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isRightVersion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity$1;-><init>(Lcom/xiaomi/scanner/module/code/app/QRResultActivity;)V

    const/4 v1, 0x0

    const v2, 0x7f100127

    .line 171
    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f100103

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaomi/scanner/util/DialogUtil;->createConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/scanner/util/CtaManager;->requestCtaDialog(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 138
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    const/16 v0, 0x22

    if-ne p1, v0, :cond_2

    const-string p1, "pref_user_agree_permission"

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    .line 143
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    const p1, 0x7f1000bc

    .line 144
    invoke-static {p1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 145
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 147
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    invoke-static {p3}, Lcom/xiaomi/scanner/util/AppUtil;->saveUserAgreeToRun(Z)V

    .line 149
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->initUI()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x11

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 155
    invoke-static {p3}, Lcom/xiaomi/scanner/util/AppUtil;->saveUserAgreeToRun(Z)V

    .line 156
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->initUI()V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 158
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 60
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScreenUtils;->isPad(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->setRequestedOrientation(I)V

    .line 65
    :goto_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    new-array p1, v1, [Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->requestPermissions2:[Ljava/lang/String;

    const/4 p1, 0x3

    .line 69
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->setVolumeControlStream(I)V

    const p1, 0x7f0d00be

    .line 70
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->setContentView(I)V

    const-string p1, "keyNetworkTrackingNumRule"

    const-string v0, ""

    .line 72
    invoke-static {p1, v0}, Lcom/xiaomi/scanner/util/SPUtils;->getLocalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->trackingNumRule:Ljava/lang/String;

    const p1, 0x7f0a0134

    .line 74
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 76
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "result"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    const-string v0, "type"

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 79
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->match(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 83
    :cond_1
    sget-object v2, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TRACKINGNUM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 84
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TRACKINGNUM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    sget-object v2, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/Util;->decodeTwo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRResult:Ljava/lang/String;

    :cond_3
    const-string v0, "fromApp"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mCallingApp:Ljava/lang/String;

    const-string v0, "mipayIn"

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 93
    sget-object p1, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->UPIPAY:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mQRType:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 96
    :cond_4
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 97
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->initUI()V

    goto :goto_1

    .line 99
    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->showCTAConfirmDialog()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 129
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/DialogUtil;->dismissDialog(Landroid/app/Dialog;)V

    .line 131
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mFragment:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->setOnQueryClick(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$OnQueryClick;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 124
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onQueryClickListener()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->checkTrackingNUm()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 216
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 217
    sget v0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->FINE_LOCATION_CODE:I

    if-ne p1, v0, :cond_0

    .line 218
    invoke-static {}, Lcom/xiaomi/scanner/util/PermissionsUtils;->getInstance()Lcom/xiaomi/scanner/util/PermissionsUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaomi/scanner/util/PermissionsUtils;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 111
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onRestart()V

    .line 112
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;->mFragment:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->onRestart()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 119
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
