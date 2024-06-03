.class public Lcom/android/ex/camera2/portability/CameraAgentFactory;
.super Ljava/lang/Object;
.source "CameraAgentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    }
.end annotation


# static fields
.field private static final API_LEVEL_OVERRIDE_API1:Ljava/lang/String; = "1"

.field private static final API_LEVEL_OVERRIDE_API2:Ljava/lang/String; = "2"

.field private static final API_LEVEL_OVERRIDE_DEFAULT:Ljava/lang/String; = "0"

.field private static final API_LEVEL_OVERRIDE_KEY:Ljava/lang/String; = "camera2.portability.force_api"

.field private static final API_LEVEL_OVERRIDE_VALUE:Ljava/lang/String;

.field private static final FIRST_SDK_WITH_API_2:I = 0x15

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static mContext:Landroid/content/Context;

.field private static sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private static sAndroidCamera2AgentClientCount:I

.field private static sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private static sAndroidCameraAgentClientCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamAgntFact"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v0, "camera2.portability.force_api"

    const-string v1, "0"

    .line 52
    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->API_LEVEL_OVERRIDE_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAndroidCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;
    .locals 3

    const-class v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;

    monitor-enter v0

    .line 147
    :try_start_0
    sput-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->mContext:Landroid/content/Context;

    .line 148
    invoke-static {p1}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->validateApiChoice(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object p1

    .line 150
    sget-object v1, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 151
    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-nez p0, :cond_0

    .line 152
    new-instance p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;-><init>()V

    sput-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 153
    sput v2, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    goto :goto_0

    .line 155
    :cond_0
    sget p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    add-int/2addr p0, v2

    sput p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    .line 157
    :goto_0
    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 159
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object p1

    sget-object v1, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-eq p1, v1, :cond_3

    .line 163
    sget-object p1, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-nez p1, :cond_2

    .line 164
    new-instance p1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-direct {p1, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 165
    sput v2, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2AgentClientCount:I

    goto :goto_1

    .line 167
    :cond_2
    sget p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2AgentClientCount:I

    add-int/2addr p0, v2

    sput p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2AgentClientCount:I

    .line 169
    :goto_1
    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 160
    :cond_3
    :try_start_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Camera API_2 unavailable on this device"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    .locals 2

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    return-object v0

    .line 85
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_2:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    return-object v0
.end method

.method public static declared-synchronized recycle(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)V
    .locals 3

    const-class v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;

    monitor-enter v0

    .line 182
    :try_start_0
    invoke-static {p0}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->validateApiChoice(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object p0

    .line 184
    sget-object v1, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    const/4 v2, 0x0

    if-ne p0, v1, :cond_0

    .line 185
    sget p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    add-int/lit8 p0, p0, -0x1

    sput p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgentClientCount:I

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz p0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->recycle()V

    .line 187
    sput-object v2, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object p0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-eq p0, v1, :cond_2

    .line 194
    sget p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2AgentClientCount:I

    add-int/lit8 p0, p0, -0x1

    sput p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2AgentClientCount:I

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;

    if-eqz p0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->recycle()V

    .line 196
    sput-object v2, Lcom/android/ex/camera2/portability/CameraAgentFactory;->sAndroidCamera2Agent:Lcom/android/ex/camera2/portability/CameraAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 191
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Camera API_2 unavailable on this device"

    invoke-direct {p0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static validateApiChoice(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    .locals 3

    .line 93
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne p0, v0, :cond_0

    return-object p0

    .line 95
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    const-string v1, "0"

    .line 97
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 98
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 99
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 101
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "API level overridden by system property: forced to 1"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    return-object p0

    .line 105
    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "API level overridden by system property: forced to 2"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_2:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    if-nez p0, :cond_2

    .line 121
    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v0, "null API level request, so assuming AUTO"

    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    sget-object p0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->AUTO:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 125
    :cond_2
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->AUTO:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    if-ne p0, v0, :cond_3

    .line 126
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->highestSupportedApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object p0

    :cond_3
    return-object p0
.end method
