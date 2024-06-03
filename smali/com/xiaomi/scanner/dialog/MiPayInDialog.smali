.class public Lcom/xiaomi/scanner/dialog/MiPayInDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "MiPayInDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_mipay:Landroid/widget/LinearLayout;

.field private btn_more:Landroid/widget/LinearLayout;

.field private btn_rem:Landroid/widget/LinearLayout;

.field private checkBox:Landroid/widget/CheckBox;

.field private context:Landroid/content/Context;

.field private result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "MiPayInDialog"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->result:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/dialog/MiPayInDialog;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->requestPreviewFrame()V

    return-void
.end method

.method private jumpAppStore()V
    .locals 3

    :try_start_0
    const-string v0, "market://details?id=com.mipay.wallet.in"

    .line 109
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 111
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private jumpOtherApp(Ljava/lang/String;)V
    .locals 4

    .line 120
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    sget-object v1, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jumpOtherAppExection   ->   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->launchQRResultActivity(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private launchQRResultActivity(Ljava/lang/String;)V
    .locals 2

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result"

    .line 133
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "mipayIn"

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->context:Landroid/content/Context;

    const-class v1, Lcom/xiaomi/scanner/module/code/app/QRResultActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 136
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private requestPreviewFrame()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->context:Landroid/content/Context;

    instance-of v1, v0, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->requestPreviewFrame()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "mipayin_remember"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->dismiss()V

    .line 85
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->result:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->jumpOtherApp(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->dismiss()V

    .line 77
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->jumpAppStore()V

    goto :goto_0

    .line 96
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->dismiss()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a005b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0044

    .line 49
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->setContentView(I)V

    const p1, 0x7f0a005c

    .line 51
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->btn_mipay:Landroid/widget/LinearLayout;

    const p1, 0x7f0a005d

    .line 52
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->btn_more:Landroid/widget/LinearLayout;

    const p1, 0x7f0a005e

    .line 53
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->btn_rem:Landroid/widget/LinearLayout;

    const p1, 0x7f0a005b

    .line 54
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->btn_cancel:Landroid/widget/Button;

    const p1, 0x7f0a00f5

    .line 55
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->checkBox:Landroid/widget/CheckBox;

    .line 57
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->btn_mipay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->btn_more:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->btn_rem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance p1, Lcom/xiaomi/scanner/dialog/MiPayInDialog$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/scanner/dialog/MiPayInDialog$1;-><init>(Lcom/xiaomi/scanner/dialog/MiPayInDialog;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/MiPayInDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
