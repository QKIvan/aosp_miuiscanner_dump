.class public Lcom/xiaomi/scanner/util/ExceptionHandler$ExceptionCallback;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/util/ExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExceptionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraError(I)V
    .locals 0

    return-void
.end method

.method public onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onDispatchThreadException(Ljava/lang/RuntimeException;)V
    .locals 0

    return-void
.end method
