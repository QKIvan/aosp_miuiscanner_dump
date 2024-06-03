.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 288
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "ZOOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 292
    new-instance v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v3, "VIDEO_SNAPSHOT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 296
    new-instance v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v5, "FOCUS_AREA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 300
    new-instance v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v7, "METERING_AREA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 304
    new-instance v7, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v9, "AUTO_EXPOSURE_LOCK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 308
    new-instance v9, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v11, "AUTO_WHITE_BALANCE_LOCK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 312
    new-instance v11, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v13, "VIDEO_STABILIZATION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 284
    sput-object v13, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;
    .locals 1

    .line 284
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    return-object p0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;
    .locals 1

    .line 284
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    return-object v0
.end method
