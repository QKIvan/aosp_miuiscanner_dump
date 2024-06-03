.class Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$2;
.super Ljava/lang/Object;
.source "QRCodeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->onDecodeSucceed(Lcom/google/zxing/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

.field final synthetic val$result:Lcom/google/zxing/Result;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;Lcom/google/zxing/Result;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$2;->this$0:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$2;->val$result:Lcom/google/zxing/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$2;->this$0:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$000(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$2;->this$0:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$000(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;)Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$2;->val$result:Lcom/google/zxing/Result;

    invoke-interface {v0, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;->onDecoded(Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MaResult: No listener!"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
