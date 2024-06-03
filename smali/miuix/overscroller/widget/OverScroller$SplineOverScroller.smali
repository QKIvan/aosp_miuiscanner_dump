.class Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final MAX_DELTA_TIME:F = 0.016f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f

.field static final STATE_BALLISTIC:I = 0x2

.field static final STATE_CUBIC:I = 0x1

.field static final STATE_SPLINE:I = 0x0

.field private static final VALUE_THRESHOLD:F = 1.0f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrVelocity:D

.field private mCurrentPosition:D

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:D

.field private mFinished:Z

.field private mFlingFriction:F

.field private mLastStep:Z

.field private mOriginStart:D

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mSpringOperator:Lmiuix/animation/physics/SpringOperator;

.field private mSpringParams:[D

.field private mStart:D

.field private mStartTime:J

.field private mState:I

.field private mVelocity:D


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 623
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    .line 631
    sput-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    new-array v0, v0, [F

    .line 632
    sput-object v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float v9, v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float v12, v12, v9

    mul-float v14, v6, v6

    mul-float v14, v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 659
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v12

    float-to-double v11, v15

    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v15, v11, v17

    if-gez v15, :cond_2

    .line 663
    sget-object v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v10, v10, v11

    add-float/2addr v10, v6

    mul-float v9, v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    sub-float v6, v3, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float v9, v9, v10

    mul-float v12, v10, v11

    add-float/2addr v12, v6

    mul-float v12, v12, v9

    mul-float v14, v6, v6

    mul-float v14, v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 671
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v15, v7, v17

    if-gez v15, :cond_0

    .line 675
    sget-object v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const v7, 0x3e333333    # 0.175f

    mul-float v10, v10, v7

    mul-float v6, v6, v13

    add-float/2addr v10, v6

    mul-float v9, v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v7, 0x3e333333    # 0.175f

    cmpl-float v8, v12, v5

    if-lez v8, :cond_1

    move v3, v6

    goto :goto_3

    :cond_1
    move v1, v6

    :goto_3
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    :cond_2
    cmpl-float v7, v16, v5

    if-lez v7, :cond_3

    move v3, v6

    goto/16 :goto_1

    :cond_3
    move v0, v6

    goto/16 :goto_1

    .line 677
    :cond_4
    sget-object v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v4, v1, v3

    aput v4, v0, v3

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    const/4 v0, 0x0

    .line 615
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 685
    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 686
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 687
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float p1, p1, v0

    const v0, 0x43c10b3d

    mul-float p1, p1, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float p1, p1, v0

    .line 688
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    return-void
.end method

.method static synthetic access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z
    .locals 0

    .line 573
    iget-boolean p0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method static synthetic access$002(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0

    .line 573
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .locals 2

    .line 573
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return-wide v0
.end method

.method static synthetic access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .locals 2

    .line 573
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    return-wide v0
.end method

.method static synthetic access$300(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .locals 2

    .line 573
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    return-wide v0
.end method

.method static synthetic access$400(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .locals 2

    .line 573
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    return-wide v0
.end method

.method static synthetic access$500(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    .line 573
    iget p0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method static synthetic access$600(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)J
    .locals 2

    .line 573
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    .line 573
    iget p0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    return p0
.end method

.method private adjustDuration(III)V
    .locals 3

    sub-int/2addr p2, p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 712
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_0

    int-to-float v0, p3

    div-float/2addr v0, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    .line 717
    sget-object p2, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget p3, p2, p3

    .line 718
    aget p2, p2, v1

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    sub-float/2addr p2, p3

    mul-float p1, p1, p2

    add-float/2addr p3, p1

    .line 720
    iget p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 5

    neg-int v0, p3

    int-to-float v0, v0

    .line 886
    iget v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    int-to-float p3, p3

    mul-float p3, p3, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    .line 889
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p3, v1

    sub-int p1, p2, p1

    .line 890
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 891
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    iget p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 892
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    .line 891
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 893
    iget-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-float p3, p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    int-to-double p2, p2

    .line 894
    iput-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 895
    iget p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    int-to-double p1, p1

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    return-void
.end method

.method private static getDeceleration(I)F
    .locals 0

    if-lez p0, :cond_0

    const/high16 p0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x44fa0000    # 2000.0f

    :goto_0
    return p0
.end method

.method private getSplineDeceleration(I)D
    .locals 2

    .line 868
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float p1, p1, v0

    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float v0, v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8

    .line 872
    invoke-direct {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 873
    sget p1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    .line 874
    iget v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float v4, v4, v5

    float-to-double v4, v4

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v2

    mul-double v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 6

    .line 879
    invoke-direct {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 880
    sget p1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 881
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private onEdgeReached()V
    .locals 8

    .line 941
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    double-to-float v2, v0

    double-to-float v0, v0

    mul-float v2, v2, v0

    .line 942
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    div-float v0, v2, v0

    .line 943
    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 945
    iget v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    neg-float v0, v3

    mul-float v0, v0, v2

    int-to-float v2, v4

    mul-float v2, v2, v1

    div-float/2addr v0, v2

    .line 947
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    int-to-float v0, v4

    :cond_0
    float-to-int v1, v0

    .line 951
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    const/4 v1, 0x2

    .line 952
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 953
    iget-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    neg-float v0, v0

    :goto_0
    float-to-int v0, v0

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v5

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v0

    .line 954
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v0

    double-to-int v0, v3

    neg-int v0, v0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method

.method private startAfterEdge(IIII)V
    .locals 14

    move-object v6, p0

    move v1, p1

    move/from16 v0, p3

    move/from16 v2, p4

    const/4 v3, 0x1

    move/from16 v4, p2

    if-le v1, v4, :cond_0

    if-ge v1, v0, :cond_0

    const-string v0, "OverScroller"

    const-string v1, "startAfterEdge called from a valid position"

    .line 906
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iput-boolean v3, v6, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void

    :cond_0
    const/4 v5, 0x0

    if-le v1, v0, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_2

    move v8, v0

    goto :goto_1

    :cond_2
    move v8, v4

    :goto_1
    sub-int v9, v1, v8

    mul-int v10, v9, v2

    if-ltz v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 916
    invoke-direct {p0, p1, v8, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    .line 918
    :cond_4
    invoke-direct {p0, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v10

    .line 919
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v12, v3

    cmpl-double v3, v10, v12

    if-lez v3, :cond_7

    if-eqz v7, :cond_5

    move v3, v4

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    if-eqz v7, :cond_6

    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v0

    .line 920
    :goto_4
    iget v5, v6, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v0, p0

    move v1, p1

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_5

    .line 922
    :cond_7
    invoke-direct {p0, p1, v8, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    :goto_5
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .locals 1

    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    .line 899
    :goto_0
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 900
    invoke-direct {p0, p1, p2, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 901
    invoke-direct {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    return-void
.end method

.method private startSpringback(III)V
    .locals 2

    const/4 p3, 0x0

    .line 819
    iput-boolean p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    const/4 p3, 0x1

    .line 820
    iput p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    int-to-double v0, p1

    .line 821
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    int-to-double v0, p2

    .line 822
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    sub-int/2addr p1, p2

    .line 824
    invoke-static {p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result p2

    iput p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-int p2, p1

    int-to-double p2, p2

    .line 826
    iput-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 827
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-double p1, p1

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    .line 828
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    iget p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method computeScrollOffset()Z
    .locals 20

    move-object/from16 v0, p0

    .line 751
    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 754
    :cond_0
    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 755
    iput-boolean v3, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 756
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return v3

    .line 759
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 760
    iget-wide v6, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v6, v4, v6

    long-to-float v1, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v1, v6

    float-to-double v6, v1

    const-wide v8, 0x3f90624de0000000L    # 0.01600000075995922

    .line 761
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmpl-double v1, v6, v10

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v8, v6

    .line 763
    :goto_0
    iput-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 764
    iget-object v10, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    iget-wide v11, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringParams:[D

    aget-wide v13, v1, v2

    aget-wide v15, v1, v3

    const/4 v1, 0x2

    new-array v1, v1, [D

    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    aput-wide v4, v1, v2

    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    aput-wide v4, v1, v3

    move-wide/from16 v17, v8

    move-object/from16 v19, v1

    invoke-virtual/range {v10 .. v19}, Lmiuix/animation/physics/SpringOperator;->updateVelocity(DDDD[D)D

    move-result-wide v1

    .line 765
    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    mul-double v8, v8, v1

    add-double/2addr v4, v8

    iput-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 766
    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 767
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    invoke-virtual {v0, v4, v5, v1, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->isAtEquilibrium(DD)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 768
    iput-boolean v3, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    goto :goto_1

    .line 770
    :cond_3
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    :goto_1
    return v3

    :cond_4
    :goto_2
    return v2
.end method

.method continueWhenFinished()Z
    .locals 7

    .line 958
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 975
    :cond_0
    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 976
    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    double-to-int v0, v3

    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    double-to-int v3, v3

    invoke-direct {p0, v0, v3, v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_1
    return v2

    .line 961
    :cond_2
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v3, :cond_3

    .line 963
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 965
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    double-to-int v0, v2

    int-to-double v2, v0

    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    double-to-int v0, v2

    .line 966
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 967
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 968
    invoke-direct {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 982
    :goto_0
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->update()Z

    return v1

    :cond_3
    return v2
.end method

.method extendDuration(I)V
    .locals 4

    .line 793
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 794
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    add-int/2addr v1, p1

    .line 795
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    .line 796
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method finish()V
    .locals 2

    .line 780
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    const/4 v0, 0x1

    .line 784
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method fling(IIIII)V
    .locals 4

    .line 832
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    const/4 p5, 0x0

    .line 833
    iput-boolean p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    int-to-double v0, p2

    .line 834
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 835
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 836
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    int-to-double v0, p1

    .line 837
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    if-gt p1, p4, :cond_4

    if-ge p1, p3, :cond_0

    goto :goto_0

    .line 844
    :cond_0
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_1

    .line 848
    invoke-direct {p0, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result p5

    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 849
    invoke-direct {p0, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    :cond_1
    int-to-float p2, p2

    .line 852
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p2, v0

    iput p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 853
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    int-to-double v0, p3

    cmpg-double p5, p1, v0

    if-gez p5, :cond_2

    .line 857
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    double-to-int p5, v2

    double-to-int p1, p1

    invoke-direct {p0, p5, p1, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 858
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 861
    :cond_2
    iget-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    int-to-double v0, p4

    cmpl-double p3, p1, v0

    if-lez p3, :cond_3

    .line 862
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    double-to-int p3, v2

    double-to-int p1, p1

    invoke-direct {p0, p3, p1, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 863
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    :cond_3
    return-void

    .line 840
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p3, p4, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    return-void
.end method

.method final getCurrVelocity()F
    .locals 2

    .line 1068
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    double-to-float v0, v0

    return v0
.end method

.method final getCurrentPosition()I
    .locals 2

    .line 1060
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    double-to-int v0, v0

    return v0
.end method

.method final getDuration()I
    .locals 1

    .line 1092
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method final getFinal()I
    .locals 2

    .line 1084
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    double-to-int v0, v0

    return v0
.end method

.method final getStart()I
    .locals 2

    .line 1076
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    double-to-int v0, v0

    return v0
.end method

.method final getStartTime()J
    .locals 2

    .line 1108
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method final getState()I
    .locals 1

    .line 1100
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method isAtEquilibrium(DD)Z
    .locals 1

    sub-double/2addr p1, p3

    .line 776
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final isFinished()Z
    .locals 1

    .line 1052
    iget-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method notifyEdgeReached(III)V
    .locals 2

    .line 929
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 930
    iput p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 931
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 934
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    double-to-int p3, v0

    invoke-direct {p0, p1, p2, p2, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    :cond_0
    return-void
.end method

.method final setCurrVelocity(F)V
    .locals 2

    float-to-double v0, p1

    .line 1072
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    return-void
.end method

.method final setCurrentPosition(I)V
    .locals 2

    int-to-double v0, p1

    .line 1064
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return-void
.end method

.method final setDuration(I)V
    .locals 0

    .line 1096
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method

.method final setFinal(I)V
    .locals 2

    int-to-double v0, p1

    .line 1088
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    return-void
.end method

.method setFinalPosition(I)V
    .locals 2

    int-to-double v0, p1

    .line 788
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    const/4 p1, 0x0

    .line 789
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method final setFinished(Z)V
    .locals 0

    .line 1056
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method setFriction(F)V
    .locals 0

    .line 681
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    return-void
.end method

.method final setStart(I)V
    .locals 2

    int-to-double v0, p1

    .line 1080
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    return-void
.end method

.method final setStartTime(J)V
    .locals 0

    .line 1112
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-void
.end method

.method final setState(I)V
    .locals 0

    .line 1104
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    return-void
.end method

.method springback(III)Z
    .locals 3

    const/4 v0, 0x1

    .line 800
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    int-to-double v1, p1

    .line 802
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    const-wide/16 v1, 0x0

    .line 803
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 805
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/4 v1, 0x0

    .line 806
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-ge p1, p2, :cond_0

    .line 809
    invoke-direct {p0, p1, p2, v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    .line 811
    invoke-direct {p0, p1, p3, v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 814
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method startScroll(III)V
    .locals 2

    const/4 v0, 0x0

    .line 725
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    int-to-double v0, p1

    .line 727
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 728
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 730
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 731
    iput p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    .line 734
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    const-wide/16 p1, 0x0

    .line 735
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    return-void
.end method

.method startScrollByFling(FII)V
    .locals 2

    const/4 v0, 0x0

    .line 739
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 740
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    float-to-double v0, p1

    .line 741
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOriginStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 742
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 743
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    int-to-double p1, p3

    .line 744
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 745
    new-instance p1, Lmiuix/animation/physics/SpringOperator;

    invoke-direct {p1}, Lmiuix/animation/physics/SpringOperator;-><init>()V

    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    const/4 p2, 0x2

    new-array p3, p2, [D

    .line 746
    iput-object p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringParams:[D

    new-array p2, p2, [F

    .line 747
    fill-array-data p2, :array_0

    invoke-virtual {p1, p2, p3}, Lmiuix/animation/physics/SpringOperator;->getParameters([F[D)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method update()Z
    .locals 9

    .line 992
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 993
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    .line 997
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 999
    :cond_1
    iget v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v5, v4

    cmp-long v7, v0, v5

    if-lez v7, :cond_2

    return v2

    :cond_2
    const-wide/16 v5, 0x0

    .line 1004
    iget v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    const/high16 v7, 0x447a0000    # 1000.0f

    if-eqz v2, :cond_5

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    goto/16 :goto_0

    :cond_3
    long-to-float v0, v0

    div-float/2addr v0, v7

    .line 1026
    iget-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    iget v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v5, v4, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v1

    iput-wide v5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    float-to-double v5, v0

    .line 1027
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    mul-float v4, v4, v0

    mul-float v4, v4, v0

    div-float/2addr v4, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double v5, v1, v4

    goto :goto_0

    :cond_4
    long-to-float v0, v0

    int-to-float v1, v4

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    .line 1034
    iget-wide v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    double-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 1035
    iget v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v4

    mul-float v5, v5, v2

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v1

    mul-float v8, v8, v0

    mul-float v8, v8, v1

    sub-float/2addr v6, v8

    mul-float v5, v5, v6

    float-to-double v5, v5

    int-to-float v4, v4

    mul-float v2, v2, v4

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float v2, v2, v4

    neg-float v0, v0

    add-float/2addr v0, v1

    mul-float v2, v2, v0

    float-to-double v0, v2

    .line 1036
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    goto :goto_0

    :cond_5
    long-to-float v0, v0

    .line 1006
    iget v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v4, v0, v2

    float-to-int v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/16 v8, 0x64

    if-ge v4, v8, :cond_6

    int-to-float v5, v4

    div-float/2addr v5, v2

    add-int/lit8 v6, v4, 0x1

    int-to-float v8, v6

    div-float/2addr v8, v2

    .line 1013
    sget-object v2, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v4, v2, v4

    .line 1014
    aget v2, v2, v6

    sub-float/2addr v2, v4

    sub-float/2addr v8, v5

    div-float v6, v2, v8

    sub-float/2addr v0, v5

    mul-float v0, v0, v6

    add-float v5, v4, v0

    .line 1019
    :cond_6
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v2, v0

    mul-float v5, v5, v2

    float-to-double v4, v5

    int-to-float v0, v0

    mul-float v6, v6, v0

    int-to-float v0, v1

    div-float/2addr v6, v0

    mul-float v6, v6, v7

    float-to-double v0, v6

    .line 1020
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    move-wide v5, v4

    .line 1041
    :goto_0
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v4

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return v3
.end method

.method updateScroll(F)V
    .locals 6

    .line 695
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    float-to-double v2, p1

    iget-wide v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    sub-double/2addr v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return-void
.end method
