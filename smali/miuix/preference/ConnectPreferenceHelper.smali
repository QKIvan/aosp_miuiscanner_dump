.class public Lmiuix/preference/ConnectPreferenceHelper;
.super Ljava/lang/Object;
.source "ConnectPreferenceHelper.java"


# static fields
.field public static final BACKGROUND_ANIM_FACTOR:F = 1.5f

.field public static final BACKGROUND_ANIM_TIME:I = 0x12c

.field private static final STATE_ATTR_CONNECTED:[I

.field private static final STATE_ATTR_DISCONNECTED:[I

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ConnectPreferenceHelper"


# instance fields
.field private BgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

.field private bgDrawableConnected:Landroid/graphics/drawable/Drawable;

.field private connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private iconColorList:Landroid/content/res/ColorStateList;

.field private mContext:Landroid/content/Context;

.field private mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

.field private mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

.field private mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

.field private mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

.field private mIconAnimEnabled:Z

.field private mLastState:I

.field private mPreference:Landroidx/preference/Preference;

.field private mState:I

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mWidgetView:Landroid/view/View;

.field private summaryColorList:Landroid/content/res/ColorStateList;

.field private titleColorList:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 49
    sget v2, Lmiuix/preference/R$attr;->state_connected:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    new-array v0, v0, [I

    .line 50
    sget v1, Lmiuix/preference/R$attr;->state_connected:I

    neg-int v1, v1

    aput v1, v0, v3

    sput-object v0, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    .line 39
    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    .line 66
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    .line 68
    sget p2, Lmiuix/preference/R$color;->miuix_preference_connect_title_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    .line 69
    sget p2, Lmiuix/preference/R$color;->miuix_preference_connect_summary_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    .line 70
    sget p2, Lmiuix/preference/R$color;->miuix_preference_connect_icon_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    .line 73
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->initAnim(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/ConnectPreferenceHelper;)Landroidx/preference/Preference;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/preference/ConnectPreferenceHelper;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mSummaryView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0
.end method

.method private initAnim(Landroid/content/Context;)V
    .locals 10

    .line 81
    sget v0, Lmiuix/preference/R$drawable;->miuix_preference_ic_bg_connect:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->BgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_1

    return-void

    .line 90
    :cond_1
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->BgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

    sget v0, Lmiuix/preference/R$id;->anim_preference_connecting:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 91
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->BgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

    sget v0, Lmiuix/preference/R$id;->shape_preference_connected:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    sget-object v0, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    sget v1, Lmiuix/preference/R$color;->miuix_preference_connect_title_disconnected_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 94
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    sget-object v2, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    sget v3, Lmiuix/preference/R$color;->miuix_preference_connect_title_connected_color:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 95
    iget-object v3, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    sget v4, Lmiuix/preference/R$color;->miuix_preference_connect_summary_disconnected_color:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 96
    iget-object v4, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    sget v5, Lmiuix/preference/R$color;->miuix_preference_connect_summary_connected_color:I

    invoke-virtual {v4, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 97
    iget-object v5, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    sget v6, Lmiuix/preference/R$color;->miuix_preference_connect_icon_disconnected_color:I

    invoke-virtual {v5, v0, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 98
    iget-object v5, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    sget v6, Lmiuix/preference/R$color;->miuix_preference_connect_icon_connected_color:I

    invoke-virtual {v5, v2, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v0, 0x1

    aput v2, v6, v0

    .line 100
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x12c

    .line 101
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 102
    iget-object v2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    new-instance v6, Lmiuix/preference/ConnectPreferenceHelper$1;

    invoke-direct {v6, p0}, Lmiuix/preference/ConnectPreferenceHelper$1;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v5, [I

    aput p1, v2, v7

    aput v1, v2, v0

    .line 112
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    .line 113
    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/preference/ConnectPreferenceHelper$2;

    invoke-direct {v1, p0}, Lmiuix/preference/ConnectPreferenceHelper$2;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, v5, [I

    aput v3, p1, v7

    aput v4, p1, v0

    .line 123
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    .line 124
    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$3;

    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$3;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, v5, [I

    .line 135
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    .line 136
    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 137
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$4;

    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$4;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 144
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$5;

    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$5;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private static setAlphaFolme(Landroid/view/View;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 347
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const v3, 0x3f19999a    # 0.6f

    new-array v0, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v4, v0, v2

    invoke-interface {v1, v3, v0}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private startConnectedToDisConnectedAnim()V
    .locals 2

    .line 260
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 262
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 265
    :cond_0
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 268
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 271
    :cond_1
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 274
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 277
    :cond_2
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 280
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 281
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 283
    :cond_3
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method private startDisConnectedToConnectedAnim()V
    .locals 2

    .line 288
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 290
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 293
    :cond_0
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 294
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 296
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 299
    :cond_1
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 302
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 305
    :cond_2
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 308
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 309
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 311
    :cond_3
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 312
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateState(Z)V
    .locals 2

    .line 244
    iget v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateStateConnecting(Z)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateStateConnected(Z)V

    goto :goto_0

    .line 249
    :cond_2
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateStateDisconnected(Z)V

    :goto_0
    return-void
.end method

.method private updateStateConnected(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 235
    invoke-direct {p0}, Lmiuix/preference/ConnectPreferenceHelper;->startDisConnectedToConnectedAnim()V

    goto :goto_0

    .line 237
    :cond_0
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 238
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateViewColorList([I)V

    .line 240
    :goto_0
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateWidgetDrawable([I)V

    return-void
.end method

.method private updateStateConnecting(Z)V
    .locals 2

    .line 199
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 201
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    const/16 v1, 0xff

    .line 202
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAlpha(I)V

    .line 203
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    if-nez p1, :cond_1

    .line 208
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateViewColorList([I)V

    .line 210
    :cond_1
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateWidgetDrawable([I)V

    return-void
.end method

.method private updateStateDisconnected(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 215
    iget p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 216
    invoke-direct {p0}, Lmiuix/preference/ConnectPreferenceHelper;->startConnectedToDisConnectedAnim()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 217
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_2

    .line 218
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_0

    .line 223
    :cond_1
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 224
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateViewColorList([I)V

    .line 227
    :cond_2
    :goto_0
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_3

    .line 228
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAlpha(I)V

    .line 230
    :cond_3
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateWidgetDrawable([I)V

    return-void
.end method

.method private updateViewColorList([I)V
    .locals 3

    .line 316
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-boolean v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    sget v2, Lmiuix/preference/R$color;->miuix_preference_connect_icon_disconnected_color:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 321
    :cond_0
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 322
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    sget v2, Lmiuix/preference/R$color;->miuix_preference_connect_title_disconnected_color:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    :cond_1
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 326
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    sget v2, Lmiuix/preference/R$color;->miuix_preference_connect_summary_disconnected_color:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private updateWidgetDrawable([I)V
    .locals 3

    .line 187
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mWidgetView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 188
    sget-object v1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    if-ne p1, v1, :cond_0

    .line 189
    check-cast v0, Landroid/widget/ImageView;

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/preference/R$drawable;->miuix_preference_ic_detail_connected:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 191
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 192
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lmiuix/preference/R$attr;->connectDetailDisconnectedDrawable:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 193
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mWidgetView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getConnectState()I
    .locals 1

    .line 339
    iget v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->BgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object p2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x1020016

    .line 177
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mTitleView:Landroid/widget/TextView;

    const p2, 0x1020010

    .line 178
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mSummaryView:Landroid/widget/TextView;

    .line 179
    sget p2, Lmiuix/preference/R$id;->preference_detail:I

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mWidgetView:Landroid/view/View;

    .line 180
    invoke-static {p1}, Lmiuix/preference/ConnectPreferenceHelper;->setAlphaFolme(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 183
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setConnectState(I)V
    .locals 1

    .line 332
    iget v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    .line 333
    iput p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    const/4 p1, 0x1

    .line 334
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    return-void
.end method

.method public setIconAnimEnabled(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    return-void
.end method
