.class Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$11;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field final synthetic val$capture:Z

.field final synthetic val$degrees:I


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;IZ)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$11;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iput p2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$11;->val$degrees:I

    iput-boolean p3, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$11;->val$capture:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 746
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$11;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$11;->val$degrees:I

    iget-boolean v2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$11;->val$capture:Z

    const/16 v3, 0x1f6

    .line 747
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
