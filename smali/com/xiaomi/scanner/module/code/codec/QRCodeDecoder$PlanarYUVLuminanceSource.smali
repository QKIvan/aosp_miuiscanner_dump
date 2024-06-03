.class Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "QRCodeDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlanarYUVLuminanceSource"
.end annotation


# instance fields
.field private final mYuvImage:Landroid/graphics/YuvImage;


# direct methods
.method public constructor <init>(Landroid/graphics/YuvImage;)V
    .locals 2

    .line 128
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 129
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;->mYuvImage:Landroid/graphics/YuvImage;

    return-void
.end method


# virtual methods
.method public getMatrix()[B
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;->mYuvImage:Landroid/graphics/YuvImage;

    invoke-virtual {v0}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v0

    return-object v0
.end method

.method public getRow(I[B)[B
    .locals 3

    if-ltz p1, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_0

    .line 139
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 140
    :cond_0
    new-array p2, v0, [B

    :cond_1
    mul-int p1, p1, v0

    .line 143
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;->mYuvImage:Landroid/graphics/YuvImage;

    invoke-virtual {v1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 135
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested row is outside the image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
