.class Lcom/xiaomi/scanner/util/AndroidServices$Singleton;
.super Ljava/lang/Object;
.source "AndroidServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/util/AndroidServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaomi/scanner/util/AndroidServices;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/xiaomi/scanner/util/AndroidServices;

    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/util/AndroidServices;-><init>(Landroid/content/Context;Lcom/xiaomi/scanner/util/AndroidServices$1;)V

    sput-object v0, Lcom/xiaomi/scanner/util/AndroidServices$Singleton;->INSTANCE:Lcom/xiaomi/scanner/util/AndroidServices;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/util/AndroidServices;
    .locals 1

    .line 24
    sget-object v0, Lcom/xiaomi/scanner/util/AndroidServices$Singleton;->INSTANCE:Lcom/xiaomi/scanner/util/AndroidServices;

    return-object v0
.end method
