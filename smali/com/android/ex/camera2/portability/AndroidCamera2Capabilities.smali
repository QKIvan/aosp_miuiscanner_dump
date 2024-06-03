.class public Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;
.super Lcom/android/ex/camera2/portability/CameraCapabilities;
.source "AndroidCamera2Capabilities.java"


# static fields
.field private static TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCam2Capabs"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 9

    .line 42
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;-><init>(Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)V

    .line 44
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 46
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 47
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v3

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x1

    aput v5, v7, v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    const-class v2, Landroid/graphics/SurfaceTexture;

    .line 52
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v2

    .line 51
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ex/camera2/portability/Size;->buildListFromAndroidSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 54
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    const-class v2, Landroid/media/MediaRecorder;

    .line 59
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v2

    .line 58
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ex/camera2/portability/Size;->buildListFromAndroidSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    const/16 v2, 0x100

    .line 63
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 62
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/Size;->buildListFromAndroidSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 66
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->buildSceneModes(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->buildFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->buildFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->buildWhiteBalances(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 74
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 75
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMinExposureCompensation:I

    .line 76
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxExposureCompensation:I

    .line 78
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    .line 79
    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mExposureCompensationStep:F

    .line 81
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxNumOfFacesSupported:I

    .line 82
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxNumOfMeteringArea:I

    .line 84
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxZoomRatio:F

    .line 90
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxNumOfFocusAreas:I

    .line 92
    iget p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxNumOfFocusAreas:I

    if-lez p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_2
    iget p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxNumOfMeteringArea:I

    if-lez p1, :cond_3

    .line 97
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_3
    iget p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxZoomRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 101
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private buildFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 4

    .line 134
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_1

    .line 136
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 137
    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->focusModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildSceneModes(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 4

    .line 108
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_1

    .line 110
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 111
    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->sceneModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildWhiteBalances(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 4

    .line 146
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_1

    .line 148
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 149
    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->whiteBalanceFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static focusModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 181
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert from API 2 focus mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-object p0

    .line 170
    :cond_1
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-object p0

    .line 172
    :cond_2
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_VIDEO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-object p0

    .line 179
    :cond_3
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->MACRO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-object p0

    .line 168
    :cond_4
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-object p0

    .line 176
    :cond_5
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-object p0
.end method

.method public static sceneModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 229
    :pswitch_0
    sget v0, Lcom/android/ex/camera2/portability/LegacyVendorTags;->CONTROL_SCENE_MODE_HDR:I

    if-ne p0, v0, :cond_0

    .line 230
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 200
    :pswitch_1
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BARCODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 204
    :pswitch_2
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->CANDLELIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 213
    :pswitch_3
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PARTY:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 219
    :pswitch_4
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SPORTS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 206
    :pswitch_5
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->FIREWORKS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 221
    :pswitch_6
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->STEADYPHOTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 223
    :pswitch_7
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SUNSET:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 217
    :pswitch_8
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SNOW:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 202
    :pswitch_9
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BEACH:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 225
    :pswitch_a
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->THEATRE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 210
    :pswitch_b
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 208
    :pswitch_c
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->LANDSCAPE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 215
    :pswitch_d
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 198
    :pswitch_e
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ACTION:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 196
    :pswitch_f
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0

    .line 233
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert from API 2 scene mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static whiteBalanceFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 264
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert from API 2 white balance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 258
    :pswitch_0
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->SHADE:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-object p0

    .line 260
    :pswitch_1
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->TWILIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-object p0

    .line 250
    :pswitch_2
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-object p0

    .line 252
    :pswitch_3
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-object p0

    .line 262
    :pswitch_4
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-object p0

    .line 254
    :pswitch_5
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-object p0

    .line 256
    :pswitch_6
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->INCANDESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-object p0

    .line 248
    :pswitch_7
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
