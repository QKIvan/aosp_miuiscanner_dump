.class Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle$1;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle$1;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle$1;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle$1;->this$0:Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 965
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
