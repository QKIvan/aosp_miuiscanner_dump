.class public final Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;
.super Landroid/widget/FrameLayout;
.source "QRCodeFgView.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mColor:I

.field private mLaserScanner:Landroid/widget/ImageView;

.field private mMaskView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

.field private mScannerFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "QRCodeFgView"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->setBackgroundColor(I)V

    .line 42
    new-instance p2, Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-direct {p2, p1}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mMaskView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    .line 43
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    iget-object p3, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mMaskView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-virtual {p3, p2}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mMaskView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->addView(Landroid/view/View;)V

    .line 47
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    .line 48
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x1

    .line 49
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 50
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    const p3, 0x7f0803e1

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mMaskView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->clear()V

    return-void
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mMaskView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public setScannerFrame(Landroid/graphics/Rect;)V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mColor:I

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mScannerFrame:Landroid/graphics/Rect;

    .line 79
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3f733333    # 0.95f

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 80
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mMaskView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mScannerFrame:Landroid/graphics/Rect;

    iget v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mColor:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->setDataAndDraw(Landroid/graphics/Rect;IZ)V

    return-void
.end method

.method public startLaserAnim()V
    .locals 11

    .line 58
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mScannerFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 65
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mScannerFrame:Landroid/graphics/Rect;

    .line 66
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v1

    const/4 v8, 0x0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v9, v0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0xbb8

    .line 70
    invoke-virtual {v10, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, 0x2

    .line 71
    invoke-virtual {v10, v0}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    const/4 v0, -0x1

    .line 72
    invoke-virtual {v10, v0}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 73
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScannerFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mScannerFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stopLaserAnim()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 85
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
