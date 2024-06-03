.class public Lcom/xiaomi/scanner/camera/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$GpsDifferential;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$GpsTrackRef;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$GpsSpeedRef;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$GpsMeasureMode;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$GpsStatus;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$GpsAltitudeRef;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$GpsLongitudeRef;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$GpsLatitudeRef;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$SubjectDistance;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$Sharpness;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$Saturation;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$Contrast;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$GainControl;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$SceneType;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$FileSource;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$SensingMethod;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$LightSource;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$ComponentsConfiguration;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$SceneCapture;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$WhiteBalance;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$ExposureMode;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$ColorSpace;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$Flash;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$MeteringMode;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$ExposureProgram;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$PlanarConfiguration;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$PhotometricInterpretation;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$ResolutionUnit;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$Compression;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$YCbCrPositioning;,
        Lcom/xiaomi/scanner/camera/exif/ExifInterface$Orientation;
    }
.end annotation


# static fields
.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field public static final EXIF_VERSION:Ljava/lang/String; = "0220"

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field public static final IFD_NULL:I = -0x1

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_NULL:I = -0x1

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x0

    const/16 v1, 0x100

    .line 78
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/16 v1, 0x101

    .line 80
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/16 v1, 0x102

    .line 82
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/16 v1, 0x103

    .line 84
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_COMPRESSION:I

    const/16 v1, 0x106

    .line 86
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/16 v1, 0x10e

    .line 88
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/16 v1, 0x10f

    .line 90
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_MAKE:I

    const/16 v1, 0x110

    .line 92
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_MODEL:I

    const/16 v1, 0x111

    .line 94
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/16 v2, 0x112

    .line 96
    invoke-static {v0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    const/16 v2, 0x115

    .line 98
    invoke-static {v0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/16 v2, 0x116

    .line 100
    invoke-static {v0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/16 v2, 0x117

    .line 102
    invoke-static {v0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/16 v3, 0x11a

    .line 104
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/16 v3, 0x11b

    .line 106
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    const/16 v3, 0x11c

    .line 108
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/16 v3, 0x128

    .line 110
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/16 v3, 0x12d

    .line 112
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/16 v3, 0x131

    .line 114
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    const/16 v3, 0x132

    .line 116
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    const/16 v3, 0x13b

    .line 118
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_ARTIST:I

    const/16 v3, 0x13e

    .line 120
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_WHITE_POINT:I

    const/16 v3, 0x13f

    .line 122
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/16 v3, 0x211

    .line 124
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/16 v3, 0x212

    .line 126
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/16 v3, 0x213

    .line 128
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/16 v3, 0x214

    .line 130
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/16 v3, -0x7d68

    .line 132
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_COPYRIGHT:I

    const/16 v3, -0x7897

    .line 134
    invoke-static {v0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/16 v4, -0x77db

    .line 136
    invoke-static {v0, v4}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    const/4 v5, 0x1

    const/16 v6, 0x201

    .line 139
    invoke-static {v5, v6}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v6

    sput v6, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/16 v7, 0x202

    .line 141
    invoke-static {v5, v7}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v7

    sput v7, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/4 v8, 0x2

    const/16 v9, -0x7d66

    .line 144
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/16 v9, -0x7d63

    .line 146
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_F_NUMBER:I

    const/16 v9, -0x77de

    .line 148
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/16 v9, -0x77dc

    .line 150
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/16 v9, -0x77d9

    .line 152
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/16 v9, -0x77d8

    .line 154
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_OECF:I

    const/16 v9, -0x7000

    .line 156
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/16 v9, -0x6ffd

    .line 158
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/16 v9, -0x6ffc

    .line 160
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/16 v9, -0x6eff

    .line 162
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/16 v9, -0x6efe

    .line 164
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/16 v9, -0x6dff

    .line 166
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/16 v9, -0x6dfe

    .line 168
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const/16 v9, -0x6dfd

    .line 170
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/16 v9, -0x6dfc

    .line 172
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/16 v9, -0x6dfb

    .line 174
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/16 v9, -0x6dfa

    .line 176
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/16 v9, -0x6df9

    .line 178
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v9, -0x6df8

    .line 180
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/16 v9, -0x6df7

    .line 182
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FLASH:I

    const/16 v9, -0x6df6

    .line 184
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/16 v9, -0x6dec

    .line 186
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    const/16 v9, -0x6d84

    .line 188
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_MAKER_NOTE:I

    const/16 v9, -0x6d7a

    .line 190
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/16 v9, -0x6d70

    .line 192
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/16 v9, -0x6d6f

    .line 194
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/16 v9, -0x6d6e

    .line 196
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/16 v9, -0x6000

    .line 198
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/16 v9, -0x5fff

    .line 200
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/16 v9, -0x5ffe

    .line 202
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/16 v9, -0x5ffd

    .line 204
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/16 v9, -0x5ffc

    .line 206
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/16 v9, -0x5ffb

    .line 208
    invoke-static {v8, v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/16 v10, -0x5df5

    .line 210
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    const/16 v10, -0x5df4

    .line 212
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/16 v10, -0x5df2

    .line 214
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/16 v10, -0x5df1

    .line 216
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/16 v10, -0x5df0

    .line 218
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/16 v10, -0x5dec

    .line 220
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/16 v10, -0x5deb

    .line 222
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/16 v10, -0x5de9

    .line 224
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SENSING_METHOD:I

    const/16 v10, -0x5d00

    .line 226
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const/16 v10, -0x5cff

    .line 228
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SCENE_TYPE:I

    const/16 v10, -0x5cfe

    .line 230
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_CFA_PATTERN:I

    const/16 v10, -0x5bff

    .line 232
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/16 v10, -0x5bfe

    .line 234
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/16 v10, -0x5bfd

    .line 236
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v10, -0x5bfc

    .line 238
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/16 v10, -0x5bfb

    .line 240
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/16 v10, -0x5bfa

    .line 242
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/16 v10, -0x5bf9

    .line 244
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    const/16 v10, -0x5bf8

    .line 246
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_CONTRAST:I

    const/16 v10, -0x5bf7

    .line 248
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SATURATION:I

    const/16 v10, -0x5bf6

    .line 250
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SHARPNESS:I

    const/16 v10, -0x5bf5

    .line 252
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/16 v10, -0x5bf4

    .line 254
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/16 v10, -0x5be0

    .line 256
    invoke-static {v8, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/4 v10, 0x4

    .line 259
    invoke-static {v10, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 261
    invoke-static {v10, v5}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 263
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/4 v0, 0x3

    .line 265
    invoke-static {v10, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 267
    invoke-static {v10, v10}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/4 v8, 0x5

    .line 269
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/4 v8, 0x6

    .line 271
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/4 v8, 0x7

    .line 273
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/16 v8, 0x8

    .line 275
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/16 v8, 0x9

    .line 277
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_STATUS:I

    const/16 v8, 0xa

    .line 279
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/16 v8, 0xb

    .line 281
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DOP:I

    const/16 v8, 0xc

    .line 283
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/16 v8, 0xd

    .line 285
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_SPEED:I

    const/16 v8, 0xe

    .line 287
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/16 v8, 0xf

    .line 289
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_TRACK:I

    const/16 v8, 0x10

    .line 291
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/16 v8, 0x11

    .line 293
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/16 v8, 0x12

    .line 295
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/16 v8, 0x13

    .line 297
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/16 v8, 0x14

    .line 299
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/16 v8, 0x15

    .line 301
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    const/16 v8, 0x16

    .line 303
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    const/16 v8, 0x17

    .line 305
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/16 v8, 0x18

    .line 307
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/16 v8, 0x19

    .line 309
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/16 v8, 0x1a

    .line 311
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/16 v8, 0x1b

    .line 313
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/16 v8, 0x1c

    .line 315
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/16 v8, 0x1d

    .line 317
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/16 v8, 0x1e

    .line 319
    invoke-static {v10, v8}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 322
    invoke-static {v0, v5}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 323
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "ExifInterface"

    invoke-direct {v0, v5}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 329
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 331
    invoke-static {v4}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {v6}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {v9}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    .line 343
    invoke-static {v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {v7}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {v2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 715
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifData;

    sget-object v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    .line 1929
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 1930
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    .line 1932
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/4 v2, 0x0

    .line 2042
    iput-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 718
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2035
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static convertLatOrLongToDouble([Lcom/xiaomi/scanner/camera/exif/Rational;Ljava/lang/String;)D
    .locals 8

    const/4 v0, 0x0

    .line 1891
    :try_start_0
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/Rational;->toDouble()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 1892
    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/xiaomi/scanner/camera/exif/Rational;->toDouble()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 1893
    aget-object p0, p0, v4

    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/Rational;->toDouble()D

    move-result-wide v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v4, v2

    add-double/2addr v0, v4

    const-string p0, "S"

    .line 1895
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "W"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    neg-double p0, v0

    return-wide p0

    .line 1900
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static defineTag(IS)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method private doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2025
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2027
    invoke-virtual {p2, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 2028
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method protected static getAllowedIfdsFromInfo(I)[I
    .locals 6

    .line 2331
    invoke-static {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result p0

    .line 2332
    invoke-static {}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 2333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    shr-int v4, p0, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 2337
    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2340
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 2343
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 2345
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v3, v2, 0x1

    .line 2346
    aput v1, p0, v2

    move v2, v3

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 2363
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 2367
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getIfds()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 2369
    array-length v4, p0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p0, v5

    .line 2370
    aget v7, v1, v2

    if-ne v7, v6, :cond_1

    const/4 v4, 0x1

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_3
    return v0
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 1

    .line 1841
    rem-int/lit16 p0, p0, 0x168

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x168

    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/16 p0, 0x8

    return p0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0
.end method

.method public static getTrueIfd(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static getTrueTagKey(I)S
    .locals 0

    int-to-short p0, p0

    return p0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private initTagInfo()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 2060
    fill-array-data v2, :array_0

    .line 2063
    invoke-static {v2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    .line 2064
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v5, 0x20000

    or-int v6, v2, v5

    or-int/lit8 v7, v6, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2066
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v9, 0x40000

    or-int v10, v2, v9

    or-int/lit8 v11, v10, 0x1

    invoke-virtual {v3, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2068
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v3, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2070
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v12, 0x30000

    or-int v13, v2, v12

    or-int/lit8 v14, v13, 0x3

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2072
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_COMPRESSION:I

    or-int/lit8 v14, v13, 0x1

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2074
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2076
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2078
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2080
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2082
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    or-int/lit8 v15, v13, 0x2

    invoke-virtual {v3, v8, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2084
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2086
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v15, 0x50000

    or-int/2addr v2, v15

    or-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2088
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    invoke-virtual {v3, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2090
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    invoke-virtual {v3, v5, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2092
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/4 v8, 0x0

    or-int/2addr v10, v8

    invoke-virtual {v3, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2094
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    invoke-virtual {v3, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2096
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v3, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2098
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    or-int/lit16 v10, v13, 0x300

    invoke-virtual {v3, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2100
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_WHITE_POINT:I

    or-int/lit8 v10, v2, 0x2

    invoke-virtual {v3, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2102
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    or-int/lit8 v10, v2, 0x6

    invoke-virtual {v3, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2104
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/4 v13, 0x3

    or-int/2addr v2, v13

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2106
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2108
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    or-int/lit8 v5, v6, 0x14

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2110
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2112
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2114
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2116
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2118
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_ARTIST:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2120
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_COPYRIGHT:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2122
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2124
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v2, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v2, v3, v8

    .line 2130
    invoke-static {v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 2131
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    or-int/2addr v3, v9

    or-int/2addr v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2133
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    new-array v3, v2, [I

    aput v1, v3, v8

    .line 2139
    invoke-static {v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 2140
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v6, 0x70000

    or-int v7, v3, v6

    or-int/lit8 v10, v7, 0x4

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2142
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2144
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_COLOR_SPACE:I

    or-int v11, v3, v12

    or-int/lit8 v14, v11, 0x1

    invoke-virtual {v4, v5, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2146
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2148
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    or-int v10, v3, v15

    or-int/2addr v10, v2

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2150
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    or-int/2addr v9, v3

    or-int/2addr v9, v2

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2152
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2154
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_MAKER_NOTE:I

    or-int/lit8 v12, v7, 0x0

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2156
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2158
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/high16 v16, 0x20000

    or-int v17, v3, v16

    or-int/lit8 v6, v17, 0xd

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2160
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    or-int/lit8 v6, v17, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2162
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2164
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    or-int/lit8 v6, v17, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2166
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2168
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2170
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    or-int/lit8 v15, v17, 0x21

    invoke-virtual {v4, v5, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2172
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2174
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2176
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    invoke-virtual {v4, v5, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2178
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2180
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    or-int/lit8 v6, v11, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2182
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_OECF:I

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2184
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v15, 0xa0000

    or-int/2addr v3, v15

    or-int/2addr v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2186
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2188
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2190
    iget-object v4, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2192
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2194
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2196
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2198
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2200
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2202
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2204
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2206
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2208
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    invoke-virtual {v3, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2210
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2212
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2214
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2216
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    or-int/2addr v1, v11

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2218
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2220
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SENSING_METHOD:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2222
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FILE_SOURCE:I

    or-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2224
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SCENE_TYPE:I

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2226
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_CFA_PATTERN:I

    invoke-virtual {v1, v3, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2228
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2230
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2232
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2234
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2236
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2238
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2240
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2242
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_CONTRAST:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2244
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SATURATION:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2246
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SHARPNESS:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2248
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    invoke-virtual {v1, v3, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2250
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2252
    iget-object v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v1, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    new-array v1, v2, [I

    const/4 v3, 0x4

    aput v3, v1, v8

    .line 2258
    invoke-static {v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 2259
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v5, 0x10000

    or-int/2addr v5, v1

    or-int/lit8 v6, v5, 0x4

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2261
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v6, 0x20000

    or-int v7, v1, v6

    or-int/lit8 v6, v7, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2263
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2265
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    or-int v9, v1, v15

    or-int/2addr v9, v13

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2267
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2269
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    or-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2271
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/high16 v5, 0x50000

    or-int/2addr v5, v1

    or-int/lit8 v9, v5, 0x1

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2273
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    or-int/2addr v5, v13

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2275
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    or-int/lit8 v5, v7, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2277
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_STATUS:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2279
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2281
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DOP:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2283
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2285
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_SPEED:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2287
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2289
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_TRACK:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2291
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2293
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2295
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2297
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2299
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2301
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2303
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2305
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2307
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2309
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v5, 0x70000

    or-int/2addr v5, v1

    or-int/2addr v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2311
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2313
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    or-int/lit8 v5, v7, 0xb

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2315
    iget-object v3, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v5, 0x30000

    or-int/2addr v1, v5

    or-int/lit8 v1, v1, 0xb

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-array v1, v2, [I

    aput v13, v1, v8

    .line 2321
    invoke-static {v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 2322
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v4, 0x20000

    or-int/2addr v1, v4

    or-int/2addr v1, v8

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5

    .line 2352
    invoke-static {}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 2353
    invoke-static {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2354
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2355
    aget v3, v0, v2

    if-ne p1, v3, :cond_0

    shr-int v3, p0, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected static isOffsetTag(S)Z
    .locals 1

    .line 1463
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static toExifLatLong(D)[Lcom/xiaomi/scanner/camera/exif/Rational;
    .locals 7

    .line 2012
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v0, p0

    int-to-double v1, v0

    .line 2014
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v1

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    mul-double p0, p0, v1

    double-to-int v1, p0

    int-to-double v2, v1

    .line 2016
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v2

    const-wide v2, 0x40b7700000000000L    # 6000.0

    mul-double p0, p0, v2

    double-to-int p0, p0

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/xiaomi/scanner/camera/exif/Rational;

    .line 2018
    new-instance v2, Lcom/xiaomi/scanner/camera/exif/Rational;

    int-to-long v3, v0

    const-wide/16 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/xiaomi/scanner/camera/exif/Rational;-><init>(JJ)V

    const/4 v0, 0x0

    aput-object v2, p1, v0

    new-instance v0, Lcom/xiaomi/scanner/camera/exif/Rational;

    int-to-long v1, v1

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/xiaomi/scanner/camera/exif/Rational;-><init>(JJ)V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    new-instance v0, Lcom/xiaomi/scanner/camera/exif/Rational;

    int-to-long v1, p0

    const-wide/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/scanner/camera/exif/Rational;-><init>(JJ)V

    const/4 p0, 0x2

    aput-object v0, p1, p0

    return-object p1
.end method


# virtual methods
.method public addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .locals 2

    .line 1945
    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1947
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1948
    iget-object p4, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 1952
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    const/4 p1, 0x1

    return p1
.end method

.method public addGpsDateTimeStampTag(J)Z
    .locals 8

    .line 1992
    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1996
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    .line 1997
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1998
    sget p1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 p2, 0x3

    new-array p2, p2, [Lcom/xiaomi/scanner/camera/exif/Rational;

    new-instance v0, Lcom/xiaomi/scanner/camera/exif/Rational;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    .line 1999
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/xiaomi/scanner/camera/exif/Rational;-><init>(JJ)V

    aput-object v0, p2, v1

    new-instance v0, Lcom/xiaomi/scanner/camera/exif/Rational;

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    .line 2000
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/xiaomi/scanner/camera/exif/Rational;-><init>(JJ)V

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const/4 v0, 0x2

    new-instance v3, Lcom/xiaomi/scanner/camera/exif/Rational;

    iget-object v6, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xd

    .line 2001
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/xiaomi/scanner/camera/exif/Rational;-><init>(JJ)V

    aput-object v3, p2, v0

    .line 1998
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 2006
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    return v2
.end method

.method public addGpsTags(DD)Z
    .locals 6

    .line 1967
    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->toExifLatLong(D)[Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v0

    .line 1968
    sget v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->toExifLatLong(D)[Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v1

    .line 1969
    sget v2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const-wide/16 v3, 0x0

    cmpl-double v5, p1, v3

    if-ltz v5, :cond_0

    const-string p1, "N"

    goto :goto_0

    :cond_0
    const-string p1, "S"

    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    .line 1972
    sget p2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double v2, p3, v3

    if-ltz v2, :cond_1

    const-string p3, "E"

    goto :goto_1

    :cond_1
    const-string p3, "W"

    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 1978
    :cond_2
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    .line 1979
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    .line 1980
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    .line 1981
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 8

    .line 1478
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 1482
    :cond_0
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v4

    .line 1483
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 1485
    :goto_0
    invoke-static {v0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 1488
    :cond_2
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;

    invoke-static {p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    move-object v2, v0

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/scanner/camera/exif/ExifTag;-><init>(SSIIZ)V

    .line 1489
    invoke-virtual {v0, p3}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 1

    .line 1503
    invoke-static {p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 1504
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    return-object p1
.end method

.method protected buildUninitializedTag(I)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 7

    .line 1508
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1512
    :cond_0
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1513
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1515
    :goto_0
    invoke-static {p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueIfd(I)I

    move-result v4

    .line 1516
    new-instance v6, Lcom/xiaomi/scanner/camera/exif/ExifTag;

    invoke-static {p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/camera/exif/ExifTag;-><init>(SSIIZ)V

    return-object v6
.end method

.method public clearExif()V
    .locals 2

    .line 787
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifData;

    sget-object v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    return-void
.end method

.method public deleteTag(I)V
    .locals 1

    .line 1595
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1596
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->deleteTag(II)V

    return-void
.end method

.method public deleteTag(II)V
    .locals 1

    .line 1586
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-static {p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifData;->removeTag(SI)V

    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1113
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1080
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    .line 1083
    new-instance v1, Lcom/xiaomi/scanner/camera/exif/ExifData;

    sget-object v2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    const/4 v1, 0x0

    .line 1087
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1088
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1089
    invoke-direct {p0, v2, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1090
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1091
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->readExif([B)V

    .line 1092
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    .line 1093
    invoke-virtual {p0, v1, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->writeExif([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1097
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 1095
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1097
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    .line 1098
    throw p1

    :cond_0
    :goto_1
    return-void
.end method

.method public getActualTagCount(II)I
    .locals 0

    .line 1414
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTag(II)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1418
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result p1

    return p1
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1122
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefinedTagCount(I)I
    .locals 1

    .line 1397
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1401
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result p1

    return p1
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 1

    .line 1429
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1433
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueIfd(I)I

    move-result p1

    return p1
.end method

.method public getDefinedTagType(I)S
    .locals 1

    .line 1444
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1448
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result p1

    return p1
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    if-eqz p1, :cond_0

    .line 951
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/xiaomi/scanner/camera/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/xiaomi/scanner/camera/exif/ExifInterface;)V

    .line 952
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifOutputStream;->setExifData(Lcom/xiaomi/scanner/camera/exif/ExifData;)V

    return-object v0

    .line 949
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 974
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 976
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 977
    throw p1

    .line 970
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLatLongAsDoubles()[D
    .locals 6

    .line 1913
    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagRationalValues(I)[Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object v0

    .line 1914
    sget v1, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1915
    sget v2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagRationalValues(I)[Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object v2

    .line 1916
    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 1917
    array-length v4, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    array-length v4, v2

    if-ge v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    .line 1922
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/xiaomi/scanner/camera/exif/Rational;Ljava/lang/String;)D

    move-result-wide v0

    aput-wide v0, v4, v5

    const/4 v0, 0x1

    .line 1923
    invoke-static {v2, v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/xiaomi/scanner/camera/exif/Rational;Ljava/lang/String;)D

    move-result-wide v1

    aput-wide v1, v4, v0

    return-object v4

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag(I)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 1

    .line 1171
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1172
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTag(II)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    return-object p1
.end method

.method public getTag(II)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 1

    .line 1157
    invoke-static {p2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-static {p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getTag(SI)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    return-object p1
.end method

.method public getTagByteValue(I)Ljava/lang/Byte;
    .locals 1

    .line 1275
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1276
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagByteValue(II)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public getTagByteValue(II)Ljava/lang/Byte;
    .locals 1

    .line 1264
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1265
    array-length p2, p1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1268
    :cond_0
    new-instance p2, Ljava/lang/Byte;

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    invoke-direct {p2, p1}, Ljava/lang/Byte;-><init>(B)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagByteValues(I)[B
    .locals 1

    .line 1351
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1352
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object p1

    return-object p1
.end method

.method public getTagByteValues(II)[B
    .locals 0

    .line 1340
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTag(II)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1344
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsBytes()[B

    move-result-object p1

    return-object p1
.end method

.method protected getTagDefinition(SI)I
    .locals 1

    .line 1657
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method protected getTagDefinitionForTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)I
    .locals 3

    .line 1679
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getDataType()S

    move-result v0

    .line 1680
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    .line 1681
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getIfd()I

    move-result v2

    .line 1682
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getTagId()S

    move-result p1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagDefinitionForTag(SSII)I

    move-result p1

    return p1
.end method

.method protected getTagDefinitionForTag(SSII)I
    .locals 14

    .line 1686
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1690
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1692
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    aget v6, v0, v5

    .line 1693
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 1694
    invoke-static {v7}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v8

    .line 1695
    invoke-static {v7}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v9

    .line 1696
    invoke-static {v7}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getAllowedIfdsFromInfo(I)[I

    move-result-object v7

    .line 1698
    array-length v10, v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_2

    aget v12, v7, v11

    move/from16 v13, p4

    if-ne v12, v13, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    move/from16 v13, p4

    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_4

    move/from16 v7, p2

    if-ne v7, v8, :cond_5

    move/from16 v8, p3

    if-eq v8, v9, :cond_3

    if-nez v9, :cond_6

    :cond_3
    move v1, v6

    goto :goto_3

    :cond_4
    move/from16 v7, p2

    :cond_5
    move/from16 v8, p3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    return v1
.end method

.method protected getTagDefinitionsForTagId(S)[I
    .locals 9

    .line 1661
    invoke-static {}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 1662
    array-length v1, v0

    new-array v1, v1, [I

    .line 1664
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1665
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget v7, v0, v5

    .line 1666
    invoke-static {v7, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v7

    .line 1667
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v8, v6, 0x1

    .line 1668
    aput v7, v1, v6

    move v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 1675
    :cond_2
    invoke-static {v1, v4, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p1

    return-object p1
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2046
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2047
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->initTagInfo()V

    .line 2049
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 1

    .line 1256
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1257
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 1

    .line 1245
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1246
    array-length p2, p1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1249
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagIntValues(I)[I
    .locals 1

    .line 1332
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1333
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object p1

    return-object p1
.end method

.method public getTagIntValues(II)[I
    .locals 0

    .line 1321
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTag(II)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1325
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsInts()[I

    move-result-object p1

    return-object p1
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .locals 1

    .line 1237
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1238
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagLongValue(II)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getTagLongValue(II)Ljava/lang/Long;
    .locals 2

    .line 1226
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1227
    array-length p2, p1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1230
    :cond_0
    new-instance p2, Ljava/lang/Long;

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-direct {p2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagLongValues(I)[J
    .locals 1

    .line 1313
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1314
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object p1

    return-object p1
.end method

.method public getTagLongValues(II)[J
    .locals 0

    .line 1302
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTag(II)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1306
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsLongs()[J

    move-result-object p1

    return-object p1
.end method

.method public getTagRationalValue(I)Lcom/xiaomi/scanner/camera/exif/Rational;
    .locals 1

    .line 1294
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1295
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagRationalValue(II)Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object p1

    return-object p1
.end method

.method public getTagRationalValue(II)Lcom/xiaomi/scanner/camera/exif/Rational;
    .locals 1

    .line 1283
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagRationalValues(II)[Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1284
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1287
    :cond_0
    new-instance p2, Lcom/xiaomi/scanner/camera/exif/Rational;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {p2, p1}, Lcom/xiaomi/scanner/camera/exif/Rational;-><init>(Lcom/xiaomi/scanner/camera/exif/Rational;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagRationalValues(I)[Lcom/xiaomi/scanner/camera/exif/Rational;
    .locals 1

    .line 1370
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1371
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagRationalValues(II)[Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object p1

    return-object p1
.end method

.method public getTagRationalValues(II)[Lcom/xiaomi/scanner/camera/exif/Rational;
    .locals 0

    .line 1359
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTag(II)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1363
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsRationals()[Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object p1

    return-object p1
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1218
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1219
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 0

    .line 1207
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTag(II)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1211
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .locals 1

    .line 1194
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1195
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagValue(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .locals 0

    .line 1181
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTag(II)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1182
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTagsForIfdId(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1148
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getAllTagsForIfd(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTagsForTagId(S)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getAllTagsForTagId(S)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnail()[B
    .locals 1

    .line 1766
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1735
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 1737
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1738
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->hasUncompressedStrip()Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .line 1752
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->hasUncompressedStrip()Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserComment()Ljava/lang/String;
    .locals 1

    .line 1832
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .line 1785
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public isTagCountDefined(I)Z
    .locals 1

    .line 1381
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1386
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isThumbnailCompressed()Z
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 745
    :try_start_0
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifReader;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/exif/ExifReader;-><init>(Lcom/xiaomi/scanner/camera/exif/ExifInterface;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/xiaomi/scanner/camera/exif/ExifData;

    move-result-object p1
    :try_end_0
    .catch Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    return-void

    :catch_0
    move-exception p1

    .line 747
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid exif format : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 766
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 767
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 769
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    .line 762
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readExif([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    return-void
.end method

.method public removeCompressedThumbnail()V
    .locals 2

    .line 1822
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifData;->setCompressedThumbnail([B)V

    return-void
.end method

.method public removeTagDefinition(I)V
    .locals 1

    .line 1719
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public resetTagDefinitions()V
    .locals 1

    const/4 v0, 0x0

    .line 1726
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-void
.end method

.method public rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1002
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1003
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1008
    :try_start_1
    invoke-static {p1, p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/xiaomi/scanner/camera/exif/ExifInterface;)Lcom/xiaomi/scanner/camera/exif/ExifParser;

    move-result-object v2
    :try_end_1
    .catch Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1012
    :try_start_2
    invoke-virtual {v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getOffsetToExifEndFromSOF()I

    move-result v2

    int-to-long v7, v2

    .line 1015
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1019
    :try_start_3
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {p1, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-ltz v3, :cond_0

    .line 1026
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    .line 1030
    invoke-virtual {p0, v1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1032
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1034
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    return p2

    .line 1022
    :cond_0
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Filesize changed during operation"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1010
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid exif format : "

    invoke-direct {v0, v1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception p1

    .line 1032
    :goto_0
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1033
    throw p1
.end method

.method public rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1054
    :try_start_0
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifModifier;

    invoke-direct {v0, p1, p0}, Lcom/xiaomi/scanner/camera/exif/ExifModifier;-><init>(Ljava/nio/ByteBuffer;Lcom/xiaomi/scanner/camera/exif/ExifInterface;)V

    .line 1055
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/scanner/camera/exif/ExifTag;

    .line 1056
    invoke-virtual {v0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->modifyTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V

    goto :goto_0

    .line 1058
    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifModifier;->commit()Z

    move-result p1
    :try_end_0
    .catch Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1060
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid exif format : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public setCompressedThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 1811
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1812
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1815
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->setCompressedThumbnail([B)Z

    move-result p1

    return p1
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1

    .line 1798
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->clearThumbnailAndStrips()V

    .line 1799
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifData;->setCompressedThumbnail([B)V

    const/4 p1, 0x1

    return p1
.end method

.method public setExif(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .line 779
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->clearExif()V

    .line 780
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    return-void
.end method

.method public setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 1

    .line 1563
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->mData:Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifData;->addTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    return-object p1
.end method

.method public setTagDefinition(SISS[I)I
    .locals 8

    .line 1615
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 1618
    :cond_0
    invoke-static {p3}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->isValidType(S)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1619
    invoke-static {p2, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 1623
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object p1

    .line 1624
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1627
    array-length v3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget v7, p5, v5

    if-ne p2, v7, :cond_2

    const/4 v6, 0x1

    .line 1631
    :cond_2
    invoke-static {v7}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v7

    if-nez v7, :cond_3

    return v1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    return v1

    .line 1639
    :cond_5
    invoke-static {p5}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result p2

    if-eqz p1, :cond_7

    .line 1642
    array-length p5, p1

    :goto_1
    if-ge v4, p5, :cond_7

    aget v3, p1, v4

    .line 1643
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1644
    invoke-static {v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v3

    and-int/2addr v3, p2

    if-eqz v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1650
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p1

    shl-int/lit8 p2, p2, 0x18

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p2, p3

    or-int/2addr p2, p4

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    return v0

    :cond_8
    return v1
.end method

.method public setTagValue(IILjava/lang/Object;)Z
    .locals 0

    .line 1532
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTag(II)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1536
    :cond_0
    invoke-virtual {p1, p3}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .locals 1

    .line 1549
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1550
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->setTagValue(IILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .line 1574
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;

    .line 1575
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 821
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    .line 822
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 823
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 819
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 883
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p2

    .line 884
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 885
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 886
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-void

    .line 879
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 839
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    .line 840
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 841
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 837
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 906
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p2

    .line 907
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 908
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 910
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-void

    .line 902
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 930
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 933
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    .line 926
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 803
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    const/4 v0, 0x0

    .line 804
    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 805
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 801
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeExif([BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 860
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p2

    const/4 v0, 0x0

    .line 861
    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 862
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 863
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-void

    .line 857
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
