.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FocusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field public static final enum AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field public static final enum CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field public static final enum CONTINUOUS_VIDEO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field public static final enum EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field public static final enum FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field public static final enum INFINITY:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

.field public static final enum MACRO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 77
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 82
    new-instance v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    const-string v3, "CONTINUOUS_PICTURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 87
    new-instance v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    const-string v5, "CONTINUOUS_VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_VIDEO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 92
    new-instance v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    const-string v7, "EXTENDED_DOF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 97
    new-instance v7, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    const-string v9, "FIXED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 103
    new-instance v9, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    const-string v11, "INFINITY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->INFINITY:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 108
    new-instance v11, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    const-string v13, "MACRO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->MACRO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 72
    sput-object v13, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 1

    .line 72
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-object p0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 1

    .line 72
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    return-object v0
.end method
