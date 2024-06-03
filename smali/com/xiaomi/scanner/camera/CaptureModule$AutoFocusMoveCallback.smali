.class final Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/CaptureModule;


# direct methods
.method private constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0

    .line 1488
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V
    .locals 0

    .line 1488
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2

    .line 1491
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1600()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoFocusMoving: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1492
    iget-object p2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusMoveCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {p2}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$500(Lcom/xiaomi/scanner/camera/CaptureModule;)Lcom/xiaomi/scanner/camera/FocusManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/scanner/camera/FocusManager;->onAutoFocusMoving(Z)V

    return-void
.end method
