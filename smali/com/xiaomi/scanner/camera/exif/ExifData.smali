.class Lcom/xiaomi/scanner/camera/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ExifData"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifData;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 36
    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaomi/scanner/camera/exif/ExifData;->USER_COMMENT_ASCII:[B

    new-array v1, v0, [B

    .line 39
    fill-array-data v1, :array_1

    sput-object v1, Lcom/xiaomi/scanner/camera/exif/ExifData;->USER_COMMENT_JIS:[B

    new-array v0, v0, [B

    .line 42
    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifData;->USER_COMMENT_UNICODE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/scanner/camera/exif/IfdData;

    .line 46
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method protected addIfdData(Lcom/xiaomi/scanner/camera/exif/IfdData;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method protected addTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getIfd()I

    move-result v0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->addTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;I)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected addTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;I)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    .line 181
    invoke-static {p2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getOrCreateIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object p2

    .line 183
    invoke-virtual {p2, p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mThumbnail:[B

    .line 190
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 320
    :cond_1
    instance-of v2, p1, Lcom/xiaomi/scanner/camera/exif/ExifData;

    if-eqz v2, :cond_7

    .line 321
    check-cast p1, Lcom/xiaomi/scanner/camera/exif/ExifData;

    .line 322
    iget-object v2, p1, Lcom/xiaomi/scanner/camera/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 323
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lcom/xiaomi/scanner/camera/exif/ExifData;->mThumbnail:[B

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mThumbnail:[B

    .line 324
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 327
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 328
    iget-object v3, p1, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6

    .line 333
    invoke-virtual {p1, v2}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v3

    .line 334
    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v4

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_5

    .line 335
    invoke-virtual {v3, v4}, Lcom/xiaomi/scanner/camera/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 258
    invoke-virtual {v5}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getAllTags()[Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 260
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 261
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 278
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getAllTags()[Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 282
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 284
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method protected getAllTagsForTagId(S)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 300
    invoke-virtual {v4, p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getTag(S)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 302
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v0
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;
    .locals 1

    .line 128
    invoke-static {p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getOrCreateIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/IfdData;

    invoke-direct {v0, p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;-><init>(I)V

    .line 150
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method protected getStripCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lcom/xiaomi/scanner/camera/exif/ExifTag;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p2, p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getTag(S)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected getUserComment()Ljava/lang/String;
    .locals 6

    .line 217
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 221
    :cond_0
    sget v3, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v3}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/scanner/camera/exif/IfdData;->getTag(S)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 225
    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    return-object v2

    .line 229
    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v3

    new-array v5, v3, [B

    .line 230
    invoke-virtual {v0, v5}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getBytes([B)V

    new-array v0, v4, [B

    .line 233
    invoke-static {v5, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    :try_start_0
    sget-object v1, Lcom/xiaomi/scanner/camera/exif/ExifData;->USER_COMMENT_ASCII:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v4

    const-string v1, "US-ASCII"

    invoke-direct {v0, v5, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    .line 238
    :cond_3
    sget-object v1, Lcom/xiaomi/scanner/camera/exif/ExifData;->USER_COMMENT_JIS:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v4

    const-string v1, "EUC-JP"

    invoke-direct {v0, v5, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    .line 240
    :cond_4
    sget-object v1, Lcom/xiaomi/scanner/camera/exif/ExifData;->USER_COMMENT_UNICODE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 241
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v4

    const-string v1, "UTF-16"

    invoke-direct {v0, v5, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_5
    return-object v2

    .line 246
    :catch_0
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifData;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Failed to decode the user comment"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasUncompressedStrip()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected removeTag(SI)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p2, p1}, Lcom/xiaomi/scanner/camera/exif/IfdData;->removeTag(S)V

    return-void
.end method

.method protected removeThumbnailData()V
    .locals 3

    .line 197
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->clearThumbnailAndStrips()V

    .line 198
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mIfdDatas:[Lcom/xiaomi/scanner/camera/exif/IfdData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mThumbnail:[B

    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
