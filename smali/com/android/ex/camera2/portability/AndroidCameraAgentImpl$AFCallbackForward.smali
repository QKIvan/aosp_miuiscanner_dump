.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AFCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

.field private final mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V
    .locals 0

    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->mHandler:Landroid/os/Handler;

    .line 1116
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1117
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    return-void
.end method

.method static synthetic access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 0

    .line 1091
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;
    .locals 0

    .line 1091
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    return-object p0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1110
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    .line 1122
    iget-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AFCallbackForward;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
