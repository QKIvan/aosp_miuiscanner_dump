.class public Lcom/xiaomi/scanner/util/DialogEdittextUtil;
.super Ljava/lang/Object;
.source "DialogEdittextUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/DialogEdittextUtil$CTAClick;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field public static ctaClick:Lcom/xiaomi/scanner/util/DialogEdittextUtil$CTAClick;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "DialogEdittextUtil"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/DialogEdittextUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;III)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 30
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 32
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 28
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/scanner/util/DialogEdittextUtil;->createConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static createConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;
    .locals 1

    .line 41
    :try_start_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 42
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 43
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 44
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 45
    invoke-virtual {p0, p4, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 49
    sget-object p1, Lcom/xiaomi/scanner/util/DialogEdittextUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "create ConfirmAlert error"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static dismissDialog(Landroid/app/Dialog;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static showCTADialogWithCancel(Landroid/content/Context;Lcom/xiaomi/scanner/util/DialogEdittextUtil$CTAClick;)Lmiuix/appcompat/app/AlertDialog;
    .locals 3

    .line 103
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 105
    sput-object p1, Lcom/xiaomi/scanner/util/DialogEdittextUtil;->ctaClick:Lcom/xiaomi/scanner/util/DialogEdittextUtil$CTAClick;

    .line 106
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1101fc

    invoke-direct {p1, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f1000c7

    .line 107
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const p0, 0x7f0a00b5

    .line 109
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const v1, 0x7f0a00b7

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a00b6

    .line 111
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 113
    new-instance v2, Lcom/xiaomi/scanner/util/DialogEdittextUtil$1;

    invoke-direct {v2, v1}, Lcom/xiaomi/scanner/util/DialogEdittextUtil$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    new-instance v1, Lcom/xiaomi/scanner/util/DialogEdittextUtil$2;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/scanner/util/DialogEdittextUtil$2;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;)V

    const p0, 0x7f1000fe

    invoke-virtual {p1, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 142
    new-instance p0, Lcom/xiaomi/scanner/util/DialogEdittextUtil$3;

    invoke-direct {p0}, Lcom/xiaomi/scanner/util/DialogEdittextUtil$3;-><init>()V

    const v0, 0x7f100033

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-object p0
.end method

.method public static showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IIII)Lmiuix/appcompat/app/AlertDialog;
    .locals 7

    .line 64
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {p0, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 61
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/scanner/util/DialogEdittextUtil;->showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;
    .locals 1

    .line 77
    :try_start_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 78
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 79
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 80
    invoke-virtual {p0, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 81
    invoke-virtual {p0, p5, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 82
    invoke-virtual {p0, p6, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 86
    sget-object p1, Lcom/xiaomi/scanner/util/DialogEdittextUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "create ConfirmAlertWithCancel error"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
