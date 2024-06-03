.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaceDetectionCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;

.field private final mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V
    .locals 0

    .line 1328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1329
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;->mHandler:Landroid/os/Handler;

    .line 1330
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1331
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;

    return-void
.end method

.method static synthetic access$1800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 0

    .line 1305
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;
    .locals 0

    .line 1305
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;

    return-object p0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1324
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1

    .line 1337
    iget-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$FaceDetectionCallbackForward;[Landroid/hardware/Camera$Face;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
