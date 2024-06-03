.class public Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "ShowCTADialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private showCTADialog()V
    .locals 5

    .line 34
    invoke-static {}, Lcom/xiaomi/scanner/util/AppJumpUtils;->getPolicyUrl()Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f110005

    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 37
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100111

    .line 39
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 37
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f10002a

    .line 40
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 41
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;)V

    .line 43
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 45
    new-instance v0, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$1;-><init>(Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;)V

    const v2, 0x7f100022

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 54
    new-instance v0, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$2;-><init>(Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;)V

    const v2, 0x7f100112

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 64
    new-instance v0, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity$3;-><init>(Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;)V

    .line 76
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v4}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 78
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 79
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const v0, 0x7f0a00f0

    .line 80
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$showCTADialog$0$com-xiaomi-scanner-dialog-ShowCTADialogActivity(Landroid/content/DialogInterface;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->hide()V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 29
    invoke-direct {p0}, Lcom/xiaomi/scanner/dialog/ShowCTADialogActivity;->showCTADialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 85
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
