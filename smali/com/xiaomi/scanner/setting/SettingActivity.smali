.class public Lcom/xiaomi/scanner/setting/SettingActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private default_function_view:Landroid/view/View;

.field private default_function_view2:Landroid/view/View;

.field private edgeSuppressionSize:I

.field private functionText:Landroid/widget/Spinner;

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "SettingActivity"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/setting/SettingActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->functionText:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static showSetting(Landroid/content/Context;)V
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateDefaultFunctionList()V
    .locals 1

    .line 109
    new-instance v0, Lcom/xiaomi/scanner/setting/SettingActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/setting/SettingActivity$1;-><init>(Lcom/xiaomi/scanner/setting/SettingActivity;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-static {p1}, Lcom/xiaomi/scanner/app/ScanContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->edgeSuppressionSize:I

    int-to-float v0, v0

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->edgeSuppressionSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->screenWidth:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 187
    :cond_1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0006

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a00c6

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0129

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/scanner/util/AppJumpUtils;->showPrivacy(Landroid/app/Activity;)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/scanner/app/FunctionSortActivity;->showFunctionSort(Landroid/content/Context;)V

    goto :goto_0

    .line 168
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/scanner/setting/AboutActivity;->showAbout(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0020

    .line 62
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingActivity;->setContentView(I)V

    const p1, 0x7f0a0090

    .line 64
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->functionText:Landroid/widget/Spinner;

    const p1, 0x7f0a0091

    .line 65
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->default_function_view:Landroid/view/View;

    const p1, 0x7f0a0092

    .line 66
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->default_function_view2:Landroid/view/View;

    .line 68
    invoke-static {}, Lcom/xiaomi/scanner/util/BuildHelper;->getMiuiVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V11"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->default_function_view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->default_function_view2:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->default_function_view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->default_function_view2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p1, 0x7f0a0129

    .line 78
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0006

    .line 79
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00c6

    .line 80
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/xiaomi/scanner/setting/SettingActivity;->updateDefaultFunctionList()V

    .line 84
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isRtlLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb4

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const v1, 0x7f0a00c5

    .line 85
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    const v1, 0x7f0a0125

    .line 86
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    const v1, 0x7f0a0007

    .line 87
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    const v1, 0x7f0a016d

    .line 88
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    .line 90
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/util/AppUtil;->getEdgeSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->edgeSuppressionSize:I

    const-string p1, "window"

    .line 91
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 92
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 93
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 95
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity;->screenWidth:I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    sput-object v0, Lcom/xiaomi/scanner/util/DialogEdittextUtil;->ctaClick:Lcom/xiaomi/scanner/util/DialogEdittextUtil$CTAClick;

    .line 105
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
