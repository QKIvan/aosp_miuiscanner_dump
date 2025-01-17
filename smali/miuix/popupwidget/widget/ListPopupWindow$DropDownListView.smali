.class Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mHijackFocus:Z

.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x101006d

    .line 1137
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1138
    iput-boolean p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    const/4 p1, 0x0

    .line 1139
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    return-void
.end method

.method static synthetic access$502(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;Z)Z
    .locals 0

    .line 1090
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method static synthetic access$600(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;IZ)I
    .locals 0

    .line 1090
    invoke-direct {p0, p1, p2}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result p0

    return p0
.end method

.method private lookForSelectablePosition(IZ)I
    .locals 4

    .line 1151
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    .line 1152
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 1156
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 1157
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 1159
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-ge p1, v2, :cond_2

    .line 1160
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, -0x1

    .line 1164
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_2

    .line 1165
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    :cond_3
    return p1

    :cond_4
    :goto_2
    return v1

    :cond_5
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_6

    goto :goto_3

    :cond_6
    return p1

    :cond_7
    :goto_3
    return v1
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .line 1215
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 1195
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 1205
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .line 1185
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final measureHeightOfChildrenCompact(IIIII)I
    .locals 10

    .line 1248
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getListPaddingTop()I

    move-result p2

    .line 1249
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getListPaddingBottom()I

    move-result p3

    .line 1250
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v0

    .line 1251
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1253
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/2addr p2, p3

    return p2

    :cond_0
    add-int/2addr p2, p3

    const/4 p3, 0x0

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1270
    :goto_0
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x0

    move-object v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v4, v1, :cond_8

    .line 1272
    invoke-interface {v2, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v5, :cond_2

    move-object v6, v3

    move v5, v8

    .line 1277
    :cond_2
    invoke-interface {v2, v4, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1281
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v8, :cond_3

    const/high16 v9, 0x40000000    # 2.0f

    .line 1284
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_2

    .line 1286
    :cond_3
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1288
    :goto_2
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    if-lez v4, :cond_4

    add-int/2addr p2, v0

    .line 1295
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr p2, v8

    if-lt p2, p4, :cond_6

    if-ltz p5, :cond_5

    if-le v4, p5, :cond_5

    if-lez v7, :cond_5

    if-eq p2, p4, :cond_5

    move p4, v7

    :cond_5
    return p4

    :cond_6
    if-ltz p5, :cond_7

    if-lt v4, p5, :cond_7

    move v7, p2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    return p2
.end method
