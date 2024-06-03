.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;
.super Lcom/android/ex/camera2/portability/CameraAgent;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;,
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2StateHolder;,
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;,
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;,
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final mCameraDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

.field private final mCameraHandlerThread:Landroid/os/HandlerThread;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

.field private final mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

.field private mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

.field private final mNoisemaker:Landroid/media/MediaActionSound;

.field private mNumCameraDevices:I

.field private mSessionLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCam2AgntImp"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 93
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraAgent;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mSessionLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera2 Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraHandlerThread:Landroid/os/HandlerThread;

    .line 95
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .line 97
    new-instance v2, Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    invoke-direct {v2, v1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    .line 98
    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2StateHolder;

    invoke-direct {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2StateHolder;-><init>()V

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    .line 99
    new-instance v2, Lcom/android/ex/camera2/portability/DispatchThread;

    invoke-direct {v2, v1, v0}, Lcom/android/ex/camera2/portability/DispatchThread;-><init>(Landroid/os/Handler;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    .line 100
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/DispatchThread;->start()V

    const-string v0, "camera"

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 102
    new-instance p1, Landroid/media/MediaActionSound;

    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNoisemaker:Landroid/media/MediaActionSound;

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Landroid/media/MediaActionSound;->load(I)V

    .line 105
    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNumCameraDevices:I

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    .line 107
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->updateCameraDevices()Z

    return-void
.end method

.method static synthetic access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;Landroid/media/Image;)[B
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getDataFromImage(Landroid/media/Image;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Landroid/media/MediaActionSound;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNoisemaker:Landroid/media/MediaActionSound;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Ljava/lang/Object;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mSessionLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->releaseBufferData()V

    return-void
.end method

.method private getDataFromImage(Landroid/media/Image;)[B
    .locals 19

    .line 1632
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1633
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    .line 1634
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1635
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1636
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    mul-int v5, v2, v3

    .line 1637
    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int v1, v1, v5

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    const/4 v6, 0x0

    .line 1638
    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    new-array v7, v7, [B

    .line 1639
    sget-object v8, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get data from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " planes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1642
    :goto_0
    array-length v12, v4

    if-ge v9, v12, :cond_8

    const/4 v12, 0x2

    if-eqz v9, :cond_2

    if-eq v9, v8, :cond_1

    if-eq v9, v12, :cond_0

    goto :goto_2

    :cond_0
    move v10, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v5, 0x1

    :goto_1
    const/4 v11, 0x2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1657
    :goto_2
    aget-object v12, v4, v9

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 1658
    aget-object v13, v4, v9

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    .line 1659
    aget-object v14, v4, v9

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    if-nez v9, :cond_3

    const/4 v15, 0x0

    goto :goto_3

    :cond_3
    const/4 v15, 0x1

    :goto_3
    shr-int v6, v2, v15

    shr-int v8, v3, v15

    move/from16 v16, v2

    .line 1663
    iget v2, v0, Landroid/graphics/Rect;->top:I

    shr-int/2addr v2, v15

    mul-int v2, v2, v13

    move/from16 v17, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    shr-int/2addr v3, v15

    mul-int v3, v3, v14

    add-int/2addr v2, v3

    invoke-virtual {v12, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_7

    const/4 v3, 0x1

    if-ne v14, v3, :cond_4

    if-ne v11, v3, :cond_4

    .line 1668
    invoke-virtual {v12, v1, v10, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v10, v6

    move v15, v6

    goto :goto_6

    :cond_4
    add-int/lit8 v15, v6, -0x1

    mul-int v15, v15, v14

    add-int/2addr v15, v3

    const/4 v3, 0x0

    .line 1672
    invoke-virtual {v12, v7, v3, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_5
    if-ge v3, v6, :cond_5

    mul-int v18, v3, v14

    .line 1674
    aget-byte v18, v7, v18

    aput-byte v18, v1, v10

    add-int/2addr v10, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    add-int/lit8 v3, v8, -0x1

    if-ge v2, v3, :cond_6

    .line 1679
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v13

    sub-int/2addr v3, v15

    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_0

    :cond_8
    return-object v1
.end method

.method private releaseBufferData()V
    .locals 2

    .line 1687
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "relasetBufferData"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateCameraDevices()Z
    .locals 8

    const/4 v0, 0x0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 120
    new-instance v2, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    .line 123
    :goto_0
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 124
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNumCameraDevices:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNumCameraDevices:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 132
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 133
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 134
    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNumCameraDevices:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNumCameraDevices:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v5

    :catch_0
    move-exception v1

    .line 141
    sget-object v2, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v3, "Could not get device listing from camera subsystem"

    invoke-static {v2, v3, v1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;
    .locals 4

    .line 154
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->updateCameraDevices()Z

    .line 155
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraDevices:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mNumCameraDevices:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2DeviceInfo;-><init>(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;I)V

    return-object v0
.end method

.method protected getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-object v0
.end method

.method protected getCameraHandler()Landroid/os/Handler;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraHandler:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    return-object v0
.end method

.method protected getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mCameraState:Lcom/android/ex/camera2/portability/CameraStateHolder;

    return-object v0
.end method

.method protected getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mDispatchThread:Lcom/android/ex/camera2/portability/DispatchThread;

    return-object v0
.end method

.method public recycle()V
    .locals 0

    return-void
.end method

.method public setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->mExceptionHandler:Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    return-void
.end method
