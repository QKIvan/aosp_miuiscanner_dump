.class Lcom/xiaomi/scanner/camera/TextureViewHelper$1;
.super Ljava/lang/Object;
.source "TextureViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/camera/TextureViewHelper;->onPreviewAreaChanged(Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/TextureViewHelper;

.field final synthetic val$listeners:Ljava/util/List;

.field final synthetic val$previewArea:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/camera/TextureViewHelper;Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper$1;->this$0:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    iput-object p2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper$1;->val$listeners:Ljava/util/List;

    iput-object p3, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper$1;->val$previewArea:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper$1;->val$listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 306
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/TextureViewHelper$1;->val$previewArea:Landroid/graphics/RectF;

    invoke-interface {v1, v2}, Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    return-void
.end method
