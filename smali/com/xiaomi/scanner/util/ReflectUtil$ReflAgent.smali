.class public Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/util/ReflectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflAgent"
.end annotation


# instance fields
.field private mClass:Ljava/lang/Class;

.field private mObject:Ljava/lang/Object;

.field private mResult:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClass(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 3

    .line 23
    new-instance v0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    invoke-direct {v0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;-><init>()V

    .line 25
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "ReflectUtil"

    const-string v2, "getClass error"

    .line 27
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static getObject(Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 1

    .line 33
    new-instance v0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    invoke-direct {v0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;-><init>()V

    if-eqz p0, :cond_0

    .line 35
    iput-object p0, v0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mObject:Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mClass:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public booleanResult()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs callMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Lcom/xiaomi/scanner/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ReflectUtil"

    const-string p3, "callObjectMethod error"

    .line 46
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object p0
.end method

.method public varargs callStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Lcom/xiaomi/scanner/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ReflectUtil"

    const-string p3, "callStaticObjectMethod error"

    .line 57
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object p0
.end method

.method public getObjectFiled(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/ReflectUtil;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ReflectUtil"

    const-string v1, "getObjectFiled error"

    .line 79
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object p0
.end method

.method public getStaticFiled(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/ReflectUtil;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ReflectUtil"

    const-string v1, "getStaticObjectField error"

    .line 68
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object p0
.end method

.method public intResult()I
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "ReflectUtil"

    const-string v3, "intResult error"

    .line 113
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public longResult()J
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 123
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v3, "ReflectUtil"

    const-string v4, "longResult error"

    .line 125
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v1
.end method

.method public resultObject()Ljava/lang/Object;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public setResultToSelf()Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    iput-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    return-object p0
.end method

.method public stringResult()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
