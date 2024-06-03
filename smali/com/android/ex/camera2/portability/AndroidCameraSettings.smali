.class public Lcom/android/ex/camera2/portability/AndroidCameraSettings;
.super Lcom/android/ex/camera2/portability/CameraSettings;
.source "AndroidCameraSettings.java"


# static fields
.field private static final RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static final TRUE:Ljava/lang/String; = "true"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCamSet"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraSettings;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>(Lcom/android/ex/camera2/portability/CameraSettings;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 5

    .line 31
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>()V

    if-nez p2, :cond_0

    .line 33
    sget-object p1, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string p2, "Settings ctor requires a non-null Camera.Parameters."

    invoke-static {p1, p2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setSizesLocked(Z)V

    .line 42
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 43
    new-instance v3, Lcom/android/ex/camera2/portability/Size;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v2}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 44
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewFrameRate(I)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 46
    invoke-virtual {p2, v2}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    aget v1, v2, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 47
    invoke-virtual {p0, v1, v2}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewFpsRange(II)V

    .line 49
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewFormat(I)V

    .line 52
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setZoomRatio(F)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setZoomRatio(F)V

    .line 57
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setExposureCompensationIndex(I)V

    .line 58
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 59
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 60
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->sceneModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V

    .line 63
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->isVideoStabilizationEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setVideoStabilization(Z)V

    :cond_2
    const-string p1, "recording-hint"

    .line 66
    invoke-virtual {p2, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setRecordingHintEnabled(Z)V

    .line 69
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 70
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    .line 71
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, p1}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 72
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPhotoFormat(I)V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1

    .line 81
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraSettings;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraSettings;)V

    return-object v0
.end method
