.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SceneMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum ACTION:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum BARCODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum BEACH:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum CANDLELIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum FIREWORKS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum LANDSCAPE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum NIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum NIGHT_PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum PARTY:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum SNOW:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum SPORTS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum STEADYPHOTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum SUNSET:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field public static final enum THEATRE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 153
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v1, "NO_SCENE_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 158
    new-instance v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v3, "AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 163
    new-instance v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v5, "ACTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ACTION:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 168
    new-instance v5, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v7, "BARCODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BARCODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 173
    new-instance v7, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v9, "BEACH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BEACH:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 178
    new-instance v9, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v11, "CANDLELIGHT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->CANDLELIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 183
    new-instance v11, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v13, "FIREWORKS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->FIREWORKS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 189
    new-instance v13, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v15, "HDR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 194
    new-instance v15, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v14, "LANDSCAPE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->LANDSCAPE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 199
    new-instance v14, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v12, "NIGHT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 205
    new-instance v12, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v10, "NIGHT_PORTRAIT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NIGHT_PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 210
    new-instance v10, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v8, "PARTY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PARTY:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 215
    new-instance v8, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v6, "PORTRAIT"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 220
    new-instance v6, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v4, "SNOW"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SNOW:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 225
    new-instance v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v2, "SPORTS"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SPORTS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 230
    new-instance v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v6, "STEADYPHOTO"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->STEADYPHOTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 235
    new-instance v6, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v4, "SUNSET"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SUNSET:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 240
    new-instance v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const-string v2, "THEATRE"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->THEATRE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    aput-object v4, v2, v6

    .line 149
    sput-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 1

    .line 149
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object p0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 1

    .line 149
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object v0
.end method
