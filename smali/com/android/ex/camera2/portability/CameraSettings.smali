.class public abstract Lcom/android/ex/camera2/portability/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
    }
.end annotation


# static fields
.field private static final MAX_JPEG_COMPRESSION_QUALITY:I = 0x64

.field private static final MIN_JPEG_COMPRESSION_QUALITY:I = 0x1

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field protected mAutoExposureLocked:Z

.field protected mAutoWhiteBalanceLocked:Z

.field protected mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field protected mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field protected mCurrentPhotoFormat:I

.field protected mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

.field private mCurrentPreviewFormat:I

.field protected mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

.field protected mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field protected mCurrentZoomRatio:F

.field protected mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

.field protected mExposureCompensationIndex:I

.field protected final mFocusAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected final mGeneralSetting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

.field protected mJpegCompressQuality:B

.field protected final mMeteringAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreviewFpsRangeMax:I

.field protected mPreviewFpsRangeMin:I

.field protected mPreviewFrameRate:I

.field protected mRecordingHintEnabled:Z

.field protected mSizesLocked:Z

.field protected mVideoStabilizationEnabled:Z

.field protected mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamSet"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    const/16 v0, 0x11

    .line 47
    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 4

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    const/16 v3, 0x11

    .line 47
    iput v3, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    .line 118
    iget-object v3, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 119
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    .line 122
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    .line 123
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    .line 124
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    .line 125
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v2, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    :goto_0
    iput-object v2, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 127
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    .line 128
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v1, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    :goto_1
    iput-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    .line 130
    iget-byte v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mJpegCompressQuality:B

    iput-byte v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mJpegCompressQuality:B

    .line 131
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoFormat:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoFormat:I

    .line 132
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentZoomRatio:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentZoomRatio:F

    .line 133
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mExposureCompensationIndex:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExposureCompensationIndex:I

    .line 134
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 135
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 136
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 137
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 138
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mVideoStabilizationEnabled:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mVideoStabilizationEnabled:Z

    .line 139
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoExposureLocked:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoExposureLocked:Z

    .line 140
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoWhiteBalanceLocked:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoWhiteBalanceLocked:Z

    .line 141
    iget-boolean v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mRecordingHintEnabled:Z

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mRecordingHintEnabled:Z

    .line 142
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    .line 143
    iget-object p1, p1, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    return-void
.end method

.method static synthetic access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public clearGpsData()V
    .locals 1

    const/4 v0, 0x0

    .line 491
    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    return-void
.end method

.method public abstract copy()Lcom/android/ex/camera2/portability/CameraSettings;
.end method

.method public getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-object v0
.end method

.method public getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-object v0
.end method

.method public getCurrentPhotoFormat()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoFormat:I

    return v0
.end method

.method public getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;
    .locals 2

    .line 267
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    return-object v0
.end method

.method public getCurrentPreviewFormat()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    return v0
.end method

.method public getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;
    .locals 2

    .line 226
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    return-object v0
.end method

.method public getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object v0
.end method

.method public getCurrentZoomRatio()F
    .locals 1

    .line 326
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentZoomRatio:F

    return v0
.end method

.method public getExifThumbnailSize()Lcom/android/ex/camera2/portability/Size;
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v1, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getExposureCompensationIndex()I
    .locals 1

    .line 351
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExposureCompensationIndex:I

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getGpsData()Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    invoke-direct {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;-><init>(Lcom/android/ex/camera2/portability/CameraSettings$GpsData;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPhotoJpegCompressionQuality()I
    .locals 1

    .line 317
    iget-byte v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mJpegCompressQuality:B

    return v0
.end method

.method public getPreviewFpsRangeMax()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    return v0
.end method

.method public getPreviewFpsRangeMin()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    return v0
.end method

.method public getPreviewFrameRate()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    return v0
.end method

.method public getWhiteBalance()Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-object v0
.end method

.method public isAutoExposureLocked()Z
    .locals 1

    .line 359
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoExposureLocked:Z

    return v0
.end method

.method public isAutoWhiteBalanceLocked()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoWhiteBalanceLocked:Z

    return v0
.end method

.method public isRecordingHintEnabled()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mRecordingHintEnabled:Z

    return v0
.end method

.method public isVideoStabilizationEnabled()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mVideoStabilizationEnabled:Z

    return v0
.end method

.method public setAutoExposureLock(Z)V
    .locals 0

    .line 355
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoExposureLocked:Z

    return-void
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 0

    .line 438
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mAutoWhiteBalanceLocked:Z

    return-void
.end method

.method public setExifThumbnailSize(Lcom/android/ex/camera2/portability/Size;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    return-void
.end method

.method public setExposureCompensationIndex(I)V
    .locals 0

    .line 344
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mExposureCompensationIndex:I

    return-void
.end method

.method public setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-void
.end method

.method public setFocusAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mFocusAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-void
.end method

.method public setGpsData(Lcom/android/ex/camera2/portability/CameraSettings$GpsData;)V
    .locals 1

    .line 483
    new-instance v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    invoke-direct {v0, p1}, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;-><init>(Lcom/android/ex/camera2/portability/CameraSettings$GpsData;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    return-void
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setPhotoFormat(I)V
    .locals 0

    .line 291
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoFormat:I

    return-void
.end method

.method public setPhotoJpegCompressionQuality(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-byte p1, p1

    .line 313
    iput-byte p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mJpegCompressQuality:B

    return-void

    .line 309
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v0, "Ignoring JPEG quality that falls outside the expected range"

    invoke-static {p1, v0}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    if-eqz v0, :cond_0

    .line 276
    sget-object p1, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v0, "Attempt to change photo size while locked"

    invoke-static {p1, v0}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 280
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, p1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPhotoSize:Lcom/android/ex/camera2/portability/Size;

    const/4 p1, 0x1

    return p1
.end method

.method public setPreviewFormat(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewFormat:I

    return-void
.end method

.method public setPreviewFpsRange(II)V
    .locals 1

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    move p2, p1

    move p1, v0

    .line 185
    :goto_0
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    .line 186
    iput p2, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    const/4 p1, -0x1

    .line 187
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    return-void
.end method

.method public setPreviewFrameRate(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 212
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFrameRate:I

    .line 213
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMax:I

    .line 214
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mPreviewFpsRangeMin:I

    :cond_0
    return-void
.end method

.method public setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    if-eqz v0, :cond_0

    .line 235
    sget-object p1, Lcom/android/ex/camera2/portability/CameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v0, "Attempt to change preview size while locked"

    invoke-static {p1, v0}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 239
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, p1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    const/4 p1, 0x1

    return p1
.end method

.method public setRecordingHintEnabled(Z)V
    .locals 0

    .line 475
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mRecordingHintEnabled:Z

    return-void
.end method

.method public setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mGeneralSetting:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setSizesLocked(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mSizesLocked:Z

    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 0

    .line 467
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mVideoStabilizationEnabled:Z

    return-void
.end method

.method public setWhiteBalance(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-void
.end method

.method public setZoomRatio(F)V
    .locals 0

    .line 338
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraSettings;->mCurrentZoomRatio:F

    return-void
.end method
