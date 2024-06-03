.class Lcom/xiaomi/scanner/nativecode/NativeSdk$Holder;
.super Ljava/lang/Object;
.source "NativeSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/nativecode/NativeSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaomi/scanner/nativecode/NativeSdk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/xiaomi/scanner/nativecode/NativeSdk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/nativecode/NativeSdk;-><init>(Lcom/xiaomi/scanner/nativecode/NativeSdk$1;)V

    sput-object v0, Lcom/xiaomi/scanner/nativecode/NativeSdk$Holder;->instance:Lcom/xiaomi/scanner/nativecode/NativeSdk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/nativecode/NativeSdk;
    .locals 1

    .line 14
    sget-object v0, Lcom/xiaomi/scanner/nativecode/NativeSdk$Holder;->instance:Lcom/xiaomi/scanner/nativecode/NativeSdk;

    return-object v0
.end method
