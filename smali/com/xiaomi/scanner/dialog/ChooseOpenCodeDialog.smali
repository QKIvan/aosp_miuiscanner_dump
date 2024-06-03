.class public Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "ChooseOpenCodeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;

.field private btn_cancel:Landroid/widget/TextView;

.field private btn_confirm:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private extOndismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private isRemmber:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private result:Ljava/lang/String;

.field private ruleId:Ljava/lang/String;

.field private userClickBtn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->userClickBtn:Z

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->isRemmber:Z

    .line 57
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->list:Ljava/util/List;

    .line 59
    iput-object p3, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->ruleId:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->result:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->userClickBtn:Z

    .line 65
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->list:Ljava/util/List;

    .line 67
    iput-object p3, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->ruleId:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->result:Ljava/lang/String;

    .line 69
    iput-boolean p5, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->isRemmber:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;)Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->adapter:Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->userClickBtn:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->requestPreviewFrame()V

    return-void
.end method

.method private checkAppType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.tencent.mm"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startWeChart(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.eg.android.AlipayGphone"

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->result:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startAli(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v0, "com.sankuai.meituan"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startMeiTuan(Landroid/content/Context;)Z

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startOtherApp(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private jumpApp(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->checkAppType(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "This APP is not Installed"

    .line 170
    invoke-static {p1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Please choose app"

    .line 174
    invoke-static {p1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private requestPreviewFrame()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->context:Landroid/content/Context;

    instance-of v1, v0, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v1, :cond_0

    .line 180
    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->requestPreviewFrame()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected extOnDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->extOndismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p1, :cond_0

    .line 212
    invoke-interface {p1, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->userClickBtn:Z

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    .line 136
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 137
    iget-object v3, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->list:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f0a009c

    if-eq p1, v2, :cond_4

    const v2, 0x7f0a00a2

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 150
    :cond_2
    iget-boolean p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->isRemmber:Z

    if-eqz p1, :cond_3

    .line 151
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->jumpApp(Ljava/lang/String;)V

    .line 153
    :cond_3
    iput-boolean v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->userClickBtn:Z

    goto :goto_1

    .line 144
    :cond_4
    iget-boolean p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->isRemmber:Z

    if-eqz p1, :cond_5

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KEYOPENAPP"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->ruleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    :cond_5
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->jumpApp(Ljava/lang/String;)V

    .line 159
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0034

    .line 75
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->setContentView(I)V

    const p1, 0x7f0a00a0

    .line 77
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->listView:Landroid/widget/ListView;

    const p1, 0x7f0a00a2

    .line 78
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->btn_cancel:Landroid/widget/TextView;

    const p1, 0x7f0a009c

    .line 79
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->btn_confirm:Landroid/widget/TextView;

    .line 81
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->btn_cancel:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->btn_confirm:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-boolean p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->isRemmber:Z

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->btn_confirm:Landroid/widget/TextView;

    const v0, 0x7f100025

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->btn_cancel:Landroid/widget/TextView;

    const v0, 0x7f100188

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->btn_confirm:Landroid/widget/TextView;

    const v0, 0x7f100083

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->btn_cancel:Landroid/widget/TextView;

    const v0, 0x7f100033

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->list:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->setChecked(Z)V

    .line 96
    :cond_1
    new-instance p1, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;

    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->adapter:Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;

    .line 97
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->listView:Landroid/widget/ListView;

    new-instance v0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog$1;-><init>(Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    new-instance p1, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog$2;

    invoke-direct {p1, p0}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog$2;-><init>(Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public setExtOndismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ChooseOpenCodeDialog;->extOndismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method
