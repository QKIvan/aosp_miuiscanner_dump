.class Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$1;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->reconnect(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field final synthetic val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$1;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$1;->val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 425
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$1;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$1;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$1;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$1;->val$cb:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 426
    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 425
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
