.class public final Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;
.super Ljava/lang/Object;
.source "FatalErrorHandlerImpl.java"

# interfaces
.implements Lcom/xiaomi/scanner/camera/FatalErrorHandler;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/app/ScanActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "FatalErrorHandler"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->mErrorDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V
    .locals 2

    .line 60
    sget-object p2, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "doError:"

    invoke-static {p2, v1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->dismisssErrorDialog()V

    .line 64
    iget-object p2, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p2}, Lcom/xiaomi/scanner/app/ScanActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->getDialogMsgId()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->doesFinishActivity()Z

    move-result p1

    invoke-static {p2, v0, p1}, Lcom/xiaomi/scanner/util/DialogUtil;->CameraErrorDialog(Landroid/app/Activity;IZ)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->mErrorDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismisssErrorDialog()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->mErrorDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/DialogUtil;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public handleFatalError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;)V
    .locals 2

    .line 54
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Handling Fatal Error"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V

    return-void
.end method

.method public onCameraDisabledFailure()V
    .locals 2

    .line 48
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Handling Camera Disabled Failure"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->CAMERA_DISABLED_BY_SECURITY_POLICY:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V

    return-void
.end method

.method public onCameraOpenFailure()V
    .locals 2

    .line 30
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Handling Camera Open Failure"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const/16 v1, 0x66

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V

    return-void
.end method

.method public onCameraReconnectFailure()V
    .locals 2

    .line 36
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Handling Camera Reconnect Failure"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const/16 v1, 0x67

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V

    return-void
.end method

.method public onGenericCameraAccessFailure()V
    .locals 2

    .line 42
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Handling Camera Access Failure"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V

    return-void
.end method

.method public onMediaStorageFailure()V
    .locals 2

    .line 24
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Handling Media Storage Failure"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;->MEDIA_STORAGE_FAILURE:Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;

    const/16 v1, 0xc9

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;->doError(Lcom/xiaomi/scanner/camera/FatalErrorHandler$Reason;I)V

    return-void
.end method
