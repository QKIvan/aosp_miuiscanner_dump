.class final Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/CaptureModule;


# direct methods
.method private constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0

    .line 1374
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V
    .locals 0

    .line 1374
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    return-void
.end method


# virtual methods
.method public onShutter(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 4

    .line 1377
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1302(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1378
    iget-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1300(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v2}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1500(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1402(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1379
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1600()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutterLag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$ShutterCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1400(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
