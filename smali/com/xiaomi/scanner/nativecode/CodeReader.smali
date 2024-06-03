.class public Lcom/xiaomi/scanner/nativecode/CodeReader;
.super Ljava/lang/Object;
.source "CodeReader.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static instance:Lcom/xiaomi/scanner/nativecode/CodeReader;


# instance fields
.field private _nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CodeReader"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/nativecode/CodeReader;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/zxing/BarcodeFormat;

    .line 46
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 52
    invoke-static {}, Lcom/xiaomi/scanner/nativecode/NativeSdk;->getInstance()Lcom/xiaomi/scanner/nativecode/NativeSdk;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaomi/scanner/nativecode/CodeReader;->getNativeFormats([Lcom/google/zxing/BarcodeFormat;)[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/nativecode/NativeSdk;->createInstance([I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/scanner/nativecode/CodeReader;->_nativePtr:J

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/scanner/nativecode/CodeReader;
    .locals 2

    .line 21
    sget-object v0, Lcom/xiaomi/scanner/nativecode/CodeReader;->instance:Lcom/xiaomi/scanner/nativecode/CodeReader;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/xiaomi/scanner/nativecode/CodeReader;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/xiaomi/scanner/nativecode/CodeReader;->instance:Lcom/xiaomi/scanner/nativecode/CodeReader;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/xiaomi/scanner/nativecode/CodeReader;

    invoke-direct {v0}, Lcom/xiaomi/scanner/nativecode/CodeReader;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/nativecode/CodeReader;->instance:Lcom/xiaomi/scanner/nativecode/CodeReader;

    .line 28
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static varargs getNativeFormats([Lcom/google/zxing/BarcodeFormat;)[I
    .locals 3

    .line 34
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 35
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 36
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private toResultPoint([F)[Lcom/google/zxing/ResultPoint;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 78
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 82
    new-array v2, v1, [Lcom/google/zxing/ResultPoint;

    :goto_0
    if-ge v0, v1, :cond_1

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x1

    .line 83
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 84
    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v3, p1, v3

    aget v4, p1, v4

    invoke-direct {v5, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 85
    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    new-array p1, v0, [Lcom/google/zxing/ResultPoint;

    return-object p1
.end method


# virtual methods
.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 101
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 103
    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/scanner/nativecode/CodeReader;->_nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 104
    invoke-static {}, Lcom/xiaomi/scanner/nativecode/NativeSdk;->getInstance()Lcom/xiaomi/scanner/nativecode/NativeSdk;

    move-result-object v0

    iget-wide v4, p0, Lcom/xiaomi/scanner/nativecode/CodeReader;->_nativePtr:J

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/scanner/nativecode/NativeSdk;->destroyInstance(J)V

    .line 105
    iput-wide v2, p0, Lcom/xiaomi/scanner/nativecode/CodeReader;->_nativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 109
    throw v0
.end method

.method public prepareRead()V
    .locals 3

    .line 92
    invoke-static {}, Lcom/xiaomi/scanner/nativecode/NativeSdk;->getInstance()Lcom/xiaomi/scanner/nativecode/NativeSdk;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/scanner/nativecode/CodeReader;->_nativePtr:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/nativecode/NativeSdk;->prepareRead(J)V

    return-void
.end method

.method public read(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 57
    sget-object p1, Lcom/xiaomi/scanner/nativecode/CodeReader;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "bitmap is null"

    invoke-static {p1, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 61
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 62
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 63
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/xiaomi/scanner/nativecode/NativeSdk;->getInstance()Lcom/xiaomi/scanner/nativecode/NativeSdk;

    move-result-object v3

    iget-wide v4, p0, Lcom/xiaomi/scanner/nativecode/CodeReader;->_nativePtr:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v11, p1

    invoke-virtual/range {v3 .. v11}, Lcom/xiaomi/scanner/nativecode/NativeSdk;->readBarcode(JLandroid/graphics/Bitmap;IIII[Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 68
    new-instance v3, Lcom/google/zxing/Result;

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/google/zxing/BarcodeFormat;->values()[Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    aget-object v1, v4, v1

    invoke-direct {v3, v2, v0, v0, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    const/4 v0, 0x1

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    .line 70
    check-cast p1, [F

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/nativecode/CodeReader;->toResultPoint([F)[Lcom/google/zxing/ResultPoint;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/zxing/Result;->addResultPoints([Lcom/google/zxing/ResultPoint;)V

    :cond_1
    return-object v3

    :cond_2
    return-object v0
.end method

.method public varargs setBarcodeFormat([Lcom/google/zxing/BarcodeFormat;)V
    .locals 3

    .line 42
    invoke-static {}, Lcom/xiaomi/scanner/nativecode/NativeSdk;->getInstance()Lcom/xiaomi/scanner/nativecode/NativeSdk;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/scanner/nativecode/CodeReader;->_nativePtr:J

    invoke-static {p1}, Lcom/xiaomi/scanner/nativecode/CodeReader;->getNativeFormats([Lcom/google/zxing/BarcodeFormat;)[I

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaomi/scanner/nativecode/NativeSdk;->setFormat(J[I)V

    return-void
.end method

.method public stopRead()V
    .locals 3

    .line 96
    invoke-static {}, Lcom/xiaomi/scanner/nativecode/NativeSdk;->getInstance()Lcom/xiaomi/scanner/nativecode/NativeSdk;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/scanner/nativecode/CodeReader;->_nativePtr:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/nativecode/NativeSdk;->stopRead(J)V

    return-void
.end method
