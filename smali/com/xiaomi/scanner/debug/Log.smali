.class public Lcom/xiaomi/scanner/debug/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/debug/Log$Tag;
    }
.end annotation


# static fields
.field public static final SCANNER_LOGTAG_PREFIX:Ljava/lang/String; = "SCAN_"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Log"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/debug/Log;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaomi/scanner/debug/Log;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method public static d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 56
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x3

    .line 62
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 68
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    .line 74
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 80
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    .line 86
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z
    .locals 3

    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/debug/LogHelper;->instance()Lcom/xiaomi/scanner/debug/LogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/debug/LogHelper;->isDebugMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 119
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/debug/LogHelper;->instance()Lcom/xiaomi/scanner/debug/LogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/debug/LogHelper;->getOverrideLevel()I

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    invoke-static {}, Lcom/xiaomi/scanner/debug/LogHelper;->instance()Lcom/xiaomi/scanner/debug/LogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/debug/LogHelper;->getOverrideLevel()I

    move-result p0

    if-gt p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const-string v1, "SCAN_"

    .line 126
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0

    .line 130
    :catch_0
    sget-object p1, Lcom/xiaomi/scanner/debug/Log;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag too long:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-static {}, Lcom/xiaomi/scanner/debug/LogHelper;->instance()Lcom/xiaomi/scanner/debug/LogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/debug/LogHelper;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 92
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    .line 98
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 104
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    .line 110
    invoke-static {p0, v0}, Lcom/xiaomi/scanner/debug/Log;->isLoggable(Lcom/xiaomi/scanner/debug/Log$Tag;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/xiaomi/scanner/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
