.class public final enum Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;
.super Ljava/lang/Enum;
.source "FatalErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/FatalErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

.field public static final enum CAMERA_DISABLED_BY_SECURITY_POLICY:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

.field public static final enum CAMERA_HAL_FAILED:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

.field public static final enum CANNOT_CONNECT_TO_CAMERA:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

.field public static final enum MEDIA_STORAGE_FAILURE:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;


# instance fields
.field private final mDialogMsgId:I

.field private final mFeedbackMsgId:I

.field private final mFinishActivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 18
    new-instance v6, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const-string v1, "CANNOT_CONNECT_TO_CAMERA"

    const/4 v2, 0x0

    const v3, 0x7f1000b9

    const v4, 0x7f1000c4

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    .line 22
    new-instance v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const-string v8, "CAMERA_HAL_FAILED"

    const/4 v9, 0x1

    const v10, 0x7f1000b9

    const v11, 0x7f1000c4

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->CAMERA_HAL_FAILED:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    .line 26
    new-instance v1, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const-string v14, "CAMERA_DISABLED_BY_SECURITY_POLICY"

    const/4 v15, 0x2

    const v16, 0x7f1000b8

    const v17, 0x7f1000c4

    const/16 v18, 0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v1, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->CAMERA_DISABLED_BY_SECURITY_POLICY:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    .line 30
    new-instance v2, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const-string v8, "MEDIA_STORAGE_FAILURE"

    const/4 v9, 0x3

    const v10, 0x7f1000bb

    const v11, 0x7f1000c5

    const/4 v12, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v2, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->MEDIA_STORAGE_FAILURE:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    .line 17
    sput-object v3, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->$VALUES:[Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->mDialogMsgId:I

    .line 50
    iput p4, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->mFeedbackMsgId:I

    .line 51
    iput-boolean p5, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->mFinishActivity:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;
    .locals 1

    .line 17
    const-class v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;
    .locals 1

    .line 17
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->$VALUES:[Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    invoke-virtual {v0}, [Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    return-object v0
.end method


# virtual methods
.method public doesFinishActivity()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->mFinishActivity:Z

    return v0
.end method

.method public getDialogMsgId()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->mDialogMsgId:I

    return v0
.end method

.method public getFeedbackMsgId()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->mFeedbackMsgId:I

    return v0
.end method
