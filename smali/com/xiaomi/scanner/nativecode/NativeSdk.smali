.class public Lcom/xiaomi/scanner/nativecode/NativeSdk;
.super Ljava/lang/Object;
.source "NativeSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/nativecode/NativeSdk$Holder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "scanner"

    .line 62
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/scanner/nativecode/NativeSdk$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/scanner/nativecode/NativeSdk;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/scanner/nativecode/NativeSdk;
    .locals 1

    .line 11
    invoke-static {}, Lcom/xiaomi/scanner/nativecode/NativeSdk$Holder;->access$000()Lcom/xiaomi/scanner/nativecode/NativeSdk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public native createInstance([I)J
.end method

.method public native destroyInstance(J)V
.end method

.method public onBrightnessCallback(Z)V
    .locals 0

    return-void
.end method

.method public onDecodeCallback(Ljava/lang/String;I[FI)V
    .locals 0

    return-void
.end method

.method public onFocusCallback()V
    .locals 0

    return-void
.end method

.method public native prepareRead(J)V
.end method

.method public native readBarcode(JLandroid/graphics/Bitmap;IIII[Ljava/lang/Object;)I
.end method

.method public native readBarcodeByte(J[BIIIIII)I
.end method

.method public native setFormat(J[I)V
.end method

.method public native stopRead(J)V
.end method

.method public native writeCode(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/Object;)I
.end method
