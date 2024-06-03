.class public Lcom/xiaomi/scanner/config/bean/CloudControlVersion;
.super Ljava/lang/Object;
.source "CloudControlVersion.java"


# instance fields
.field private _$Barcode_rough_ruleJson284:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "barcode_rough_rule.json"
    .end annotation
.end field

.field private _$Special_qr_ruleJson284:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "special_qr_rule.json"
    .end annotation
.end field

.field private cloud_control_config_all:Ljava/lang/String;

.field private scan_payment_rule:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloud_control_config_all()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlVersion;->cloud_control_config_all:Ljava/lang/String;

    return-object v0
.end method

.method public getScan_payment_rule()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlVersion;->scan_payment_rule:Ljava/lang/String;

    return-object v0
.end method

.method public get_$Barcode_rough_ruleJson284()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlVersion;->_$Barcode_rough_ruleJson284:Ljava/lang/String;

    return-object v0
.end method

.method public get_$Special_qr_ruleJson284()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlVersion;->_$Special_qr_ruleJson284:Ljava/lang/String;

    return-object v0
.end method

.method public setCloud_control_config_all(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlVersion;->cloud_control_config_all:Ljava/lang/String;

    return-void
.end method

.method public setScan_payment_rule(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlVersion;->scan_payment_rule:Ljava/lang/String;

    return-void
.end method

.method public set_$Barcode_rough_ruleJson284(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlVersion;->_$Barcode_rough_ruleJson284:Ljava/lang/String;

    return-void
.end method

.method public set_$Special_qr_ruleJson284(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlVersion;->_$Special_qr_ruleJson284:Ljava/lang/String;

    return-void
.end method
