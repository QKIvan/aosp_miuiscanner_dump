.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
.super Lcom/android/ex/camera2/portability/HistoryHandler;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Camera2Handler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;
    }
.end annotation


# instance fields
.field private imgVaildListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private isPreviewCallBack:Z

.field private mActiveArray:Landroid/graphics/Rect;

.field private mCamera:Landroid/hardware/camera2/CameraDevice;

.field private mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCameraId:Ljava/lang/String;

.field private mCameraIndex:I

.field private mCameraPreviewStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

.field private mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

.field private mCancelAfPending:I

.field private mCaptureReader:Landroid/media/ImageReader;

.field private mCurrentAeState:I

.field private mLegacyDevice:Z

.field private mOneshotAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

.field private mOneshotCaptureCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

.field private mOneshotPreviewingCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

.field private mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

.field private mPassiveAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

.field private mPersistentSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

.field private mPhotoSize:Lcom/android/ex/camera2/portability/Size;

.field private mPreviewHandler:Landroid/os/Handler;

.field private mPreviewImageReader:Landroid/media/ImageReader;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSize:Lcom/android/ex/camera2/portability/Size;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mPreviewTexture:Landroid/graphics/SurfaceTexture;

.field private mPreviewThread:Landroid/os/HandlerThread;

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private previewDataCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;Landroid/os/Looper;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .line 243
    invoke-direct {p0, p2}, Lcom/android/ex/camera2/portability/HistoryHandler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 196
    iput p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    .line 227
    iput p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCurrentAeState:I

    .line 237
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->isPreviewCallBack:Z

    .line 873
    new-instance p1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;

    invoke-direct {p1, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 919
    new-instance p1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$4;

    invoke-direct {p1, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$4;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraPreviewStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 953
    new-instance p1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;

    invoke-direct {p1, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    .line 1101
    new-instance p1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$6;

    invoke-direct {p1, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$6;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->imgVaildListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-void
.end method

.method static synthetic access$1100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Ljava/lang/String;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)I
    .locals 0

    .line 191
    iget p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;)Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Z)Z
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mLegacyDevice:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;I)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotPreviewingCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotPreviewingCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPassiveAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;I)I
    .locals 0

    .line 191
    iput p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCurrentAeState:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/media/ImageReader;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Landroid/media/ImageReader;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->parsePreviewImageReader(Landroid/media/ImageReader;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotCaptureCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotCaptureCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    return-object p1
.end method

.method private applyToRequest(Lcom/android/ex/camera2/portability/AndroidCamera2Settings;)V
    .locals 4

    .line 736
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->getRequestSettings()Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->union(Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;)Z

    .line 737
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 738
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    .line 739
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_3

    .line 740
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    if-ne v0, v1, :cond_1

    .line 743
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 745
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 746
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->getCurrentZoomRatio()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 747
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->getCurrentZoomRatio()F

    move-result p1

    div-float/2addr v1, p1

    float-to-int p1, v1

    .line 748
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/2addr v1, v2

    .line 749
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, p1

    div-int/2addr v3, v2

    .line 750
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr v0, v1

    add-int/2addr p1, v3

    invoke-direct {v2, v1, v3, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 751
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 753
    :cond_2
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 757
    :cond_3
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result p1

    const/16 v0, 0x10

    if-lt p1, v0, :cond_4

    .line 760
    :try_start_0
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 764
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Failed to apply updated request settings"

    invoke-static {v0, v1, p1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 766
    :cond_4
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result p1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_5

    const/4 p1, 0x4

    .line 768
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private changeState(I)V
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    .line 865
    iput p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCurrentAeState:I

    .line 866
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;->resetState()V

    :cond_0
    return-void
.end method

.method private closePreviewSession()V
    .locals 3

    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    const/4 v0, 0x0

    .line 850
    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 851
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 852
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 853
    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 856
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Failed to close existing camera capture session"

    invoke-static {v1, v2, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x4

    .line 858
    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    return-void
.end method

.method private parsePreviewImageReader(Landroid/media/ImageReader;)V
    .locals 4

    .line 1109
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1110
    :try_start_0
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "camera2 getPreviewData"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1113
    monitor-exit v0

    return-void

    .line 1114
    :cond_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->previewDataCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->isPreviewCallBack:Z

    if-eqz v1, :cond_2

    .line 1115
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v1, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;Landroid/media/Image;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1117
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->previewDataCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    invoke-interface {v2, v1, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;->onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    :cond_1
    const/4 v1, 0x0

    .line 1119
    iput-boolean v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->isPreviewCallBack:Z

    .line 1121
    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 1122
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setPreviewCallback(Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 1126
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->isPreviewCallBack:Z

    .line 1127
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->previewDataCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    return-void
.end method

.method private setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 6

    .line 779
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 780
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object p1

    const-string v0, "Ignoring texture setting at inappropriate time"

    invoke-static {p1, v0}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    if-ne p1, v0, :cond_1

    .line 786
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object p1

    const-string v0, "Optimizing out redundant preview texture setting"

    invoke-static {p1, v0}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    .line 791
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->closePreviewSession()V

    .line 794
    :cond_2
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    .line 795
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 797
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 798
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 800
    :cond_3
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    .line 802
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_4

    .line 803
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 805
    :cond_4
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result p1

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    const/16 v1, 0x100

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    .line 808
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_5

    .line 809
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 813
    :cond_5
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->startPreviewThread()V

    .line 814
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result p1

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    const/16 v1, 0x23

    invoke-static {p1, v0, v1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 815
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->imgVaildListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 819
    :try_start_0
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 820
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object p1

    .line 821
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 822
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 823
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result p1

    div-float/2addr v3, p1

    float-to-int p1, v3

    .line 824
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/2addr v3, v1

    .line 825
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, p1

    div-int/2addr v4, v1

    .line 826
    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr p1, v4

    invoke-direct {v5, v3, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 827
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 829
    :cond_6
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 830
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 831
    iget-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/Surface;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    .line 832
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraPreviewStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 831
    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 835
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Failed to create camera capture session"

    invoke-static {v0, v1, p1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private startPreviewThread()V
    .locals 2

    .line 841
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraPreview"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewThread:Landroid/os/HandlerThread;

    .line 842
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 843
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public buildSettings(Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;)Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 6

    .line 715
    :try_start_0
    new-instance p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;-><init>(Landroid/hardware/camera2/CameraDevice;ILandroid/graphics/Rect;Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/Size;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 718
    :catch_0
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object p1

    const-string v0, "Unable to query camera device to build settings representation"

    invoke-static {p1, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 248
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/HistoryHandler;->handleMessage(Landroid/os/Message;)V

    .line 249
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage - action = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_14

    if-eq v0, v1, :cond_e

    const/4 v5, 0x3

    if-eq v0, v5, :cond_14

    const/16 v6, 0x131

    if-eq v0, v6, :cond_d

    const/16 v6, 0x259

    const/16 v7, 0x20

    const/16 v8, 0x10

    if-eq v0, v6, :cond_8

    const/16 v5, 0x1f6

    if-eq v0, v5, :cond_6

    const/16 v5, 0x1f7

    if-eq v0, v5, :cond_5

    const/16 v5, 0x8

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 683
    :try_start_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unimplemented CameraProxy message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 534
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPassiveAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    goto/16 :goto_1

    .line 500
    :pswitch_1
    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    .line 502
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v5

    if-ge v5, v8, :cond_0

    .line 504
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v5, "Ignoring attempt to release focus lock without preview"

    invoke-static {v2, v5}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 509
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    .line 510
    new-instance v5, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    invoke-direct {v5, v6}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;-><init>(Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;)V

    .line 512
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 513
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 512
    invoke-virtual {v5, v6, v8}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 515
    :try_start_1
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    new-array v9, v4, [Landroid/view/Surface;

    iget-object v10, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    aput-object v10, v9, v2

    .line 516
    invoke-virtual {v5, v8, v4, v9}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 515
    invoke-virtual {v6, v2, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :catch_0
    move-exception v2

    .line 520
    :try_start_2
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Unable to cancel autofocus"

    invoke-static {v5, v6, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 521
    invoke-direct {p0, v7}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 413
    :pswitch_2
    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    if-lez v5, :cond_1

    .line 414
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage - Ignored AUTO_FOCUS because there was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pending CANCEL_AUTO_FOCUS messages"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 426
    :cond_1
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v5

    if-ge v5, v8, :cond_2

    .line 428
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v5, "Ignoring attempt to autofocus without preview"

    invoke-static {v2, v5}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 437
    :cond_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    .line 438
    new-instance v6, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;

    invoke-direct {v6, p0, v5}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 479
    invoke-direct {p0, v7}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    .line 481
    new-instance v5, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    invoke-direct {v5, v7}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;-><init>(Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;)V

    .line 483
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 484
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 483
    invoke-virtual {v5, v7, v9}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 486
    :try_start_3
    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v9, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    new-array v10, v4, [Landroid/view/Surface;

    iget-object v11, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    aput-object v11, v10, v2

    .line 487
    invoke-virtual {v5, v9, v4, v10}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 486
    invoke-virtual {v7, v2, v6, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    .line 491
    :try_start_4
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Unable to lock autofocus"

    invoke-static {v5, v6, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    invoke-direct {p0, v8}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 406
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    .line 407
    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->applyToRequest(Lcom/android/ex/camera2/portability/AndroidCamera2Settings;)V

    goto/16 :goto_1

    .line 389
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->setPreviewCallback(Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    goto/16 :goto_1

    .line 360
    :pswitch_5
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v2

    if-ge v2, v8, :cond_3

    .line 362
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v5, "Refusing to stop preview at inappropriate time"

    invoke-static {v2, v5}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 366
    :cond_3
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 367
    invoke-direct {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 330
    :pswitch_6
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v2

    if-eq v2, v5, :cond_4

    .line 333
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v5, "Refusing to start preview at inappropriate time"

    invoke-static {v2, v5}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 337
    :cond_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotPreviewingCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    .line 338
    invoke-direct {p0, v8}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    .line 340
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x4

    .line 341
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 340
    invoke-virtual {v2, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 343
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 345
    :try_start_5
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    invoke-virtual {v6, v2, v7, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    :catch_2
    move-exception v2

    .line 349
    :try_start_6
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v6

    const-string v7, "Unable to start preview"

    invoke-static {v6, v7, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    invoke-direct {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 325
    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto/16 :goto_1

    .line 572
    :cond_5
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 566
    :cond_6
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v7, p1, Landroid/os/Message;->arg2:I

    if-lez v7, :cond_7

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    .line 567
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v2

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v7}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getJpegOrientation(I)I

    move-result v2

    .line 566
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 577
    :cond_8
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v6

    if-ge v6, v8, :cond_9

    .line 579
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v5, "Photos may only be taken when a preview is active"

    invoke-static {v2, v5}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 582
    :cond_9
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v6

    if-eq v6, v7, :cond_a

    .line 584
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v6

    const-string v7, "Taking a (likely blurry) photo without the lens locked"

    invoke-static {v6, v7}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 587
    :cond_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    .line 589
    iget-boolean v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mLegacyDevice:Z

    if-nez v7, :cond_c

    iget v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCurrentAeState:I

    if-ne v7, v1, :cond_b

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 592
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 591
    invoke-virtual {v7, v8, v5}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->matches(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 594
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 593
    invoke-virtual {v5, v7, v8}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->matches(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_0

    .line 622
    :cond_b
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v7, "Forcing pre-capture autoexposure convergence"

    invoke-static {v5, v7}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 623
    new-instance v5, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;

    invoke-direct {v5, p0, v6}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)V

    .line 665
    new-instance v6, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    invoke-direct {v6, v7}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;-><init>(Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;)V

    .line 667
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 668
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 667
    invoke-virtual {v6, v7, v8}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 670
    :try_start_7
    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    new-array v9, v4, [Landroid/view/Surface;

    iget-object v10, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    aput-object v10, v9, v2

    .line 671
    invoke-virtual {v6, v8, v4, v9}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 670
    invoke-virtual {v7, v2, v5, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    :catch_3
    move-exception v2

    .line 675
    :try_start_8
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Unable to run autoexposure and perform capture"

    invoke-static {v5, v6, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 602
    :cond_c
    :goto_0
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v7, "Skipping pre-capture autoexposure convergence"

    invoke-static {v5, v7}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 605
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    invoke-virtual {v5, v6, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 607
    :try_start_9
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 608
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 609
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    new-array v9, v4, [Landroid/view/Surface;

    iget-object v10, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    .line 612
    invoke-virtual {v10}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v10

    aput-object v10, v9, v2

    .line 610
    invoke-virtual {v7, v8, v1, v9}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 609
    invoke-virtual {v5, v2, v6, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    :catch_4
    move-exception v2

    .line 616
    :try_start_a
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Unable to initiate immediate capture"

    invoke-static {v5, v6, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 529
    :cond_d
    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    goto/16 :goto_1

    .line 279
    :cond_e
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 280
    :try_start_b
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v6

    if-ne v6, v4, :cond_f

    .line 281
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v6, "Ignoring release at inappropriate time"

    invoke-static {v2, v6}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    monitor-exit v5

    goto/16 :goto_1

    .line 285
    :cond_f
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v6, :cond_10

    .line 286
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->closePreviewSession()V

    .line 287
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 289
    :cond_10
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v6, :cond_11

    .line 290
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 291
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    .line 293
    :cond_11
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    .line 294
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;

    .line 295
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    .line 296
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v6, :cond_12

    .line 297
    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    .line 298
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    .line 300
    :cond_12
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    .line 301
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    if-eqz v6, :cond_13

    .line 302
    invoke-virtual {v6}, Landroid/media/ImageReader;->close()V

    .line 303
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    .line 305
    :cond_13
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 306
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    .line 307
    iput v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    .line 308
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    .line 309
    invoke-direct {p0, v4}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    .line 310
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)V

    .line 311
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 312
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v2

    .line 255
    :cond_14
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 256
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 258
    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v7}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v7

    if-le v7, v4, :cond_15

    .line 260
    invoke-virtual {p0, v6}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-interface {v5, v6, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenedAlready(ILjava/lang/String;)V

    goto :goto_1

    .line 264
    :cond_15
    iput-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 265
    iput v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    .line 266
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Ljava/util/List;

    move-result-object v5

    iget v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    .line 267
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v7, "Opening camera index %d (id %s) with camera2 API"

    new-array v8, v1, [Ljava/lang/Object;

    .line 268
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v2

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    aput-object v2, v8, v4

    .line 267
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 271
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraDisabled(I)V

    goto :goto_1

    .line 274
    :cond_16
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v2, v5, v6, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 709
    :cond_17
    :goto_1
    :pswitch_8
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v2

    if-eq v0, v1, :cond_18

    .line 687
    :try_start_d
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_18

    .line 689
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 690
    iput-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    goto :goto_3

    .line 691
    :cond_18
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_1b

    if-ne v0, v4, :cond_19

    .line 693
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v0, :cond_1a

    .line 694
    iget v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    .line 695
    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-interface {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    goto :goto_2

    .line 698
    :cond_19
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot handle message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCamera is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 709
    :cond_1a
    :goto_2
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    return-void

    .line 703
    :cond_1b
    :goto_3
    :try_start_e
    instance-of v1, v2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_17

    .line 704
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v1

    .line 705
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$1000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v3

    check-cast v2, Ljava/lang/RuntimeException;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .line 706
    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v4

    .line 705
    invoke-virtual {v3, v2, v1, v0, v4}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_1

    :goto_4
    return-void

    .line 709
    :goto_5
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
