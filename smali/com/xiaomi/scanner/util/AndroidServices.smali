.class public Lcom/xiaomi/scanner/util/AndroidServices;
.super Ljava/lang/Object;
.source "AndroidServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/AndroidServices$Singleton;
    }
.end annotation


# static fields
.field private static final LOG_ALL_REQUESTS:Z = false

.field private static final LOG_THRESHOLD_MILLIS:I = 0xa

.field private static TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "AndroidServices"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/AndroidServices;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/xiaomi/scanner/util/AndroidServices;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaomi/scanner/util/AndroidServices$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/util/AndroidServices;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 55
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    iget-object v2, p0, Lcom/xiaomi/scanner/util/AndroidServices;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0xa

    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    .line 59
    sget-object v0, Lcom/xiaomi/scanner/util/AndroidServices;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: providing system service "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " took "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v2

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static instance()Lcom/xiaomi/scanner/util/AndroidServices;
    .locals 1

    .line 29
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices$Singleton;->access$100()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public provideDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    const-string v0, "device_policy"

    .line 38
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public provideKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    const-string v0, "keyguard"

    .line 46
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public providePackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/util/AndroidServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public provideWindowManager()Landroid/view/WindowManager;
    .locals 1

    const-string v0, "window"

    .line 42
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/util/AndroidServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method
