.class public Lcom/xiaomi/scanner/module/BaseModule$WorkTask;
.super Landroid/os/AsyncTask;
.source "BaseModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/BaseModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WorkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private weakController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/module/ModuleController;",
            ">;"
        }
    .end annotation
.end field

.field private workType:I


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/ModuleController;)V
    .locals 1

    .line 257
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 258
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->weakController:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 262
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WorkTask isCancelled"

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/xiaomi/scanner/module/BaseModule;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->weakController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleController;

    if-nez v0, :cond_1

    .line 268
    invoke-static {}, Lcom/xiaomi/scanner/module/BaseModule;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 271
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->workType:I

    .line 272
    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/module/ModuleController;->executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->weakController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleController;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget v1, p0, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->workType:I

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/scanner/module/ModuleController;->executeOnPostExecute(ILjava/lang/Object;)V

    .line 282
    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/module/ModuleController;->executeOnPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->weakController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleController;

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onPreExecute()V

    return-void
.end method
