.class public Lcom/xiaomi/scanner/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_TYPE:Ljava/lang/String; = "route"

.field public static final ALIPAY_PACKAGE_NAME:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field public static final ALIPAY_URL:Ljava/lang/String; = "alipays://platformapi/startApp?"

.field public static final ALPAY_HOST:Ljava/lang/String; = "qr.alipay.com"

.field public static final APPID:Ljava/lang/String; = "10000007"

.field public static final BARCODE_ROUGH_RULE:Ljava/lang/String; = "barcode_rough_rule"

.field public static final BARCODE_ROUGH_RULE_JSON:Ljava/lang/String; = "barcode_rough_rule.json"

.field public static final CLOUD_CONTROL_CONFING_ALL:Ljava/lang/String; = "cloud_control_config_all"

.field public static final CLOUD_CONTROL_IS_NEED_PULL:Ljava/lang/String; = "cloud_control_is_need_pull"

.field public static final CLOUND_CONTROL_FDSCONFIG:Ljava/lang/String; = ""

.field public static final CONFING_ALL:Ljava/lang/String; = "config_all"

.field public static final ECORD_SCAN_ENTRY_URL:Ljava/lang/String; = ""

.field public static final FILE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.xiaomi.scanner.fileprovider"

.field public static final FIRST_OPEN_SCANNER:Ljava/lang/String; = "first_open_scanner"

.field public static final KEY_FUNCTION_SORT_INFOR:Ljava/lang/String; = "functionSortInfor"

.field public static final KEY_IS_WECHAT_PAY_TYPE:Ljava/lang/String; = "isWechatPayType"

.field public static final KEY_LAST_USE_MODULE_ID:Ljava/lang/String; = "lastUseModuleId"

.field public static final KEY_LOCAL_SHOW_KOREA_PERMISSION:Ljava/lang/String; = "koreaPermissionShow"

.field public static final KEY_PREFERENCE_PAY_SELECT:Ljava/lang/String; = "preferencePaySelect"

.field public static final KEY_SAVE_DEFAULT_FUNCTION_SELECT:Ljava/lang/String; = "defaultFunctionSelect"

.field public static final KEY_SAVE_MOEULE_SELECT:Ljava/lang/String; = "save_module_tab"

.field public static final KEY_SP_NETWORK_RULE:Ljava/lang/String; = "keyNetworkRule"

.field public static final KEY_SP_NETWORK_RULE_VERSION:Ljava/lang/String; = "keyNetworkRuleVersion"

.field public static final KEY_SP_NETWORK_TRACKINGNUMRULE:Ljava/lang/String; = "keyNetworkTrackingNumRule"

.field public static final KEY_SP_OPEN_APP:Ljava/lang/String; = "KEYOPENAPP"

.field public static final KEY_STARTVOICE_VERSION:Ljava/lang/String; = "key_startvoice_version"

.field public static final LAST_UPDATE_CLOUDCONTROL_TIME:Ljava/lang/String; = "last_update_cloudcontrol_time"

.field public static final MEITUAN_PKGNAME:Ljava/lang/String; = "com.sankuai.meituan"

.field public static final MIPAYIN_REMEMBER:Ljava/lang/String; = "mipayin_remember"

.field public static final MI_LINK_PAKAGE:Ljava/lang/String; = "com.milink.service"

.field public static final PAYMENT_RULE:Ljava/lang/String; = "payment_rule"

.field public static final PAY_ALIPAY:I = 0x0

.field public static final PAY_CHOOSE:I = 0x2

.field public static final PAY_WECHAT:I = 0x1

.field public static final PHOTO_SHOPPING_CONFIG_FORMAL_URL:Ljava/lang/String; = ""

.field public static final PREFERENCE_PAY_LIST:[I

.field public static final SCAN_PAYMENT_RULE:Ljava/lang/String; = "scan_payment_rule"

.field public static final SETTING_SAVE_LAST_TIME:I = -0x64

.field public static final SOURCEID:Ljava/lang/String; = "xiaomiScan"

.field public static final SPECIAL_QR_RULE:Ljava/lang/String; = "special_qr_rule"

.field public static final SPECIAL_QR_RULE_JSON:Ljava/lang/String; = "special_qr_rule.json"

.field public static final SRE_SECRET:Ljava/lang/String; = "1234"

.field public static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/scanner/util/Constants;->PREFERENCE_PAY_LIST:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1001a8
        0x7f1001ae
        0x7f1001a9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
