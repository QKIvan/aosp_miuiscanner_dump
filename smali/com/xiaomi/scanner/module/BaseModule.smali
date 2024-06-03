.class public Lcom/xiaomi/scanner/module/BaseModule;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/ModuleController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/BaseModule$isDarkEnvCallback;,
        Lcom/xiaomi/scanner/module/BaseModule$WorkTask;
    }
.end annotation


# static fields
.field private static final CROPPED_IMAGE_NAME:Ljava/lang/String; = "cropResult.jpg"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field public static final TAGBASE:Lcom/xiaomi/scanner/debug/Log$Tag;

.field public static final WORK_TYPE_CHOOSE_PICTURE:I = 0x3

.field protected static final WORK_TYPE_PARSE:I = 0x3e9

.field protected static final WORK_TYPE_PREVIEW:I = 0x2

.field protected static final WORK_TYPE_SERVER_REQ:I = 0x3e8

.field public static final WORK_TYPE_TAKE_PICTURE:I = 0x1


# instance fields
.field darkIndex:I

.field darkList:[J

.field darkValue:I

.field public extraIntentImageUri:Landroid/net/Uri;

.field private height:I

.field lastRecordTime:J

.field protected mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

.field protected mAppContext:Landroid/content/Context;

.field protected mBackToGallery:Ljava/lang/String;

.field private mCroppedImagePath:Ljava/lang/String;

.field protected mExtraShareImagePath:Ljava/lang/String;

.field protected mIsBackToThirdApp:Z

.field protected mModuleId:I

.field protected mNeedFinishActivity:Z

.field private mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

.field waitScanTime:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "BaseModule"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/BaseModule;->TAGBASE:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 35
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->lastRecordTime:J

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->darkIndex:I

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 59
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->darkList:[J

    const/16 v0, 0x12c

    .line 61
    iput v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->waitScanTime:I

    const/16 v0, 0x3c

    .line 63
    iput v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->darkValue:I

    return-void

    nop

    :array_0
    .array-data 8
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 33
    sget-object v0, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public applyWindowInsets(I)V
    .locals 0

    return-void
.end method

.method protected cancelWorkTask(Z)V
    .locals 2

    .line 323
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule;->isTaskCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    sget-object v0, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "cancle task"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 326
    iput-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    :cond_0
    if-eqz p1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    :cond_1
    return-void
.end method

.method protected clearTask()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    return-void
.end method

.method public doPrething()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mNeedFinishActivity:Z

    return-void
.end method

.method public varargs executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public executeOnPostExecute(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public executeOnPostExecute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected executeTask(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 314
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule;->isTaskCreated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 315
    new-instance v0, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;-><init>(Lcom/xiaomi/scanner/module/ModuleController;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 316
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p2, 0x2

    aput-object p3, v2, p2

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return p1

    :cond_0
    return v1
.end method

.method protected getCropImageIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 8

    .line 350
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/scanner/module/BaseModule;->getCropImageIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected getCropImageIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 7

    .line 355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 360
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imagePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "croppedPicturePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 364
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "com.xiaomi.scanner.fileprovider"

    const/16 v4, 0x1d

    if-le v2, v4, :cond_1

    .line 365
    iget-object v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mAppContext:Landroid/content/Context;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestCropImage >=11:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    iget-object v5, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v5, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->grantUriPermission(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const-string v2, "requestCropImage <11"

    .line 369
    invoke-static {v0, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    move-object v2, v1

    .line 372
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    .line 374
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 375
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 379
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v6, v4, :cond_3

    if-eqz p2, :cond_3

    goto :goto_1

    .line 383
    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v3, v6}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz p2, :cond_4

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pictureToBeCroppedUri.getPath():"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 394
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "croppedPictureUri.getPath():"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 397
    :cond_5
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 398
    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.android.camera.action.CROP"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "com.miui.gallery"

    .line 399
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "image/*"

    .line 400
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "crop"

    const-string p3, "true"

    .line 401
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "scale"

    const/4 p3, 0x1

    .line 402
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "return-data"

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 404
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "output"

    if-le p2, v4, :cond_6

    .line 405
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 407
    :cond_6
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 410
    :goto_2
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "outputFormat"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, -0x1

    if-le p6, p2, :cond_7

    const-string v1, "aspectX"

    .line 412
    invoke-virtual {p1, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    if-le p7, p2, :cond_8

    const-string p2, "aspectY"

    .line 415
    invoke-virtual {p1, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_8
    if-eqz p4, :cond_9

    const-string p2, "tips"

    .line 418
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    if-eqz p5, :cond_a

    const-string p2, "actionString"

    .line 421
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    const-string p2, "fixed_aspect_ratio"

    .line 423
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "noFaceDetection"

    .line 424
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p1

    .line 428
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dir.exists() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " dir.isDirectory() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception p1

    .line 385
    sget-object p2, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p3, "IllegalArgumentException"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 356
    :cond_c
    :goto_3
    sget-object p1, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "getFilePathFromUri: null path!"

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method public getCroppedImagePath()Ljava/lang/String;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mCroppedImagePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getImagePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cropResult.jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mCroppedImagePath:Ljava/lang/String;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mCroppedImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mModuleId:I

    return v0
.end method

.method public getPreviewLight([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/xiaomi/scanner/module/BaseModule$isDarkEnvCallback;)V
    .locals 10

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 513
    iget-wide v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->lastRecordTime:J

    sub-long v2, v0, v2

    iget p2, p0, Lcom/xiaomi/scanner/module/BaseModule;->waitScanTime:I

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-gez p2, :cond_0

    return-void

    .line 516
    :cond_0
    iput-wide v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->lastRecordTime:J

    .line 518
    iget p2, p0, Lcom/xiaomi/scanner/module/BaseModule;->width:I

    if-nez p2, :cond_1

    .line 519
    sget p2, Lcom/xiaomi/scanner/camera/CaptureModule;->previewSizeWidth:I

    iput p2, p0, Lcom/xiaomi/scanner/module/BaseModule;->width:I

    .line 520
    sget p2, Lcom/xiaomi/scanner/camera/CaptureModule;->previewSizeHeight:I

    iput p2, p0, Lcom/xiaomi/scanner/module/BaseModule;->height:I

    .line 523
    :cond_1
    iget p2, p0, Lcom/xiaomi/scanner/module/BaseModule;->width:I

    if-nez p2, :cond_2

    return-void

    :cond_2
    const-wide/16 v0, 0x0

    .line 530
    iget v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->height:I

    mul-int p2, p2, v2

    int-to-long v2, p2

    const/16 p2, 0xa

    .line 535
    array-length v4, p1

    int-to-float v4, v4

    long-to-float v5, v2

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3727c5ac    # 1.0E-5f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    int-to-long v6, v5

    cmp-long v8, v6, v2

    if-gez v8, :cond_3

    .line 539
    aget-byte v6, p1, v5

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v5, v5, 0xa

    goto :goto_0

    :cond_3
    int-to-long p1, p2

    .line 542
    div-long/2addr v2, p1

    div-long/2addr v0, v2

    .line 544
    iget-object p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->darkList:[J

    array-length p2, p1

    .line 545
    iget v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->darkIndex:I

    rem-int/2addr v2, p2

    aput-wide v0, p1, v2

    const/4 p1, 0x1

    add-int/2addr v2, p1

    .line 546
    iput v2, p0, Lcom/xiaomi/scanner/module/BaseModule;->darkIndex:I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_5

    .line 550
    iget-object v1, p0, Lcom/xiaomi/scanner/module/BaseModule;->darkList:[J

    aget-wide v2, v1, v0

    iget v1, p0, Lcom/xiaomi/scanner/module/BaseModule;->darkValue:I

    int-to-long v5, v1

    cmp-long v1, v2, v5

    if-lez v1, :cond_4

    const/4 p1, 0x0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 554
    :cond_5
    iget-object p2, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/xiaomi/scanner/app/ScanActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_6

    .line 556
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/xiaomi/scanner/module/BaseModule$isDarkEnvCallback;->isDarkEnv(Ljava/lang/Boolean;)V

    :cond_6
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public init(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 1

    .line 70
    iput-object p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 71
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/app/ScannerApp;

    .line 72
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mAppContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mNeedFinishActivity:Z

    .line 75
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getIntentData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "imagePath"

    .line 77
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mExtraShareImagePath:Ljava/lang/String;

    const-string p1, "isBackToThirdApp"

    .line 78
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mIsBackToThirdApp:Z

    const-string p1, "isBackToGallery"

    .line 79
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mBackToGallery:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getExtraIntentImageUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->extraIntentImageUri:Landroid/net/Uri;

    .line 82
    iget-object p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->clearIntentData()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mExtraShareImagePath:Ljava/lang/String;

    .line 86
    iput-boolean p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mIsBackToThirdApp:Z

    :goto_0
    return-void
.end method

.method public isCaptureNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPickerNeeded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSdkReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isTaskCancelled()Z
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isTaskCreated()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mWorkTask:Lcom/xiaomi/scanner/module/BaseModule$WorkTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUsePreviewFrameAsPicture()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCTAAndPermissionAgree()V
    .locals 0

    return-void
.end method

.method public onCameraClosed()V
    .locals 0

    return-void
.end method

.method public onConnectivityChanged()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/BaseModule;->cancelWorkTask(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onOrientationChange(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule;->isPause()Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 199
    :cond_1
    :goto_0
    sget-object p2, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictureTaken drop this data, originalJpegData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz p1, :cond_2

    .line 201
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method

.method public onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
    .locals 1

    .line 143
    sget-object p2, Lcom/xiaomi/scanner/module/BaseModule;->TAGBASE:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "onPreviewFrame()"

    invoke-static {p2, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule;->isPause()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 145
    sget-object p1, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "onPreviewFrame: drop data. pause state"

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 149
    sget-object p1, Lcom/xiaomi/scanner/module/BaseModule;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "onPreviewFrame: reset data, current null data"

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule;->requestPreviewFrame()V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->isPreviewStop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 0

    return-void
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method protected recordExtraCount(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 446
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "miref"

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 452
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/scanner/module/BaseModule;->recordExtraCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected recordExtraCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 457
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 458
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public requestPreviewFrame()V
    .locals 0

    return-void
.end method

.method public selectPhotoClick()V
    .locals 0

    return-void
.end method

.method public shouldConsumeCameraKey()Z
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule;->isCaptureNeeded()Z

    move-result v0

    return v0
.end method

.method public updateWordTranslateUI(Z)V
    .locals 0

    return-void
.end method
