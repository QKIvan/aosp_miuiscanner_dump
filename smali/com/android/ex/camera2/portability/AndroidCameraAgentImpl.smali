.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.super Lcom/android/ex/camera2/portability/CameraAgent;
.source "AndroidCameraAgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFMoveCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraStateHolder;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;,
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static final sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;


# instance fields
.field private final mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

.field private final mCameraHandlerThread:Landroid/os/HandlerThread;

.field private final mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

.field private mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

.field private mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

.field private final mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

.field private mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCamAgntImp"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    .line 61
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 82
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraAgent;-><init>()V

    .line 80
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    .line 84
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    .line 86
    new-instance v2, Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    invoke-direct {v2, v1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 87
    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraStateHolder;

    invoke-direct {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraStateHolder;-><init>()V

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    .line 88
    new-instance v2, Lcom/android/ex/camera2/portability/DispatchThread;

    invoke-direct {v2, v1, v0}, Lcom/android/ex/camera2/portability/DispatchThread;-><init>(Landroid/os/Handler;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    .line 89
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/DispatchThread;->start()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    return-object p0
.end method


# virtual methods
.method public getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;
    .locals 1

    .line 101
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->create()Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-object v0
.end method

.method protected getCameraHandler()Landroid/os/Handler;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;

    return-object v0
.end method

.method protected getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    return-object v0
.end method

.method protected getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    return-object v0
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 9

    const-string v0, "CAMERA_HAL_API_VERSION_1_0"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.hardware.Camera"

    .line 1349
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "openLegacy"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 1350
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1352
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1355
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    .line 1360
    :goto_0
    sget-object v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hal_api_1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    .line 1361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    move-object v1, v0

    goto :goto_1

    .line 1363
    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "null openLegacy method"

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1368
    sget-object v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openLegacy failed due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", using open instead"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    :goto_1
    if-nez v1, :cond_2

    .line 1374
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "camera is null, use default method"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1375
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public recycle()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V

    .line 95
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/DispatchThread;->end()V

    .line 96
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->invalidate()V

    return-void
.end method

.method public setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    sget-object p1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->sDefaultExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    :goto_0
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-void
.end method
