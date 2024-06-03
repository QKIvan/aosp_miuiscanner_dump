.class public Lcom/xiaomi/scanner/debug/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# static fields
.field private static mInstance:Lcom/xiaomi/scanner/debug/LogHelper;


# instance fields
.field private mDebugMode:Z


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/scanner/debug/LogHelper;->mDebugMode:Z

    const-string v1, "android.os.SystemProperties"

    .line 11
    invoke-static {v1}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->getClass(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "miuiscanner_debug"

    aput-object v4, v2, v0

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "getBoolean"

    invoke-virtual {v1, v0, v3, v2}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->booleanResult()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/debug/LogHelper;->mDebugMode:Z

    return-void
.end method

.method public static instance()Lcom/xiaomi/scanner/debug/LogHelper;
    .locals 1

    .line 17
    sget-object v0, Lcom/xiaomi/scanner/debug/LogHelper;->mInstance:Lcom/xiaomi/scanner/debug/LogHelper;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/xiaomi/scanner/debug/LogHelper;

    invoke-direct {v0}, Lcom/xiaomi/scanner/debug/LogHelper;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/debug/LogHelper;->mInstance:Lcom/xiaomi/scanner/debug/LogHelper;

    .line 20
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/debug/LogHelper;->mInstance:Lcom/xiaomi/scanner/debug/LogHelper;

    return-object v0
.end method


# virtual methods
.method public getOverrideLevel()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isDebugMode()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/xiaomi/scanner/debug/LogHelper;->mDebugMode:Z

    return v0
.end method
