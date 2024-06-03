.class public Lcom/xiaomi/scanner/ui/CodeModuleUI;
.super Ljava/lang/Object;
.source "CodeModuleUI.java"


# static fields
.field private static final REQUEST_EXTRA_SUBTITLE:Ljava/lang/String; = "subTitle"

.field private static final REQUEST_EXTRA_SUBTITLE_LINK:Ljava/lang/String; = "subTitleLink"

.field private static final REQUEST_EXTRA_SUBTITLE_LINK_ACTION:Ljava/lang/String; = "subTitleLinkAction"

.field private static final REQUEST_EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

.field private final mAppRoot:Landroid/view/View;

.field private mAppUI:Lcom/xiaomi/scanner/app/AppUI;

.field private final mController:Lcom/xiaomi/scanner/module/CodeModule;

.field private mFrameRectInPreview:Landroid/graphics/Rect;

.field private mFramingRect:Landroid/graphics/Rect;

.field private final mModuleRoot:Landroid/view/ViewGroup;

.field private mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

.field private tipView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CodeModuleUI"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/module/CodeModule;Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 46
    iput-object p2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mController:Lcom/xiaomi/scanner/module/CodeModule;

    .line 47
    iput-object p3, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mAppRoot:Landroid/view/View;

    .line 48
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    const v0, 0x7f0a0100

    .line 49
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0023

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a012d

    .line 53
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    .line 54
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->setScannerFrame(Landroid/graphics/Rect;)V

    .line 55
    invoke-virtual {p2}, Lcom/xiaomi/scanner/module/CodeModule;->isPause()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 56
    iget-object p2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    invoke-virtual {p2}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->startLaserAnim()V

    .line 58
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->showThirdAppUI()V

    :cond_1
    const p2, 0x7f0a01bf

    .line 62
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->tipView:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->getFramingRect()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f0700a4

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/ui/CodeModuleUI;)Lcom/xiaomi/scanner/app/ScanActivity;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    return-object p0
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public getFramingRect()Landroid/graphics/Rect;
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFramingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a3

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const v2, 0x7f0700a1

    .line 127
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 128
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    sget v4, Lcom/xiaomi/scanner/util/Util;->screenHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    :goto_0
    sub-int/2addr v3, v1

    .line 130
    div-int/lit8 v3, v3, 0x2

    const v4, 0x7f0700a2

    .line 131
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 132
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v3

    add-int/2addr v2, v0

    invoke-direct {v4, v3, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFramingRect:Landroid/graphics/Rect;

    .line 134
    :cond_1
    sget-object v0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framingRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFramingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFramingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFramingRectInPreview(III)Landroid/graphics/Rect;
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFrameRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v1, 0x5a

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p3, v1, :cond_1

    const/16 v1, 0x10e

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    mul-float p1, p1, v2

    .line 149
    iget-object p2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {p2}, Lcom/xiaomi/scanner/app/AppUI;->getPreviewWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float p1, p2

    mul-float p1, p1, v2

    .line 147
    iget-object p2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {p2}, Lcom/xiaomi/scanner/app/AppUI;->getPreviewWidth()I

    move-result p2

    :goto_1
    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 151
    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 152
    iget p2, v0, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 153
    iget p2, v0, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 154
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 155
    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget p3, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    .line 156
    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, p2

    int-to-float p3, p3

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/AppUI;->getPreviewHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    iget p3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, p2

    int-to-float p3, p3

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/AppUI;->getPreviewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    cmpg-float p1, p3, v1

    if-gez p1, :cond_2

    .line 157
    iget p1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 158
    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 159
    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 160
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 162
    :cond_2
    iput-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFrameRectInPreview:Landroid/graphics/Rect;

    .line 163
    sget-object p1, Lcom/xiaomi/scanner/ui/CodeModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "framingRectInPreview: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFrameRectInPreview:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFrameRectInPreview:Landroid/graphics/Rect;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->clear()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->stopLaserAnim()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mQRFgView:Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFramingRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->startLaserAnim()V

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop this start operation, mFramingRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mFramingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->tipView:Landroid/widget/TextView;

    const v1, 0x7f100191

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/CodeModuleUI;->setTipView()V

    return-void
.end method

.method public setTipView()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->tipView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/config/ConfigModel;->getQrScanTip(Lcom/xiaomi/scanner/app/ScanActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->tipView:Landroid/widget/TextView;

    sget-object v1, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/config/ConfigModel;->getQrScanTip(Lcom/xiaomi/scanner/app/ScanActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showThirdAppUI()V
    .locals 7

    .line 84
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "subTitle"

    .line 86
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "subTitleLinkAction"

    .line 87
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "subTitleLink"

    const/4 v5, 0x0

    .line 88
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const v6, 0x7f0a013f

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const v5, 0x7f0a019e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 92
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/CodeModuleUI;->mModuleRoot:Landroid/view/ViewGroup;

    const v4, 0x7f0a017d

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 97
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setFlags(I)V

    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Lcom/xiaomi/scanner/ui/CodeModuleUI$1;

    invoke-direct {v0, p0, v3}, Lcom/xiaomi/scanner/ui/CodeModuleUI$1;-><init>(Lcom/xiaomi/scanner/ui/CodeModuleUI;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
