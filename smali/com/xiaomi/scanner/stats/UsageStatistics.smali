.class public Lcom/xiaomi/scanner/stats/UsageStatistics;
.super Ljava/lang/Object;
.source "UsageStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/stats/UsageStatistics$StorageFailure;,
        Lcom/xiaomi/scanner/stats/UsageStatistics$CameraFailure;
    }
.end annotation


# static fields
.field public static final KEY_AR_CODE_SELECT_CONFIRM:Ljava/lang/String; = "ar_code_select_confirm"

.field public static final KEY_AR_CODE_SELECT_PHOTO_BTN:Ljava/lang/String; = "ar_code_select_photo_btn_click"

.field public static final KEY_AR_CODE_SERVER_REQ:Ljava/lang/String; = "ar_code_server_req"

.field public static final KEY_AR_CODE_SERVER_RESULT:Ljava/lang/String; = "ar_code_server_result"

.field public static final KEY_AR_CODE_TAB:Ljava/lang/String; = "ar_code_tab_click"

.field public static final KEY_BARCODE_ACTIVE_TIME:Ljava/lang/String; = "barcode_active_time"

.field public static final KEY_BARCODE_CALLED_COUNT:Ljava/lang/String; = "barcode_by_call_count"

.field public static final KEY_BARCODE_CALL_ALIPAY_COUNT:Ljava/lang/String; = "barcode_call_alipay_count"

.field public static final KEY_BARCODE_CALL_APPSTORE_COUNT:Ljava/lang/String; = "barcode_call_appstore_count"

.field public static final KEY_BARCODE_CALL_MIACCOUNT_COUNT:Ljava/lang/String; = "barcode_call_miaccount_count"

.field public static final KEY_BARCODE_CALL_MIBI_COUNT:Ljava/lang/String; = "barcode_call_mibi_count"

.field public static final KEY_BARCODE_CALL_MIPAY_COUNT:Ljava/lang/String; = "barcode_call_mipay_count"

.field public static final KEY_BARCODE_CALL_WECHAT_COUNT:Ljava/lang/String; = "barcode_call_wechat_count"

.field public static final KEY_BARCODE_CALL_YELLOW_PAGE_COUNT:Ljava/lang/String; = "barcode_call_yellowpage_count"

.field public static final KEY_BARCODE_CARD_CLICK_COUNT:Ljava/lang/String; = "barcode_card_click_count"

.field public static final KEY_BARCODE_DECODE_COUNT:Ljava/lang/String; = "barcode_decode_count"

.field public static final KEY_BARCODE_DECODE_IMAGE_ZXING_COUNT:Ljava/lang/String; = "barcode_decode_image_zxing_count"

.field public static final KEY_BARCODE_DECODE_TIME:Ljava/lang/String; = "barcode_decode_time"

.field public static final KEY_BARCODE_MARKET_CLICK_COUNT:Ljava/lang/String; = "barcode_market_click_count"

.field public static final KEY_BARCODE_MIRACAST_BUTTON_CLICK_COUNT:Ljava/lang/String; = "barcode_miracast_button_click_count"

.field public static final KEY_BARCODE_PAYTM_BUTTON_CLICK_COUNT:Ljava/lang/String; = "barcode_paytm_button_click_count"

.field public static final KEY_BARCODE_TEXT_BUTTON_CLICK_COUNT:Ljava/lang/String; = "barcode_text_button_click_count"

.field public static final KEY_BARCODE_URL_BUTTON_CLICK_COUNT:Ljava/lang/String; = "barcode_url_button_click_count"

.field public static final KEY_BARCODE_WECHAT_BUTTON_CLICK_COUNT:Ljava/lang/String; = "barcode_wechat_button_click_count"

.field public static final KEY_BARCODE_WIFI_CLICK_COUNT:Ljava/lang/String; = "barcode_wifi_click_count"

.field public static final KEY_BARCODE_ZXING_SUCCESS_COUNT:Ljava/lang/String; = "barcode_zxing_success_count"

.field public static final KEY_CAMERA_FAILURE:Ljava/lang/String; = "camera_failure"

.field public static final KEY_COMMON_NO_AUTOFOCUS_CALLBACK_COUNT:Ljava/lang/String; = "no_autofocus_callback_count"

.field public static final KEY_DOCUMENT_SELECT_ADJUST:Ljava/lang/String; = "document_select_adjust"

.field public static final KEY_DOCUMENT_SELECT_CHANGE_COLOR:Ljava/lang/String; = "document_select_change_color"

.field public static final KEY_DOCUMENT_SELECT_RECOG_WORD:Ljava/lang/String; = "document_select_recog_word"

.field public static final KEY_DOCUMENT_SELECT_SAVE:Ljava/lang/String; = "document_select_save"

.field public static final KEY_DOCUMENT_SERVER_REQ:Ljava/lang/String; = "document_server_req"

.field public static final KEY_DOCUMENT_SERVER_RESULT:Ljava/lang/String; = "document_server_result"

.field public static final KEY_DOCUMENT_TAB:Ljava/lang/String; = "document_tab_click"

.field public static final KEY_DOCUMENT_TAKE_PHOTO_ADJUST:Ljava/lang/String; = "document_take_photo_adjust"

.field public static final KEY_DOCUMENT_TAKE_PHOTO_CHANGE_COLOR:Ljava/lang/String; = "document_take_photo_change_color"

.field public static final KEY_DOCUMENT_TAKE_PHOTO_RECOG_WORD:Ljava/lang/String; = "document_take_photo_recog_word"

.field public static final KEY_DOCUMENT_TAKE_PHOTO_SAVE:Ljava/lang/String; = "document_take_photo_save"

.field public static final KEY_ENTER_APP:Ljava/lang/String; = "enter_app"

.field public static final KEY_LIGHT_CLICK:Ljava/lang/String; = "light_click"

.field public static final KEY_MIPAY_CAMERA_COUNT:Ljava/lang/String; = "mipay_camera_count"

.field public static final KEY_MIPAY_JUMPTOMARKET:Ljava/lang/String; = "mipay_jumpto_market"

.field public static final KEY_MIPAY_JUMPTOMIPAY:Ljava/lang/String; = "mipay_jumpto"

.field public static final KEY_MIPAY_NOTINSTALL:Ljava/lang/String; = "mipay_notinstall"

.field public static final KEY_MIPAY_OPENRESULT:Ljava/lang/String; = "mipay_open_result"

.field public static final KEY_MIPAY_OPENWITHOTHER:Ljava/lang/String; = "mipay_openwith_other"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final KEY_TYPE_VALUE:Ljava/lang/String; = "type_value"

.field public static final NONE:I = -0x1

.field public static final PARAM_BARCODE_CALLER:Ljava/lang/String; = "barcode_caller"

.field public static final PARAM_BARCODE_CALLER_ACTION_SEND:Ljava/lang/String; = "barcode_caller_action_send"

.field public static final PARAM_BARCODE_TYPE:Ljava/lang/String; = "barcode_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
