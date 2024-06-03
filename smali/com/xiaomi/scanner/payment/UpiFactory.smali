.class public Lcom/xiaomi/scanner/payment/UpiFactory;
.super Ljava/lang/Object;
.source "UpiFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMerchant(Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;)Lcom/xiaomi/scanner/payment/Merchant;
    .locals 1

    .line 11
    sget-object v0, Lcom/xiaomi/scanner/payment/UpiFactory$1;->$SwitchMap$com$xiaomi$scanner$payment$UpiFactory$UpiConstant:[I

    invoke-virtual {p0}, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_0
    new-instance p0, Lcom/xiaomi/scanner/payment/PaytmMerchant;

    invoke-direct {p0}, Lcom/xiaomi/scanner/payment/PaytmMerchant;-><init>()V

    return-object p0
.end method
