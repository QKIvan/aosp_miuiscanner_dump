.class public final enum Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;
.super Ljava/lang/Enum;
.source "UpiFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/payment/UpiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpiConstant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

.field public static final enum NOTHING:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

.field public static final enum PAYTM:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    const-string v1, "PAYTM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->PAYTM:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    .line 20
    new-instance v1, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    const-string v3, "NOTHING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->NOTHING:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 18
    sput-object v3, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->$VALUES:[Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;
    .locals 1

    .line 18
    const-class v0, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->$VALUES:[Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    invoke-virtual {v0}, [Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    return-object v0
.end method
