.class synthetic Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;
.super Ljava/lang/Object;
.source "AndroidCamera2Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FlashMode:[I

.field static final synthetic $SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FocusMode:[I

.field static final synthetic $SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

.field static final synthetic $SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$WhiteBalance:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 484
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$WhiteBalance:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$WhiteBalance:[I

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$WhiteBalance:[I

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$WhiteBalance:[I

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$WhiteBalance:[I

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->INCANDESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$WhiteBalance:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->SHADE:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$WhiteBalance:[I

    sget-object v8, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->TWILIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$WhiteBalance:[I

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 406
    :catch_7
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    :try_start_8
    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v8, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ACTION:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v8, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BARCODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v8, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BEACH:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v8, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->CANDLELIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v8, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->FIREWORKS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v9

    aput v5, v8, v9
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v8, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v9

    aput v6, v8, v9
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v8, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->LANDSCAPE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v8

    aput v7, v6, v8
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v7

    const/16 v8, 0x9

    aput v8, v6, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PARTY:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v7

    const/16 v8, 0xa

    aput v8, v6, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v7

    const/16 v8, 0xb

    aput v8, v6, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SNOW:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v7

    const/16 v8, 0xc

    aput v8, v6, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SPORTS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v7

    const/16 v8, 0xd

    aput v8, v6, v7
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->STEADYPHOTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v7

    const/16 v8, 0xe

    aput v8, v6, v7
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SUNSET:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v7

    const/16 v8, 0xf

    aput v8, v6, v7
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->THEATRE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v7

    const/16 v8, 0x10

    aput v8, v6, v7
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    .line 368
    :catch_17
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FocusMode:[I

    :try_start_18
    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FocusMode:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FocusMode:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_VIDEO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FocusMode:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FocusMode:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v6, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FocusMode:[I

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->MACRO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 332
    :catch_1d
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FlashMode:[I

    :try_start_1e
    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FlashMode:[I

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FlashMode:[I

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FlashMode:[I

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FlashMode:[I

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    return-void
.end method
