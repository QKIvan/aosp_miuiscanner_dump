.class public Lcom/android/ex/camera2/portability/debug/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/debug/Log$Tag;
    }
.end annotation


# static fields
.field public static final CAMERA_LOGTAG_PREFIX:Ljava/lang/String; = "CAM2PORT_"

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "Log"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/debug/Log;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .line 19
    sget-object v0, Lcom/android/ex/camera2/portability/debug/Log;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method

.method public static d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 59
    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x3

    .line 65
    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 71
    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    .line 77
    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 83
    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    .line 89
    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z
    .locals 3

    const/4 v0, 0x0

    .line 120
    :try_start_0
    invoke-static {}, Lcom/android/ex/camera2/portability/debug/LogHelper;->getOverrideLevel()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 124
    invoke-static {}, Lcom/android/ex/camera2/portability/debug/LogHelper;->getOverrideLevel()I

    move-result p0

    if-gt p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const-string v1, "CAM2PORT_"

    .line 127
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    .line 131
    :catch_0
    sget-object p1, Lcom/android/ex/camera2/portability/debug/Log;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag too long:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 95
    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    .line 101
    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 107
    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    .line 113
    invoke-static {p0, v0}, Lcom/android/ex/camera2/portability/debug/Log;->isLoggable(Lcom/android/ex/camera2/portability/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
