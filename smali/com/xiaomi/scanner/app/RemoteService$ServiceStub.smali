.class Lcom/xiaomi/scanner/app/RemoteService$ServiceStub;
.super Lcom/miui/barcodescanner/lib/utils/IRemoteService$Stub;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/app/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field private mService:Lcom/xiaomi/scanner/app/RemoteService;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/RemoteService;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/barcodescanner/lib/utils/IRemoteService$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/xiaomi/scanner/app/RemoteService$ServiceStub;->mService:Lcom/xiaomi/scanner/app/RemoteService;

    return-void
.end method


# virtual methods
.method public createQRImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    :try_start_0
    invoke-static {p1, p2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeEncoder;->encodeText(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 46
    invoke-static {}, Lcom/xiaomi/scanner/app/RemoteService;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p2

    const-string v0, "OutOfMemoryError"

    invoke-static {p2, v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 44
    invoke-static {}, Lcom/xiaomi/scanner/app/RemoteService;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p2

    const-string v0, "WriterException"

    invoke-static {p2, v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public recogniseQRImage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->decode(Ljava/lang/String;)Lcom/google/zxing/Result;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->formatToGB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 58
    invoke-static {}, Lcom/xiaomi/scanner/app/RemoteService;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Exception"

    invoke-static {v1, v2, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
