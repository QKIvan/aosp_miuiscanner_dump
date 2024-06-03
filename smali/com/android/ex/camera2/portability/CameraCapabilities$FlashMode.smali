.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlashMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field public static final enum AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field public static final enum NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field public static final enum OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field public static final enum ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field public static final enum RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

.field public static final enum TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 118
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const-string v1, "NO_FLASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 123
    new-instance v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const-string v3, "AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 128
    new-instance v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const-string v5, "OFF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 133
    new-instance v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const-string v7, "ON"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 138
    new-instance v7, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const-string v9, "TORCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 143
    new-instance v9, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const-string v11, "RED_EYE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 114
    sput-object v11, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 1

    .line 114
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-object p0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 1

    .line 114
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    return-object v0
.end method
