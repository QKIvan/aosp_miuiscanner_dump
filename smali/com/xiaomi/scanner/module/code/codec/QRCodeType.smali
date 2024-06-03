.class public final enum Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
.super Ljava/lang/Enum;
.source "QRCodeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/scanner/module/code/codec/QRCodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum CARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum ESIM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum MARKET:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum MATMSG:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum MATTER:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum MECARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum MIRACAST:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum PAYTM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum TEXT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum TRACKINGNUM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum UPIPAY:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum VCARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum WECHAT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

.field public static final enum WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 5
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v1, "WEB_URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WEB_URL:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 6
    new-instance v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v3, "WECHAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WECHAT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 7
    new-instance v3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v5, "WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 8
    new-instance v5, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v7, "MARKET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MARKET:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 9
    new-instance v7, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v9, "MECARD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MECARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 10
    new-instance v9, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v11, "VCARD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->VCARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 11
    new-instance v11, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v13, "CARD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->CARD:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 12
    new-instance v13, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v15, "TEXT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TEXT:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 13
    new-instance v15, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v14, "PAYTM"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->PAYTM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 14
    new-instance v14, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v12, "MIRACAST"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MIRACAST:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 15
    new-instance v12, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v10, "TRACKINGNUM"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->TRACKINGNUM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 16
    new-instance v10, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v8, "UPIPAY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->UPIPAY:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 17
    new-instance v8, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v6, "ESIM"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->ESIM:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 18
    new-instance v6, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v4, "MATMSG"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MATMSG:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .line 19
    new-instance v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const-string v2, "MATTER"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->MATTER:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 4
    sput-object v2, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->$VALUES:[Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
    .locals 1

    .line 4
    const-class v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/scanner/module/code/codec/QRCodeType;
    .locals 1

    .line 4
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->$VALUES:[Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-virtual {v0}, [Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    return-object v0
.end method
