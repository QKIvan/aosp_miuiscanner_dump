.class public final enum Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;
.super Ljava/lang/Enum;
.source "Handle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

.field public static final enum BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

.field public static final enum BOTTOM_LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

.field public static final enum BOTTOM_RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

.field public static final enum CENTER:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

.field public static final enum LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

.field public static final enum RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

.field public static final enum TOP:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

.field public static final enum TOP_LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

.field public static final enum TOP_RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;


# instance fields
.field private mHelper:Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 28
    new-instance v0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    new-instance v1, Lcom/xiaomi/scanner/cropper/cropwindow/handle/CornerHandleHelper;

    sget-object v2, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    sget-object v3, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/CornerHandleHelper;-><init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V

    const-string v2, "TOP_LEFT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->TOP_LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    .line 29
    new-instance v1, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    new-instance v2, Lcom/xiaomi/scanner/cropper/cropwindow/handle/CornerHandleHelper;

    sget-object v4, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    sget-object v5, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-direct {v2, v4, v5}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/CornerHandleHelper;-><init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V

    const-string v4, "TOP_RIGHT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->TOP_RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    .line 30
    new-instance v2, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    new-instance v4, Lcom/xiaomi/scanner/cropper/cropwindow/handle/CornerHandleHelper;

    sget-object v6, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    sget-object v7, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-direct {v4, v6, v7}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/CornerHandleHelper;-><init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V

    const-string v6, "BOTTOM_LEFT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v2, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->BOTTOM_LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    .line 31
    new-instance v4, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    new-instance v6, Lcom/xiaomi/scanner/cropper/cropwindow/handle/CornerHandleHelper;

    sget-object v8, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    sget-object v9, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-direct {v6, v8, v9}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/CornerHandleHelper;-><init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V

    const-string v8, "BOTTOM_RIGHT"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v4, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->BOTTOM_RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    .line 32
    new-instance v6, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    new-instance v8, Lcom/xiaomi/scanner/cropper/cropwindow/handle/VerticalHandleHelper;

    sget-object v10, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-direct {v8, v10}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/VerticalHandleHelper;-><init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V

    const-string v10, "LEFT"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v6, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    .line 33
    new-instance v8, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    new-instance v10, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HorizontalHandleHelper;

    sget-object v12, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-direct {v10, v12}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HorizontalHandleHelper;-><init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V

    const-string v12, "TOP"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v8, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    .line 34
    new-instance v10, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    new-instance v12, Lcom/xiaomi/scanner/cropper/cropwindow/handle/VerticalHandleHelper;

    sget-object v14, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-direct {v12, v14}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/VerticalHandleHelper;-><init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V

    const-string v14, "RIGHT"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v10, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    .line 35
    new-instance v12, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    new-instance v14, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HorizontalHandleHelper;

    sget-object v15, Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;

    invoke-direct {v14, v15}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HorizontalHandleHelper;-><init>(Lcom/xiaomi/scanner/cropper/cropwindow/edge/Edge;)V

    const-string v15, "BOTTOM"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v12, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    .line 36
    new-instance v14, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    new-instance v15, Lcom/xiaomi/scanner/cropper/cropwindow/handle/CenterHandleHelper;

    invoke-direct {v15}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/CenterHandleHelper;-><init>()V

    const-string v13, "CENTER"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v14, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->CENTER:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    const/16 v13, 0x9

    new-array v13, v13, [Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v9

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    aput-object v14, v13, v11

    .line 26
    sput-object v13, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->$VALUES:[Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->mHelper:Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;
    .locals 1

    .line 26
    const-class v0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->$VALUES:[Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    invoke-virtual {v0}, [Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    return-object v0
.end method


# virtual methods
.method public updateCropWindow(FFFLandroid/graphics/RectF;F)V
    .locals 6

    .line 64
    iget-object v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->mHelper:Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->updateCropWindow(FFFLandroid/graphics/RectF;F)V

    return-void
.end method

.method public updateCropWindow(FFLandroid/graphics/RectF;F)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->mHelper:Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/HandleHelper;->updateCropWindow(FFLandroid/graphics/RectF;F)V

    return-void
.end method
