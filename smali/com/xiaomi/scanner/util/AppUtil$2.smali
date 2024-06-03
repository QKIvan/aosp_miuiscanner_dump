.class Lcom/xiaomi/scanner/util/AppUtil$2;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "AppUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/util/AppUtil;->installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

.field final synthetic val$extra:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;Ljava/lang/Object;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/xiaomi/scanner/util/AppUtil$2;->val$appUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    iput-object p2, p0, Lcom/xiaomi/scanner/util/AppUtil$2;->val$extra:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    iget-object p3, p0, Lcom/xiaomi/scanner/util/AppUtil$2;->val$appUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    if-eqz p3, :cond_1

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 342
    :goto_0
    iget-object p2, p0, Lcom/xiaomi/scanner/util/AppUtil$2;->val$extra:Ljava/lang/Object;

    invoke-interface {p3, p1, p4, p2}, Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;->packageInstalled(Ljava/lang/String;ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method
