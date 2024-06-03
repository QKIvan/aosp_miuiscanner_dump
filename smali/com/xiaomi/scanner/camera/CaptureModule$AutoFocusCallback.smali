.class final Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/CaptureModule;


# direct methods
.method private constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0

    .line 1470
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V
    .locals 0

    .line 1470
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 4

    .line 1473
    iget-object p2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {p2}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1900(Lcom/xiaomi/scanner/camera/CaptureModule;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1474
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1600()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    const-string p2, "onAutoFocus: paused"

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1478
    :cond_0
    iget-object p2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v2}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2600(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2502(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1479
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1600()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoFocusTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2500(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms  focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1480
    iget-object p2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2700(Lcom/xiaomi/scanner/camera/CaptureModule;I)V

    .line 1481
    iget-object p2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {p2}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$500(Lcom/xiaomi/scanner/camera/CaptureModule;)Lcom/xiaomi/scanner/camera/FocusManager;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/xiaomi/scanner/camera/FocusManager;->onAutoFocus(ZZ)V

    return-void
.end method
