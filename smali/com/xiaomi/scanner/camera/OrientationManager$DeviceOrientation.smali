.class public final enum Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;
.super Ljava/lang/Enum;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

.field public static final enum CLOCKWISE_0:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

.field public static final enum CLOCKWISE_180:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

.field public static final enum CLOCKWISE_270:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

.field public static final enum CLOCKWISE_90:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;


# instance fields
.field private final mDegrees:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 6
    new-instance v0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    const-string v1, "CLOCKWISE_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    .line 7
    new-instance v1, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    const-string v3, "CLOCKWISE_90"

    const/4 v4, 0x1

    const/16 v5, 0x5a

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    .line 8
    new-instance v3, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    const-string v5, "CLOCKWISE_180"

    const/4 v6, 0x2

    const/16 v7, 0xb4

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    .line 9
    new-instance v5, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    const-string v7, "CLOCKWISE_270"

    const/4 v8, 0x3

    const/16 v9, 0x10e

    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->$VALUES:[Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->mDegrees:I

    return-void
.end method

.method public static from(I)Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    if-eqz p0, :cond_7

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_6

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_5

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_4

    .line 44
    div-int/lit16 v0, p0, 0x168

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x168

    add-int/lit16 v0, v0, 0x168

    add-int/2addr v0, p0

    rem-int/lit16 v0, v0, 0x168

    const/16 p0, 0x13b

    if-gt v0, p0, :cond_3

    const/16 p0, 0x2d

    if-gt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x87

    if-le v0, p0, :cond_1

    if-gt v0, v1, :cond_1

    .line 48
    sget-object p0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p0

    :cond_1
    if-le v0, v1, :cond_2

    const/16 p0, 0xe1

    if-gt v0, p0, :cond_2

    .line 50
    sget-object p0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p0

    .line 52
    :cond_2
    sget-object p0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p0

    .line 46
    :cond_3
    :goto_0
    sget-object p0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p0

    .line 42
    :cond_4
    sget-object p0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p0

    .line 40
    :cond_5
    sget-object p0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p0

    .line 38
    :cond_6
    sget-object p0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p0

    .line 36
    :cond_7
    sget-object p0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p0

    .line 34
    :cond_8
    sget-object p0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;
    .locals 1

    .line 5
    const-class v0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;
    .locals 1

    .line 5
    sget-object v0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->$VALUES:[Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    invoke-virtual {v0}, [Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    return-object v0
.end method


# virtual methods
.method public getDegrees()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->mDegrees:I

    return v0
.end method
