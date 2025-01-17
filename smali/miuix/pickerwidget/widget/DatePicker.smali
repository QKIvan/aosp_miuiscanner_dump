.class public Lmiuix/pickerwidget/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/widget/DatePicker$SavedState;,
        Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = false

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final LOG_TAG:Ljava/lang/String; = "DatePicker"

.field private static sChineseDays:[Ljava/lang/String;

.field private static sChineseLeapMonthMark:Ljava/lang/String;

.field private static sChineseLeapYearMonths:[Ljava/lang/String;

.field private static sChineseMonths:[Ljava/lang/String;


# instance fields
.field private mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDateFormatOrder:[C

.field private final mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

.field private mIsEnabled:Z

.field private mIsLunarMode:Z

.field private mMaxDate:Lmiuix/pickerwidget/date/Calendar;

.field private mMinDate:Lmiuix/pickerwidget/date/Calendar;

.field private final mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Lmiuix/pickerwidget/date/Calendar;

.field private final mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 114
    sget v0, Lmiuix/pickerwidget/R$attr;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 118
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    const/4 v2, 0x1

    .line 89
    iput-boolean v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsEnabled:Z

    const/4 v3, 0x0

    .line 91
    iput-boolean v3, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 120
    invoke-direct/range {p0 .. p0}, Lmiuix/pickerwidget/widget/DatePicker;->initChineseDaysIfNeeded()V

    .line 122
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 123
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 124
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 125
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 127
    sget-object v4, Lmiuix/pickerwidget/R$styleable;->DatePicker:[I

    sget v5, Lmiuix/pickerwidget/R$style;->Widget_DatePicker:I

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual {v1, v6, v4, v7, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 129
    sget v5, Lmiuix/pickerwidget/R$styleable;->DatePicker_spinnersShown:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 131
    sget v6, Lmiuix/pickerwidget/R$styleable;->DatePicker_startYear:I

    const/16 v7, 0x76c

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 133
    sget v6, Lmiuix/pickerwidget/R$styleable;->DatePicker_endYear:I

    const/16 v7, 0x834

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 134
    sget v7, Lmiuix/pickerwidget/R$styleable;->DatePicker_minDate:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 135
    sget v8, Lmiuix/pickerwidget/R$styleable;->DatePicker_maxDate:I

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 136
    sget v8, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_date_picker:I

    .line 137
    sget v10, Lmiuix/pickerwidget/R$styleable;->DatePicker_lunarCalendar:I

    invoke-virtual {v4, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 138
    sget v10, Lmiuix/pickerwidget/R$styleable;->DatePicker_showYear:I

    invoke-virtual {v4, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 139
    sget v11, Lmiuix/pickerwidget/R$styleable;->DatePicker_showMonth:I

    invoke-virtual {v4, v11, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 140
    sget v12, Lmiuix/pickerwidget/R$styleable;->DatePicker_showDay:I

    invoke-virtual {v4, v12, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 141
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v4}, Lmiuix/pickerwidget/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    const-string v4, "layout_inflater"

    .line 147
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 148
    invoke-virtual {v1, v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 150
    new-instance v1, Lmiuix/pickerwidget/widget/DatePicker$1;

    invoke-direct {v1, v0}, Lmiuix/pickerwidget/widget/DatePicker$1;-><init>(Lmiuix/pickerwidget/widget/DatePicker;)V

    .line 173
    sget v4, Lmiuix/pickerwidget/R$id;->pickers:I

    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 176
    sget v4, Lmiuix/pickerwidget/R$id;->day:I

    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const-wide/16 v13, 0x64

    .line 177
    invoke-virtual {v4, v13, v14}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 178
    invoke-virtual {v4, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    const/16 v8, 0x8

    if-nez v12, :cond_0

    .line 180
    invoke-virtual {v4, v8}, Lmiuix/pickerwidget/widget/NumberPicker;->setVisibility(I)V

    .line 184
    :cond_0
    sget v4, Lmiuix/pickerwidget/R$id;->month:I

    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 185
    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 186
    iget v3, v0, Lmiuix/pickerwidget/widget/DatePicker;->mNumberOfMonths:I

    sub-int/2addr v3, v2

    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 187
    iget-object v3, v0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    .line 188
    invoke-virtual {v4, v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 189
    invoke-virtual {v4, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    if-nez v11, :cond_1

    .line 191
    invoke-virtual {v4, v8}, Lmiuix/pickerwidget/widget/NumberPicker;->setVisibility(I)V

    .line 195
    :cond_1
    sget v2, Lmiuix/pickerwidget/R$id;->year:I

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 196
    invoke-virtual {v2, v13, v14}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 197
    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    if-nez v10, :cond_2

    .line 199
    invoke-virtual {v2, v8}, Lmiuix/pickerwidget/widget/NumberPicker;->setVisibility(I)V

    .line 202
    :cond_2
    invoke-direct/range {p0 .. p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateFormatters()V

    if-nez v5, :cond_3

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/DatePicker;->setSpinnersShown(Z)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {v0, v5}, Lmiuix/pickerwidget/widget/DatePicker;->setSpinnersShown(Z)V

    .line 213
    :goto_0
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 214
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 215
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0, v7, v1}, Lmiuix/pickerwidget/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiuix/pickerwidget/date/Calendar;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 216
    iget-object v8, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    move-object v4, v15

    move v15, v1

    invoke-virtual/range {v8 .. v15}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    goto :goto_1

    :cond_4
    move-object v4, v15

    goto :goto_1

    :cond_5
    move-object v4, v15

    .line 219
    iget-object v8, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    .line 221
    :goto_1
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lmiuix/pickerwidget/widget/DatePicker;->setMinDate(J)V

    .line 224
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 225
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 226
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0, v4, v1}, Lmiuix/pickerwidget/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiuix/pickerwidget/date/Calendar;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 227
    iget-object v10, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v12, 0xb

    const/16 v13, 0x1f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v11, v6

    invoke-virtual/range {v10 .. v17}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    goto :goto_2

    .line 230
    :cond_6
    iget-object v10, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v12, 0xb

    const/16 v13, 0x1f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v11, v6

    invoke-virtual/range {v10 .. v17}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    .line 232
    :cond_7
    :goto_2
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setMaxDate(J)V

    .line 235
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 236
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    iget-object v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v2

    iget-object v3, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v4, 0x9

    .line 237
    invoke-virtual {v3, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    .line 236
    invoke-virtual {v0, v1, v2, v3, v4}, Lmiuix/pickerwidget/widget/DatePicker;->init(IIILmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;)V

    .line 240
    invoke-direct/range {p0 .. p0}, Lmiuix/pickerwidget/widget/DatePicker;->reorderSpinners()V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lmiuix/pickerwidget/widget/DatePicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    .line 244
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/DatePicker;->setImportantForAccessibility(I)V

    :cond_8
    return-void
.end method

.method static synthetic access$000(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;
    .locals 0

    .line 40
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;
    .locals 0

    .line 40
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .locals 0

    .line 40
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/pickerwidget/widget/DatePicker;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    return p0
.end method

.method static synthetic access$400(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .locals 0

    .line 40
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .locals 0

    .line 40
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/pickerwidget/widget/DatePicker;III)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/pickerwidget/widget/DatePicker;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    return-void
.end method

.method static synthetic access$800(Lmiuix/pickerwidget/widget/DatePicker;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$900(Lmiuix/pickerwidget/widget/DatePicker;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method private initChineseDaysIfNeeded()V
    .locals 6

    .line 249
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    .line 252
    :cond_0
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 253
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    .line 255
    :goto_0
    sget-object v3, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lmiuix/pickerwidget/R$string;->chinese_month:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_1
    array-length v0, v3

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapYearMonths:[Ljava/lang/String;

    .line 260
    :cond_2
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 261
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private isNewDate(III)Z
    .locals 2

    .line 594
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v0, 0x5

    .line 595
    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p1

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 p3, 0x9

    .line 596
    invoke-virtual {p1, p3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private notifyDateChanged()V
    .locals 7

    const/4 v0, 0x4

    .line 715
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 716
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_0

    .line 717
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getYear()I

    move-result v3

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getMonth()I

    move-result v4

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getDayOfMonth()I

    move-result v5

    iget-boolean v6, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lmiuix/pickerwidget/widget/DatePicker;IIIZ)V

    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Lmiuix/pickerwidget/date/Calendar;)Z
    .locals 2

    .line 585
    :try_start_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 588
    :catch_0
    sget-object p2, Lmiuix/pickerwidget/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in format: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MM/dd/yyyy"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private reorderSpinners()V
    .locals 5

    .line 492
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 494
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDateFormatOrder:[C

    if-nez v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 499
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 501
    aget-char v3, v0, v2

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2

    const/16 v4, 0x79

    if-ne v3, v4, :cond_1

    .line 511
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setImeOptions(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    goto :goto_1

    .line 515
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 503
    :cond_2
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setImeOptions(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    goto :goto_1

    .line 507
    :cond_3
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 508
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setImeOptions(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private resetMonthsDisplayedValues()V
    .locals 5

    .line 463
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getChineseLeapMonth()I

    move-result v0

    if-gez v0, :cond_0

    .line 466
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    iput-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_1

    .line 468
    :cond_0
    sget-object v2, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapYearMonths:[Ljava/lang/String;

    iput-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 469
    sget-object v3, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    sget-object v1, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_1

    .line 475
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 478
    iput-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 479
    :goto_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 480
    sget-object v2, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 455
    :cond_0
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 457
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mNumberOfMonths:I

    .line 458
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    .line 459
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateFormatters()V

    return-void
.end method

.method private setDate(III)V
    .locals 8

    .line 600
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    .line 601
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->before(Lmiuix/pickerwidget/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 602
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    goto :goto_0

    .line 603
    :cond_0
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->after(Lmiuix/pickerwidget/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 604
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    :cond_1
    :goto_0
    return-void
.end method

.method private setImeOptions(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/4 p2, 0x6

    .line 735
    :goto_0
    sget p3, Lmiuix/pickerwidget/R$id;->number_picker_input:I

    invoke-virtual {p1, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 736
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private updateFormatters()V
    .locals 2

    .line 266
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    if-nez v1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    sget-object v1, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    .line 270
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    invoke-direct {v1}, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;-><init>()V

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSpinners()V
    .locals 12

    .line 609
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/pickerwidget/R$string;->date_picker_label_day:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/pickerwidget/R$string;->date_picker_label_month:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/pickerwidget/R$string;->date_picker_label_year:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 618
    :goto_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 620
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const/16 v4, 0xa

    const/16 v5, 0x9

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v3, v4}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 621
    invoke-virtual {v3, v5}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 620
    :goto_1
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 622
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 623
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 625
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v6, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const/16 v7, 0xb

    if-eqz v6, :cond_2

    iget-object v6, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v6}, Lmiuix/pickerwidget/date/Calendar;->getChineseLeapMonth()I

    move-result v6

    if-ltz v6, :cond_2

    const/16 v7, 0xc

    :cond_2
    invoke-virtual {v0, v7}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 626
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 629
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const/4 v6, 0x2

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    .line 630
    :goto_2
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v8, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x6

    if-ne v7, v8, :cond_7

    .line 631
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v8, v10}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v8

    goto :goto_3

    :cond_4
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v8, v9}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v8

    :goto_3
    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 632
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v7, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 634
    iget-boolean v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x6

    goto :goto_4

    :cond_5
    const/4 v7, 0x5

    .line 635
    :goto_4
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v8, v7}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v8

    iget-object v11, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v11, v7}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_7

    .line 636
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v8, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v8

    goto :goto_5

    :cond_6
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 637
    invoke-virtual {v8, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v8

    .line 636
    :goto_5
    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 638
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v7, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 642
    :cond_7
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v8, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    if-ne v7, v0, :cond_b

    .line 643
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v7, v10}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    goto :goto_6

    :cond_8
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v7, v9}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    :goto_6
    invoke-virtual {v0, v7}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 644
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 645
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 647
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto :goto_7

    :cond_9
    const/4 v0, 0x5

    .line 648
    :goto_7
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_b

    .line 649
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    goto :goto_8

    :cond_a
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 650
    invoke-virtual {v1, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    .line 649
    :goto_8
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 651
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 657
    :cond_b
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result v1

    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v0, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 659
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 660
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_c

    .line 661
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result v1

    sub-int/2addr v1, v2

    sget-object v7, Lmiuix/pickerwidget/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v0, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 662
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 666
    :cond_c
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->isLunarMode()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_9

    :cond_d
    const/4 v0, 0x1

    .line 667
    :goto_9
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 668
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 669
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 672
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getChineseLeapMonth()I

    move-result v0

    if-ltz v0, :cond_f

    .line 673
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->isChineseLeapMonth()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v10}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    if-le v1, v0, :cond_f

    :cond_e
    const/4 v3, 0x1

    .line 674
    :cond_f
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    goto :goto_a

    :cond_10
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    :goto_a
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 675
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    if-eqz v3, :cond_11

    invoke-virtual {v1, v10}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_b

    .line 676
    :cond_11
    invoke-virtual {v1, v10}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    goto :goto_b

    :cond_12
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v9}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    .line 675
    :goto_b
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 677
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    goto :goto_c

    :cond_13
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 678
    invoke-virtual {v1, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    .line 677
    :goto_c
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 360
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 539
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 701
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 318
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 284
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .line 692
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->isChineseLeapMonth()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 693
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v1, 0x5

    .line 694
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .line 397
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 685
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;)V
    .locals 0

    .line 572
    invoke-direct {p0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DatePicker;->setDate(III)V

    .line 573
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    .line 574
    iput-object p4, p0, Lmiuix/pickerwidget/widget/DatePicker;->mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLunarMode()Z
    .locals 1

    .line 708
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 387
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 375
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 376
    const-class v0, Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 381
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 382
    const-class v0, Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 366
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 369
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x380

    invoke-static {v0, v1, v2, v3}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 553
    check-cast p1, Lmiuix/pickerwidget/widget/DatePicker$SavedState;

    .line 554
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 555
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1100(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1200(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I

    move-result v1

    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1300(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setDate(III)V

    .line 556
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1400(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 557
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 544
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 545
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v2

    .line 546
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v3

    .line 547
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v4

    .line 548
    new-instance v7, Lmiuix/pickerwidget/widget/DatePicker$SavedState;

    iget-boolean v5, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZLmiuix/pickerwidget/widget/DatePicker$1;)V

    return-object v7
.end method

.method public setDateFormatOrder([C)V
    .locals 0

    .line 746
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDateFormatOrder:[C

    .line 747
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->reorderSpinners()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 343
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setEnabled(Z)V

    .line 348
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setEnabled(Z)V

    .line 349
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setEnabled(Z)V

    .line 350
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setLunarMode(Z)V
    .locals 1

    .line 414
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eq p1, v0, :cond_0

    .line 415
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 416
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    .line 417
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    :cond_0
    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 329
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 330
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v1, 0xc

    .line 331
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 335
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->after(Lmiuix/pickerwidget/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 336
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 338
    :cond_1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .line 295
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 296
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v1, 0xc

    .line 297
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 301
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->before(Lmiuix/pickerwidget/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 302
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 304
    :cond_1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1

    .line 406
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showDayPicker(Z)V
    .locals 1

    .line 442
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setVisibility(I)V

    return-void
.end method

.method public showMonthPicker(Z)V
    .locals 1

    .line 434
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setVisibility(I)V

    return-void
.end method

.method public showYearPicker(Z)V
    .locals 1

    .line 426
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setVisibility(I)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .line 528
    invoke-direct {p0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 531
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DatePicker;->setDate(III)V

    .line 532
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    .line 533
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method
