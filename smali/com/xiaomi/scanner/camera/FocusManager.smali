.class public Lcom/xiaomi/scanner/camera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/xiaomi/scanner/camera/MotionManager$MotionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/camera/FocusManager$MainHandler;,
        Lcom/xiaomi/scanner/camera/FocusManager$Listener;
    }
.end annotation


# static fields
.field public static final AE_REGION_BOX:F = 0.3f

.field public static final AF_REGION_BOX:F = 0.2f

.field private static final RESET_AUTO_FOCUS:I = 0x1

.field public static RESET_AUTO_FOCUS_DELAY_MILLIS:I = 0x0

.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY_MILLIS:I = 0x7d0

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mAeAwbLock:Z

.field private mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private mCoordinateTransformer:Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;

.field private final mDefaultFocusModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayOrientation:I

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusLocked:Z

.field private mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "FocusManager"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const/16 v0, 0x3e8

    .line 50
    sput v0, Lcom/xiaomi/scanner/camera/FocusManager;->RESET_AUTO_FOCUS_DELAY_MILLIS:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/xiaomi/scanner/camera/FocusManager$Listener;ZLandroid/os/Looper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities;",
            "Lcom/xiaomi/scanner/camera/FocusManager$Listener;",
            "Z",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 78
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    .line 130
    new-instance v1, Lcom/xiaomi/scanner/camera/FocusManager$MainHandler;

    invoke-direct {v1, p0, p5}, Lcom/xiaomi/scanner/camera/FocusManager$MainHandler;-><init>(Lcom/xiaomi/scanner/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p5, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mDefaultFocusModes:Ljava/util/List;

    .line 132
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/camera/FocusManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 133
    iput-object p3, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    .line 134
    invoke-virtual {p0, p4}, Lcom/xiaomi/scanner/camera/FocusManager;->setMirror(Z)V

    .line 135
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusLocked:Z

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 42
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/camera/FocusManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/camera/FocusManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->capture()V

    return-void
.end method

.method private autoFocus()V
    .locals 1

    const/4 v0, 0x3

    .line 397
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/FocusManager;->autoFocus(I)V

    return-void
.end method

.method private autoFocus(I)V
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->autoFocus()V

    .line 382
    iput p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 383
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 387
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    sget v0, Lcom/xiaomi/scanner/camera/FocusManager;->RESET_AUTO_FOCUS_DELAY_MILLIS:I

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private autoFocusAndCapture()V
    .locals 1

    const/4 v0, 0x2

    .line 405
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/FocusManager;->autoFocus(I)V

    return-void
.end method

.method private cancelAutoFocus()V
    .locals 2

    .line 409
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "cancel auto focus"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->resetTouchFocus()V

    .line 414
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->cancelAutoFocus()V

    const/4 v0, 0x0

    .line 415
    iput v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 416
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusLocked:Z

    .line 417
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private capture()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 423
    iput v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 424
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private computeCameraRectFromPreviewCoordinates(III)Landroid/graphics/Rect;
    .locals 3

    .line 486
    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p1, v0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p3

    invoke-static {p1, v1, v2}, Lcom/xiaomi/scanner/util/CameraUtil;->clamp(III)I

    move-result p1

    sub-int/2addr p2, v0

    .line 488
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p3

    invoke-static {p2, v0, v1}, Lcom/xiaomi/scanner/util/CameraUtil;->clamp(III)I

    move-result p2

    .line 491
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 492
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCoordinateTransformer:Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;->toCameraSpace(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/scanner/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method private getAERegionSizePx()I
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getAFRegionSizePx()I
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initializeFocusAreas(II)V
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 306
    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->getAFRegionSizePx()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/xiaomi/scanner/camera/FocusManager;->computeCameraRectFromPreviewCoordinates(III)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method private initializeMeteringAreas(II)V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 316
    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->getAERegionSizePx()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/xiaomi/scanner/camera/FocusManager;->computeCameraRectFromPreviewCoordinates(III)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method private lockAeAwbIfNeeded()V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mAeAwbLock:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mAeAwbLock:Z

    .line 195
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->setFocusParameters()V

    :cond_0
    return-void
.end method

.method private needAutoFocusCall(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z
    .locals 1

    .line 521
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->INFINITY:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private resetCoordinateTransformer()V
    .locals 8

    .line 179
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 180
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 181
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 182
    iget-object v3, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, v3, v2

    if-lez v4, :cond_0

    sub-int v4, v1, v0

    if-lez v4, :cond_0

    .line 184
    new-instance v4, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;

    iget-boolean v5, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMirror:Z

    iget v6, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mDisplayOrientation:I

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v0, v0

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-direct {v7, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v4, v5, v6, v7}, Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;-><init>(ZILandroid/graphics/RectF;)V

    iput-object v4, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCoordinateTransformer:Lcom/xiaomi/scanner/ui/CameraCoordinateTransformer;

    goto :goto_0

    .line 187
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "The coordinate transformer could not be built because the preview rect did not have a width and height"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private unlockAeAwbIfNeeded()V
    .locals 2

    .line 200
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mAeAwbLock:Z

    .line 202
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->setFocusParameters()V

    :cond_0
    return-void
.end method


# virtual methods
.method public focusAndCapture(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 3

    .line 225
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focusAndCapture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 226
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mInitialized:Z

    if-nez v1, :cond_0

    const-string p1, "focusAndCapture: not initialize"

    .line 227
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 231
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/FocusManager;->needAutoFocusCall(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->capture()V

    goto :goto_1

    .line 234
    :cond_1
    iget p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    .line 239
    iput p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 240
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/xiaomi/scanner/camera/FocusManager;->RESET_AUTO_FOCUS_DELAY_MILLIS:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    .line 244
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->autoFocusAndCapture()V

    goto :goto_1

    .line 236
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->capture()V

    :cond_5
    :goto_1
    return-void
.end method

.method public getAeAwbLock()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 4

    .line 431
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-nez v0, :cond_0

    .line 432
    sget-object p1, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "no capabilities, returning default AUTO focus mode"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 433
    sget-object p1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-object p1

    .line 436
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 437
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "in tap to focus, returning AUTO focus mode"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 439
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mDefaultFocusModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 443
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 444
    iput-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 445
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected focus mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 451
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 455
    sget-object p1, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "falling back to AUTO"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    sget-object p1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_1

    .line 458
    :cond_4
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "falling back to current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 459
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 462
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-object p1
.end method

.method getFocusState()I
    .locals 1

    .line 496
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .line 500
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .line 504
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAutoFocus(ZZ)V
    .locals 4

    .line 249
    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_0

    .line 254
    iput v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    goto :goto_0

    .line 256
    :cond_0
    iput v2, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 258
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->capture()V

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    if-eqz p1, :cond_2

    .line 264
    iput v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    goto :goto_1

    .line 266
    :cond_2
    iput v2, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 269
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 270
    iput-boolean v3, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusLocked:Z

    .line 271
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 273
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p2, :cond_4

    .line 276
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->lockAeAwbIfNeeded()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onAutoFocusMoving(Z)V
    .locals 0

    return-void
.end method

.method public onCameraReleased()V
    .locals 0

    .line 364
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->onPreviewStopped()V

    return-void
.end method

.method public onMoving()V
    .locals 3

    .line 368
    sget-object v0, Lcom/xiaomi/scanner/camera/FocusManager;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMoving: focused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusLocked:Z

    if-eqz v1, :cond_0

    const-string v1, "onMoving: Early focus unlock."

    .line 370
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->cancelAutoFocus()V

    :cond_0
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 0

    .line 165
    invoke-static {p1}, Lcom/xiaomi/scanner/util/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/FocusManager;->setPreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 354
    iput v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    .line 355
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->resetTouchFocus()V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 360
    iput v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    return-void
.end method

.method public onShutterUp(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/FocusManager;->needAutoFocusCall(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 213
    iget p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->cancelAutoFocus()V

    .line 221
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->unlockAeAwbIfNeeded()V

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 2

    .line 324
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 331
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->cancelAutoFocus()V

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 338
    :cond_3
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_4

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/camera/FocusManager;->initializeFocusAreas(II)V

    .line 342
    :cond_4
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_5

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/camera/FocusManager;->initializeMeteringAreas(II)V

    .line 347
    :cond_5
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {p1}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->setFocusParameters()V

    .line 348
    iget-boolean p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz p1, :cond_6

    .line 349
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->autoFocus()V

    :cond_6
    :goto_0
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public resetTouchFocus()V
    .locals 1

    .line 474
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 479
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 482
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mListener:Lcom/xiaomi/scanner/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FocusManager$Listener;->setFocusParameters()V

    return-void
.end method

.method public setAeAwbLock(Z)V
    .locals 0

    .line 513
    iput-boolean p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mAeAwbLock:Z

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mDisplayOrientation:I

    .line 175
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->resetCoordinateTransformer()V

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMirror:Z

    .line 170
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->resetCoordinateTransformer()V

    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 159
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/FocusManager;->resetCoordinateTransformer()V

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mInitialized:Z

    :cond_0
    return-void
.end method

.method public updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 147
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mFocusAreaSupported:Z

    .line 148
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mMeteringAreaSupported:Z

    .line 149
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 150
    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/xiaomi/scanner/camera/FocusManager;->mLockAeAwbNeeded:Z

    return-void
.end method
