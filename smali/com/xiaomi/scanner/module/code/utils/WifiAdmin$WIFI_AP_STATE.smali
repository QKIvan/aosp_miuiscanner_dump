.class public final enum Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;
.super Ljava/lang/Enum;
.source "WifiAdmin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WIFI_AP_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

.field public static final enum WIFI_AP_STATE_DISABLED:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

.field public static final enum WIFI_AP_STATE_DISABLING:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

.field public static final enum WIFI_AP_STATE_ENABLED:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

.field public static final enum WIFI_AP_STATE_ENABLING:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

.field public static final enum WIFI_AP_STATE_FAILED:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 207
    new-instance v0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    const-string v1, "WIFI_AP_STATE_DISABLING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;->WIFI_AP_STATE_DISABLING:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    const-string v3, "WIFI_AP_STATE_DISABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;->WIFI_AP_STATE_DISABLED:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    new-instance v3, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    const-string v5, "WIFI_AP_STATE_ENABLING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;->WIFI_AP_STATE_ENABLING:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    new-instance v5, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    const-string v7, "WIFI_AP_STATE_ENABLED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;->WIFI_AP_STATE_ENABLED:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    new-instance v7, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    const-string v9, "WIFI_AP_STATE_FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;->WIFI_AP_STATE_FAILED:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 206
    sput-object v9, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;->$VALUES:[Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;
    .locals 1

    .line 206
    const-class v0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;
    .locals 1

    .line 206
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;->$VALUES:[Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    invoke-virtual {v0}, [Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    return-object v0
.end method