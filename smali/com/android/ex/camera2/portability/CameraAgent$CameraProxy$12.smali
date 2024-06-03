.class Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$12;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field final synthetic val$degrees:I


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;I)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$12;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iput p2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$12;->val$degrees:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 761
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$12;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy$12;->val$degrees:I

    const/16 v2, 0x1f7

    const/4 v3, 0x0

    .line 762
    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
