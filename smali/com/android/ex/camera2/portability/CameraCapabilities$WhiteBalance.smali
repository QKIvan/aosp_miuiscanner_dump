.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WhiteBalance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

.field public static final enum AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

.field public static final enum CLOUDY_DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

.field public static final enum DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

.field public static final enum FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

.field public static final enum INCANDESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

.field public static final enum SHADE:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

.field public static final enum TWILIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

.field public static final enum WARM_FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 250
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 254
    new-instance v1, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    const-string v3, "CLOUDY_DAYLIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 258
    new-instance v3, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    const-string v5, "DAYLIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 262
    new-instance v5, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    const-string v7, "FLUORESCENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 266
    new-instance v7, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    const-string v9, "INCANDESCENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->INCANDESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 270
    new-instance v9, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    const-string v11, "SHADE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->SHADE:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 274
    new-instance v11, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    const-string v13, "TWILIGHT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->TWILIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 278
    new-instance v13, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    const-string v15, "WARM_FLUORESCENT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 246
    sput-object v15, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
    .locals 1

    .line 246
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-object p0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
    .locals 1

    .line 246
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    return-object v0
.end method
