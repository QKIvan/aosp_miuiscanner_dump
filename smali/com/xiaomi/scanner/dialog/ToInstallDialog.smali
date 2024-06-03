.class public Lcom/xiaomi/scanner/dialog/ToInstallDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "ToInstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;

.field private btn_cancel:Landroid/widget/TextView;

.field private btn_confim:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private extOndismissListener:Landroid/content/DialogInterface$OnDismissListener;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/dialog/ToInstallDialog;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->requestPreviewFrame()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/dialog/ToInstallDialog;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/dialog/ToInstallDialog;)Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->adapter:Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;

    return-object p0
.end method

.method private requestPreviewFrame()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->context:Landroid/content/Context;

    instance-of v1, v0, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v1, :cond_0

    .line 145
    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->requestPreviewFrame()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected extOnDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->extOndismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public notifyList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;",
            ">;)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->list:Ljava/util/List;

    .line 101
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->adapter:Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00a5

    if-eq p1, v0, :cond_5

    const v0, 0x7f0a00a7

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/util/Util;->startAppStore(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->dismiss()V

    goto :goto_1

    :cond_1
    const-string p1, ""

    move-object v1, p1

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 123
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/xiaomi/scanner/util/Util;->startAppStore(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->dismiss()V

    goto :goto_1

    :cond_4
    const-string p1, "Please choose app"

    .line 126
    invoke-static {p1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->dismiss()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0036

    .line 53
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->setContentView(I)V

    .line 55
    new-instance p1, Lcom/xiaomi/scanner/dialog/ToInstallDialog$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog$1;-><init>(Lcom/xiaomi/scanner/dialog/ToInstallDialog;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const p1, 0x7f0a00a9

    .line 64
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->listView:Landroid/widget/ListView;

    const p1, 0x7f0a00a7

    .line 65
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->btn_confim:Landroid/widget/TextView;

    const p1, 0x7f0a00a5

    .line 66
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->btn_cancel:Landroid/widget/TextView;

    .line 68
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->btn_confim:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->btn_cancel:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->setChecked(Z)V

    .line 75
    :cond_0
    new-instance p1, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;

    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->list:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->context:Landroid/content/Context;

    invoke-direct {p1, v1, v2}, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->adapter:Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;

    .line 76
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 79
    iget-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->listView:Landroid/widget/ListView;

    new-instance v0, Lcom/xiaomi/scanner/dialog/ToInstallDialog$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/dialog/ToInstallDialog$2;-><init>(Lcom/xiaomi/scanner/dialog/ToInstallDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    return-void
.end method

.method public setExtOndismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/ToInstallDialog;->extOndismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method
