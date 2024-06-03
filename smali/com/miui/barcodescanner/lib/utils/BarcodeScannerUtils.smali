.class public Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;
.super Ljava/lang/Object;
.source "BarcodeScannerUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$RecogniseQRImageListener;,
        Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$CreateQRImageListener;,
        Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;
    }
.end annotation


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.xiaomi.scanner.app.RemoteService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageSize:I

.field private mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

.field private mService:Lcom/miui/barcodescanner/lib/utils/IRemoteService;

.field private mText:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private unBindSercice()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createQRImage(Ljava/lang/String;ILandroid/content/Context;Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$CreateQRImageListener;)V
    .locals 0

    .line 36
    iput-object p4, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    .line 37
    iput-object p1, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mText:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 40
    invoke-interface {p4}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$CreateQRImageListener;->onFail()V

    :cond_0
    return-void

    .line 44
    :cond_1
    iput p2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mImageSize:I

    .line 45
    iput-object p3, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mContext:Landroid/content/Context;

    .line 46
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.xiaomi.scanner"

    const-string p4, "com.xiaomi.scanner.app.RemoteService"

    .line 47
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 48
    invoke-virtual {p3, p1, p0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static {p2}, Lcom/miui/barcodescanner/lib/utils/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/barcodescanner/lib/utils/IRemoteService;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mService:Lcom/miui/barcodescanner/lib/utils/IRemoteService;

    .line 73
    :try_start_0
    iget-object p2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    instance-of p2, p2, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$CreateQRImageListener;

    if-eqz p2, :cond_2

    .line 74
    iget-object p2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mText:Ljava/lang/String;

    iget v0, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mImageSize:I

    invoke-interface {p1, p2, v0}, Lcom/miui/barcodescanner/lib/utils/IRemoteService;->createQRImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 76
    iget-object p2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    check-cast p2, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$CreateQRImageListener;

    invoke-interface {p2, p1}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$CreateQRImageListener;->onSuccess(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    invoke-interface {p1}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;->onFail()V

    goto :goto_0

    .line 81
    :cond_2
    iget-object p2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mUri:Landroid/net/Uri;

    invoke-interface {p1, p2}, Lcom/miui/barcodescanner/lib/utils/IRemoteService;->recogniseQRImage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 83
    iget-object p2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    check-cast p2, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$RecogniseQRImageListener;

    invoke-interface {p2, p1}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$RecogniseQRImageListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object p1, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    invoke-interface {p1}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;->onFail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->release()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->release()V

    return-void
.end method

.method public recogniseQRImage(Landroid/net/Uri;Landroid/content/Context;Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$RecogniseQRImageListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mUri:Landroid/net/Uri;

    .line 54
    iput-object p2, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 58
    invoke-interface {p3}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$RecogniseQRImageListener;->onFail()V

    :cond_0
    return-void

    .line 62
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p3, "com.xiaomi.scanner.app.RemoteService"

    .line 63
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p3, 0x1

    .line 64
    invoke-virtual {p2, p1, p0, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public release()V
    .locals 1

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->unBindSercice()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mContext:Landroid/content/Context;

    .line 109
    iput-object v0, p0, Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils;->mListener:Lcom/miui/barcodescanner/lib/utils/BarcodeScannerUtils$BarcodeListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
