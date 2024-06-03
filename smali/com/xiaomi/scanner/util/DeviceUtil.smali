.class public Lcom/xiaomi/scanner/util/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field private static final EU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_A7:Z

.field private static final IS_C1:Z

.field private static final IS_C3I:Z

.field private static final IS_C3K:Z

.field private static final IS_C3K3:Z

.field private static final IS_C8:Z

.field private static final IS_CC9_PRO:Z

.field private static final IS_D5:Z

.field private static final IS_E2P:Z

.field private static final IS_E7:Z

.field private static final IS_F1:Z

.field private static final IS_F7B:Z

.field private static final IS_H2X_LC:Z

.field private static final IS_J6:Z

.field private static final IS_MI3TD:Z

.field private static final IS_MI7:Z

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 16
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "lte26007"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_H2X_LC:Z

    .line 17
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "leo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_MI7:Z

    .line 18
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "pisces"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_MI3TD:Z

    .line 19
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "capricorn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_A7:Z

    .line 20
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "sagit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C1:Z

    .line 21
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "jason"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C8:Z

    .line 22
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "chiron"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_D5:Z

    .line 23
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vince"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_E7:Z

    .line 25
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "olive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C3I:Z

    .line 26
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "olivelite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C3K:Z

    .line 27
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "olivewood"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C3K3:Z

    .line 29
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "tucana"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_CC9_PRO:Z

    .line 30
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "sirius"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_E2P:Z

    .line 32
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cepheus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_F1:Z

    .line 33
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "curtana"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_J6:Z

    .line 34
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "violet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_F7B:Z

    .line 37
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "AT"

    const-string v2, "BE"

    const-string v3, "BG"

    const-string v4, "CY"

    const-string v5, "CZ"

    const-string v6, "DE"

    const-string v7, "DK"

    const-string v8, "EE"

    const-string v9, "ES"

    const-string v10, "FI"

    const-string v11, "FR"

    const-string v12, "GB"

    const-string v13, "GR"

    const-string v14, "HR"

    const-string v15, "HU"

    const-string v16, "IE"

    const-string v17, "IT"

    const-string v18, "LT"

    const-string v19, "LU"

    const-string v20, "LV"

    const-string v21, "MT"

    const-string v22, "NL"

    const-string v23, "PL"

    const-string v24, "PT"

    const-string v25, "RO"

    const-string v26, "SE"

    const-string v27, "SI"

    const-string v28, "SK"

    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/xiaomi/scanner/util/DeviceUtil;->EU:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRegion(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "miui.os.Build"

    .line 75
    invoke-static {v0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->getClass(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const-string p0, "checkRegion"

    .line 76
    invoke-virtual {v0, p0, v2, v1}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->booleanResult()Z

    move-result p0

    return p0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.build.version.incremental"

    const-string v1, "unknown"

    .line 97
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.miui.region"

    const-string v1, "GB"

    .line 93
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isC3I()Z
    .locals 1

    .line 101
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C3I:Z

    return v0
.end method

.method public static isC3k()Z
    .locals 1

    .line 105
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C3K:Z

    return v0
.end method

.method public static isC3k3()Z
    .locals 1

    .line 109
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C3K3:Z

    return v0
.end method

.method public static isCC9_PRO()Z
    .locals 1

    .line 113
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_CC9_PRO:Z

    return v0
.end method

.method public static isCamera1()Z
    .locals 1

    .line 142
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isF7BAndQ()Z

    move-result v0

    return v0
.end method

.method private static isDevices(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "miui.os.Build"

    .line 66
    invoke-static {v0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->getClass(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->getStaticFiled(Ljava/lang/String;)Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/util/ReflectUtil$ReflAgent;->booleanResult()Z

    move-result p0

    return p0
.end method

.method public static isE2P()Z
    .locals 1

    .line 117
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_E2P:Z

    return v0
.end method

.method public static isF1()Z
    .locals 1

    .line 121
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_F1:Z

    return v0
.end method

.method public static isF7B()Z
    .locals 1

    .line 134
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_F7B:Z

    return v0
.end method

.method public static isF7BAndQ()Z
    .locals 2

    .line 138
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isF7B()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isImageNeedRotate()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_H2X_LC:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C1:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_C8:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_D5:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_E7:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isInternationalBuild()Z
    .locals 1

    const-string v0, "IS_INTERNATIONAL_BUILD"

    .line 62
    invoke-static {v0}, Lcom/xiaomi/scanner/util/DeviceUtil;->isDevices(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isJ6()Z
    .locals 1

    .line 126
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_J6:Z

    return v0
.end method

.method public static isKoreaRegion()Z
    .locals 2

    .line 70
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isLayoutRtl()Z
    .locals 2

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isLowMemoryDevice()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_H2X_LC:Z

    return v0
.end method

.method public static isM7()Z
    .locals 2

    .line 130
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "tapas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "topaz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMi2()Z
    .locals 1

    const-string v0, "IS_MITWO"

    .line 58
    invoke-static {v0}, Lcom/xiaomi/scanner/util/DeviceUtil;->isDevices(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IS_MI2A"

    invoke-static {v0}, Lcom/xiaomi/scanner/util/DeviceUtil;->isDevices(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSimpleChinese()Z
    .locals 2

    .line 85
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSurfaceSizeLimited()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/xiaomi/scanner/util/DeviceUtil;->IS_MI7:Z

    return v0
.end method
