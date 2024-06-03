.class public Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;
.super Ljava/lang/Object;
.source "Camera2RequestSettingsSet.java"


# instance fields
.field private final mDictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRevision:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mRevision:J

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 62
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    .line 63
    iget-wide v0, p1, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mRevision:J

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mRevision:J

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Tried to copy null Camera2RequestSettingsSet"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setRequestFieldIfNonNull(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)V"
        }
    .end annotation

    .line 248
    invoke-virtual {p0, p2}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public contains(Landroid/hardware/camera2/CaptureRequest$Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Received a null key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 234
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 235
    iget-object p2, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 236
    invoke-direct {p0, p1, v0}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->setRequestFieldIfNonNull(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    goto :goto_0

    .line 238
    :cond_0
    array-length p2, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object v1, p3, v0

    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Tried to add null Surface as request target"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    return-object p1

    .line 231
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Tried to create request using null CameraDevice"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Received a null key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRevision()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mRevision:J

    return-wide v0
.end method

.method public matches(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 91
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-wide p1, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mRevision:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mRevision:J

    const/4 p1, 0x1

    return p1

    .line 85
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Received a null key"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public union(Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;)Z
    .locals 4

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 211
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mRevision:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mRevision:J

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public unset(Landroid/hardware/camera2/CaptureRequest$Key;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-wide v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mRevision:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/ex/camera2/portability/util/Camera2RequestSettingsSet;->mRevision:J

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Received a null key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
