.class Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;
.super Landroid/os/Handler;
.source "QRCodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QRScannerHandler"
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRScannerHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    if-nez v0, :cond_1

    return-void

    .line 151
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;

    if-nez p1, :cond_2

    .line 153
    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$200(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)V

    return-void

    .line 157
    :cond_2
    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$300(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$400(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Landroid/content/Context;Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)Lcom/google/zxing/Result;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 159
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$500(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Lcom/google/zxing/Result;)V

    return-void

    .line 163
    :cond_3
    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$200(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)V

    :goto_0
    return-void
.end method
