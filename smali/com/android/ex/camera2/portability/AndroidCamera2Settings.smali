.class public Lcom/android/ex/camera2/portability/AndroidCamera2Settings;
.super Lcom/android/ex/camera2/portability/CameraSettings;
.source "AndroidCamera2Settings.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final mActiveArray:Landroid/graphics/Rect;

.field private final mCropRectangle:Landroid/graphics/Rect;

.field private final mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

.field private final mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mVisiblePreviewRectangle:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCam2Set"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;ILandroid/graphics/Rect;Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/Size;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>()V

    if-eqz p1, :cond_7

    if-eqz p3, :cond_6

    .line 88
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 89
    new-instance p2, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    invoke-direct {p2}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;-><init>()V

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    .line 90
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    .line 91
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    .line 93
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mSizesLocked:Z

    .line 95
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Range;

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p3, p2}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->setPreviewFpsRange(II)V

    .line 99
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 101
    invoke-virtual {p0, p5}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 102
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    iput-byte p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mJpegCompressQuality:B

    const/high16 p2, 0x3f800000    # 1.0f

    .line 105
    iput p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentZoomRatio:F

    .line 107
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExposureCompensationIndex:I

    .line 110
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->flashModeFromRequest()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object p2

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 111
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 113
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->focusModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object p2

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 115
    :cond_1
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    .line 117
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->sceneModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object p2

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 119
    :cond_2
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_3

    .line 121
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->whiteBalanceFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object p2

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 124
    :cond_3
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 124
    invoke-direct {p0, p2, p3}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    .line 127
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoExposureLocked:Z

    .line 128
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoWhiteBalanceLocked:Z

    .line 131
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    if-eqz p1, :cond_5

    .line 133
    new-instance p2, Lcom/android/ex/camera2/portability/Size;

    .line 134
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p2, p3, p1}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    :cond_5
    return-void

    .line 85
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "activeArray must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "camera must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2Settings;)V
    .locals 2

    .line 139
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>(Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 140
    iget-object v0, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 141
    new-instance v0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;-><init>(Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    .line 142
    iget-object v0, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    return-void
.end method

.method private static effectiveCropRectFromRequested(Landroid/graphics/Rect;Lcom/android/ex/camera2/portability/Size;)Landroid/graphics/Rect;
    .locals 4

    .line 558
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 559
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    cmpg-float p1, v2, v0

    if-gez p1, :cond_0

    .line 564
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float v2, v2, p1

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float v0, p1, v2

    move v2, p1

    move p1, v0

    .line 572
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 573
    new-instance v1, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 576
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 577
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    neg-float p0, p0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 579
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 582
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 583
    invoke-virtual {v1, p0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method private flashModeFromRequest()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-object v0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 173
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-object v0

    .line 175
    :cond_2
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-object v0

    .line 170
    :cond_3
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-object v0

    .line 168
    :cond_4
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-object v0

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private legacyAreasToMeteringRectangles(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)[",
            "Landroid/hardware/camera2/params/MeteringRectangle;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 295
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 296
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x0

    .line 297
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    move-object/from16 v4, p1

    .line 298
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Area;

    .line 299
    iget-object v6, v5, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 303
    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/lit16 v7, v7, 0x3e8

    int-to-double v7, v7

    const-wide v9, 0x409f400000000000L    # 2000.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    .line 304
    iget v11, v6, Landroid/graphics/Rect;->top:I

    add-int/lit16 v11, v11, 0x3e8

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v9

    .line 305
    iget v13, v6, Landroid/graphics/Rect;->right:I

    add-int/lit16 v13, v13, 0x3e8

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v9

    .line 306
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v6, v6, 0x3e8

    move v15, v3

    int-to-double v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v9

    .line 307
    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    .line 308
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    iget-object v7, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    .line 307
    invoke-direct {v0, v9, v10, v8, v7}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v7

    add-int v17, v6, v7

    .line 309
    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    .line 310
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    iget-object v9, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    .line 309
    invoke-direct {v0, v7, v8, v10, v9}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v7

    add-int v18, v6, v7

    .line 311
    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    .line 312
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v13

    iget-object v9, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    .line 311
    invoke-direct {v0, v7, v8, v10, v9}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v7

    add-int/2addr v6, v7

    .line 313
    iget-object v7, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    .line 314
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v2

    iget-object v2, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    .line 313
    invoke-direct {v0, v8, v9, v3, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v2

    add-int/2addr v7, v2

    .line 315
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    sub-int v19, v6, v17

    sub-int v20, v7, v18

    iget v5, v5, Landroid/hardware/Camera$Area;->weight:I

    move-object/from16 v16, v2

    move/from16 v21, v5

    invoke-direct/range {v16 .. v21}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v2, v1, v15

    add-int/lit8 v2, v15, 0x1

    move v3, v2

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private matchesTemplateDefault(Landroid/hardware/camera2/CaptureRequest$Key;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;)Z"
        }
    .end annotation

    .line 204
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 205
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mMeteringAreas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 206
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_3

    .line 207
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mFocusAreas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 208
    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_7

    .line 209
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    .line 210
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMin:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMax:I

    if-eqz v0, :cond_5

    :cond_4
    if-eqz p1, :cond_6

    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMin:I

    .line 211
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMax:I

    .line 212
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1

    .line 213
    :cond_7
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_8

    .line 214
    iget-byte p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mJpegCompressQuality:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 215
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 216
    :cond_8
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_9

    .line 217
    iget p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExposureCompensationIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 218
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 217
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 219
    :cond_9
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_d

    .line 220
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_a

    .line 221
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    if-eqz v0, :cond_a

    .line 222
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_b

    :cond_a
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    if-nez v0, :cond_c

    .line 224
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    const/4 v1, 0x1

    :cond_c
    return v1

    .line 226
    :cond_d
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_e

    .line 227
    iget-boolean p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoExposureLocked:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 228
    :cond_e
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_f

    .line 229
    iget-boolean p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoWhiteBalanceLocked:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 230
    :cond_f
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v0, :cond_14

    .line 231
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    if-nez p1, :cond_10

    return v1

    .line 236
    :cond_10
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    .line 237
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    .line 239
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_13

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    .line 240
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-ne v0, p1, :cond_13

    :cond_12
    const/4 v1, 0x1

    :cond_13
    return v1

    .line 242
    :cond_14
    sget-object p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v0, "Settings implementation checked default of unhandled option key"

    invoke-static {p1, v0}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method private queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-object p2
.end method

.method private toIntConstrained(DII)I
    .locals 2

    int-to-double v0, p3

    .line 323
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    int-to-double p3, p4

    .line 324
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method private updateRequestFlashMode()V
    .locals 6

    .line 331
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 332
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FlashMode:[I

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 356
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert to API 2 flash mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 352
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 348
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 343
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 344
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 338
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    .line 339
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 334
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_5
    :goto_1
    move-object v0, v1

    .line 361
    :goto_2
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v1}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 362
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private updateRequestFocusMode()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FocusMode:[I

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 395
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert to API 2 focus mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    .line 391
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    .line 386
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x5

    .line 382
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x3

    .line 378
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x4

    .line 374
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x1

    .line 370
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 400
    :goto_1
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRequestGpsData()V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-wide v1, v1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 535
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-wide v1, v1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 536
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-wide v1, v1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 537
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-wide v1, v1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 538
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_1

    .line 531
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private updateRequestSceneMode()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 473
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert to API 2 scene mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const/4 v0, 0x7

    .line 469
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0xa

    .line 465
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xb

    .line 461
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xd

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x9

    .line 453
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x3

    .line 449
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    const/16 v0, 0xe

    .line 445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_7
    const/4 v0, 0x5

    .line 440
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_8
    const/4 v0, 0x4

    .line 436
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 432
    :pswitch_9
    sget v0, Lcom/android/ex/camera2/portability/LegacyVendorTags;->CONTROL_SCENE_MODE_HDR:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_a
    const/16 v0, 0xc

    .line 428
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_b
    const/16 v0, 0xf

    .line 424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_c
    const/16 v0, 0x8

    .line 420
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_d
    const/16 v0, 0x10

    .line 416
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_e
    const/4 v0, 0x2

    .line 412
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_f
    const/4 v0, 0x0

    .line 408
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 478
    :goto_1
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
        :pswitch_0
    .end packed-switch
.end method

.method private updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->matchesTemplateDefault(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void
.end method

.method private updateRequestWhiteBalance()V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$WhiteBalance:[I

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 518
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert to API 2 white balance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    .line 514
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x7

    .line 510
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x8

    .line 506
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x2

    .line 502
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x3

    .line 498
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x5

    .line 494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x6

    .line 490
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_7
    const/4 v0, 0x1

    .line 486
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 523
    :goto_1
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    return-void

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


# virtual methods
.method public copy()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1

    .line 148
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2Settings;)V

    return-object v0
.end method

.method public getRequestSettings()Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;
    .locals 4

    .line 253
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mMeteringAreas:Ljava/util/List;

    .line 254
    invoke-direct {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->legacyAreasToMeteringRectangles(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    .line 253
    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 255
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mFocusAreas:Ljava/util/List;

    .line 256
    invoke-direct {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->legacyAreasToMeteringRectangles(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    .line 255
    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 257
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v1, Landroid/util/Range;

    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMin:I

    .line 258
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 257
    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 260
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-byte v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mJpegCompressQuality:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExposureCompensationIndex:I

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 264
    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 266
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestFlashMode()V

    .line 267
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestFocusMode()V

    .line 268
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSceneMode()V

    .line 269
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestWhiteBalance()V

    .line 270
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 270
    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 275
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 274
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoExposureLocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 278
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoWhiteBalanceLocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 280
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestGpsData()V

    .line 281
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    if-eqz v0, :cond_1

    .line 282
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v1, Landroid/util/Size;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    .line 284
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 282
    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 286
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, v3}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 289
    :goto_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    return-object v0
.end method

.method public setZoomRatio(F)V
    .locals 5

    .line 187
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 190
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    .line 192
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentZoomRatio:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x0

    .line 191
    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    .line 194
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentZoomRatio:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 193
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v1

    .line 190
    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    .line 196
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 199
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 200
    invoke-static {p1, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->effectiveCropRectFromRequested(Landroid/graphics/Rect;Lcom/android/ex/camera2/portability/Size;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVisiblePreviewRectangle:Landroid/graphics/Rect;

    return-void
.end method
