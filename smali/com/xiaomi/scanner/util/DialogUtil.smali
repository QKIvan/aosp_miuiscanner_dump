.class public Lcom/xiaomi/scanner/util/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;
    }
.end annotation


# static fields
.field public static final POLICYLINK:Ljava/lang/String; = "https://privacy.mi.com/all/"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static ctaClick:Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "DialogUtil"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/DialogUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CameraErrorDialog(Landroid/app/Activity;IZ)Lmiuix/appcompat/app/AlertDialog;
    .locals 2

    if-eqz p0, :cond_1

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/util/DialogUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Show fatal error dialog"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/xiaomi/scanner/util/DialogUtil$1;

    invoke-direct {v0, p2, p0}, Lcom/xiaomi/scanner/util/DialogUtil$1;-><init>(ZLandroid/app/Activity;)V

    const p2, 0x7f100032

    const v1, 0x7f100112

    invoke-static {p0, v0, p2, p1, v1}, Lcom/xiaomi/scanner/util/DialogUtil;->createConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;III)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 111
    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/scanner/util/DialogUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p1, "activity is null or activity is finishing"

    invoke-static {p0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;
    .locals 1

    .line 21
    sget-object v0, Lcom/xiaomi/scanner/util/DialogUtil;->ctaClick:Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;

    return-object v0
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 21
    sget-object v0, Lcom/xiaomi/scanner/util/DialogUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method public static createConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;III)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 41
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 43
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/scanner/util/DialogUtil;->createConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static createConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;
    .locals 1

    .line 52
    :try_start_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 53
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 54
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 55
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 56
    invoke-virtual {p0, p4, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/xiaomi/scanner/util/DialogUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "create ConfirmAlert error"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static dismissDialog(Landroid/app/Dialog;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static getCtaClick()Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;
    .locals 1

    .line 28
    sget-object v0, Lcom/xiaomi/scanner/util/DialogUtil;->ctaClick:Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;

    return-object v0
.end method

.method public static setCtaClick(Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/xiaomi/scanner/util/DialogUtil;->ctaClick:Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;

    return-void
.end method

.method public static showCTADialog(Landroid/content/Context;Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;)Lmiuix/appcompat/app/AlertDialog;
    .locals 4

    .line 131
    sput-object p1, Lcom/xiaomi/scanner/util/DialogUtil;->ctaClick:Lcom/xiaomi/scanner/util/DialogUtil$CTAClick;

    .line 132
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f110005

    invoke-direct {p1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f10002a

    .line 133
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 134
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://privacy.mi.com/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 136
    new-instance v0, Lcom/xiaomi/scanner/util/DialogUtil$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/util/DialogUtil$2;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100022

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 153
    new-instance v0, Lcom/xiaomi/scanner/util/DialogUtil$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/util/DialogUtil$3;-><init>(Landroid/content/Context;)V

    const p0, 0x7f100112

    invoke-virtual {p1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 171
    new-instance p0, Lcom/xiaomi/scanner/util/DialogUtil$4;

    invoke-direct {p0}, Lcom/xiaomi/scanner/util/DialogUtil$4;-><init>()V

    .line 180
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v3}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 182
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 183
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const p0, 0x7f0a00f0

    .line 184
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-object p1
.end method

.method public static showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IIII)Lmiuix/appcompat/app/AlertDialog;
    .locals 7

    .line 75
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-virtual {p0, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 72
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/scanner/util/DialogUtil;->showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;
    .locals 1

    .line 88
    :try_start_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 89
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 90
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 91
    invoke-virtual {p0, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 92
    invoke-virtual {p0, p5, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 93
    invoke-virtual {p0, p6, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 97
    sget-object p1, Lcom/xiaomi/scanner/util/DialogUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "create ConfirmAlertWithCancel error"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
