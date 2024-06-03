.class public final enum Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
.super Ljava/lang/Enum;
.source "CameraAgentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraAgentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraApi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

.field public static final enum API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

.field public static final enum API_2:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

.field public static final enum AUTO:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 67
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->AUTO:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 72
    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    const-string v3, "API_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 77
    new-instance v3, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    const-string v5, "API_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_2:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 63
    sput-object v5, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->$VALUES:[Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    .locals 1

    .line 63
    const-class v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    return-object p0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->$VALUES:[Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    return-object v0
.end method
