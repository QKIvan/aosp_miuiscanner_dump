.class public Lcom/xiaomi/scanner/module/ModulesInfo;
.super Ljava/lang/Object;
.source "ModulesInfo.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final TAGTwo:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static mActivity:Lcom/xiaomi/scanner/app/ScanActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ModulesInfo"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/ModulesInfo;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 17
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ConfigModel"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/ModulesInfo;->TAGTwo:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static registerModule(Lcom/xiaomi/scanner/module/ModuleManager;IIIILjava/lang/String;II)V
    .locals 9

    .line 49
    new-instance v8, Lcom/xiaomi/scanner/module/ModulesInfo$1;

    move-object v0, v8

    move/from16 v1, p7

    move v2, p6

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/scanner/module/ModulesInfo$1;-><init>(IIIIIILjava/lang/String;)V

    move-object v0, p0

    invoke-interface {p0, v8}, Lcom/xiaomi/scanner/module/ModuleManager;->registerModule(Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;)V

    return-void
.end method

.method public static releaseActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/xiaomi/scanner/module/ModulesInfo;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    return-void
.end method

.method public static setupModules(Landroid/content/Context;Lcom/xiaomi/scanner/module/ModuleManager;Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 9

    .line 26
    sget-object v0, Lcom/xiaomi/scanner/module/ModulesInfo;->TAGTwo:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ModulesInfo    setupModules(Context context, ModuleManager moduleManager)"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 28
    sput-object p2, Lcom/xiaomi/scanner/module/ModulesInfo;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 30
    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isCodeModuleAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0024

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f0800dd

    const v4, 0x7f0800de

    const v5, 0x7f100151

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0026

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0b0028

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const-string v6, "module_code"

    move-object v1, p1

    .line 31
    invoke-static/range {v1 .. v8}, Lcom/xiaomi/scanner/module/ModulesInfo;->registerModule(Lcom/xiaomi/scanner/module/ModuleManager;IIIILjava/lang/String;II)V

    :cond_0
    return-void
.end method
