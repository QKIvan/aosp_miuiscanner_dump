.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1;
.super Ljava/lang/Object;
.source "AndroidCamera2AgentImpl.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;)V
    .locals 0

    .line 1276
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2

    .line 1280
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1;->this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$1;ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method