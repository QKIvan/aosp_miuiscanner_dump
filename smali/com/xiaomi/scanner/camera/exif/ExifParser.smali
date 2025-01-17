.class Lcom/xiaomi/scanner/camera/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/camera/exif/ExifParser$ExifTagEvent;,
        Lcom/xiaomi/scanner/camera/exif/ExifParser$IfdEvent;,
        Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field protected static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field protected static final DEFAULT_IFD0_OFFSET:I = 0x8

.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field public static final EVENT_END:I = 0x5

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field protected static final EXIF_HEADER:I = 0x45786966

.field protected static final EXIF_HEADER_TAIL:S = 0x0s

.field protected static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field private static final LOGV:Z = false

.field protected static final OFFSET_SIZE:I = 0x2

.field public static final OPTION_IFD_0:I = 0x1

.field public static final OPTION_IFD_1:I = 0x2

.field public static final OPTION_IFD_EXIF:I = 0x4

.field public static final OPTION_IFD_GPS:I = 0x8

.field public static final OPTION_IFD_INTEROPERABILITY:I = 0x10

.field public static final OPTION_THUMBNAIL:I = 0x20

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field protected static final TAG_SIZE:I = 0xc

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field protected static final TIFF_HEADER_TAIL:S = 0x2as

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/xiaomi/scanner/camera/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripCount:I

.field private mStripSizeTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

.field private mTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ExifParser"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "US-ASCII"

    .line 142
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 165
    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 166
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 167
    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_GPS_IFD:S

    .line 168
    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 169
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 170
    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 171
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 172
    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 173
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 174
    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 175
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 176
    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 177
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/xiaomi/scanner/camera/exif/ExifInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfdStartOffset:I

    .line 149
    iput v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mNumOfTagInIfd:I

    .line 157
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mContainExifData:Z

    .line 159
    iput v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 179
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    if-eqz p1, :cond_4

    .line 209
    iput-object p3, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mInterface:Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    .line 210
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mContainExifData:Z

    .line 211
    new-instance p3, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-direct {p3, p1}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p3, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    .line 212
    iput p2, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mOptions:I

    .line 213
    iget-boolean p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mContainExifData:Z

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->parseTiffHeader()V

    .line 218
    invoke-virtual {p3}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide p1

    const-wide/32 v1, 0x7fffffff

    cmp-long p3, p1, v1

    if-gtz p3, :cond_3

    long-to-int p3, p1

    .line 222
    iput p3, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfd0Position:I

    .line 223
    iput v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfdType:I

    .line 224
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->registerIfd(IJ)V

    const-wide/16 v0, 0x8

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    add-int/lit8 p3, p3, -0x8

    .line 227
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mDataAboveIfd0:[B

    .line 228
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->read([B)I

    :cond_2
    return-void

    .line 220
    :cond_3
    new-instance p3, Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 204
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Null argument inputStream to ExifParser"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkAllowed(II)Z
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mInterface:Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 642
    :cond_0
    invoke-static {p2, p1}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result p1

    return p1
.end method

.method private checkOffsetOrImageTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V
    .locals 5

    .line 587
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getTagId()S

    move-result v0

    .line 591
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getIfd()I

    move-result v1

    .line 592
    sget-short v2, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_EXIF_IFD:S

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    sget v2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    .line 593
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 594
    invoke-direct {p0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 595
    :cond_1
    invoke-virtual {p1, v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 597
    :cond_2
    sget-short v2, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v0, v2, :cond_3

    sget v2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    .line 598
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 599
    invoke-virtual {p1, v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 601
    :cond_3
    sget-short v2, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v0, v2, :cond_4

    sget v2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 602
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 603
    invoke-direct {p0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 604
    invoke-virtual {p1, v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 606
    :cond_4
    sget-short v2, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v0, v2, :cond_5

    sget v2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 607
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 608
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 609
    invoke-virtual {p1, v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->registerCompressedImage(J)V

    goto/16 :goto_2

    .line 611
    :cond_5
    sget-short v2, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v0, v2, :cond_6

    sget v2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 612
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 613
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 614
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mJpegSizeTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    goto :goto_2

    .line 616
    :cond_6
    sget-short v2, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v0, v2, :cond_9

    sget v2, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 617
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 618
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 619
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 620
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getDataType()S

    move-result v0

    if-ne v0, v3, :cond_7

    .line 621
    invoke-virtual {p1, v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_1

    .line 623
    :cond_7
    invoke-virtual {p1, v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->registerUncompressedStrip(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 627
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/scanner/camera/exif/ExifParser$ExifTagEvent;

    invoke-direct {v2, p1, v4}, Lcom/xiaomi/scanner/camera/exif/ExifParser$ExifTagEvent;-><init>(Lcom/xiaomi/scanner/camera/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 630
    :cond_9
    sget-short v2, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v0, v2, :cond_a

    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 631
    invoke-direct {p0, v1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->checkAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 632
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 633
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mStripSizeTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    :cond_a
    :goto_2
    return-void
.end method

.method private isIfdRequested(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v1, :cond_6

    const/4 v3, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_0

    return v0

    .line 190
    :cond_0
    iget p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 192
    :cond_2
    iget p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 188
    :cond_4
    iget p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mOptions:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    .line 186
    :cond_6
    iget p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mOptions:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    .line 184
    :cond_8
    iget p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mOptions:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method private isThumbnailRequested()Z
    .locals 1

    .line 198
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 5

    .line 392
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfdType:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    return v1

    .line 401
    :cond_0
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    return v0

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    return v0

    .line 394
    :cond_2
    invoke-direct {p0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 395
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 396
    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected static parse(Ljava/io/InputStream;ILcom/xiaomi/scanner/camera/exif/ExifInterface;)Lcom/xiaomi/scanner/camera/exif/ExifParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/xiaomi/scanner/camera/exif/ExifInterface;)V

    return-object v0
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/xiaomi/scanner/camera/exif/ExifInterface;)Lcom/xiaomi/scanner/camera/exif/ExifParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/xiaomi/scanner/camera/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const-string v1, "Invalid TIFF header"

    const/16 v2, 0x4949

    if-ne v2, v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d4d

    if-ne v2, v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 747
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_1

    return-void

    .line 748
    :cond_1
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_2
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readTag()Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readShort()S

    move-result v2

    .line 535
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v3, v7

    if-gtz v1, :cond_5

    .line 542
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->isValidType(S)Z

    move-result v1

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    .line 543
    sget-object v1, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v3, v9

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "Tag %04x: Invalid data type %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->skip(J)J

    const/4 v0, 0x0

    return-object v0

    .line 548
    :cond_0
    new-instance v10, Lcom/xiaomi/scanner/camera/exif/ExifTag;

    long-to-int v11, v3

    iget v6, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfdType:I

    if-eqz v11, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    move-object v1, v10

    move v3, v0

    move v4, v11

    move v5, v6

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/scanner/camera/exif/ExifTag;-><init>(SSIIZ)V

    .line 550
    invoke-virtual {v10}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getDataSize()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    .line 552
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-gtz v3, :cond_3

    .line 559
    iget v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfd0Position:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 560
    new-array v0, v11, [B

    .line 561
    iget-object v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v2, v1

    add-int/lit8 v2, v2, -0x8

    invoke-static {v3, v2, v0, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    invoke-virtual {v10, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([B)Z

    goto :goto_1

    :cond_2
    long-to-int v0, v1

    .line 565
    invoke-virtual {v10, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setOffset(I)V

    goto :goto_1

    .line 554
    :cond_3
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;

    const-string v1, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_4
    invoke-virtual {v10}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->hasDefinedCount()Z

    move-result v0

    .line 570
    invoke-virtual {v10, v9}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 572
    invoke-virtual {p0, v10}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readFullTagValue(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V

    .line 573
    invoke-virtual {v10, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 574
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->skip(J)J

    .line 576
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v10, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setOffset(I)V

    :goto_1
    return-object v10

    .line 538
    :cond_5
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;

    const-string v1, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerCompressedImage(J)V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerIfd(IJ)V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p3, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/xiaomi/scanner/camera/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    invoke-direct {p3, p1, v1}, Lcom/xiaomi/scanner/camera/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p3, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;

    const/4 v1, 0x4

    invoke-direct {p3, v1, p1}, Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 754
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 755
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readShort()S

    move-result p1

    const/16 v1, -0x28

    if-ne p1, v1, :cond_4

    .line 759
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readShort()S

    move-result p1

    :goto_0
    const/16 v1, -0x27

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    .line 761
    invoke-static {p1}, Lcom/xiaomi/scanner/camera/exif/JpegHeader;->isSofMarker(S)Z

    move-result v1

    if-nez v1, :cond_3

    .line 762
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v1

    const/16 v3, -0x1f

    if-ne p1, v3, :cond_0

    const/16 p1, 0x8

    if-lt v1, p1, :cond_0

    .line 769
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readInt()I

    move-result p1

    .line 770
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readShort()S

    move-result v3

    add-int/lit8 v1, v1, -0x6

    const v4, 0x45786966

    if-ne p1, v4, :cond_0

    if-nez v3, :cond_0

    .line 773
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStartPosition:I

    .line 774
    iput v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mApp1End:I

    add-int/2addr p1, v1

    .line 775
    iput p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    if-lt v1, p1, :cond_2

    add-int/lit8 v1, v1, -0x2

    int-to-long v3, v1

    .line 780
    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    goto :goto_1

    .line 784
    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readShort()S

    move-result p1

    goto :goto_0

    .line 781
    :cond_2
    :goto_1
    sget-object p1, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "Invalid JPEG format."

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    return v2

    .line 756
    :cond_4
    new-instance p1, Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;

    const-string v0, "Invalid JPEG format"

    invoke-direct {p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private skipTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->skipTo(J)V

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mJpegSizeTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 493
    :cond_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method protected getCurrentIfd()I
    .locals 1

    .line 452
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfdType:I

    return v0
.end method

.method protected getOffsetToExifEndFromSOF()I
    .locals 1

    .line 790
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    return v0
.end method

.method protected getStripCount()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mStripCount:I

    return v0
.end method

.method protected getStripIndex()I
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mImageEvent:Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method protected getStripSize()I
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mStripSizeTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 482
    :cond_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method protected getTag()Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    return-object v0
.end method

.method protected getTagCountInCurrentIfd()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mNumOfTagInIfd:I

    return v0
.end method

.method protected getTiffStartPosition()I
    .locals 1

    .line 794
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStartPosition:I

    return v0
.end method

.method protected next()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 272
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mContainExifData:Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    return v1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 276
    iget v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfdStartOffset:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v2, v4

    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    .line 278
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readTag()Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->next()I

    move-result v0

    return v0

    .line 282
    :cond_1
    iget-boolean v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v1, :cond_2

    .line 283
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V

    :cond_2
    return v4

    :cond_3
    if-ne v0, v2, :cond_8

    .line 288
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfdType:I

    const-wide/16 v5, 0x0

    if-nez v0, :cond_5

    .line 289
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v7

    .line 290
    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    cmp-long v0, v7, v5

    if-eqz v0, :cond_8

    .line 292
    invoke-direct {p0, v4, v7, v8}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_1

    .line 298
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lez v0, :cond_6

    .line 299
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    .line 300
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    :goto_0
    if-ge v0, v2, :cond_7

    .line 303
    sget-object v2, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid size of link to next IFD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_8

    .line 307
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid link to next IFD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 313
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 316
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    instance-of v4, v2, Lcom/xiaomi/scanner/camera/exif/ExifParser$IfdEvent;

    if-eqz v4, :cond_b

    .line 323
    check-cast v2, Lcom/xiaomi/scanner/camera/exif/ExifParser$IfdEvent;

    iget v4, v2, Lcom/xiaomi/scanner/camera/exif/ExifParser$IfdEvent;->ifd:I

    iput v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfdType:I

    .line 324
    iget-object v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mNumOfTagInIfd:I

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfdStartOffset:I

    .line 327
    iget v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mApp1End:I

    if-le v4, v0, :cond_9

    .line 328
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size of IFD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfdType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 332
    :cond_9
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 333
    iget-boolean v0, v2, Lcom/xiaomi/scanner/camera/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 336
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    .line 338
    :cond_b
    instance-of v0, v2, Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;

    if-eqz v0, :cond_c

    .line 339
    check-cast v2, Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;

    iput-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mImageEvent:Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;

    .line 340
    iget v0, v2, Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;->type:I

    return v0

    .line 342
    :cond_c
    check-cast v2, Lcom/xiaomi/scanner/camera/exif/ExifParser$ExifTagEvent;

    .line 343
    iget-object v0, v2, Lcom/xiaomi/scanner/camera/exif/ExifParser$ExifTagEvent;->tag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    .line 344
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_d

    .line 345
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readFullTagValue(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V

    .line 346
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V

    .line 348
    :cond_d
    iget-boolean v0, v2, Lcom/xiaomi/scanner/camera/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v0, :cond_8

    return v3

    .line 318
    :catch_0
    sget-object v4, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to skip to data at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", the file may be broken."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v4, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    return v1
.end method

.method protected read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->read([B)I

    move-result p1

    return p1
.end method

.method protected read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method protected readFullTagValue(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    .line 651
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 652
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v2

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    .line 654
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 655
    instance-of v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifParser$ImageEvent;

    if-eqz v1, :cond_1

    .line 657
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid thumbnail offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 662
    :cond_1
    instance-of v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifParser$IfdEvent;

    const-string v2, " overlaps value for tag: \n"

    if-eqz v1, :cond_2

    .line 663
    sget-object v1, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ifd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/xiaomi/scanner/camera/exif/ExifParser$IfdEvent;

    iget v0, v0, Lcom/xiaomi/scanner/camera/exif/ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_2
    instance-of v1, v0, Lcom/xiaomi/scanner/camera/exif/ExifParser$ExifTagEvent;

    if-eqz v1, :cond_3

    .line 666
    sget-object v1, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag value for tag: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/xiaomi/scanner/camera/exif/ExifParser$ExifTagEvent;

    iget-object v0, v0, Lcom/xiaomi/scanner/camera/exif/ExifParser$ExifTagEvent;->tag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    .line 667
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 670
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    .line 671
    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 672
    sget-object v1, Lcom/xiaomi/scanner/camera/exif/ExifParser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size of tag: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setting count to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->forceSetComponentCount(I)V

    .line 679
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 723
    :pswitch_1
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [Lcom/xiaomi/scanner/camera/exif/Rational;

    :goto_2
    if-ge v1, v0, :cond_5

    .line 725
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readRational()Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 727
    :cond_5
    invoke-virtual {p1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([Lcom/xiaomi/scanner/camera/exif/Rational;)Z

    goto/16 :goto_7

    .line 715
    :pswitch_2
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [I

    :goto_3
    if-ge v1, v0, :cond_6

    .line 717
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readLong()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 719
    :cond_6
    invoke-virtual {p1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 699
    :pswitch_3
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [Lcom/xiaomi/scanner/camera/exif/Rational;

    :goto_4
    if-ge v1, v0, :cond_7

    .line 701
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readUnsignedRational()Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 703
    :cond_7
    invoke-virtual {p1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([Lcom/xiaomi/scanner/camera/exif/Rational;)Z

    goto :goto_7

    .line 691
    :pswitch_4
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [J

    :goto_5
    if-ge v1, v0, :cond_8

    .line 693
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 695
    :cond_8
    invoke-virtual {p1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([J)Z

    goto :goto_7

    .line 707
    :pswitch_5
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [I

    :goto_6
    if-ge v1, v0, :cond_9

    .line 709
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readUnsignedShort()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 711
    :cond_9
    invoke-virtual {p1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 688
    :pswitch_6
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto :goto_7

    .line 682
    :pswitch_7
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 683
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->read([B)I

    .line 684
    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([B)Z

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected readLong()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method protected readRational()Lcom/xiaomi/scanner/camera/exif/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 870
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readLong()I

    move-result v0

    .line 871
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readLong()I

    move-result v1

    .line 872
    new-instance v2, Lcom/xiaomi/scanner/camera/exif/Rational;

    int-to-long v3, v0

    int-to-long v0, v1

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/xiaomi/scanner/camera/exif/Rational;-><init>(JJ)V

    return-object v2
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 827
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/xiaomi/scanner/camera/exif/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 855
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 856
    new-instance v4, Lcom/xiaomi/scanner/camera/exif/Rational;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/xiaomi/scanner/camera/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method protected readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected registerForTagValue(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V
    .locals 4

    .line 513
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/scanner/camera/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/xiaomi/scanner/camera/exif/ExifParser$ExifTagEvent;-><init>(Lcom/xiaomi/scanner/camera/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 364
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 365
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTiffStream:Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-le v1, v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-boolean v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 371
    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readTag()Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mTag:Lcom/xiaomi/scanner/camera/exif/ExifTag;

    add-int/lit8 v1, v1, 0xc

    if-nez v2, :cond_1

    goto :goto_0

    .line 376
    :cond_1
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->checkOffsetOrImageTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V

    goto :goto_0

    .line 379
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->skipTo(I)V

    .line 381
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 383
    iget v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifParser;->mIfdType:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 384
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_5

    .line 386
    invoke-direct {p0, v2, v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->registerIfd(IJ)V

    :cond_5
    return-void
.end method
