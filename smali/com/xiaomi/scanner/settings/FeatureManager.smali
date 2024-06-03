.class public Lcom/xiaomi/scanner/settings/FeatureManager;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBusinessCardModuleAvailable()Z
    .locals 1

    .line 20
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isCanScanMi10()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isCaptureSoundEnabled()Z
    .locals 1

    .line 55
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v0

    return v0
.end method

.method public static isCarsHomeModuleAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isClassAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isCodeModuleAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isDocumentModuleAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isFoodLogoShow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isFoodModuleAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isLogoShow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isPaytmAvailable()Z
    .locals 1

    .line 13
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IN"

    invoke-static {v0}, Lcom/xiaomi/scanner/util/DeviceUtil;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPhotoShoppingModuleAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isPlantModuleAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isStoreModuleAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isStudyModuleAvailable()Z
    .locals 1

    .line 35
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isTranslationModuleAvailable()Z
    .locals 1

    .line 16
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isWeixinAutoProcessQRCodesBean()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isXiaoaiEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
