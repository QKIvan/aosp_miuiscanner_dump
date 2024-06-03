.class public Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;
.super Ljava/lang/Object;
.source "QRCodeDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$RGBLuminanceSource;,
        Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "QRCodeDecoder"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 89
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 90
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    .line 93
    :goto_0
    div-int v2, v0, v1

    if-le v2, p2, :cond_0

    div-int v2, p0, v1

    if-le v2, p1, :cond_0

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static decode(Landroid/content/Context;Landroid/graphics/YuvImage;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/YuvImage;",
            "Ljava/util/Hashtable<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .line 33
    new-instance p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$PlanarYUVLuminanceSource;-><init>(Landroid/graphics/YuvImage;)V

    .line 34
    new-instance p1, Lcom/google/zxing/BinaryBitmap;

    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p1, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 35
    new-instance p0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {p0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 38
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 42
    :try_start_1
    sget-object p2, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "decode oom, crop size"

    invoke-static {p2, v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 40
    sget-object p2, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "ReaderException"

    invoke-static {p2, v0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    const/4 p1, 0x0

    :goto_1
    return-object p1

    :goto_2
    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 45
    throw p1
.end method

.method public static decode(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 101
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "bmp is null"

    invoke-static {p0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 105
    :cond_0
    new-instance v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$RGBLuminanceSource;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder$RGBLuminanceSource;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    new-instance p0, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, v1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p0, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 107
    new-instance v1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 108
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 109
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 110
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/DecodeFormat;->ONE_D_FORMATS:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 111
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/DecodeFormat;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 112
    sget-object v4, Lcom/xiaomi/scanner/module/code/codec/DecodeFormat;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 113
    sget-object v4, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v3, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    const-string v4, "ISO-8859-1"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 117
    invoke-virtual {v1, p0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 119
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "Exception"

    invoke-static {v1, v2, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static decode(Ljava/lang/String;)Lcom/google/zxing/Result;
    .locals 3

    if-eqz p0, :cond_2

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 57
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 60
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 61
    invoke-static {v0, v1, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 62
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 63
    invoke-static {p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->decode(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v0

    .line 51
    :cond_2
    :goto_0
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "path is null"

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static decodeByNativeZxing(Ljava/lang/String;)Lcom/google/zxing/Result;
    .locals 2

    .line 73
    invoke-static {p0}, Lcom/xiaomi/scanner/util/BitmapUtil;->getDecodeAbleBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 78
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/nativecode/CodeReader;->getInstance()Lcom/xiaomi/scanner/nativecode/CodeReader;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaomi/scanner/nativecode/CodeReader;->read(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;

    move-result-object p0

    if-nez p0, :cond_1

    .line 81
    sget-object p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "decode image return null"

    invoke-static {p0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_1
    return-object p0
.end method
