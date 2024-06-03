.class public Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitDoneBundle"
.end annotation


# instance fields
.field public final mUnlockRunnable:Ljava/lang/Runnable;

.field public final mWaitLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    .line 960
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle$1;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle$1;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mUnlockRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static unblockSyncWaiters(Landroid/os/Message;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 978
    :cond_0
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    if-eqz v0, :cond_1

    .line 979
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    .line 980
    iget-object p0, p0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mUnlockRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
