.class public Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;
.super Ljava/lang/Object;
.source "MiPayInListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# static fields
.field private static MIPAY_INTENT:Ljava/lang/String; = null

.field private static final MI_BI:Ljava/lang/String; = "^upi:\\/\\/.*"

.field private static final MI_BI2:Ljava/lang/String; = "^0002.*"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private miPayInDialog:Lcom/xiaomi/scanner/dialog/MiPayInDialog;

.field private result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "MiPayInListener"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "inmipay://inwalletapp?id=mipay.counter&processType=PAY&miref=micamera&order="

    .line 36
    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->MIPAY_INTENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkUrl(Ljava/lang/String;)Z
    .locals 4

    .line 48
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->result:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "^upi:\\/\\/.*"

    .line 51
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x10000000

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->MIPAY_INTENT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 55
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    sget-object p1, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "startActivity  ->   mipay"

    invoke-static {p1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    :cond_0
    sget-object p1, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "showDialog"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->showDialog()V

    :goto_0
    return v1

    :cond_1
    const-string v0, "^0002.*"

    .line 65
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->MIPAY_INTENT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 69
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 71
    sget-object p1, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "startActivity  ->   mipay2"

    invoke-static {p1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 75
    :cond_2
    sget-object p1, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "skip"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private jumpAppStore()V
    .locals 3

    :try_start_0
    const-string v0, "market://details?id=com.mipay.wallet.in"

    .line 132
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 134
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private jumpOtherApp(Ljava/lang/String;)V
    .locals 4

    .line 143
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jumpOtherApp ActivityNotFound   ->   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->launchQRResultActivity(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private launchQRResultActivity(Ljava/lang/String;)V
    .locals 2

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result"

    .line 156
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "mipayIn"

    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->mContext:Landroid/content/Context;

    const-class v1, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 159
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showDialog()V
    .locals 4

    const-string v0, "mipayin_remember"

    const/4 v1, 0x0

    .line 85
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->jumpAppStore()V

    .line 88
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Jump to the appstore"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_0
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->result:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->jumpOtherApp(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Jump to other app"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->miPayInDialog:Lcom/xiaomi/scanner/dialog/MiPayInDialog;

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->dismiss()V

    .line 102
    :cond_2
    new-instance v0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->result:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->miPayInDialog:Lcom/xiaomi/scanner/dialog/MiPayInDialog;

    .line 103
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->show()V

    .line 104
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Jump to dialog"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->mContext:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/scanner/app/MiPayInDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->result:Ljava/lang/String;

    const-string v2, "Result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Jump to activity to show dialog"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;)Z
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->checkUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 0

    .line 117
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    .line 118
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->checkUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onCodeModuleDestroy()V
    .locals 2

    .line 127
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayInListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onCodeModuleDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
