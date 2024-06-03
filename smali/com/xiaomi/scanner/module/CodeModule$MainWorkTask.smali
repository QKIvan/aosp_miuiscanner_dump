.class Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;
.super Landroid/os/AsyncTask;
.source "CodeModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/CodeModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainWorkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/google/zxing/Result;",
        ">;"
    }
.end annotation


# instance fields
.field private imageUri:Landroid/net/Uri;

.field private mFilePath:Ljava/lang/String;

.field private mIsCropped:Z

.field private weakModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/module/CodeModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/CodeModule;)V
    .locals 1

    .line 518
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 519
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->weakModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/google/zxing/Result;
    .locals 3

    const/4 v0, 0x0

    .line 524
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 525
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mIsCropped:Z

    const/4 v0, 0x2

    .line 526
    aget-object p1, p1, v0

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->imageUri:Landroid/net/Uri;

    .line 527
    iget-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mFilePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 528
    invoke-static {}, Lcom/xiaomi/scanner/module/CodeModule;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainWorkTask null file path. cropped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mIsCropped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 531
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/module/CodeModule;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainWorkTask filePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isCropped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mIsCropped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 535
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mFilePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/codec/QRCodeDecoder;->decodeByNativeZxing(Ljava/lang/String;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 513
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->doInBackground([Ljava/lang/Object;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/google/zxing/Result;)V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->weakModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/CodeModule;

    if-nez v0, :cond_0

    return-void

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    invoke-static {}, Lcom/xiaomi/scanner/module/CodeModule;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    const-string v1, "drop this search task cancled"

    invoke-static {p1, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 546
    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$500(Lcom/xiaomi/scanner/module/CodeModule;)V

    return-void

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const p1, 0x7f1000ba

    .line 550
    invoke-static {p1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 551
    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$500(Lcom/xiaomi/scanner/module/CodeModule;)V

    .line 552
    invoke-static {}, Lcom/xiaomi/scanner/module/CodeModule;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    const-string v0, "drop this search, null file path"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 556
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/module/CodeModule;->access$600(Lcom/xiaomi/scanner/module/CodeModule;Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 557
    :cond_3
    iget-boolean p1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mIsCropped:Z

    if-nez p1, :cond_4

    .line 558
    iget-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->mFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->imageUri:Landroid/net/Uri;

    invoke-static {v0, p1, v1}, Lcom/xiaomi/scanner/module/CodeModule;->access$700(Lcom/xiaomi/scanner/module/CodeModule;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    const p1, 0x7f10019c

    .line 560
    invoke-static {p1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 562
    :goto_0
    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$500(Lcom/xiaomi/scanner/module/CodeModule;)V

    .line 563
    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$800(Lcom/xiaomi/scanner/module/CodeModule;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 513
    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/CodeModule$MainWorkTask;->onPostExecute(Lcom/google/zxing/Result;)V

    return-void
.end method
