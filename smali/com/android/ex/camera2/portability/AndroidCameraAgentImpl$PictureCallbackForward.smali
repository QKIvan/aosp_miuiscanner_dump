.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PictureCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

.field private final mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V
    .locals 0

    .line 1243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1244
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->mHandler:Landroid/os/Handler;

    .line 1245
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1246
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    return-void
.end method

.method static synthetic access$1400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 0

    .line 1220
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .locals 0

    .line 1220
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    return-object p0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1239
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1

    .line 1252
    iget-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PictureCallbackForward;[B)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
