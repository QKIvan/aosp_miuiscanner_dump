.class public Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;
.super Ljava/lang/Object;
.source "QRCodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;,
        Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;
    }
.end annotation


# static fields
.field private static final HANDLER_THREAD_NAME:Ljava/lang/String;

.field private static final MSG_PREVIEW_AVAILABLE:I = 0x2

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecodeHints:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

.field private mQRScannerListener:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "QRCodeScanner"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 22
    invoke-virtual {v0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->HANDLER_THREAD_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mContext:Landroid/content/Context;

    .line 42
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mDecodeHints:Ljava/util/Hashtable;

    .line 43
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 44
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/DecodeFormat;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    .line 46
    sget-object p2, Lcom/xiaomi/scanner/module/code/codec/DecodeFormat;->ONE_D_FORMATS:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 47
    sget-object p2, Lcom/xiaomi/scanner/module/code/codec/DecodeFormat;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_0
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mDecodeHints:Ljava/util/Hashtable;

    sget-object v0, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mQRScannerListener:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;

    return-object p0
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 19
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->requestPreviewFrame()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Landroid/content/Context;Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)Lcom/google/zxing/Result;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->zxingDecode(Landroid/content/Context;Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Lcom/google/zxing/Result;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->onDecodeSucceed(Lcom/google/zxing/Result;)V

    return-void
.end method

.method private onDecodeSucceed(Lcom/google/zxing/Result;)V
    .locals 1

    .line 114
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$2;-><init>(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Lcom/google/zxing/Result;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestPreviewFrame()V
    .locals 1

    .line 101
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$1;-><init>(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private zxingDecode(Landroid/content/Context;Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)Lcom/google/zxing/Result;
    .locals 1

    .line 128
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->getYuvImage()Landroid/graphics/YuvImage;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mDecodeHints:Ljava/util/Hashtable;

    invoke-static {p1, p2, v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->decode(Landroid/content/Context;Landroid/graphics/YuvImage;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 130
    sget-object p2, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "zxingDecode error"

    invoke-static {p2, v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public clearMessage()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "clear message"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public initScan()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->HANDLER_THREAD_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mThread:Landroid/os/HandlerThread;

    .line 68
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;-><init>(Landroid/os/Looper;Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    :cond_0
    return-void
.end method

.method public quitScan()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 83
    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mThread:Landroid/os/HandlerThread;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    :cond_1
    return-void
.end method

.method public scan(Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 93
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;->removeMessages(I)V

    .line 94
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 96
    :cond_0
    sget-object p1, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "scan without handler!"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setQRCodeScannerListener(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mQRScannerListener:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;

    return-void
.end method

.method public start()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->mHandler:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->initScan()V

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->requestPreviewFrame()V

    return-void
.end method
