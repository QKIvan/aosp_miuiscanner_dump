.class public Landroid/content/pm/IPackageInstallObserver2$Default;
.super Ljava/lang/Object;
.source "IPackageInstallObserver2.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallObserver2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallObserver2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method