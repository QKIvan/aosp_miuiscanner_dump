.class public Lcom/xiaomi/scanner/util/CameraUtil;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;,
        Lcom/xiaomi/scanner/util/CameraUtil$Singleton;
    }
.end annotation


# static fields
.field private static ANTI_BANDING_60_COUNTRY:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ASPECT_RATIO_TOLERANCE:D = 0.05

.field private static final LIMIT_SURFACE_WIDTH:I = 0x2d0

.field private static final MAX_PREVIEW_FPS_TIMES_1000:I = 0x61a80

.field private static final MAX_SURFACE_WIDTH:I = 0x438

.field private static final PREFERRED_PREVIEW_FPS_TIMES_1000:I = 0x7530

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static sCountryIso:Ljava/lang/String;

.field private static sDisplaySize:Landroid/graphics/Point;


# instance fields
.field private final mImageFileNamer:Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 29
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CameraUtil"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "TW"

    const-string v2, "KR"

    const-string v3, "SA"

    const-string v4, "US"

    const-string v5, "CA"

    const-string v6, "BR"

    const-string v7, "CO"

    const-string v8, "MX"

    const-string v9, "PH"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->ANTI_BANDING_60_COUNTRY:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->sCountryIso:Ljava/lang/String;

    .line 42
    sput-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;

    const v1, 0x7f10010f

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/util/CameraUtil;->mImageFileNamer:Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaomi/scanner/util/CameraUtil$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/util/CameraUtil;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static getAspectRatio(Lcom/android/ex/camera2/portability/Size;)D
    .locals 5

    .line 234
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v0

    .line 235
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result p0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p0, :cond_1

    int-to-double v0, v0

    int-to-double v2, p0

    .line 239
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    int-to-double v1, p0

    int-to-double v3, v0

    .line 241
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    return-wide v1

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getDefaultDisplaySize()Landroid/graphics/Point;
    .locals 3

    .line 373
    sget-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    if-nez v0, :cond_1

    .line 374
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    .line 375
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices;->instance()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/AndroidServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 376
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 378
    sget-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    .line 380
    sget-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 381
    sget-object v1, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 382
    sget-object v1, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 385
    :cond_0
    sget-boolean v0, Lcom/xiaomi/scanner/util/Util;->isNotchPhone:Z

    if-eqz v0, :cond_1

    .line 386
    sget-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getStatusBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 390
    :cond_1
    sget-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default display size ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 391
    new-instance v0, Landroid/graphics/Point;

    sget-object v1, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v2, Lcom/xiaomi/scanner/util/CameraUtil;->sDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static getDisplayRotation()I
    .locals 2

    .line 98
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices;->instance()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/AndroidServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x10e

    return v0

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0
.end method

.method public static getImageRotation(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    rsub-int p1, p1, 0x168

    .line 410
    rem-int/lit16 p1, p1, 0x168

    :cond_0
    add-int/2addr p0, p1

    .line 412
    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method public static getLargestPictureSize(FLjava/util/List;I)Lcom/android/ex/camera2/portability/Size;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;I)",
            "Lcom/android/ex/camera2/portability/Size;"
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ex/camera2/portability/Size;

    .line 184
    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v6

    mul-int v5, v5, v6

    if-le v5, v3, :cond_0

    move-object v0, v4

    move v3, v5

    goto :goto_0

    .line 194
    :cond_1
    new-instance v2, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v2, v1, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    .line 196
    new-instance v3, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v3, v1, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    const v4, 0x7fffffff

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ex/camera2/portability/Size;

    .line 199
    invoke-static {v5}, Lcom/xiaomi/scanner/util/CameraUtil;->getAspectRatio(Lcom/android/ex/camera2/portability/Size;)D

    move-result-wide v6

    float-to-double v8, p0

    .line 201
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    cmpl-double v10, v6, v8

    if-lez v10, :cond_3

    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v7

    mul-int v6, v6, v7

    if-le v6, v1, :cond_6

    if-lt v6, p2, :cond_5

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v5

    goto :goto_3

    :cond_5
    :goto_2
    move-object v0, v5

    move-object v2, v0

    :goto_3
    move v1, v6

    :cond_6
    if-eqz p2, :cond_2

    if-le v6, p2, :cond_2

    if-ge v6, v4, :cond_2

    move-object v3, v5

    move v4, v6

    goto :goto_1

    .line 218
    :cond_7
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result p0

    if-eqz p0, :cond_8

    return-object v2

    .line 220
    :cond_8
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result p0

    if-eqz p0, :cond_9

    return-object v3

    :cond_9
    return-object v0
.end method

.method public static getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/ex/camera2/portability/Size;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;D)",
            "Lcom/android/ex/camera2/portability/Size;"
        }
    .end annotation

    .line 246
    invoke-static {p0, p1, p2}, Lcom/xiaomi/scanner/util/CameraUtil;->getOptimalPreviewSizeIndex(Ljava/util/List;D)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 250
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/ex/camera2/portability/Size;

    return-object p0
.end method

.method public static getOptimalPreviewSizeIndex(Ljava/util/List;D)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;D)I"
        }
    .end annotation

    const-wide v0, 0x3fa999999999999aL    # 0.05

    .line 269
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/scanner/util/CameraUtil;->getOptimalPreviewSizeIndex(Ljava/util/List;DLjava/lang/Double;)I

    move-result p0

    return p0
.end method

.method public static getOptimalPreviewSizeIndex(Ljava/util/List;DLjava/lang/Double;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;D",
            "Ljava/lang/Double;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p3, :cond_1

    .line 293
    invoke-static/range {p0 .. p2}, Lcom/xiaomi/scanner/util/CameraUtil;->getOptimalPreviewSizeIndex(Ljava/util/List;D)I

    move-result v0

    return v0

    .line 304
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isMi2()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x3c0

    const/16 v4, 0x500

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 307
    :cond_2
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    .line 310
    :goto_0
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isSurfaceSizeLimited()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x2d0

    goto :goto_1

    :cond_3
    const/16 v3, 0x438

    .line 311
    :goto_1
    iget v4, v2, Landroid/graphics/Point;->x:I

    if-le v4, v3, :cond_4

    .line 312
    iget v4, v2, Landroid/graphics/Point;->y:I

    mul-int v4, v4, v3

    iget v5, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 313
    iput v3, v2, Landroid/graphics/Point;->x:I

    :cond_4
    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    .line 317
    :goto_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_9

    .line 318
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ex/camera2/portability/Size;

    .line 319
    invoke-virtual {v10}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v11

    int-to-double v11, v11

    invoke-virtual {v10}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v13

    int-to-double v13, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    sub-double v11, v11, p1

    .line 320
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v15, v11, v13

    if-lez v15, :cond_5

    goto :goto_3

    .line 324
    :cond_5
    invoke-virtual {v10}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v11

    iget v12, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-virtual {v10}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v12

    iget v13, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    if-nez v11, :cond_6

    move v6, v5

    goto :goto_4

    .line 330
    :cond_6
    invoke-virtual {v10}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v12

    iget v13, v2, Landroid/graphics/Point;->x:I

    if-lt v12, v13, :cond_7

    invoke-virtual {v10}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v10

    iget v12, v2, Landroid/graphics/Point;->y:I

    if-lt v10, v12, :cond_7

    if-ge v11, v8, :cond_7

    move v7, v5

    move v8, v11

    :cond_7
    if-ge v11, v9, :cond_8

    move v6, v5

    move v9, v11

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    move v5, v7

    :goto_4
    if-eq v5, v1, :cond_a

    goto :goto_5

    :cond_a
    move v5, v6

    :goto_5
    if-ne v5, v1, :cond_c

    .line 351
    sget-object v1, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No preview size match the aspect ratio. available sizes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    :goto_6
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_c

    .line 354
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/camera2/portability/Size;

    .line 355
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v6

    iget v7, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    iget v7, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v6, v1

    if-ge v6, v4, :cond_b

    move v5, v3

    move v4, v6

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    return v5
.end method

.method public static getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/scanner/util/CameraUtil;->getPhotoPreviewFpsRange(Ljava/util/List;)[I

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoPreviewFpsRange(Ljava/util/List;)[I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 128
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const v1, 0x61a80

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 136
    aget v5, v3, v5

    .line 137
    aget v3, v3, v4

    const/16 v4, 0x7530

    if-lt v3, v4, :cond_1

    if-gt v5, v4, :cond_1

    if-ge v5, v1, :cond_1

    move v1, v5

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 149
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 150
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 151
    aget v8, v7, v5

    .line 152
    aget v7, v7, v4

    if-ne v8, v1, :cond_3

    if-ge v6, v7, :cond_3

    move v2, v3

    move v6, v7

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-ltz v2, :cond_5

    .line 160
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    .line 162
    :cond_5
    sget-object p0, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Can\'t find an appropriate frame rate range!"

    invoke-static {p0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 129
    :cond_6
    :goto_2
    sget-object p0, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "No supported frame rates returned!"

    invoke-static {p0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private static inlineRectToRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1

    .line 77
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 78
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 79
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 80
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static instance()Lcom/xiaomi/scanner/util/CameraUtil;
    .locals 1

    .line 59
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil$Singleton;->access$100()Lcom/xiaomi/scanner/util/CameraUtil;

    move-result-object v0

    return-object v0
.end method

.method public static isAntibanding60()Z
    .locals 2

    .line 421
    sget-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->ANTI_BANDING_60_COUNTRY:Ljava/util/HashSet;

    sget-object v1, Lcom/xiaomi/scanner/util/CameraUtil;->sCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 1

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 72
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/util/CameraUtil;->inlineRectToRectF(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 4

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static throwIfCameraDisabled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/scanner/camera/CameraDisabledException;
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices;->instance()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/AndroidServices;->provideDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Lcom/xiaomi/scanner/camera/CameraDisabledException;

    invoke-direct {v0}, Lcom/xiaomi/scanner/camera/CameraDisabledException;-><init>()V

    throw v0
.end method

.method public static updateCountryIso(Landroid/content/Context;)V
    .locals 2

    const-string v0, "COUNTRY_DETECTOR"

    :try_start_0
    const-string v1, "android.content.Context"

    .line 431
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 432
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/CountryDetector;

    if-eqz p0, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 437
    invoke-virtual {p0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/scanner/util/CameraUtil;->sCountryIso:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 441
    sget-object v0, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "reflect method error"

    invoke-static {v0, v1, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    :cond_0
    :goto_0
    sget-object p0, Lcom/xiaomi/scanner/util/CameraUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "countryIso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/scanner/util/CameraUtil;->sCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createJpegName(J)Ljava/lang/String;
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/xiaomi/scanner/util/CameraUtil;->mImageFileNamer:Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;

    monitor-enter v0

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/util/CameraUtil;->mImageFileNamer:Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/scanner/util/CameraUtil$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 449
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
