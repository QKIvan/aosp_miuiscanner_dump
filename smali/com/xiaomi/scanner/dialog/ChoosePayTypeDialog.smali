.class public Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "ChoosePayTypeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;
    }
.end annotation


# instance fields
.field private alipaySelect:Landroid/widget/ImageView;

.field private alipayText:Landroid/widget/TextView;

.field private isSelectWechat:Z

.field private isToInstall:Z

.field private mCheckSavePay:Landroid/widget/CheckBox;

.field private payTypeClickListener:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;

.field private savePayTypeLayout:Landroid/widget/LinearLayout;

.field private scanResult:Ljava/lang/String;

.field private select_aliPay:Landroid/widget/LinearLayout;

.field private select_weChat:Landroid/widget/LinearLayout;

.field private toPay:Landroid/widget/TextView;

.field private wechatSelect:Landroid/widget/ImageView;

.field private wechatText:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->isSelectWechat:Z

    .line 38
    iput-object p2, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->scanResult:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->payTypeClickListener:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;

    .line 40
    iput-boolean p4, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->isToInstall:Z

    return-void
.end method

.method public static showChoosePayDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;
    .locals 1

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    new-instance v0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;Z)V

    .line 30
    invoke-virtual {v0, p3}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 31
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->show()V

    return-object v0
.end method

.method private updateSelectStatus(Z)V
    .locals 6

    const-string v0, "#0D000000"

    const-string v1, "#FFFFFFFF"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "#FF000000"

    const-string v5, "#0091DC"

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatText:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->alipayText:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->alipaySelect:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatSelect:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->select_weChat:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 134
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->select_aliPay:Landroid/widget/LinearLayout;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->alipayText:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatText:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->alipaySelect:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatSelect:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->select_weChat:Landroid/widget/LinearLayout;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 141
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->select_aliPay:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private updateSettingSaveType()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->mCheckSavePay:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-boolean v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->isSelectWechat:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "preferencePaySelect"

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->payTypeClickListener:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01a1

    if-ne v0, v1, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->updateSettingSaveType()V

    .line 101
    iget-boolean p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->isSelectWechat:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isWechatPayType"

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->payTypeClickListener:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;

    iget-boolean v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->isSelectWechat:Z

    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->scanResult:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;->onToPayClick(ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->dismiss()V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a006a

    if-ne v0, v1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->payTypeClickListener:Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;

    invoke-interface {p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog$OnPayTypeClickListener;->onCancel()V

    .line 108
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->dismiss()V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a015b

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 110
    iput-boolean v2, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->isSelectWechat:Z

    .line 111
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->updateSelectStatus(Z)V

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0159

    if-ne v0, v1, :cond_4

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->isSelectWechat:Z

    .line 115
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->updateSelectStatus(Z)V

    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a013c

    if-ne p1, v0, :cond_5

    .line 117
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->mCheckSavePay:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0035

    .line 61
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->setContentView(I)V

    const p1, 0x7f0a0048

    .line 63
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->alipayText:Landroid/widget/TextView;

    const p1, 0x7f0a01d4

    .line 64
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatText:Landroid/widget/TextView;

    const p1, 0x7f0a0049

    .line 65
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->alipaySelect:Landroid/widget/ImageView;

    const p1, 0x7f0a01d5

    .line 66
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->wechatSelect:Landroid/widget/ImageView;

    const p1, 0x7f0a015b

    .line 67
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->select_weChat:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0159

    .line 68
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->select_aliPay:Landroid/widget/LinearLayout;

    const p1, 0x7f0a013c

    .line 69
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->savePayTypeLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a01a1

    .line 70
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->toPay:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->select_weChat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->select_aliPay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->savePayTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a013d

    .line 76
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->mCheckSavePay:Landroid/widget/CheckBox;

    const v0, 0x7f0a006a

    .line 78
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-boolean p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->isToInstall:Z

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->toPay:Landroid/widget/TextView;

    const v0, 0x7f100202

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->toPay:Landroid/widget/TextView;

    const v0, 0x7f100200

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->setCancelable(Z)V

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "isWechatPayType"

    .line 89
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocalBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->isSelectWechat:Z

    .line 90
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/dialog/ChoosePayTypeDialog;->updateSelectStatus(Z)V

    return-void
.end method
