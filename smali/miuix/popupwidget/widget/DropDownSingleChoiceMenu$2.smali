.class Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;
.super Landroid/widget/ArrayAdapter;
.source "DropDownSingleChoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method private getViewInner(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;
    .locals 3

    .line 102
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    invoke-virtual {p4}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 104
    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    .line 105
    invoke-virtual {p4}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    .line 106
    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_large:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    sub-int/2addr p2, v2

    if-ne p3, p2, :cond_2

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_large:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 122
    :goto_0
    invoke-virtual {p4, v0, p2, v1, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-object p4
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;->getCount()I

    move-result v0

    invoke-direct {p0, p3, v0, p1, p2}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;->getViewInner(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 97
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v0, p3, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p2, v1, v0}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array p3, p3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, p1, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-object p1
.end method
