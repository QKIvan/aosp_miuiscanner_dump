.class Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;
.super Ljava/lang/Object;
.source "AlphabetIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/AlphabetIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextHighlighter"
.end annotation


# instance fields
.field mActivatedColor:I

.field mHighlightColor:I

.field mIndexerTextSize:I

.field mIndexes:[Ljava/lang/String;

.field mNormalColor:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 9

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    sget v1, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatIndexerTable:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 142
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 144
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v1, v4

    .line 145
    iget-object v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_0

    .line 148
    :cond_0
    sget v1, Lmiuix/miuixbasewidget/R$array;->alphabet_table:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 151
    :cond_1
    sget v1, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatIndexerTextColorList:I

    sget v3, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_alphabet_indexer_text_light:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 152
    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    const/4 v1, 0x1

    new-array v3, v1, [I

    const v4, 0x10100a1

    aput v4, v3, v2

    .line 153
    sget v4, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_alphabet_indexer_highlight_text_color:I

    .line 154
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 153
    invoke-virtual {p1, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mHighlightColor:I

    new-array v1, v1, [I

    const v3, 0x10102fe

    aput v3, v1, v2

    .line 155
    sget v3, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_alphabet_indexer_activated_text_color:I

    .line 156
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 155
    invoke-virtual {p1, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mActivatedColor:I

    new-array v1, v2, [I

    .line 157
    sget v2, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_alphabet_indexer_text_color:I

    .line 158
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 157
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mNormalColor:I

    .line 160
    sget p1, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatIndexerTextSize:I

    sget v1, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_text_size:I

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 160
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexerTextSize:I

    return-void
.end method
