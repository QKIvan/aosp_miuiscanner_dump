.class Lcom/xiaomi/scanner/camera/CameraController$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/camera/CameraController;->checkAndOpenCamera(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cameraId:I

.field final synthetic val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;I)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CameraController$1;->val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    iput p2, p0, Lcom/xiaomi/scanner/camera/CameraController$1;->val$cameraId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CameraController$1;->val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    iget v1, p0, Lcom/xiaomi/scanner/camera/CameraController$1;->val$cameraId:I

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraDisabled(I)V

    return-void
.end method
