.class public Lmiuix/androidbasewidget/widget/SpringOperator;
.super Ljava/lang/Object;
.source "SpringOperator.java"


# instance fields
.field private final damping:D

.field private final tension:D


# direct methods
.method public constructor <init>(FF)V
    .locals 6

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringOperator;->tension:D

    float-to-double p1, p1

    const-wide v2, 0x402921fb54442d18L    # 12.566370614359172

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    iput-wide p1, p0, Lmiuix/androidbasewidget/widget/SpringOperator;->damping:D

    return-void
.end method


# virtual methods
.method public updateVelocity(DFDD)D
    .locals 6

    .line 14
    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringOperator;->damping:D

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double p1, p1, v4

    .line 15
    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringOperator;->tension:D

    sub-double/2addr p4, p6

    mul-double v0, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p3, v0

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, p3

    return-wide p1
.end method
