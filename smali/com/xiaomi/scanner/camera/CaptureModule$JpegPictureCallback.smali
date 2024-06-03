.class final Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field private mRequestModuleReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/module/ModuleController;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaomi/scanner/camera/CaptureModule;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/module/ModuleController;)V
    .locals 0

    .line 1412
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1413
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->mRequestModuleReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 8

    .line 1418
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1600()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPictureTaken"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1419
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1900(Lcom/xiaomi/scanner/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2002(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1427
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1700(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1428
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1429
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1700(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1300(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1428
    invoke-static {v0, v4, v5}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2102(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1430
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1431
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2000(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1700(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1430
    invoke-static {v0, v4, v5}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2202(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    goto :goto_0

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1434
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1800(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1300(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1433
    invoke-static {v0, v4, v5}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2102(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1435
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1436
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2000(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1800(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1435
    invoke-static {v0, v4, v5}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2202(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1438
    :goto_0
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1600()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pictureDisplayedToJpegCallbackTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1439
    invoke-static {v4}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2200(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1438
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1442
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v5}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2000(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v5, v0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2302(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1443
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1600()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jpegCallbackFinishTime="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v5}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2300(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v0, v2, v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2002(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1446
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->savePhoto([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    .line 1448
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isF7BAndQ()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1449
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->stopPreview()V

    :cond_2
    return-void
.end method

.method savePhoto([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 1

    .line 1457
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->mRequestModuleReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 1459
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/scanner/module/ModuleController;->onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    .line 1466
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2400(Lcom/xiaomi/scanner/camera/CaptureModule;)Lcom/xiaomi/scanner/app/ScanActivity;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaomi/scanner/app/ScanActivity;->updateStorageSpaceAndHint(Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;)V

    return-void
.end method
