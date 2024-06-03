.class public Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraOpenCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->mHandler:Landroid/os/Handler;

    .line 108
    iput-object p2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    return-object p0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onCameraDisabled(I)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward$2;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward$2;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward$1;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward$1;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeviceOpenFailure(ILjava/lang/String;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward$3;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeviceOpenedAlready(ILjava/lang/String;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward$4;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward$5;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
