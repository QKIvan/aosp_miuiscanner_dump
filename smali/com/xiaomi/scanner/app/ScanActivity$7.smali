.class Lcom/xiaomi/scanner/app/ScanActivity$7;
.super Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;
.source "ScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/app/ScanActivity;->onDestroyTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/ScanActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0

    .line 1190
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$7;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Object;
    .locals 3

    .line 1194
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$7;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCameraApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->recycle(Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1198
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "camera recycle error RuntimeException: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1196
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "camera recycle error IllegalArgumentException: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
