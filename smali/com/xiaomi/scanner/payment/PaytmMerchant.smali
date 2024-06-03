.class public Lcom/xiaomi/scanner/payment/PaytmMerchant;
.super Ljava/lang/Object;
.source "PaytmMerchant.java"

# interfaces
.implements Lcom/xiaomi/scanner/payment/Merchant;


# static fields
.field private static final PAYTM_PACKAGE_NAME:Ljava/lang/String; = "net.one97.paytm"

.field private static final PAYTM_URI:Ljava/lang/String; = "paytmmp://scan_pay?recipient=%s&amount_editable=1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMerchantUpi(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "paytmmp://scan_pay?recipient=%s&amount_editable=1"

    .line 18
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    .line 22
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "net.one97.paytm"

    return-object v0
.end method
