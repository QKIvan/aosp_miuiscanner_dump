.class Lcom/xiaomi/scanner/app/ScanActivity$5;
.super Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;
.source "ScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/app/ScanActivity;->createCameraController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback<",
        "Lcom/android/ex/camera2/portability/CameraAgent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/ScanActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$5;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Lcom/android/ex/camera2/portability/CameraAgent;
    .locals 3

    .line 843
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "createCameraController-onBackground"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$5;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$900(Lcom/xiaomi/scanner/app/ScanActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity$5;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->getAndroidCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 846
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1

    .line 839
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity$5;->onBackground()Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v0

    return-object v0
.end method

.method public onMainResult(Lcom/android/ex/camera2/portability/CameraAgent;)V
    .locals 5

    .line 854
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;->onMainResult(Ljava/lang/Object;)V

    .line 855
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCameraController-onMainResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 857
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$5;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1102(Lcom/xiaomi/scanner/app/ScanActivity;Z)Z

    .line 858
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$5;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1200(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    return-void

    .line 863
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity$5;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    new-instance v2, Lcom/xiaomi/scanner/camera/CameraController;

    iget-object v3, p0, Lcom/xiaomi/scanner/app/ScanActivity$5;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v3}, Lcom/xiaomi/scanner/app/ScanActivity;->access$600(Lcom/xiaomi/scanner/app/ScanActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lcom/xiaomi/scanner/camera/CameraController;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent;)V

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1302(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/camera/CameraController;)Lcom/xiaomi/scanner/camera/CameraController;

    .line 864
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$5;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1300(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/CameraController;

    move-result-object p1

    new-instance v1, Lcom/xiaomi/scanner/util/ExceptionHandler;

    new-instance v2, Lcom/xiaomi/scanner/util/ExceptionHandler$ExceptionCallback;

    invoke-direct {v2}, Lcom/xiaomi/scanner/util/ExceptionHandler$ExceptionCallback;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/scanner/app/ScanActivity$5;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 865
    invoke-static {v3}, Lcom/xiaomi/scanner/app/ScanActivity;->access$600(Lcom/xiaomi/scanner/app/ScanActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/scanner/util/ExceptionHandler;-><init>(Lcom/android/ex/camera2/portability/CameraExceptionHandler$CameraExceptionCallback;Landroid/os/Handler;)V

    .line 864
    invoke-virtual {p1, v1}, Lcom/xiaomi/scanner/camera/CameraController;->setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V

    .line 866
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$5;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1400(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/app/AppUI;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity$5;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1300(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/CameraController;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/scanner/app/AppUI;->updateCameraProvider(Lcom/xiaomi/scanner/camera/CameraProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 868
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Creating camera controller failed."

    invoke-static {v1, v2, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 869
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$5;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1200(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 872
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$5;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1102(Lcom/xiaomi/scanner/app/ScanActivity;Z)Z

    return-void
.end method

.method public bridge synthetic onMainResult(Ljava/lang/Object;)V
    .locals 0

    .line 839
    check-cast p1, Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity$5;->onMainResult(Lcom/android/ex/camera2/portability/CameraAgent;)V

    return-void
.end method
