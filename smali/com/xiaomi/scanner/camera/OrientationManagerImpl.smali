.class public Lcom/xiaomi/scanner/camera/OrientationManagerImpl;
.super Ljava/lang/Object;
.source "OrientationManagerImpl.java"

# interfaces
.implements Lcom/xiaomi/scanner/camera/OrientationManager;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mLastDeviceOrientation:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

.field private mOrientationChangeListenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "OrientMgrImpl"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object p1, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    .line 50
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    .line 52
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mOrientationChangeListenerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private genNewDeviceOrientation([F)Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;
    .locals 3

    const/4 v0, 0x2

    .line 98
    :try_start_0
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 99
    aget p1, p1, v1

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    .line 101
    sget-object p1, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p1

    :cond_0
    const/high16 v2, -0x3de00000    # -40.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 103
    sget-object p1, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p1

    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_2

    .line 105
    sget-object p1, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p1

    :cond_2
    cmpg-float p1, p1, v2

    if-gtz p1, :cond_3

    .line 107
    sget-object p1, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p1

    .line 109
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 112
    sget-object v0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genNewDeviceOrientation error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    sget-object p1, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p1
.end method


# virtual methods
.method public getDeviceOrientation()Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object v0
.end method

.method public getmOrientationChangeListenerWeakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mOrientationChangeListenerWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 77
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 81
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->genNewDeviceOrientation([F)Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    if-ne v0, p1, :cond_1

    return-void

    .line 85
    :cond_1
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mLastDeviceOrientation:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    .line 87
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mOrientationChangeListenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;->onOrientationChange(I)V

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 60
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public setmOrientationChangeListenerWeakReference(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->mOrientationChangeListenerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
