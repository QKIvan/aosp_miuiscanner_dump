.class Lcom/xiaomi/scanner/camera/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final mInterface:Lcom/xiaomi/scanner/camera/exif/ExifInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ExifReader"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifReader;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/scanner/camera/exif/ExifInterface;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifReader;->mInterface:Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/xiaomi/scanner/camera/exif/ExifData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifReader;->mInterface:Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/xiaomi/scanner/camera/exif/ExifInterface;)Lcom/xiaomi/scanner/camera/exif/ExifParser;

    move-result-object p1

    .line 47
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 50
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->next()I

    move-result v1

    :goto_0
    const/4 v2, 0x5

    if-eq v1, v2, :cond_9

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getStripSize()I

    move-result v1

    new-array v2, v1, [B

    .line 81
    invoke-virtual {p1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->read([B)I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getStripIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    .line 84
    :cond_1
    sget-object v1, Lcom/xiaomi/scanner/camera/exif/ExifReader;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "Failed to read the strip bytes"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getCompressedImageSize()I

    move-result v1

    new-array v2, v1, [B

    .line 73
    invoke-virtual {p1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->read([B)I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 74
    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    .line 76
    :cond_3
    sget-object v1, Lcom/xiaomi/scanner/camera/exif/ExifReader;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "Failed to read the compressed thumbnail"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_4
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getTag()Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getDataType()S

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 67
    invoke-virtual {p1, v1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readFullTagValue(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V

    .line 69
    :cond_5
    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getIfd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    goto :goto_1

    .line 57
    :cond_6
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getTag()Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->hasValue()Z

    move-result v2

    if-nez v2, :cond_7

    .line 59
    invoke-virtual {p1, v1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->registerForTagValue(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V

    goto :goto_1

    .line 61
    :cond_7
    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getIfd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    goto :goto_1

    .line 54
    :cond_8
    new-instance v1, Lcom/xiaomi/scanner/camera/exif/IfdData;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getCurrentIfd()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/camera/exif/IfdData;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifData;->addIfdData(Lcom/xiaomi/scanner/camera/exif/IfdData;)V

    .line 88
    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->next()I

    move-result v1

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method
