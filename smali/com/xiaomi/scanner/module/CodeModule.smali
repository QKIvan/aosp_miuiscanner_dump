.class public Lcom/xiaomi/scanner/module/CodeModule;
.super Lcom/xiaomi/scanner/module/BaseModule;
.source "CodeModule.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;
.implements Lcom/xiaomi/scanner/util/ScanUtils$CheckToFinishActivityListen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;
    }
.end annotation


# static fields
.field private static final DATA_MATRIX:Ljava/lang/String; = "DATA_MATRIX"

.field private static final DETECT_PREVIEW_INTERVAL_MS:J = 0x64L

.field private static final MSG_CHECK_PREVIEW:I = 0xb

.field private static final MSG_REQUEST_FRAME:I = 0xc

.field private static final QR_CODE:Ljava/lang/String; = "QR_CODE"

.field public static final RESULT_EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final RESULT_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;


# instance fields
.field private appUI:Lcom/xiaomi/scanner/app/AppUI;

.field isPridect:Z

.field private mCallingApp:Ljava/lang/String;

.field private mInitRunnable:Ljava/lang/Runnable;

.field private mInitTime:J

.field private mIsPause:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

.field private mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

.field private netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

.field private scanUtil:Lcom/xiaomi/scanner/util/ScanUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CodeModule"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/AppController;I)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/BaseModule;-><init>()V

    .line 87
    new-instance p1, Lcom/xiaomi/scanner/module/CodeModule$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/scanner/module/CodeModule$1;-><init>(Lcom/xiaomi/scanner/module/CodeModule;)V

    iput-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule;->scanUtil:Lcom/xiaomi/scanner/util/ScanUtils;

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/xiaomi/scanner/module/CodeModule;->isPridect:Z

    .line 113
    iput p2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mModuleId:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/CodeModule;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mIsPause:Z

    return p0
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 60
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/module/CodeModule;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->checkPreviewReady()V

    return-void
.end method

.method static synthetic access$302(Lcom/xiaomi/scanner/module/CodeModule;Lcom/xiaomi/scanner/bean/NetWorkRuleBean;)Lcom/xiaomi/scanner/bean/NetWorkRuleBean;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/module/CodeModule;)Lcom/xiaomi/scanner/app/AppUI;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/xiaomi/scanner/module/CodeModule;->appUI:Lcom/xiaomi/scanner/app/AppUI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/module/CodeModule;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->deleteCropImage()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/module/CodeModule;Lcom/google/zxing/Result;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/CodeModule;->handleDecodeSuccess(Lcom/google/zxing/Result;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/module/CodeModule;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/module/CodeModule;->requestCropImage(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/scanner/module/CodeModule;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->clearMainTask()V

    return-void
.end method

.method private checkPreviewReady()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->getModuleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->isPreviewReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->start()V

    goto :goto_0

    .line 223
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "check preview status later"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private checkToFinishActivity()V
    .locals 1

    .line 579
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mNeedFinishActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    :cond_0
    return-void
.end method

.method private clearMainTask()V
    .locals 1

    const/4 v0, 0x0

    .line 568
    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    return-void
.end method

.method private deleteCropImage()V
    .locals 2

    .line 572
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->getCroppedImagePath()Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    new-instance v1, Lcom/xiaomi/scanner/util/DeleteFileTask;

    invoke-direct {v1, v0}, Lcom/xiaomi/scanner/util/DeleteFileTask;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private executeMainTask(Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 5

    .line 495
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    sget-object p1, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "executeMainTask fail null path"

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->cancel(Z)Z

    .line 501
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel current task and start next task, path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 502
    iput-boolean v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mNeedFinishActivity:Z

    .line 504
    :cond_1
    new-instance v0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;-><init>(Lcom/xiaomi/scanner/module/CodeModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 505
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    aput-object p3, v3, p1

    invoke-virtual {v0, v3}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getCodeType(Lcom/google/zxing/Result;)I
    .locals 2

    .line 347
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    .line 350
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DATA_MATRIX"

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const-string v0, "QR_CODE"

    .line 354
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private getNetWorkRule()V
    .locals 1

    .line 169
    new-instance v0, Lcom/xiaomi/scanner/module/CodeModule$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/CodeModule$2;-><init>(Lcom/xiaomi/scanner/module/CodeModule;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V

    return-void
.end method

.method private handleDecodeSuccess(Lcom/google/zxing/Result;)V
    .locals 6

    .line 313
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "handleDecodeSuccess"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->scanUtil:Lcom/xiaomi/scanner/util/ScanUtils;

    if-nez v1, :cond_0

    .line 316
    new-instance v1, Lcom/xiaomi/scanner/util/ScanUtils;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    iget-object v3, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/xiaomi/scanner/module/CodeModule;->netWorkRule:Lcom/xiaomi/scanner/bean/NetWorkRuleBean;

    iget-object v5, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/xiaomi/scanner/util/ScanUtils;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;Ljava/util/ArrayList;Lcom/xiaomi/scanner/bean/NetWorkRuleBean;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->scanUtil:Lcom/xiaomi/scanner/util/ScanUtils;

    .line 317
    invoke-virtual {v1, p0}, Lcom/xiaomi/scanner/util/ScanUtils;->setCheckToFinishActivity(Lcom/xiaomi/scanner/util/ScanUtils$CheckToFinishActivityListen;)V

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> (1\u4e00\u7ef4\u7801\u3001  2\u3001\u4e8c\u7ef4\u7801    3\u3001\u5176\u4ed6\u7801) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/CodeModule;->getCodeType(Lcom/google/zxing/Result;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 324
    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeMatcher;->match(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object v0

    .line 326
    sget-object v2, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-eq v0, v2, :cond_1

    .line 327
    invoke-static {v1}, Lcom/xiaomi/scanner/util/Util;->decodeTwo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    :cond_1
    iget-boolean v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mIsBackToThirdApp:Z

    if-eqz v2, :cond_2

    .line 331
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "result"

    .line 332
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->ordinal()I

    move-result v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    const-string v1, "fromApp"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->setResult(ILandroid/content/Intent;)V

    .line 336
    iget-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    return-void

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->scanUtil:Lcom/xiaomi/scanner/util/ScanUtils;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/util/ScanUtils;->dealWithCode(Lcom/google/zxing/Result;)V

    return-void
.end method

.method private initBarcodeListener()V
    .locals 3

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    .line 192
    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/MiAccountListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/AllCanPayListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/AlipayListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/EmailScanListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/EmailScanListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/MatterCodeListener;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2}, Lcom/xiaomi/scanner/module/code/utils/MatterCodeListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initScan()V
    .locals 4

    .line 154
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "init scan"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const-string v1, "mMainHandler is null, return "

    .line 156
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    new-instance v0, Lcom/xiaomi/scanner/module/CodeModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/CodeModule$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/scanner/module/CodeModule;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mInitRunnable:Ljava/lang/Runnable;

    .line 164
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private launchActionMiBrowser(Landroid/content/Intent;)Z
    .locals 3

    .line 368
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 371
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 375
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchActionMiBrowser e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private recordDecodeTime(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V
    .locals 2

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 383
    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "barcode_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private requestCropImage(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 8

    .line 458
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->getCroppedImagePath()Ljava/lang/String;

    move-result-object v3

    .line 459
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const v1, 0x7f10002f

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 460
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const v1, 0x7f10019b

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 461
    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/scanner/module/CodeModule;->getCropImageIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 463
    iget-object p2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p2}, Lcom/xiaomi/scanner/app/ScanActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1000a6

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 464
    iget-object p2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 466
    :cond_0
    sget-object p1, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "requestCropImage: null intent"

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setTipView()V
    .locals 1

    .line 629
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->setTipView()V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public executeOnPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 591
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->clearTask()V

    return-void
.end method

.method public init(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 3

    .line 118
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/module/BaseModule;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 119
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->appUI:Lcom/xiaomi/scanner/app/AppUI;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mInitTime:J

    .line 122
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "fromApp"

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "barcode_by_call_count"

    const-string v2, "barcode_caller"

    if-eqz v0, :cond_0

    const-string p1, "barcode_caller_action_send"

    .line 125
    invoke-virtual {p0, p1, v2, v1}, Lcom/xiaomi/scanner/module/CodeModule;->recordExtraCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0, p1, v2, v1}, Lcom/xiaomi/scanner/module/CodeModule;->recordExtraCount(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "miref"

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    .line 134
    :cond_2
    invoke-virtual {p0, p1, v2, v1}, Lcom/xiaomi/scanner/module/CodeModule;->recordExtraCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    sget-object p1, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init callingApp is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->initBarcodeListener()V

    .line 139
    iget-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->checkAppStartRun()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->onCTAAndPermissionAgree()V

    .line 143
    :cond_3
    new-instance p1, Lcom/xiaomi/scanner/ui/CodeModuleUI;

    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getModuleLayoutRoot()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    invoke-direct {p1, v0, p0, v1, v2}, Lcom/xiaomi/scanner/ui/CodeModuleUI;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/module/CodeModule;Landroid/view/View;Ljava/lang/String;)V

    sput-object p1, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    .line 145
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 149
    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->getNetWorkRule()V

    return-void
.end method

.method public isPause()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mIsPause:Z

    return v0
.end method

.method public isZoomNeeded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$initScan$0$com-xiaomi-scanner-module-CodeModule()V
    .locals 3

    .line 160
    new-instance v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    .line 161
    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->setQRCodeScannerListener(Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner$QRCodeScannerListener;)V

    .line 162
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->initScan()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 473
    sget-object p1, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "resultCode error"

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 478
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    :cond_1
    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-eq p1, p2, :cond_2

    .line 490
    sget-object p2, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected request "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 486
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->getCroppedImagePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 487
    :goto_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/scanner/module/CodeModule;->executeMainTask(Ljava/lang/String;ZLandroid/net/Uri;)V

    :goto_2
    return-void
.end method

.method public onCTAAndPermissionAgree()V
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mExtraShareImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mBackToGallery:Ljava/lang/String;

    const-string v1, "com.miui.gallery"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 599
    iput-boolean v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mNeedFinishActivity:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 601
    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mNeedFinishActivity:Z

    .line 604
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mExtraShareImagePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->extraIntentImageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/scanner/module/CodeModule;->executeMainTask(Ljava/lang/String;ZLandroid/net/Uri;)V

    const/4 v0, 0x0

    .line 605
    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mExtraShareImagePath:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onCameraClosed()V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->clearMessage()V

    :cond_0
    return-void
.end method

.method public onCheckToFinishActivityListener()V
    .locals 0

    .line 510
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->checkToFinishActivity()V

    return-void
.end method

.method public onDecoded(Lcom/google/zxing/Result;)V
    .locals 3

    .line 611
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->isPause()Z

    move-result v0

    if-nez v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->playBeepAndVibrate()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 613
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    .line 614
    :goto_0
    sget-object v1, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "zxing onDecoded"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mCallingApp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 617
    iget-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    goto :goto_1

    .line 619
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/CodeModule;->handleDecodeSuccess(Lcom/google/zxing/Result;)V

    goto :goto_1

    .line 622
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/CodeModule;->handleDecodeSuccess(Lcom/google/zxing/Result;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 269
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onDestroy()V

    .line 270
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 274
    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->cancel(Z)Z

    .line 275
    iput-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainWorkTask:Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;

    .line 277
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->onDestroy()V

    .line 279
    sput-object v1, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 283
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 284
    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;

    .line 285
    invoke-interface {v2}, Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;->onCodeModuleDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 290
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 291
    iput-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->mListeners:Ljava/util/ArrayList;

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->scanUtil:Lcom/xiaomi/scanner/util/ScanUtils;

    if-eqz v0, :cond_4

    .line 295
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/util/ScanUtils;->setCheckToFinishActivity(Lcom/xiaomi/scanner/util/ScanUtils$CheckToFinishActivityListen;)V

    .line 296
    iput-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule;->scanUtil:Lcom/xiaomi/scanner/util/ScanUtils;

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 246
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mIsPause:Z

    .line 248
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->onPause()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->scanUtil:Lcom/xiaomi/scanner/util/ScanUtils;

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/ScanUtils;->dissmissAllDialog()V

    .line 256
    :cond_1
    sget-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/config/ConfigModel;->clearAllCacheData()V

    return-void
.end method

.method public onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 9

    .line 388
    invoke-super {p0, p1, p2}, Lcom/xiaomi/scanner/module/BaseModule;->onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_1

    .line 393
    sget-object p1, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "onPreviewFrame: settings is null."

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 396
    :cond_1
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v2

    if-nez v2, :cond_2

    .line 398
    sget-object p1, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "onPreviewFrame: size is null."

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 401
    :cond_2
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v5

    .line 402
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v6

    if-lez v5, :cond_7

    if-gtz v6, :cond_3

    goto :goto_0

    .line 408
    :cond_3
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/scanner/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v7

    .line 410
    sget-object v2, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    if-nez v2, :cond_4

    .line 411
    sget-object p1, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "onPreviewFrame: mUI is null."

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 415
    :cond_4
    invoke-virtual {v2, v5, v6, v7}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->getFramingRectInPreview(III)Landroid/graphics/Rect;

    move-result-object v8

    if-nez v8, :cond_5

    .line 417
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->requestPreviewFrame()V

    return v1

    .line 420
    :cond_5
    new-instance v1, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewFormat()I

    move-result v4

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;-><init>([BIIIILandroid/graphics/Rect;)V

    .line 421
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    if-eqz v0, :cond_6

    .line 422
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->scan(Lcom/xiaomi/scanner/module/code/codec/DecodeParams;)V

    .line 425
    :cond_6
    new-instance v0, Lcom/xiaomi/scanner/module/CodeModule$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/CodeModule$3;-><init>(Lcom/xiaomi/scanner/module/CodeModule;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/module/CodeModule;->getPreviewLight([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/xiaomi/scanner/module/BaseModule$isDarkEnvCallback;)V

    const/4 p1, 0x1

    return p1

    .line 404
    :cond_7
    :goto_0
    sget-object p1, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewFrame: width="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",height="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public onResume()V
    .locals 2

    .line 230
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->onResume()V

    .line 231
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->initScan()V

    .line 235
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/config/ConfigModel;->initCacheData()V

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mIsPause:Z

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mInitTime:J

    .line 238
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->mUI:Lcom/xiaomi/scanner/ui/CodeModuleUI;

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->onResume()V

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/CodeModule;->checkPreviewReady()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 216
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 261
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mQRScanner:Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeScanner;->quitScan()V

    :cond_0
    return-void
.end method

.method public requestPreviewFrame()V
    .locals 4

    .line 303
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule;->isPause()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isFrameValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->requestPreviewFrame()V

    goto :goto_0

    .line 306
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/CodeModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "check preview later"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public selectPhotoClick()V
    .locals 0

    .line 211
    invoke-super {p0}, Lcom/xiaomi/scanner/module/BaseModule;->selectPhotoClick()V

    return-void
.end method
