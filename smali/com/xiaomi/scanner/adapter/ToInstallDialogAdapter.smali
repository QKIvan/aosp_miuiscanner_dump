.class public Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "ToInstallDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;->list:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 53
    iget-object p2, p0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d003c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 55
    new-instance v0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;-><init>()V

    const v1, 0x7f0a00a6

    .line 57
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;->checked:Landroid/widget/ImageView;

    const v1, 0x7f0a00aa

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v1, 0x7f0a00a8

    .line 59
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;

    .line 67
    :goto_0
    iget-object v1, v0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    iget-object p1, v0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;->checked:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object p1, v0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    const-string p3, "#0A000000"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 71
    iget-object p1, v0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string p3, "#ff0097ff"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 73
    :cond_1
    iget-object p1, v0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;->checked:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object p1, v0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 75
    iget-object p1, v0, Lcom/xiaomi/scanner/adapter/ToInstallDialogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-object p2
.end method
