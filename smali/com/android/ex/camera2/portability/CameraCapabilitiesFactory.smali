.class public Lcom/android/ex/camera2/portability/CameraCapabilitiesFactory;
.super Ljava/lang/Object;
.source "CameraCapabilitiesFactory.java"


# static fields
.field private static TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamCapabsFact"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilitiesFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFrom(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1

    if-nez p0, :cond_0

    .line 29
    sget-object p0, Lcom/android/ex/camera2/portability/CameraCapabilitiesFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v0, "Null parameter passed in."

    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;-><init>(Landroid/hardware/Camera$Parameters;)V

    return-object v0
.end method
