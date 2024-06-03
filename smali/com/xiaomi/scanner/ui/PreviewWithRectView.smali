.class public Lcom/xiaomi/scanner/ui/PreviewWithRectView;
.super Landroid/view/View;
.source "PreviewWithRectView.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private bottomLeft:Landroid/graphics/Bitmap;

.field private bottomRight:Landroid/graphics/Bitmap;

.field private color:I

.field private dimenHeight:I

.field private dimenWidth:I

.field private frame:Landroid/graphics/Rect;

.field private linePaint:Landroid/graphics/Paint;

.field private mNeedDrawLine:Z

.field private mPaint:Landroid/graphics/Paint;

.field private previewRect:Landroid/graphics/Rect;

.field private topLeft:Landroid/graphics/Bitmap;

.field private topRight:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "PreviewWithRectView"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 41
    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mPaint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0803e0

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topLeft:Landroid/graphics/Bitmap;

    .line 54
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p2, 0x42b40000    # 90.0f

    .line 55
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 56
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object p2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topLeft:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topRight:Landroid/graphics/Bitmap;

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object p2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topRight:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object p2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomLeft:Landroid/graphics/Bitmap;

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->linePaint:Landroid/graphics/Paint;

    .line 61
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0602ad

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->linePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->dimenWidth:I

    .line 65
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->dimenHeight:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->previewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 93
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->previewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 102
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->previewRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    .line 105
    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v7, v2

    iget-object v8, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v7, v2

    iget-object v8, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mPaint:Landroid/graphics/Paint;

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 108
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v2

    iget-object v11, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v9, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 109
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v8, v2

    int-to-float v10, v1

    iget-object v11, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mNeedDrawLine:Z

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->linePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 113
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 115
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topLeft:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topRight:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->topRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomLeft:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->bottomRight:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 124
    sget-object v0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 82
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 83
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->previewRect:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->getMeasuredWidth()I

    move-result p1

    .line 87
    iget-object p2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->previewRect:Landroid/graphics/Rect;

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->dimenWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 88
    iget-object p2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->previewRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->dimenHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public setDataAndDraw(Landroid/graphics/Rect;IZ)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->previewRect:Landroid/graphics/Rect;

    .line 71
    iput p2, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->color:I

    .line 72
    iput-boolean p3, p0, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->mNeedDrawLine:Z

    .line 73
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->requestLayout()V

    return-void
.end method
