.class synthetic Lcom/xiaomi/scanner/cropper/util/HandleUtil$1;
.super Ljava/lang/Object;
.source "HandleUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/cropper/util/HandleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaomi$scanner$cropper$cropwindow$handle$Handle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 127
    invoke-static {}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->values()[Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaomi/scanner/cropper/util/HandleUtil$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$handle$Handle:[I

    :try_start_0
    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->TOP_LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/scanner/cropper/util/HandleUtil$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$handle$Handle:[I

    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->TOP_RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/xiaomi/scanner/cropper/util/HandleUtil$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$handle$Handle:[I

    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->BOTTOM_LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/xiaomi/scanner/cropper/util/HandleUtil$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$handle$Handle:[I

    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->BOTTOM_RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/xiaomi/scanner/cropper/util/HandleUtil$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$handle$Handle:[I

    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->LEFT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/xiaomi/scanner/cropper/util/HandleUtil$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$handle$Handle:[I

    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->TOP:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/xiaomi/scanner/cropper/util/HandleUtil$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$handle$Handle:[I

    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->RIGHT:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/xiaomi/scanner/cropper/util/HandleUtil$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$handle$Handle:[I

    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->BOTTOM:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/xiaomi/scanner/cropper/util/HandleUtil$1;->$SwitchMap$com$xiaomi$scanner$cropper$cropwindow$handle$Handle:[I

    sget-object v1, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->CENTER:Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
