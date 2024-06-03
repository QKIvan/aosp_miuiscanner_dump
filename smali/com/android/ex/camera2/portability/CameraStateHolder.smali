.class public abstract Lcom/android/ex/camera2/portability/CameraStateHolder;
.super Ljava/lang/Object;
.source "CameraStateHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private mInvalid:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamStateHolder"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mInvalid:Z

    return-void
.end method

.method private waitForCondition(Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;J)Z
    .locals 3

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 97
    monitor-enter p0

    .line 98
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;->success()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 100
    :try_start_1
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catch_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 104
    sget-object p1, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string p2, "Timeout waiting."

    invoke-static {p1, p2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 106
    monitor-exit p0

    return p1

    .line 109
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 65
    :try_start_0
    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInvalid()Z
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setState(I)V
    .locals 3

    monitor-enter p0

    .line 45
    :try_start_0
    iget v0, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mState:I

    if-eq v0, p1, :cond_0

    .line 46
    sget-object v0, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState - state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    :cond_0
    iput p1, p0, Lcom/android/ex/camera2/portability/CameraStateHolder;->mState:I

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public waitForStates(I)Z
    .locals 3

    .line 122
    sget-object v0, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForStates - states = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/android/ex/camera2/portability/CameraStateHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/CameraStateHolder$1;-><init>(Lcom/android/ex/camera2/portability/CameraStateHolder;I)V

    const-wide/16 v1, 0xdac

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->waitForCondition(Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;J)Z

    move-result p1

    return p1
.end method

.method public waitToAvoidStates(I)Z
    .locals 3

    .line 140
    sget-object v0, Lcom/android/ex/camera2/portability/CameraStateHolder;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitToAvoidStates - states = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/android/ex/camera2/portability/CameraStateHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/CameraStateHolder$2;-><init>(Lcom/android/ex/camera2/portability/CameraStateHolder;I)V

    const-wide/16 v1, 0xdac

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraStateHolder;->waitForCondition(Lcom/android/ex/camera2/portability/CameraStateHolder$ConditionChecker;J)Z

    move-result p1

    return p1
.end method
