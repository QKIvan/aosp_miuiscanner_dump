.class public Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;
.super Ljava/lang/Object;
.source "PaymentQRCodeScanning.java"


# static fields
.field private static final GOOGLE_PLAY_BASE_URL:Ljava/lang/String; = "market://details?id="

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "PaymentQRCodeScanning"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->mContext:Landroid/content/Context;

    return-void
.end method

.method private installAppFromAppStore(Ljava/lang/String;)V
    .locals 3

    .line 56
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x18080000

    .line 57
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    sget-object v0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "PaymentQRCodeScanning Paytm application not found : "

    invoke-static {v0, v1, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public scanningCompleted(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;)Z
    .locals 3

    .line 23
    iput-object p2, p0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->mContext:Landroid/content/Context;

    .line 24
    sget-object v0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentQRCodeScanning scanningCompleted mContext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 28
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 30
    sget-object v1, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->PAYTM:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    if-ne p3, v1, :cond_2

    const-string v1, "PaymentQRCodeScanning scanningCompleted UpiFactory.UpiConstant.PAYTM"

    .line 31
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 32
    invoke-static {p3}, Lcom/xiaomi/scanner/payment/UpiFactory;->getMerchant(Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;)Lcom/xiaomi/scanner/payment/Merchant;

    move-result-object p3

    .line 33
    invoke-interface {p3}, Lcom/xiaomi/scanner/payment/Merchant;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/xiaomi/scanner/util/AppUtil;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "PaymentQRCodeScanning scanningCompleted app is installed "

    .line 34
    invoke-static {v0, p2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 35
    invoke-interface {p3, p1}, Lcom/xiaomi/scanner/payment/Merchant;->getMerchantUpi(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "PaymentQRCodeScanning scanningCompleted app is not installed "

    .line 38
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 39
    invoke-interface {p3}, Lcom/xiaomi/scanner/payment/Merchant;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->installAppFromAppStore(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method
