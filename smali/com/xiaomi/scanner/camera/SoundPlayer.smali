.class public Lcom/xiaomi/scanner/camera/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mIsReleased:Z

.field private final mResourceToSoundId:Landroid/util/SparseIntArray;

.field private final mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "sound"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/SoundPlayer;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mIsReleased:Z

    .line 29
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 30
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    return-void
.end method


# virtual methods
.method public isCanPlaySound()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReleased()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mIsReleased:Z

    return v0
.end method

.method public isUseHeadset()Z
    .locals 8

    .line 64
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 70
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 71
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 72
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    .line 73
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    return v1
.end method

.method public loadSound(I)V
    .locals 3

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    sget-object v0, Lcom/xiaomi/scanner/camera/SoundPlayer;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSound error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public play(IF)V
    .locals 7

    .line 50
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/SoundPlayer;->isCanPlaySound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p2

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Sound not loaded. Must call #loadSound first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mIsReleased:Z

    .line 99
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public unloadSound(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mResourceToSoundId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/SoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->unload(I)Z

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Sound not loaded. Must call #loadSound first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
