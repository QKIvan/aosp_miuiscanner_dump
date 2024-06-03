.class Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iput-boolean p2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 919
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$17;->val$enable:Z

    const/4 v2, 0x0

    const/16 v3, 0x1f5

    .line 920
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 921
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
