.class public Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
.super Ljava/lang/Object;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stringifier"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toApiCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 327
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toEnumCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 337
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 391
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object p1

    aget-object p1, p1, v0

    return-object p1

    .line 394
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 396
    :catch_0
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object p1

    aget-object p1, p1, v0

    return-object p1
.end method

.method public focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 361
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object p1

    aget-object p1, p1, v0

    return-object p1

    .line 364
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 366
    :catch_0
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object p1

    aget-object p1, p1, v0

    return-object p1
.end method

.method public sceneModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 421
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object p1

    aget-object p1, p1, v0

    return-object p1

    .line 424
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 426
    :catch_0
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object p1

    aget-object p1, p1, v0

    return-object p1
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;
    .locals 0

    .line 378
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Ljava/lang/String;
    .locals 0

    .line 348
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Ljava/lang/String;
    .locals 0

    .line 408
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)Ljava/lang/String;
    .locals 0

    .line 438
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toApiCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whiteBalanceFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 452
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object p1

    aget-object p1, p1, v0

    return-object p1

    .line 455
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->toEnumCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 457
    :catch_0
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object p1

    aget-object p1, p1, v0

    return-object p1
.end method
