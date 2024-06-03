.class public Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooseOpenCodeDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

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

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;->list:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;->list:Ljava/util/List;

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

    .line 56
    iget-object p2, p0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d003b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;-><init>()V

    const v1, 0x7f0a009d

    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;->checked:Landroid/widget/ImageView;

    const v1, 0x7f0a009e

    .line 61
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0a00a1

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v1, 0x7f0a009f

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;

    .line 71
    :goto_0
    iget-object v1, v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/util/Util;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v2, v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 80
    iget-object p1, v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;->checked:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object p1, v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    const-string p3, "#0A000000"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 82
    iget-object p1, v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string p3, "#ff0097ff"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 84
    :cond_2
    iget-object p1, v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;->checked:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object p1, v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 86
    iget-object p1, v0, Lcom/xiaomi/scanner/adapter/ChooseOpenCodeDialogAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-object p2
.end method
