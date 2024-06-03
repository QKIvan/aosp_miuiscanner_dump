.class public Lcom/xiaomi/scanner/util/ScannerThreadPool;
.super Ljava/lang/Object;
.source "ScannerThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static volatile sHandler:Landroid/os/Handler;

.field private static volatile sPool:Ljava/util/concurrent/Executor;

.field private static sUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ScannerThreadPool"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sUiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 13
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method private static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 21
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sPool:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sPool:Ljava/util/concurrent/Executor;

    return-object v0

    .line 25
    :cond_0
    const-class v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sPool:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sPool:Ljava/util/concurrent/Executor;

    .line 29
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sPool:Ljava/util/concurrent/Executor;

    return-object v0

    :catchall_0
    move-exception v1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getSerialHandler()Landroid/os/Handler;
    .locals 3

    .line 35
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sHandler:Landroid/os/Handler;

    return-object v0

    .line 39
    :cond_0
    const-class v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 41
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "serial-looper"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sHandler:Landroid/os/Handler;

    .line 45
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sHandler:Landroid/os/Handler;

    return-object v0

    :catchall_0
    move-exception v1

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v1, Lcom/xiaomi/scanner/util/ScannerThreadPool$1;

    invoke-direct {v1, v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool$1;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static poolExecute(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-static {}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeSerialExecute(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 82
    invoke-static {}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->getSerialHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 87
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 88
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 90
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static serialExecute(Ljava/lang/Runnable;)V
    .locals 1

    .line 77
    invoke-static {}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->getSerialHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
