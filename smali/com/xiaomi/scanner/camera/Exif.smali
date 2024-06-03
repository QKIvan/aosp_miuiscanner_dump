.class public Lcom/xiaomi/scanner/camera/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Exif"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/Exif;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExif(Ljava/lang/String;)Lcom/xiaomi/scanner/camera/exif/ExifInterface;
    .locals 5

    .line 39
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;-><init>()V

    .line 41
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 45
    sget-object v2, Lcom/xiaomi/scanner/camera/Exif;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read EXIF from file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 43
    sget-object v2, Lcom/xiaomi/scanner/camera/Exif;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static getExif([B)Lcom/xiaomi/scanner/camera/exif/ExifInterface;
    .locals 3

    .line 29
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;-><init>()V

    .line 31
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 33
    sget-object v1, Lcom/xiaomi/scanner/camera/Exif;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "Failed to read EXIF data"

    invoke-static {v1, v2, p0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static getOrientation(Lcom/xiaomi/scanner/camera/exif/ExifInterface;)I
    .locals 1

    .line 57
    sget v0, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->shortValue()S

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/scanner/camera/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result p0

    return p0
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 79
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    invoke-static {p0}, Lcom/xiaomi/scanner/camera/Exif;->getExif(Ljava/lang/String;)Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    move-result-object p0

    .line 81
    invoke-static {p0}, Lcom/xiaomi/scanner/camera/Exif;->getOrientation(Lcom/xiaomi/scanner/camera/exif/ExifInterface;)I

    move-result p0

    .line 82
    sget-object v2, Lcom/xiaomi/scanner/camera/Exif;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public static getOrientation([B)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/scanner/camera/Exif;->getExif([B)Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/xiaomi/scanner/camera/Exif;->getOrientation(Lcom/xiaomi/scanner/camera/exif/ExifInterface;)I

    move-result p0

    return p0
.end method
