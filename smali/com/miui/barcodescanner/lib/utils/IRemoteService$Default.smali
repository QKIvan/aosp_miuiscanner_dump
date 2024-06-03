.class public Lcom/miui/barcodescanner/lib/utils/IRemoteService$Default;
.super Ljava/lang/Object;
.source "IRemoteService.java"

# interfaces
.implements Lcom/miui/barcodescanner/lib/utils/IRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/barcodescanner/lib/utils/IRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createQRImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public recogniseQRImage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
