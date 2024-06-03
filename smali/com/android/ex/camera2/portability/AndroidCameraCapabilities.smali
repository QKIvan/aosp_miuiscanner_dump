.class Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
.super Lcom/android/ex/camera2/portability/CameraCapabilities;
.source "AndroidCameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;,
        Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;
    }
.end annotation


# static fields
.field private static TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag; = null

.field public static final ZOOM_MULTIPLIER:F = 100.0f


# instance fields
.field private mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

.field private mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCamCapabs"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 41
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;-><init>(Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)V

    .line 37
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    .line 38
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    .line 42
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxExposureCompensation:I

    .line 43
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMinExposureCompensation:I

    .line 44
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mExposureCompensationStep:F

    .line 45
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfFacesSupported:I

    .line 46
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfMeteringArea:I

    .line 47
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Landroid/hardware/Camera$Size;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

    .line 48
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 49
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mHorizontalViewAngle:F

    .line 51
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mVerticalViewAngle:F

    .line 52
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildPreviewSizes(Landroid/hardware/Camera$Parameters;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildVideoSizes(Landroid/hardware/Camera$Parameters;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildPictureSizes(Landroid/hardware/Camera$Parameters;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildSceneModes(Landroid/hardware/Camera$Parameters;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildFlashModes(Landroid/hardware/Camera$Parameters;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildFocusModes(Landroid/hardware/Camera$Parameters;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->buildWhiteBalances(Landroid/hardware/Camera$Parameters;)V

    .line 61
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxZoomRatio:F

    .line 63
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_3
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result p1

    iput p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfFocusAreas:I

    .line 76
    iget p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfFocusAreas:I

    if-lez p1, :cond_4

    .line 77
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_4
    iget p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfMeteringArea:I

    if-lez p1, :cond_5

    .line 81
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;-><init>(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 37
    new-instance p1, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    .line 38
    new-instance p1, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-direct {p1, v0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    return-void
.end method

.method private buildFlashModes(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 172
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "auto"

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "off"

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v1, "on"

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v1, "red-eye"

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 185
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v1, "torch"

    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private buildFocusModes(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 194
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "auto"

    .line 197
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "continuous-picture"

    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "continuous-video"

    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_VIDEO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v1, "edof"

    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v1, "fixed"

    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 206
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v1, "infinity"

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 208
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->INFINITY:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v1, "macro"

    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->MACRO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-void
.end method

.method private buildPictureSizes(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .line 118
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 121
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/ex/camera2/portability/Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private buildPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .line 90
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private buildPreviewSizes(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .line 98
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 101
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/ex/camera2/portability/Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private buildSceneModes(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 129
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "auto"

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "action"

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ACTION:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "barcode"

    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BARCODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v1, "beach"

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BEACH:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v1, "candlelight"

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 141
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->CANDLELIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v1, "fireworks"

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 143
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->FIREWORKS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v1, "hdr"

    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 145
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string v1, "landscape"

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 147
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->LANDSCAPE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const-string v1, "night"

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 149
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const-string v1, "night-portrait"

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 151
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NIGHT_PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const-string v1, "party"

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 153
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PARTY:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const-string v1, "portrait"

    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 155
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const-string v1, "snow"

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 157
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SNOW:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    const-string v1, "sports"

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 159
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SPORTS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    const-string v1, "steadyphoto"

    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 161
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->STEADYPHOTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    const-string v1, "sunset"

    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 163
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SUNSET:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    const-string v1, "theatre"

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->THEATRE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method private buildVideoSizes(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .line 108
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 111
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/ex/camera2/portability/Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private buildWhiteBalances(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 217
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "auto"

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "cloudy-daylight"

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "daylight"

    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v1, "fluorescent"

    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v1, "incandescent"

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->INCANDESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v1, "shade"

    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 231
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->SHADE:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v1, "twilight"

    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 233
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->TWILIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string v1, "warm-fluorescent"

    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    return-void
.end method
