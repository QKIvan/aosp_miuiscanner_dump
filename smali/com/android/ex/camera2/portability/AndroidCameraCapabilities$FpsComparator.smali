.class Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;
.super Ljava/lang/Object;
.source "AndroidCameraCapabilities.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FpsComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;)V
    .locals 0

    .line 241
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 241
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;->compare([I[I)I

    move-result p1

    return p1
.end method

.method public compare([I[I)I
    .locals 2

    const/4 v0, 0x0

    .line 244
    aget v1, p1, v0

    aget v0, p2, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    aget p1, p1, v0

    aget p2, p2, v0

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    sub-int p1, v1, v0

    :goto_0
    return p1
.end method
