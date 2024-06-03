.class public Lcom/android/ex/camera2/portability/CameraCapabilities;
.super Ljava/lang/Object;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;,
        Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    }
.end annotation


# static fields
.field private static TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag; = null

.field protected static final ZOOM_RATIO_UNZOOMED:F = 1.0f


# instance fields
.field protected mExposureCompensationStep:F

.field protected mHorizontalViewAngle:F

.field protected mMaxExposureCompensation:I

.field protected mMaxNumOfFacesSupported:I

.field protected mMaxNumOfFocusAreas:I

.field protected mMaxNumOfMeteringArea:I

.field protected mMaxZoomRatio:F

.field protected mMinExposureCompensation:I

.field protected mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

.field private final mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

.field protected final mSupportedFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedFlashModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedFocusModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedPhotoFormats:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedPhotoSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedPreviewFormats:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedPreviewFpsRange:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field protected final mSupportedPreviewSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedSceneModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedVideoSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSupportedWhiteBalances:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;",
            ">;"
        }
    .end annotation
.end field

.field protected mVerticalViewAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamCapabs"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)V
    .locals 1

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    .line 51
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    .line 52
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    .line 53
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    .line 54
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 55
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    .line 56
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    .line 467
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraCapabilities;)V
    .locals 12

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    .line 47
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    .line 50
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    iput-object v5, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    .line 51
    const-class v6, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    .line 52
    const-class v7, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v7

    iput-object v7, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    .line 53
    const-class v8, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-static {v8}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v8

    iput-object v8, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    .line 54
    const-class v9, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 55
    invoke-static {v9}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v9

    iput-object v9, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    .line 56
    const-class v10, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-static {v10}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v10

    iput-object v10, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    .line 475
    iget-object v11, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 476
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 477
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 478
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 479
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 480
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    invoke-virtual {v5, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 481
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    invoke-virtual {v6, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 482
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    invoke-virtual {v7, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 483
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    invoke-virtual {v8, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 484
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    invoke-virtual {v9, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 485
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    invoke-virtual {v10, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 486
    iget-object v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

    .line 487
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxExposureCompensation:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxExposureCompensation:I

    .line 488
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinExposureCompensation:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinExposureCompensation:I

    .line 489
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mExposureCompensationStep:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mExposureCompensationStep:F

    .line 490
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFacesSupported:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFacesSupported:I

    .line 491
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFocusAreas:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFocusAreas:I

    .line 492
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfMeteringArea:I

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfMeteringArea:I

    .line 493
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxZoomRatio:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxZoomRatio:F

    .line 494
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mHorizontalViewAngle:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mHorizontalViewAngle:F

    .line 495
    iget v0, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mVerticalViewAngle:F

    iput v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mVerticalViewAngle:F

    .line 496
    iget-object p1, p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    return-void
.end method

.method private exposureCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 3

    .line 697
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getExposureCompensationIndex()I

    move-result p1

    .line 698
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 699
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exposure compensation index is not supported. Min = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", setting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 699
    invoke-static {v0, p1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private flashCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 3

    .line 725
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object p1

    .line 726
    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 727
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flash mode not supported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 728
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 727
    invoke-static {v0, p1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private focusCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 3

    .line 708
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    .line 709
    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 710
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Focus mode not supported... trying FIXED"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 714
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_1

    .line 716
    :cond_0
    sget-object p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focus mode not supported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {p1, v0}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private photoSizeCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 3

    .line 735
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object p1

    .line 736
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 739
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported photo size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private previewSizeCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 3

    .line 744
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object p1

    .line 745
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 748
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported preview size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private videoStabilizationCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 1

    .line 753
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isVideoStabilizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 756
    :cond_0
    sget-object p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v0, "Video stabilization is not supported"

    invoke-static {p1, v0}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private zoomCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 4

    .line 680
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v0

    .line 681
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 683
    sget-object p1, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v0, "Zoom is not supported"

    invoke-static {p1, v0}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 687
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 688
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zoom ratio is not supported: ratio = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 688
    invoke-static {v0, p1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final getExposureCompensationStep()F
    .locals 1

    .line 661
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mExposureCompensationStep:F

    return v0
.end method

.method public getHorizontalViewAngle()F
    .locals 1

    .line 500
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mHorizontalViewAngle:F

    return v0
.end method

.method public final getMaxExposureCompensation()I
    .locals 1

    .line 653
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxExposureCompensation:I

    return v0
.end method

.method public final getMaxNumOfFacesSupported()I
    .locals 1

    .line 669
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxNumOfFacesSupported:I

    return v0
.end method

.method public getMaxZoomRatio()F
    .locals 1

    .line 635
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMaxZoomRatio:F

    return v0
.end method

.method public final getMinExposureCompensation()I
    .locals 1

    .line 644
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mMinExposureCompensation:I

    return v0
.end method

.method public final getPreferredPreviewSizeForVideo()Lcom/android/ex/camera2/portability/Size;
    .locals 2

    .line 547
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    return-object v0
.end method

.method public getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mStringifier:Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    return-object v0
.end method

.method public final getSupportedFeature()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;",
            ">;"
        }
    .end annotation

    .line 624
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedFlashModes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;",
            ">;"
        }
    .end annotation

    .line 585
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedFocusModes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;"
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPhotoFormats()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public getSupportedPhotoSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPreviewFormats()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public final getSupportedPreviewFpsRange()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedPreviewSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedSceneModes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;",
            ">;"
        }
    .end annotation

    .line 562
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedVideoSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSupportedWhiteBalance()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;",
            ">;"
        }
    .end annotation

    .line 613
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getVerticalViewAngle()F
    .locals 1

    .line 504
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mVerticalViewAngle:F

    return v0
.end method

.method public supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supports(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supports(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 1

    .line 573
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->zoomCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->exposureCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->focusCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->flashCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->photoSizeCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->previewSizeCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->videoStabilizationCheck(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
