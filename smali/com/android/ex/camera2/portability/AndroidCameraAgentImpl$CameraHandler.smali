.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;
.super Lcom/android/ex/camera2/portability/HistoryHandler;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;
    }
.end annotation


# instance fields
.field private mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mCancelAfPending:I

.field private mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;Landroid/os/Looper;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 285
    invoke-direct {p0, p3}, Lcom/android/ex/camera2/portability/HistoryHandler;-><init>(Landroid/os/Looper;)V

    const/4 p1, -0x1

    .line 265
    iput p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    const/4 p1, 0x0

    .line 267
    iput p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    .line 286
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    return-void
.end method

.method private applySettingsToParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .line 655
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v0

    .line 656
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v1

    .line 657
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v1

    invoke-virtual {p2, v2, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 658
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v1

    .line 659
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v1

    invoke-virtual {p2, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 660
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPreviewFrameRate()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 661
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPreviewFpsRangeMin()I

    move-result v1

    .line 662
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPreviewFpsRangeMax()I

    move-result v2

    .line 661
    invoke-virtual {p2, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 664
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPreviewFrameRate()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 666
    :goto_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewFormat()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 667
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPhotoJpegCompressionQuality()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 668
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v1

    .line 670
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    .line 669
    invoke-direct {p0, v1, v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->zoomRatioToIndex(FLjava/util/List;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 672
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getExposureCompensationIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 673
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 674
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isAutoExposureLocked()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 676
    :cond_2
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 677
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 678
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isAutoWhiteBalanceLocked()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 680
    :cond_3
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getWhiteBalance()Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 681
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getWhiteBalance()Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 683
    :cond_4
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 684
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 685
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_1

    .line 687
    :cond_5
    invoke-virtual {p2, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 690
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v1

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v3}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 691
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 692
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_2

    .line 694
    :cond_7
    invoke-virtual {p2, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 697
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    if-eq v1, v2, :cond_9

    .line 698
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 700
    :cond_9
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v1, v2, :cond_a

    .line 701
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 703
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 706
    :cond_a
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isRecordingHintEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 707
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getExifThumbnailSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 709
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 711
    :cond_b
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoFormat()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 713
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getGpsData()Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    move-result-object p1

    if-nez p1, :cond_c

    .line 715
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    goto :goto_3

    .line 717
    :cond_c
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 718
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 722
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 723
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 724
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 725
    iget-object p1, p1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-void
.end method

.method private enableShutterSound(Z)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    return-void
.end method

.method private setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0

    .line 318
    :try_start_0
    check-cast p2, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 320
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    return-void
.end method

.method private setPreviewTexture(Ljava/lang/Object;)V
    .locals 2

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 305
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not set preview texture"

    invoke-static {v0, v1, p1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private startFaceDetection()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    return-void
.end method

.method private stopFaceDetection()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    return-void
.end method

.method private zoomRatioToIndex(FLjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 739
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    .line 746
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 352
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/HistoryHandler;->handleMessage(Landroid/os/Message;)V

    .line 354
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v0

    const-string v1, "\'"

    if-eqz v0, :cond_0

    .line 355
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip handleMessage - action = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 358
    :cond_0
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage - action = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 360
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_8

    const/4 v4, 0x3

    if-eq v0, v4, :cond_7

    const/4 v4, 0x4

    if-eq v0, v4, :cond_6

    const/4 v4, 0x5

    if-eq v0, v4, :cond_5

    const/16 v4, 0x259

    if-eq v0, v4, :cond_4

    packed-switch v0, :pswitch_data_0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 616
    :try_start_0
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid CameraProxy message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 538
    :pswitch_0
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 539
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 540
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 541
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_0

    .line 524
    :pswitch_1
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 525
    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v5

    .line 524
    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 529
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 530
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-lez v5, :cond_1

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 531
    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getJpegOrientation(I)I

    move-result v4

    .line 530
    :cond_1
    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 532
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 533
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_0

    .line 595
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->enableShutterSound(Z)V

    goto/16 :goto_0

    .line 561
    :pswitch_3
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->stopFaceDetection()V

    goto/16 :goto_0

    .line 556
    :pswitch_4
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->startFaceDetection()V

    goto/16 :goto_0

    .line 551
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_0

    .line 513
    :pswitch_6
    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    goto/16 :goto_0

    .line 546
    :pswitch_7
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_0

    .line 518
    :pswitch_8
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v2, v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 504
    :pswitch_9
    iget v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    .line 505
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 506
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto/16 :goto_0

    .line 491
    :pswitch_a
    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    if-lez v2, :cond_3

    .line 492
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage - Ignored AUTO_FOCUS because there was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pending CANCEL_AUTO_FOCUS messages"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    :cond_3
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 497
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0

    .line 566
    :pswitch_b
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 567
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/ex/camera2/portability/CameraSettings;

    .line 568
    invoke-direct {p0, v4, v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->applySettingsToParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/hardware/Camera$Parameters;)V

    .line 569
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 570
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_0

    .line 600
    :pswitch_c
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_0

    .line 583
    :pswitch_d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/hardware/Camera$Parameters;

    check-cast v2, [Landroid/hardware/Camera$Parameters;

    .line 584
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 585
    aput-object v5, v2, v4

    goto/16 :goto_0

    .line 575
    :pswitch_e
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 576
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 577
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 578
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_0

    .line 481
    :pswitch_f
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 590
    :pswitch_10
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 452
    :pswitch_11
    :try_start_1
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 454
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 486
    :pswitch_12
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .line 476
    :pswitch_13
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 471
    :pswitch_14
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_0

    .line 460
    :pswitch_15
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;

    .line 462
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    if-eqz v2, :cond_d

    .line 464
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;->onPreviewStarted()V

    goto/16 :goto_0

    .line 446
    :pswitch_16
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->setPreviewTexture(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 605
    :cond_4
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 606
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;

    .line 607
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v5, v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mShutter:Landroid/hardware/Camera$ShutterCallback;

    iget-object v6, v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mRaw:Landroid/hardware/Camera$PictureCallback;

    iget-object v7, v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mPostView:Landroid/hardware/Camera$PictureCallback;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mJpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_0

    .line 439
    :cond_5
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->lock()V

    .line 440
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto/16 :goto_0

    .line 433
    :cond_6
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 434
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto/16 :goto_0

    .line 411
    :cond_7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;

    .line 413
    iget v8, p1, Landroid/os/Message;->arg1:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    :try_start_3
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->reconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 423
    :try_start_4
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    if-eqz v4, :cond_d

    .line 425
    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    iget-object v9, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 427
    invoke-static {v7}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v10

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v11

    const/4 v12, 0x0

    move-object v5, v2

    move-object v6, v7

    invoke-direct/range {v5 .. v12}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/hardware/Camera;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;)V

    .line 425
    invoke-virtual {v4, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto/16 :goto_0

    :catch_1
    nop

    if-eqz v4, :cond_d

    .line 418
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    :cond_8
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_9

    .line 400
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 401
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 402
    iput-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    const/4 v2, -0x1

    .line 403
    iput v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    goto/16 :goto_0

    .line 405
    :cond_9
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v4, "Releasing camera without any camera opened."

    invoke-static {v2, v4}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    :cond_a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 365
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 366
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v5

    if-eq v5, v3, :cond_b

    .line 367
    invoke-virtual {p0, v8}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v8, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenedAlready(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 371
    :cond_b
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opening camera "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " with camera1 API"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 372
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-virtual {v5, v8}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_c

    .line 374
    iput v8, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 375
    new-instance v6, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-direct {v6, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;-><init>(Landroid/hardware/Camera;)V

    iput-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    .line 377
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 378
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->create()Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v6

    .line 377
    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$302(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .line 379
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    new-instance v6, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    .line 380
    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;-><init>(Landroid/hardware/Camera$Parameters;)V

    .line 379
    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$402(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    .line 382
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 384
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    if-eqz v4, :cond_d

    .line 386
    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    iget-object v9, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 387
    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v10

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v11

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/hardware/Camera;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;)V

    .line 388
    invoke-interface {v4, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto :goto_0

    :cond_c
    if-eqz v4, :cond_d

    .line 392
    invoke-virtual {p0, v8}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v8, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 649
    :cond_d
    :goto_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v2

    .line 620
    :try_start_5
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v4

    .line 621
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CameraAction["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] at CameraState["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 623
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RuntimeException during "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 625
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_e

    .line 626
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Release camera since mCamera is not null."

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 628
    :try_start_6
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 632
    :goto_1
    :try_start_7
    iput-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v5

    .line 630
    :try_start_8
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v6

    const-string v7, "Fail when calling Camera.release()."

    invoke-static {v6, v7, v5}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 632
    :goto_2
    :try_start_9
    iput-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    throw v0

    .line 637
    :cond_e
    :goto_3
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_f

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_f

    .line 638
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 639
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 640
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 641
    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-interface {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 644
    :cond_f
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    .line 645
    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 646
    invoke-virtual {p0, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v3

    .line 645
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :goto_4
    return-void

    .line 649
    :goto_5
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12d
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1cd
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1f5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 3

    .line 335
    iget-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraError(I)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->getCurrentMessage()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 338
    iget-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object p2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Media server died."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 340
    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 342
    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v2

    .line 338
    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public requestTakePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 7

    .line 329
    new-instance v6, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    const/16 p1, 0x259

    .line 330
    invoke-virtual {p0, p1, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
