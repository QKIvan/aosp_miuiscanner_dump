.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;
.super Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
.source "AndroidCameraAgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCharacteristics"
.end annotation


# instance fields
.field private mCameraInfo:Landroid/hardware/Camera$CameraInfo;


# direct methods
.method constructor <init>(Landroid/hardware/Camera$CameraInfo;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    return-void
.end method


# virtual methods
.method public canDisableShutterSound()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget-boolean v0, v0, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    return v0
.end method

.method public getSensorOrientation()I
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v0
.end method

.method public isFacingBack()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFacingFront()Z
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
