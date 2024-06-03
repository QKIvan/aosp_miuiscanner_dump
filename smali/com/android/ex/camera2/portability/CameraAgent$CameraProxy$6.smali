.class Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$6;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field final synthetic val$surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$6;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$6;->val$surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$6;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$6;->val$surfaceHolder:Landroid/view/SurfaceHolder;

    const/16 v2, 0x6a

    .line 553
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
