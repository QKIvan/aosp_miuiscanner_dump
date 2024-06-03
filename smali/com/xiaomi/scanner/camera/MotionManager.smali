.class public Lcom/xiaomi/scanner/camera/MotionManager;
.super Ljava/lang/Object;
.source "MotionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/camera/MotionManager$MotionListener;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER_GAP_TOLERANCE:D = 1.0

.field private static final EVENT_PROCESS_INTERVAL:J = 0x5f5e100L

.field private static final EVENT_TIME_OUT:J = 0x3b9aca00L

.field private static final GYROSCOPE_FOCUS_THRESHOLD:D = 0.5235987755982988

.field private static final GYROSCOPE_IGNORE_THRESHOLD:D = 0.05000000074505806

.field private static final GYROSCOPE_MOVING_THRESHOLD:D = 1.5

.field private static final NS2S:F = 1.0E-9f

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mAccelerometerTimeStamp:J

.field private mAngleTotal:D

.field private final mGyroscope:Landroid/hardware/Sensor;

.field private mGyroscopeListener:Landroid/hardware/SensorEventListener;

.field private mGyroscopeTimeStamp:J

.field private mIsEnabled:Z

.field private mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

.field private final mLinearAccelerometer:Landroid/hardware/Sensor;

.field private final mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaomi/scanner/camera/MotionManager$MotionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "MotionManager"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/MotionManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mAccelerometerTimeStamp:J

    .line 30
    iput-wide v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mGyroscopeTimeStamp:J

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mAngleTotal:D

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mIsEnabled:Z

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mListeners:Ljava/util/LinkedList;

    .line 97
    new-instance v0, Lcom/xiaomi/scanner/camera/MotionManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/MotionManager$1;-><init>(Lcom/xiaomi/scanner/camera/MotionManager;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 138
    new-instance v0, Lcom/xiaomi/scanner/camera/MotionManager$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/MotionManager$2;-><init>(Lcom/xiaomi/scanner/camera/MotionManager;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    const-string v0, "sensor"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x4

    .line 42
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mGyroscope:Landroid/hardware/Sensor;

    const/16 v0, 0xa

    .line 43
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/camera/MotionManager;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mGyroscopeTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/xiaomi/scanner/camera/MotionManager;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mGyroscopeTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/camera/MotionManager;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/MotionManager;->deviceMoving()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/camera/MotionManager;)D
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mAngleTotal:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/xiaomi/scanner/camera/MotionManager;D)D
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mAngleTotal:D

    return-wide p1
.end method

.method static synthetic access$218(Lcom/xiaomi/scanner/camera/MotionManager;D)D
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mAngleTotal:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mAngleTotal:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/camera/MotionManager;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mAccelerometerTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/xiaomi/scanner/camera/MotionManager;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mAccelerometerTimeStamp:J

    return-wide p1
.end method

.method private deviceMoving()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 92
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/camera/MotionManager$MotionListener;

    .line 93
    invoke-interface {v1}, Lcom/xiaomi/scanner/camera/MotionManager$MotionListener;->onMoving()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/xiaomi/scanner/camera/MotionManager$MotionListener;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mIsEnabled:Z

    return v0
.end method

.method public removeListener(Lcom/xiaomi/scanner/camera/MotionManager$MotionListener;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    .line 55
    sget-object v0, Lcom/xiaomi/scanner/camera/MotionManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 57
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/MotionManager;->stop()V

    return-void
.end method

.method public start()V
    .locals 4

    .line 61
    sget-object v0, Lcom/xiaomi/scanner/camera/MotionManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mIsEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mIsEnabled:Z

    .line 64
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mGyroscope:Landroid/hardware/Sensor;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 65
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 68
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 75
    sget-object v0, Lcom/xiaomi/scanner/camera/MotionManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mIsEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mIsEnabled:Z

    .line 78
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_1

    .line 81
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    :goto_0
    return-void
.end method
