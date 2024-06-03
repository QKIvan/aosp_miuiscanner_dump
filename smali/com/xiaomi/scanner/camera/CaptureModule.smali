.class public Lcom/xiaomi/scanner/camera/CaptureModule;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/xiaomi/scanner/camera/FocusManager$Listener;
.implements Lcom/xiaomi/scanner/camera/PhotoController;
.implements Lcom/xiaomi/scanner/ui/PreviewStatusListener;
.implements Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;
.implements Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;,
        Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;,
        Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;,
        Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;,
        Lcom/xiaomi/scanner/camera/CaptureModule$PostViewPictureCallback;,
        Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;,
        Lcom/xiaomi/scanner/camera/CaptureModule$MainHandler;
    }
.end annotation


# static fields
.field private static final CAMERA_SERVICE_MUTE:Ljava/lang/String; = "camera-service-mute"

.field private static final MAX_PICTURE_SIZE:I

.field private static final MSG_CHECK_CAMERA_READY:I = 0x4

.field private static final MSG_FIRST_TIME_INIT:I = 0x1

.field private static final MSG_REQUEST_AUTO_FOCUS:I = 0x3

.field private static final MSG_SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x2

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field public static previewSizeHeight:I

.field public static previewSizeWidth:I


# instance fields
.field private lastClick:J

.field private mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

.field private final mAutoFocusCallback:Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;

.field private mAutoFocusTime:J

.field private mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private mCameraId:I

.field private mCameraPreviewParamsReady:Z

.field private mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

.field private mCameraState:I

.field private mCaptureStartTime:J

.field private mContinuousFocusSupported:Z

.field private mDefaultZoom:F

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private final mDoSnapRunnable:Ljava/lang/Runnable;

.field private mFirstTimeInitialized:Z

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

.field private mFocusStartTime:J

.field private mHandler:Landroid/os/Handler;

.field private mIsOpenCamera:Z

.field private mJpegCallbackFinishTime:J

.field private mJpegPictureCallbackTime:J

.field private mMeteringAreaSupported:Z

.field private mModuleController:Lcom/xiaomi/scanner/module/ModuleController;

.field private mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

.field private mOnResumeTime:J

.field private mPaused:Z

.field private mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/xiaomi/scanner/camera/CaptureModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private final mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mPreviewHeight:I

.field private mPreviewMatrix:Landroid/graphics/Matrix;

.field private mPreviewMatrixUpdated:Z

.field private mPreviewWidth:I

.field private final mRawPictureCallback:Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mRequestZoom:F

.field private final mServices:Lcom/xiaomi/scanner/camera/CameraServices;

.field private mShutterCallbackTime:J

.field private mShutterLag:J

.field private mShutterToPictureDisplayedTime:J

.field private mSnapshotOnIdle:Z

.field private mUpdateSet:I

.field private mVolumeButtonClickedFlag:Z

.field private mZoomValue:F

.field private playCameraSoundRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CaptureModule"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 72
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isLowMemoryDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x2dc6c0

    goto :goto_0

    :cond_0
    const v0, 0x4c4b40

    :goto_0
    sput v0, Lcom/xiaomi/scanner/camera/CaptureModule;->MAX_PICTURE_SIZE:I

    const/4 v0, 0x0

    .line 90
    sput v0, Lcom/xiaomi/scanner/camera/CaptureModule;->previewSizeWidth:I

    .line 91
    sput v0, Lcom/xiaomi/scanner/camera/CaptureModule;->previewSizeHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 3

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 82
    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRequestZoom:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDefaultZoom:F

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewWidth:I

    .line 88
    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewHeight:I

    .line 99
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    .line 104
    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraId:I

    .line 105
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    .line 106
    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraState:I

    .line 107
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mSnapshotOnIdle:Z

    .line 112
    new-instance v1, Lcom/xiaomi/scanner/camera/CaptureModule$PostViewPictureCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/scanner/camera/CaptureModule$PostViewPictureCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPostViewPictureCallback:Lcom/xiaomi/scanner/camera/CaptureModule$PostViewPictureCallback;

    .line 114
    new-instance v1, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRawPictureCallback:Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;

    .line 116
    new-instance v1, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAutoFocusCallback:Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;

    .line 118
    new-instance v1, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAutoFocusMoveCallback:Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;

    .line 124
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraPreviewParamsReady:Z

    .line 133
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mIsOpenCamera:Z

    .line 146
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mVolumeButtonClickedFlag:Z

    .line 172
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/CaptureModule$1;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 179
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/CaptureModule$2;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->playCameraSoundRunnable:Ljava/lang/Runnable;

    .line 186
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/CaptureModule$3;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const-wide/16 v0, 0x0

    .line 761
    iput-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->lastClick:J

    .line 204
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 205
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getServices()Lcom/xiaomi/scanner/camera/CameraServices;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mServices:Lcom/xiaomi/scanner/camera/CameraServices;

    .line 206
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1, p0}, Lcom/xiaomi/scanner/app/ScanActivity;->setPreviewStatusListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener;)V

    .line 207
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->initCameraHandler()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaomi/scanner/camera/CaptureModule;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->checkCameraReady()V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mShutterLag:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mShutterLag:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$1600()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 51
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/xiaomi/scanner/camera/CaptureModule;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mShutterToPictureDisplayedTime:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPictureDisplayedToJpegCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPictureDisplayedToJpegCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mJpegCallbackFinishTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mJpegCallbackFinishTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/xiaomi/scanner/camera/CaptureModule;)Lcom/xiaomi/scanner/app/ScanActivity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAutoFocusTime:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/xiaomi/scanner/camera/CaptureModule;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAutoFocusTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/xiaomi/scanner/camera/CaptureModule;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/xiaomi/scanner/camera/CaptureModule;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/xiaomi/scanner/camera/CaptureModule;[BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/camera/CaptureModule;->dumpPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/camera/CaptureModule;)Lcom/xiaomi/scanner/camera/FocusManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/camera/CaptureModule;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mSnapshotOnIdle:Z

    return p0
.end method

.method static synthetic access$800(Lcom/xiaomi/scanner/camera/CaptureModule;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/scanner/camera/CaptureModule;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private applyCameraSettingNotSupportedParameter()V
    .locals 3

    .line 947
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_2

    .line 949
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    .line 951
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "get param failed"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 954
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->isAntibanding60()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "60hz"

    goto :goto_0

    :cond_1
    const-string v1, "50hz"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    const-string v1, "camera-service-mute"

    const-string v2, "true"

    .line 956
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 959
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "applyCameraSettingNotSupportedParameter error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private canTakePicture()Z
    .locals 5

    .line 678
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 679
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkCameraReady()V
    .locals 2

    .line 528
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "checkCameraReady"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 529
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onResumeTask(Z)V

    return-void
.end method

.method private checkDisplayRotation()V
    .locals 5

    .line 506
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 514
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 515
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrixUpdated:Z

    .line 516
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setDisplayOrientation()V

    .line 519
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mOnResumeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 520
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    return-void

    .line 523
    :cond_2
    new-instance v1, Lcom/xiaomi/scanner/camera/CaptureModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/camera/CaptureModule$$ExternalSyntheticLambda1;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private checkPreviewPreconditions()Z
    .locals 3

    .line 842
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 847
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "startPreview: camera device not ready yet."

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    if-nez v0, :cond_2

    return v1

    .line 856
    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_3

    .line 858
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "startPreview: surfaceTexture is not ready."

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 862
    :cond_3
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraPreviewParamsReady:Z

    if-nez v0, :cond_4

    .line 863
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "startPreview: parameters for preview is not ready."

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private closeCamera()V
    .locals 4

    .line 793
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "closeCamera -- "

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 794
    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mIsOpenCamera:Z

    .line 795
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v2, :cond_1

    .line 797
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->onCameraClosed()V

    .line 798
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 799
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 801
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/xiaomi/scanner/camera/CameraProvider;->releaseCamera(I)V

    .line 805
    :cond_0
    iput-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 806
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    .line 807
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->onCameraReleased()V

    goto :goto_0

    :cond_1
    const-string v1, "closeCamera but no camera device"

    .line 809
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private dumpPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 7

    .line 332
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v3

    .line 333
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 335
    new-instance v0, Landroid/graphics/YuvImage;

    iget v4, p2, Landroid/hardware/Camera$Size;->width:I

    iget v5, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaomi/scanner/util/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "preview_"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 339
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpPreviewFrame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 341
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p2, 0x5a

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 344
    sget-object p2, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private focusAndCapture()V
    .locals 4

    .line 493
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    .line 494
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mSnapshotOnIdle:Z

    .line 501
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/FocusManager;->focusAndCapture(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    return-void

    .line 495
    :cond_1
    :goto_0
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusAndCapture: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 496
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mSnapshotOnIdle:Z

    return-void
.end method

.method private getZoomValue(Lcom/xiaomi/scanner/module/ModuleController;)F
    .locals 0

    if-eqz p1, :cond_0

    .line 1015
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->isZoomNeeded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1016
    iget p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRequestZoom:F

    return p1

    .line 1018
    :cond_0
    iget p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDefaultZoom:F

    return p1
.end method

.method private getZoomValue(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 1022
    iget p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRequestZoom:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDefaultZoom:F

    :goto_0
    return p1
.end method

.method private initCameraHandler()V
    .locals 1

    .line 211
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$MainHandler;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/CaptureModule$MainHandler;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initMotionManager()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mServices:Lcom/xiaomi/scanner/camera/CameraServices;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/CameraServices;->getMotionManager()Lcom/xiaomi/scanner/camera/MotionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    if-eqz v0, :cond_0

    .line 616
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/MotionManager;->addListener(Lcom/xiaomi/scanner/camera/MotionManager$MotionListener;)V

    :cond_0
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .line 1209
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 1210
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusAreaSupported:Z

    .line 1211
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMeteringAreaSupported:Z

    .line 1212
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 1213
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mContinuousFocusSupported:Z

    .line 1214
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    .line 1216
    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRequestZoom:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 1217
    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRequestZoom:F

    .line 1219
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxZoom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " requestZoom="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRequestZoom:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initializeFirstTime()V
    .locals 2

    .line 270
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    .line 275
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    if-nez v0, :cond_1

    .line 276
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "drop updateStorageSpaceAndHint, null controller"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 279
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->updateStorageSpaceAndHint(Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initializeFocusManager()V
    .locals 7

    .line 593
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->removeMessages()V

    goto :goto_1

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 598
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 600
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v1

    .line 601
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 602
    invoke-virtual {v1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 604
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 607
    :cond_2
    new-instance v0, Lcom/xiaomi/scanner/camera/FocusManager;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 608
    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/scanner/camera/FocusManager;-><init>(Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/xiaomi/scanner/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    .line 610
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->addPreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    return-void
.end method

.method private initializeSecondTime()V
    .locals 0

    return-void
.end method

.method private onError()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getFatalErrorHandler()Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onMediaStorageFailure()V

    return-void
.end method

.method private onPreviewStarted()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->onPreviewStarted()V

    .line 217
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->setInPictureTakenState(Z)V

    const/4 v0, 0x1

    .line 218
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    :cond_0
    return-void
.end method

.method private onResumeTask(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 538
    iget-boolean p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz p1, :cond_0

    .line 539
    sget-object p1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "onResumeTask but has paused"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 543
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    if-nez p1, :cond_1

    .line 545
    sget-object p1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "null mAppController, drop request camera"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v0, :cond_2

    .line 553
    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->addPreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 556
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;

    move-result-object v0

    if-nez v0, :cond_3

    .line 558
    sget-object p1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "resume camera provider null and delay 300 for check"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 559
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 563
    :cond_3
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mIsOpenCamera:Z

    if-eqz v0, :cond_4

    .line 564
    sget-object p1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "mIsOpenCamera true"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 568
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    .line 569
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->openCamera()V

    const/4 v0, 0x1

    .line 570
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mIsOpenCamera:Z

    const-wide/16 v1, 0x0

    .line 572
    iput-wide v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mJpegPictureCallbackTime:J

    .line 573
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->getZoomValue(Lcom/xiaomi/scanner/module/ModuleController;)F

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    .line 574
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mOnResumeTime:J

    .line 576
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->checkDisplayRotation()V

    .line 580
    iget-boolean p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-nez p1, :cond_6

    .line 581
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_5

    return-void

    .line 584
    :cond_5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 586
    :cond_6
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->initializeSecondTime()V

    :goto_0
    return-void
.end method

.method private playCameraSound()V
    .locals 3

    .line 1385
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    const v1, 0x7f0f0001

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->playSound(IF)V

    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1161
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->updateCameraParametersInitialize()V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 1165
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->updateCameraParametersZoom()V

    :cond_1
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    .line 1169
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->updateCameraParametersPreference()V

    .line 1172
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz p1, :cond_3

    .line 1173
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    :cond_3
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 3

    .line 1180
    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mUpdateSet:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mUpdateSet:I

    .line 1181
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1184
    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mUpdateSet:I

    return-void

    .line 1186
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->isCameraIdle()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1187
    iget p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mUpdateSet:I

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraParameters(I)V

    .line 1188
    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mUpdateSet:I

    goto :goto_0

    .line 1190
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1191
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized setCameraState(I)V
    .locals 0

    monitor-enter p0

    .line 287
    :try_start_0
    iput p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setDisplayOrientation()V
    .locals 3

    .line 815
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayRotation:I

    .line 816
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    .line 817
    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 822
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "cameraProvider is null!"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 825
    :cond_1
    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/xiaomi/scanner/camera/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    if-nez v0, :cond_2

    .line 827
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "drop reset coordinate transformer while info is null"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 830
    :cond_2
    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayOrientation:I

    .line 831
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v1, :cond_3

    .line 832
    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/camera/FocusManager;->setDisplayOrientation(I)V

    .line 834
    :cond_3
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayOrientation (screen:preview) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setFocusAreasIfSupported()V
    .locals 3

    .line 1026
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v0, :cond_0

    return-void

    .line 1029
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-nez v1, :cond_1

    return-void

    .line 1032
    :cond_1
    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusAreaSupported:Z

    if-eqz v2, :cond_2

    .line 1033
    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusAreas(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private setMeteringAreasIfSupported()V
    .locals 2

    .line 1038
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringAreas(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private setMotionManagerState()V
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/MotionManager;->start()V

    goto :goto_0

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/MotionManager;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3

    .line 1148
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAutoFocusMoveCallback:Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    :goto_0
    return-void
.end method

.method private updateCameraParametersInitialize()V
    .locals 4

    .line 965
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->applyCameraSettingNotSupportedParameter()V

    .line 969
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/CameraUtil;->getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 970
    array-length v1, v0

    if-lez v1, :cond_0

    .line 971
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    :cond_0
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 3

    .line 1056
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 1060
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setFocusAreasIfSupported()V

    .line 1061
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setMeteringAreasIfSupported()V

    .line 1062
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setMotionManagerState()V

    .line 1066
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    .line 1067
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/camera/FocusManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    .line 1066
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1068
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1069
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1072
    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_2

    .line 1073
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->updateAutoFocusMoveCallback()V

    :cond_2
    return-void
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    :cond_0
    return-void
.end method

.method private updateParametersPictureSize()V
    .locals 7

    .line 1078
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1079
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "attempting to set picture size without camera device"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v0

    .line 1084
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getRealHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    sget v3, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    sget v3, Lcom/xiaomi/scanner/camera/CaptureModule;->MAX_PICTURE_SIZE:I

    invoke-static {v1, v0, v3}, Lcom/xiaomi/scanner/util/CameraUtil;->getLargestPictureSize(FLjava/util/List;I)Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    .line 1086
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isE2P()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1087
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    const/16 v1, 0xa20

    const/16 v3, 0x5b2

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    .line 1088
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isCC9_PRO()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1089
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    const/16 v1, 0xfc0

    const/16 v3, 0xbd0

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    .line 1091
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1095
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 1096
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getRealHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    sget v2, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v1, v2, v3}, Lcom/xiaomi/scanner/util/CameraUtil;->getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/ex/camera2/portability/Size;

    move-result-object v2

    .line 1097
    new-instance v3, Lcom/android/ex/camera2/portability/Size;

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 1099
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isC3I()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isC3k()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isC3k3()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1100
    :cond_3
    new-instance v2, Lcom/android/ex/camera2/portability/Size;

    const/16 v4, 0x5a0

    const/16 v5, 0x2d0

    invoke-direct {v2, v4, v5}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    .line 1102
    :cond_4
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isJ6()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isM7()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isF1()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1103
    :cond_5
    new-instance v2, Lcom/android/ex/camera2/portability/Size;

    const/16 v4, 0x780

    const/16 v5, 0x438

    invoke-direct {v2, v4, v5}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    :cond_6
    if-eqz v2, :cond_7

    .line 1107
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v4

    sput v4, Lcom/xiaomi/scanner/camera/CaptureModule;->previewSizeWidth:I

    .line 1108
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v4

    sput v4, Lcom/xiaomi/scanner/camera/CaptureModule;->previewSizeHeight:I

    goto :goto_0

    .line 1110
    :cond_7
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v4

    sput v4, Lcom/xiaomi/scanner/camera/CaptureModule;->previewSizeWidth:I

    .line 1111
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v4

    sput v4, Lcom/xiaomi/scanner/camera/CaptureModule;->previewSizeHeight:I

    .line 1114
    :goto_0
    sget-object v4, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "previewSize: optimal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " original="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", sizes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    .line 1115
    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1116
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    const/4 v1, 0x0

    .line 1117
    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrixUpdated:Z

    .line 1119
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1120
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1123
    :cond_8
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrixUpdated:Z

    if-nez v1, :cond_9

    const/4 v1, 0x1

    .line 1124
    iput-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrixUpdated:Z

    .line 1125
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1126
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayOrientation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1127
    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayOrientation:I

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/scanner/camera/CaptureModule;->updatePreviewMatrix(ILcom/android/ex/camera2/portability/Size;)V

    .line 1130
    :cond_9
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v1

    if-eqz v1, :cond_a

    .line 1131
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->updatePreviewAspectRatio(F)V

    .line 1133
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pictureSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreviewMatrix(ILcom/android/ex/camera2/portability/Size;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x5a

    if-ne p1, v1, :cond_0

    .line 1138
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_0
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_1

    .line 1140
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_2

    .line 1142
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->isPreviewStop()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "starting auto focus"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusStartTime:J

    .line 689
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAutoFocusCallback:Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    const/4 v0, 0x2

    .line 690
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 698
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "cancel auto focus"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    const/4 v0, 0x1

    .line 700
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    const/4 v0, 0x4

    .line 701
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method public capture()Z
    .locals 12

    .line 350
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "capture"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v1

    .line 354
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mModuleController:Lcom/xiaomi/scanner/module/ModuleController;

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v4

    const/4 v5, 0x1

    if-eq v1, v4, :cond_1

    const-string v1, "capture module changed"

    .line 360
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v5

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getOrientationManager()Lcom/xiaomi/scanner/camera/OrientationManager;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "OrientationManager is null"

    .line 365
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 369
    :cond_2
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCaptureStartTime:J

    const-wide/16 v1, 0x0

    .line 372
    iput-wide v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPostViewPictureCallbackTime:J

    .line 375
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "cameraProvider is null"

    .line 377
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 381
    :cond_3
    iget v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraId:I

    .line 382
    invoke-interface {v1, v2}, Lcom/xiaomi/scanner/camera/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 383
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v2

    .line 384
    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 385
    invoke-virtual {v3}, Lcom/xiaomi/scanner/app/ScanActivity;->getOrientationManager()Lcom/xiaomi/scanner/camera/OrientationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaomi/scanner/camera/OrientationManager;->getDeviceOrientation()Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    .line 386
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v1

    .line 388
    invoke-static {v2, v3, v1}, Lcom/xiaomi/scanner/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v1

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capture: so="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " do="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " jo="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V

    .line 392
    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isCaptureSoundEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 394
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->canUseShutterCallback()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 395
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V

    move-object v8, v0

    goto :goto_0

    .line 396
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isHeadset()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 397
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->playCameraSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    move-object v8, v1

    .line 400
    :goto_0
    iget-object v6, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v7, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mRawPictureCallback:Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;

    iget-object v10, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPostViewPictureCallback:Lcom/xiaomi/scanner/camera/CaptureModule$PostViewPictureCallback;

    new-instance v11, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 404
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v0

    invoke-direct {v11, p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/module/ModuleController;)V

    .line 400
    invoke-virtual/range {v6 .. v11}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    return v5

    .line 355
    :cond_6
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v3
.end method

.method public destroy()V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->setPreviewStatusListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener;)V

    .line 663
    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 664
    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getCameraState()I
    .locals 1

    monitor-enter p0

    .line 291
    :try_start_0
    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .line 1334
    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayOrientation:I

    return v0
.end method

.method public getFlashlightStatus()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 2

    .line 1311
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1312
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "cannot turn on flash due to null device"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1313
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-object v0

    .line 1316
    :cond_0
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1318
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public getPreviewTransform()Landroid/graphics/Matrix;
    .locals 1

    .line 1330
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hardResetSettings(Lcom/xiaomi/scanner/settings/SettingsManager;)V
    .locals 0

    return-void
.end method

.method public isCameraIdle()Z
    .locals 2

    .line 1197
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 1198
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isPreviewFrameValid()Z
    .locals 3

    .line 1204
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isPreviewStop()Z
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$checkDisplayRotation$1$com-xiaomi-scanner-camera-CaptureModule()V
    .locals 0

    .line 523
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->checkDisplayRotation()V

    return-void
.end method

.method synthetic lambda$requestPreviewFrame$0$com-xiaomi-scanner-camera-CaptureModule(Ljava/lang/ref/WeakReference;[BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    new-instance v1, Lcom/xiaomi/scanner/camera/CaptureModule$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/scanner/camera/CaptureModule$4;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Ljava/lang/ref/WeakReference;[BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 720
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "consume back key"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2

    .line 415
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onCameraAvailable"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 416
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz v1, :cond_0

    return-void

    .line 420
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 421
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->initializeCapabilities()V

    .line 424
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->getZoomValue(Lcom/xiaomi/scanner/module/ModuleController;)F

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    .line 425
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->initializeFocusManager()V

    .line 426
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {p1, v1}, Lcom/xiaomi/scanner/camera/FocusManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 427
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->initMotionManager()V

    .line 430
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 432
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object p1

    if-nez p1, :cond_1

    .line 433
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {p1, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 435
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "setFocusMode: AUTO"

    .line 436
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 437
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    :cond_2
    const/4 p1, -0x1

    .line 440
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraParametersWhenIdle(I)V

    .line 443
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object p1

    .line 444
    invoke-virtual {p1, p0}, Lcom/xiaomi/scanner/settings/SettingsManager;->addListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)V

    const/4 p1, 0x1

    .line 445
    iput-boolean p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraPreviewParamsReady:Z

    .line 447
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x1b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x50

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    return v2

    .line 749
    :pswitch_0
    iget-boolean p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 753
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->onShutterButtonFocus(Z)V

    :cond_0
    return v1

    .line 734
    :cond_1
    :pswitch_1
    iget-boolean p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz p1, :cond_3

    .line 735
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 736
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->onShutterButtonFocus(Z)V

    :cond_2
    return v1

    :cond_3
    return v2

    .line 742
    :cond_4
    iget-boolean p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_5

    .line 743
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onShutterButtonClick()V

    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/16 p2, 0x18

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_2

    const/16 p2, 0x19

    if-eq p1, p2, :cond_2

    const/16 p2, 0x50

    if-eq p1, p2, :cond_0

    return v1

    .line 783
    :cond_0
    iget-boolean p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz p1, :cond_1

    .line 784
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->onShutterButtonFocus(Z)V

    :cond_1
    return v0

    .line 767
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 768
    iget-wide v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->lastClick:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_3

    .line 770
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp  volume  doing  something   lastClick  ==  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->lastClick:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "   currTime  ==  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "  cha   =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->lastClick:J

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 772
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mVolumeButtonClickedFlag:Z

    .line 773
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onShutterButtonClick()V

    .line 774
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->lastClick:J

    return v0

    .line 779
    :cond_3
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->lastClick:J

    return v1
.end method

.method public onLayoutOrientationChanged(Z)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setDisplayOrientation()V

    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1241
    iget p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewWidth:I

    if-ne p1, p4, :cond_0

    iget p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewHeight:I

    if-eq p1, p5, :cond_1

    .line 1242
    :cond_0
    iput p4, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewWidth:I

    .line 1243
    iput p5, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPreviewHeight:I

    .line 1245
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {p1}, Lcom/xiaomi/scanner/util/ScreenUtils;->isPad(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1246
    invoke-virtual {p0, p4, p5}, Lcom/xiaomi/scanner/camera/CaptureModule;->onPreviewUIReady(II)V

    :cond_2
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 2

    .line 237
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPreviewUIDestroyed"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 241
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 242
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->stopPreview()V

    return-void
.end method

.method public onPreviewUIReady()V
    .locals 2

    .line 223
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    return-void
.end method

.method public onPreviewUIReady(II)V
    .locals 2

    .line 228
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScreenUtils;->isPad(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/app/ScanActivity;->setmOrientation(II)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    :goto_0
    return-void
.end method

.method public onSettingChanged(Lcom/xiaomi/scanner/settings/SettingsManager;Ljava/lang/String;)V
    .locals 0

    .line 938
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz p1, :cond_0

    .line 939
    iget-object p2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 8

    .line 455
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    .line 456
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleController;->isUsePreviewFrameAsPicture()Z

    move-result v1

    const-string v2, "onShutterButtonClick: cameraState="

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 457
    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->isShutterEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->isSdkReady()Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f1001a2

    .line 465
    invoke-static {v0}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 466
    iput-boolean v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mVolumeButtonClickedFlag:Z

    return-void

    .line 471
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    const-wide/32 v6, 0x2faf080

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    .line 472
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 473
    invoke-virtual {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 474
    iput-boolean v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mVolumeButtonClickedFlag:Z

    return-void

    .line 478
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->doPrething()V

    .line 479
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " volumeButtonClickedFlag="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mVolumeButtonClickedFlag:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mModuleController:Lcom/xiaomi/scanner/module/ModuleController;

    .line 483
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->setInPictureTakenState(Z)V

    .line 484
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->focusAndCapture()V

    return-void

    .line 458
    :cond_3
    :goto_0
    sget-object v1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " paused="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 459
    iput-boolean v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mVolumeButtonClickedFlag:Z

    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1

    .line 705
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result p1

    .line 706
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    iget-boolean p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusAreaSupported:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMeteringAreaSupported:Z

    if-nez p1, :cond_1

    return-void

    .line 716
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/scanner/camera/FocusManager;->onSingleTapUp(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1257
    sget-object p1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureAvailable: w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1258
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {p1}, Lcom/xiaomi/scanner/util/ScreenUtils;->isPad(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1259
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/scanner/camera/CaptureModule;->onPreviewUIReady(II)V

    goto :goto_0

    .line 1261
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onPreviewUIReady()V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1276
    sget-object p1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1277
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onPreviewUIDestroyed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1267
    sget-object p1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureSizeChanged: w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1269
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {p1}, Lcom/xiaomi/scanner/util/ScreenUtils;->isPad(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1270
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/scanner/app/ScanActivity;->setmOrientation(II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public openCamera()V
    .locals 2

    .line 250
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "openCamera"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/xiaomi/scanner/camera/CameraProvider;->requestCamera(I)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .line 623
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause - mPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 625
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 629
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    .line 631
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 635
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 637
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 643
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    if-eqz v0, :cond_2

    .line 644
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/camera/MotionManager;->removeListener(Lcom/xiaomi/scanner/camera/MotionManager$MotionListener;)V

    .line 645
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/MotionManager;->reset()V

    .line 646
    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mMotionManager:Lcom/xiaomi/scanner/camera/MotionManager;

    .line 649
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->closeCamera()V

    .line 651
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v0, :cond_3

    .line 652
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->removeMessages()V

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->removePreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 655
    iput-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mModuleController:Lcom/xiaomi/scanner/module/ModuleController;

    .line 657
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v0

    .line 658
    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/settings/SettingsManager;->removeListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)V

    return-void
.end method

.method public requestPreviewFrame(Lcom/xiaomi/scanner/module/ModuleController;)V
    .locals 2

    .line 296
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 297
    sget-object p1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "requestPreviewFrame: paused!"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 301
    sget-object p1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "requestPreviewFrame: null module!"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_2

    .line 305
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 306
    new-instance p1, Lcom/xiaomi/scanner/camera/CaptureModule$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;Ljava/lang/ref/WeakReference;)V

    .line 325
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    goto :goto_0

    .line 327
    :cond_2
    sget-object p1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "requestPreviewFrame: null camera!"

    invoke-static {p1, v1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public requestUpdateZoom(Lcom/xiaomi/scanner/module/ModuleController;)V
    .locals 1

    if-nez p1, :cond_0

    .line 988
    sget-object p1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "module is null"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 989
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->requestUpdateZoom(Z)V

    goto :goto_0

    .line 991
    :cond_0
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->isZoomNeeded()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->requestUpdateZoom(Z)V

    :goto_0
    return-void
.end method

.method public requestUpdateZoom(Z)V
    .locals 5

    .line 997
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1003
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->getZoomValue(Z)F

    move-result p1

    .line 1004
    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    return-void

    .line 1007
    :cond_2
    iput p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    .line 1008
    sget-object p1, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1010
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mZoomValue:F

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 1011
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 533
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 534
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onResumeTask(Z)V

    return-void
.end method

.method public setFocusParameters()V
    .locals 1

    const/4 v0, 0x4

    .line 411
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startPreview()V
    .locals 4

    .line 873
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 874
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_0

    const-string v1, "attempted to start preview before camera device"

    .line 875
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 880
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->checkPreviewPreconditions()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 884
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setDisplayOrientation()V

    .line 886
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_3

    .line 889
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/FocusManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_2

    .line 891
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/FocusManager;->setAeAwbLock(Z)V

    .line 896
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->updateParametersPictureSize()V

    const/4 v0, -0x1

    .line 898
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraParametersWhenIdle(I)V

    .line 900
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/AppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 903
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/CaptureModule$5;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    .line 914
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    :cond_0
    const/4 v0, 0x0

    .line 926
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setCameraState(I)V

    .line 927
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mFocusManager:Lcom/xiaomi/scanner/camera/FocusManager;

    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/FocusManager;->onPreviewStopped()V

    :cond_1
    return-void
.end method

.method public turnTorchOff()Z
    .locals 2

    .line 1300
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1301
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "cannot turn off flash due to null device"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 1304
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "turnTorchOff"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1306
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public turnTorchOn()Z
    .locals 2

    .line 1287
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1288
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "cannot turn on flash due to null device"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 1291
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/camera/CaptureModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "turnTorchOn"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1294
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public updateCameraOrientation()V
    .locals 2

    .line 672
    iget v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mDisplayRotation:I

    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 673
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/CaptureModule;->setDisplayOrientation()V

    :cond_0
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule;->mAppController:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->updatePreviewAspectRatio(F)V

    return-void
.end method
