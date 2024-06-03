.class public Lcom/xiaomi/scanner/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ImageUtils"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyGalleryToUpdate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    sget-object p0, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p1, "notifyGalleryToUpdate savedPicturePath is Empty"

    invoke-static {p0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 86
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    sget-object p1, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyGalleryToUpdate FileNotFoundException:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public static rectifyBitmap(Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {p0, p1, v0}, Lcom/xiaomi/scanner/util/ImageUtils;->rectifyBitmap(Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rectifyBitmap(Landroid/graphics/Bitmap;Lcom/xiaomi/recognizer/RecognizeResult;Z)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 31
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 35
    iget-object v1, p1, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    array-length v1, v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    iget-object p1, p1, Lcom/xiaomi/recognizer/RecognizeResult;->quadrangleCorners:[F

    invoke-static {p0, p1, p2}, Lcom/xiaomi/recognizer/Quadrangle;->rectify(Landroid/graphics/Bitmap;[FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 42
    sget-object p1, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rectifyBitmap: cost="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    .line 37
    :cond_2
    :goto_0
    sget-object p0, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rectifyBitmap: invalid corners "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 32
    :cond_3
    :goto_1
    sget-object p0, Lcom/xiaomi/scanner/util/ImageUtils;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p1, "rectifyBitmap: invalid bitmap!"

    invoke-static {p0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public static saveJpeg(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 11

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 48
    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->instance()Lcom/xiaomi/scanner/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/scanner/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaomi/scanner/util/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 50
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 51
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const-string v8, "image/jpeg"

    move-object v0, v10

    move-object v5, v9

    invoke-static/range {v0 .. v8}, Lcom/xiaomi/scanner/util/Util;->addImageToMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;JILjava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {v10, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v9

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v0, v1

    .line 61
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v1

    .line 65
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :goto_4
    throw p0
.end method
