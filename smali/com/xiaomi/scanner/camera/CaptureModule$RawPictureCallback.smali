.class final Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;
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
    name = "RawPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/CaptureModule;


# direct methods
.method private constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0

    .line 1400
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V
    .locals 0

    .line 1400
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 4

    .line 1403
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1802(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1404
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1600()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shutterToRawCallbackTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1405
    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1800(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v2}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1300(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1404
    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
