.class Lcom/xiaomi/scanner/util/AppUtil$1;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
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

    .line 321
    iput-object p1, p0, Lcom/xiaomi/scanner/util/AppUtil$1;->val$appUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    iput-object p2, p0, Lcom/xiaomi/scanner/util/AppUtil$1;->val$extra:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageInstalled packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,returnCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/xiaomi/scanner/util/AppUtil$1;->val$appUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 326
    :goto_0
    iget-object p2, p0, Lcom/xiaomi/scanner/util/AppUtil$1;->val$extra:Ljava/lang/Object;

    invoke-interface {v0, p1, v1, p2}, Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;->packageInstalled(Ljava/lang/String;ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method
