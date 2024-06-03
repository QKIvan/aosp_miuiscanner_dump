.class public Lcom/xiaomi/scanner/util/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field public static final ACCESS_FAILURE:J = -0x4L

.field public static final DCIM:Ljava/lang/String;

.field public static final DIRECTORY:Ljava/lang/String;

.field public static final LOW_STORAGE_THRESHOLD_BYTES:J = 0x2faf080L

.field public static final PREPARING:J = -0x2L

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Storage"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/Storage;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 14
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/util/Storage;->DCIM:Ljava/lang/String;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "scanner"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/util/Storage;->DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableSpace()J
    .locals 5

    .line 25
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/xiaomi/scanner/util/Storage;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External storage state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "checking"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_0
    const-string v1, "mounted"

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    return-wide v1

    .line 34
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/xiaomi/scanner/util/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 41
    :cond_2
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, v0

    mul-long v1, v1, v3

    return-wide v1

    :catch_0
    move-exception v0

    .line 44
    sget-object v1, Lcom/xiaomi/scanner/util/Storage;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "Fail to access external storage"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x3

    return-wide v0

    :cond_3
    :goto_0
    return-wide v1
.end method
