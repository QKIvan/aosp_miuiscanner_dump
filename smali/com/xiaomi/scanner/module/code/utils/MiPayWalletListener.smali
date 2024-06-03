.class public Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;
.super Ljava/lang/Object;
.source "MiPayWalletListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# static fields
.field private static final MIPAY_APP:Ljava/lang/String; = "https://app\\.mipay\\.com/.*"

.field private static final MIPAY_APPLICATION_ID:Ljava/lang/String; = "com.mipay.wallet"

.field private static final MI_PAY:Ljava/lang/String; = "https://([a-zA-Z]+\\.)?m\\.pay\\.xiaomi\\.com/qrpay/[0-9a-zA-Z]{20}.*"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "WalletListener"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkUrl(Ljava/lang/String;)Z
    .locals 6

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "https://([a-zA-Z]+\\.)?m\\.pay\\.xiaomi\\.com/qrpay/[0-9a-zA-Z]{20}.*"

    .line 32
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/high16 v3, 0x10000000

    const-string v4, "com.mipay.wallet"

    const-string v5, "android.intent.action.VIEW"

    if-eqz v0, :cond_1

    .line 34
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.mipay.counter.ui.pay.QrEntryActivity"

    .line 35
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 41
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v0, "https://app\\.mipay\\.com/.*"

    .line 45
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/config/ConfigModel;->isMipayRule(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 47
    :cond_3
    :goto_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 51
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception p1

    .line 54
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, ""

    invoke-static {v0, v2, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->checkUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onCodeModuleDestroy()V
    .locals 2

    .line 68
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiPayWalletListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onCodeModuleDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
