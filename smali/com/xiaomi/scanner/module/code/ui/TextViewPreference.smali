.class public Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;
.super Landroid/preference/Preference;
.source "TextViewPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;
    }
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field private mIsShow:Z

.field private mListener:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0d00b7

    .line 37
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean p2, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mIsShow:Z

    .line 26
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;)Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mListener:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;

    return-object p0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0168

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mImageView:Landroid/widget/ImageView;

    .line 46
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mIsShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mImageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$1;-><init>(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnSmsClickListener(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->mListener:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;

    return-void
.end method
