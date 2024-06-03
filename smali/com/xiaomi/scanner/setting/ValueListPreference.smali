.class public Lcom/xiaomi/scanner/setting/ValueListPreference;
.super Landroidx/preference/ListPreference;
.source "ValueListPreference.java"


# instance fields
.field private customClickListener:Landroid/view/View$OnClickListener;

.field private itemTextView:Landroid/widget/TextView;

.field private itemValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/xiaomi/scanner/setting/ValueListPreference;->itemValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/xiaomi/scanner/setting/ValueListPreference;->itemValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$onBindViewHolder$0$com-xiaomi-scanner-setting-ValueListPreference(Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/ValueListPreference;->customClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/ValueListPreference;->performClick()V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 49
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/xiaomi/scanner/setting/ValueListPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/setting/ValueListPreference$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/scanner/setting/ValueListPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0087

    .line 57
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaomi/scanner/setting/ValueListPreference;->itemTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/ValueListPreference;->itemValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/ValueListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/ValueListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 63
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/ValueListPreference;->itemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/ValueListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setConentClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaomi/scanner/setting/ValueListPreference;->customClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setItemValue(Ljava/lang/String;)V
    .locals 1

    .line 39
    iput-object p1, p0, Lcom/xiaomi/scanner/setting/ValueListPreference;->itemValue:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/xiaomi/scanner/setting/ValueListPreference;->itemTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
