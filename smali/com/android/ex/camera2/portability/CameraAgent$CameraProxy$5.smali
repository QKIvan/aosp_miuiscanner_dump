.class Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$5;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTextureSync(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field final synthetic val$bundle:Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

.field final synthetic val$surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/graphics/SurfaceTexture;Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$5;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$5;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object p3, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$5;->val$bundle:Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$5;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$5;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/16 v2, 0x65

    .line 533
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 535
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$5;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$5;->val$bundle:Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mUnlockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
